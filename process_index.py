import json

with open('index.json', 'r', encoding='utf-8') as f:
    packages = json.load(f)

# Sort by name and version to get latest version
# Simple version comparison might work if they are semver
# But a safer way is to group by name and pick the one with max updatedAt or latest version string
latest_packages = {}
for p in packages:
    name = p['name']
    if name not in latest_packages:
        latest_packages[name] = p
    else:
        # Simple string comparison for version, assuming semantic versioning
        # Or compare updatedAt
        if p.get('updatedAt', 0) > latest_packages[name].get('updatedAt', 0):
            latest_packages[name] = p

print(f"Total unique packages: {len(latest_packages)}")

# Create a list of URLs to fetch READMEs
urls = []
for name, p in latest_packages.items():
    version = p['version']
    urls.append(f"https://packages.typst.org/preview/{name}-{version}/README.md")

with open('readme_urls.txt', 'w') as f:
    for url in urls:
        f.write(url + '\n')

with open('latest_packages_meta.json', 'w') as f:
    json.dump(latest_packages, f, indent=2)
