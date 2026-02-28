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
    usage_match = re.search(r'#(?:#+)?\s*(?:Usage|How to use|Quickstart|Example|Initialization).*?\n(.*?)(?=\n#|$)', content, re.IGNORECASE | re.DOTALL)
    if usage_match:
        sections["how_to_use"] = usage_match.group(1).strip()

    return sections

def main():
    with open('index.json', 'r', encoding='utf-8') as f:
        all_versions = json.load(f)

    # Group by name and pick highest version (by updatedAt)
    latest_map = {}
    for entry in all_versions:
        name = entry['name']
        if name not in latest_map or entry.get('updatedAt', 0) > latest_map[name].get('updatedAt', 0):
            latest_map[name] = entry

    # Identify templates vs packages
    templates = [p for p in latest_map.values() if 'template' in p]
    packages = [p for p in latest_map.values() if 'template' not in p]

    print(f"Found {len(templates)} templates and {len(packages)} packages.")

    # In previous turn I generated 'all_packages.json' with 1141 entries.
    # User now specifically asked for templates.
    # To redo for templates only:
    results = []
    for i, pkg in enumerate(templates):
        name = pkg['name']
        version = pkg['version']
        print(f"[{i+1}/{len(templates)}] Fetching README for template {name}@{version}...")

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
            "readme_url": readme_url,
            "template_info": pkg.get('template', {})
        }
        results.append(entry)

        # Small sleep
        time.sleep(0.05)

        # Save progress
        if (i+1) % 50 == 0:
            with open('all_templates.json', 'w', encoding='utf-8') as f:
                json.dump(results, f, indent=2)

    with open('all_templates.json', 'w', encoding='utf-8') as f:
        json.dump(results, f, indent=2)

    # Also correctly split all_packages.json since I have the chance.
    # Actually, I'll only do it if the results are better or user asks.
    # The previous turn's output was 1141 entries in 'all_packages.json'.
    # User might want it corrected? No, let's just do 'all_templates.json' for now.

    print("Done! all_templates.json created.")

if __name__ == "__main__":
    main()
