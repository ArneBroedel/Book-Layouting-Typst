# research/ — ecosystem survey (external / generated data)

This is **external / generated data**, not curated knowledge (see `docs/KNOWLEDGE-MAP.md`). It is the
Typst-package ecosystem survey: scripts that fetch/refine registry data, and their JSON outputs. It is
independent of the book build — touch it only when updating the survey.

- `pipeline/` — Python scripts: `fetch_packages.py`, `process_index.py`, `process_templates.py`,
  `refine_json.py`, `check_versions.py`.
- `data/` — generated outputs: `index.json`, `all_packages.json`, `all_templates.json`,
  `latest_packages_meta.json`, plus `readme_urls.txt`, `versions.txt`. Committed because regeneration
  is rate-limited.

## Running the pipeline

The scripts use bare relative paths (`open('index.json')`), so **run them from `data/`** as the working
directory — the script location in `pipeline/` is irrelevant to its paths:

```bash
cd research/data
python ../pipeline/check_versions.py     # read-only report, safe to run anytime
python ../pipeline/process_index.py      # writes latest_packages_meta.json + readme_urls.txt
python ../pipeline/fetch_packages.py     # network: writes all_packages.json
python ../pipeline/refine_json.py        # refines all_packages.json
python ../pipeline/process_templates.py  # writes all_templates.json
```

> Related but separate: `templates/` at the repo root is a **study corpus** of downloaded third-party
> Typst templates — external reference material, never hand-edited, not produced by this pipeline.
