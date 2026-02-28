import json

def main():
    # Read the 1141-item file
    # If it was 1141, it had both.
    # In my last turn, I printed 'Total unique packages: 1141' in process_index.py.
    # So all_packages.json has everything.

    with open('index.json', 'r', encoding='utf-8') as f:
        all_metadata = json.load(f)

    latest_meta = {}
    for entry in all_metadata:
        name = entry['name']
        if name not in latest_meta or entry.get('updatedAt', 0) > latest_meta[name].get('updatedAt', 0):
            latest_meta[name] = entry

    # Create a set of TRUE packages (those without 'template' key)
    true_package_names = {p['name'] for p in latest_meta.values() if 'template' not in p}

    with open('all_packages.json', 'r', encoding='utf-8') as f:
        all_content = json.load(f)

    # Filter content to only include true packages
    # Note: all_content might have 1141 entries.
    true_packages_content = [c for c in all_content if c['name'] in true_package_names]

    print(f"Filtering all_packages.json from {len(all_content)} to {len(true_packages_content)} true packages.")

    with open('all_packages.json', 'w', encoding='utf-8') as f:
        json.dump(true_packages_content, f, indent=2)

if __name__ == "__main__":
    main()
