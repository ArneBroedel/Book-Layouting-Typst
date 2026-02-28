import json
import urllib.request
import time
import re

def fetch_url(url):
    try:
        with urllib.request.urlopen(url, timeout=10) as response:
            return response.read().decode('utf-8')
    except Exception as e:
        print(f"Error fetching {url}: {e}")
        return None

def parse_readme(content):
    if not content:
        return {}

    # Try to extract sections
    sections = {
        "purpose": "",
        "use_cases": "",
        "how_to_use": ""
    }

    # Purpose/Description: usually the first paragraph after title
    lines = content.split('\n')
    found_title = False
    for line in lines:
        if line.startswith('#'): # Title
            found_title = True
            continue
        if found_title and line.strip() and not line.startswith('#'):
            sections["purpose"] = line.strip()
            break

    # Use cases: look for keywords
    use_case_match = re.search(r'#(?:#+)?\s*(?:Use Case|Motivation|Why).*?\n(.*?)(?=\n#|$)', content, re.IGNORECASE | re.DOTALL)
    if use_case_match:
        sections["use_cases"] = use_case_match.group(1).strip()

    # How to use: look for keywords
    usage_match = re.search(r'#(?:#+)?\s*(?:Usage|How to use|Quickstart|Example).*?\n(.*?)(?=\n#|$)', content, re.IGNORECASE | re.DOTALL)
    if usage_match:
        sections["how_to_use"] = usage_match.group(1).strip()

    return sections

def main():
    with open('index.json', 'r', encoding='utf-8') as f:
        all_versions = json.load(f)

    # Group by name and pick highest version
    packages_map = {}
    for p in all_versions:
        name = p['name']
        if name not in packages_map:
            packages_map[name] = p
        else:
            # Simple version comparison might work if they are semver
            # But compare updatedAt is safer
            if p.get('updatedAt', 0) > packages_map[name].get('updatedAt', 0):
                packages_map[name] = p

    # Filter to only 'preview' namespace if applicable (not explicitly specified in index.json but let's see)
    # Actually index.json in preview/ already is just preview

    unique_packages = sorted(packages_map.values(), key=lambda x: x['name'])
    print(f"Found {len(unique_packages)} unique packages.")

    results = []
    # Limit to avoid too many requests for now if I need to run again? No, let's do all.
    # Total 566 - I can do them in batches.

    for i, pkg in enumerate(unique_packages):
        name = pkg['name']
        version = pkg['version']
        print(f"[{i+1}/{len(unique_packages)}] Fetching README for {name}@{version}...")

        # Raw GitHub URL
        readme_url = f"https://raw.githubusercontent.com/typst/packages/main/packages/preview/{name}/{version}/README.md"
        readme_content = fetch_url(readme_url)

        parsed = parse_readme(readme_content)

        entry = {
            "name": name,
            "version": version,
            "description": pkg.get('description', ''),
            "authors": pkg.get('authors', []),
            "license": pkg.get('license', ''),
            "repository": pkg.get('repository', ''),
            "keywords": pkg.get('keywords', []),
            "categories": pkg.get('categories', []),
            "purpose": parsed.get("purpose", pkg.get('description', '')),
            "use_cases": parsed.get("use_cases", ""),
            "how_to_use": parsed.get("how_to_use", ""),
            "readme_url": readme_url
        }
        results.append(entry)

        # Small sleep 100ms
        time.sleep(0.1)

        # Periodic save (every 50)
        if (i+1) % 50 == 0:
            with open('all_packages.json', 'w', encoding='utf-8') as f:
                json.dump(results, f, indent=2)

    with open('all_packages.json', 'w', encoding='utf-8') as f:
        json.dump(results, f, indent=2)
    print("Done! all_packages.json created.")

if __name__ == "__main__":
    main()
