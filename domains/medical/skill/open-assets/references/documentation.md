# Documentation — open-assets

## Principles

1. **One provenance chain** from binary → MANIFEST → CREDITS → caption → book Nachweis.  
2. **Machine-checkable** fields where possible (`license`, `license_uri`, `sha256`).  
3. **Rejected assets keep rows** (learning + audit).  
4. **Candidates ≠ embedded.**  

## Files per asset folder

```text
domains/medical/assets/<slug>/   # or form-lab/<lab-id>/
  MANIFEST.md
  CREDITS.md
  foo-cc-by.jpg
  foo-cc-by.jpg.license.json    # sidecar preferred
  _proof/foo-license-ui.png     # optional screenshot
```

## MANIFEST columns (required for accepted)

| Field | Required | Example |
|---|---|---|
| `path` | yes | `podagra-cc-by.jpg` |
| `learner_job` | yes | hot joint gestalt |
| `role` | yes | main / cue / icon / mimic |
| `source` | yes | wikimedia / cdc-phil / healthicons / paid-stock |
| `provenance_url` | yes | Commons File: page |
| `license` | yes | `CC-BY-3.0-DE` |
| `license_uri` | yes if CC | https://creativecommons.org/… |
| `author` | yes if BY | Gonzosft |
| `title` | recommended | Podagra |
| `attribution_full` | yes if BY or production | full string |
| `attribution_short` | yes if embedded | caption line |
| `modifications` | yes | `none` |
| `rights_gate` | yes | pass / fail / human |
| `clinical_gate` | yes | pass / fail / human |
| `personality_rights` | yes | n/a / unknown / … |
| `status` | yes | candidate / accepted / rejected |
| `downloaded_at` | yes | 2026-08-03 |
| `sha256` | recommended | … |
| `width_px` / `height_px` | recommended | 640×405 |
| `max_print_width_mm` | yes if raster embed | 54 |
| `alt` | yes if embedded | German short |
| `reject_reason` | if rejected | clinical FAIL: … |

Template: `templates/manifest.template.md`

## License sidecar JSON

Template: `templates/license-sidecar.template.json`

Write beside binary as `{filename}.license.json`. Include:

- same rights fields as MANIFEST  
- `sha256` of file bytes  
- `retrieved_at`  
- `verifier` (agent/human id)  
- `commons_extmetadata` snapshot optional  

## CREDITS.md

Human rollup for the unit/chapter. Must include full BY strings for every **accepted embedded** BY work.  
CC0/PD: file page + license + date.

Template: `templates/credits.template.md`

## source-scan.md

Search process artifact (queries, archives, shortlist). Not a substitute for MANIFEST.

## Caption vs Abbildungsnachweis

| Location | Content |
|---|---|
| Under figure | `attribution_short` (+ mimic warning if needed) |
| Chapter/book CREDITS or Abbildungsnachweis | `attribution_full` for every BY/SA asset |
| FA6 / Health Icons | once per book/project in icon credits |

## Embed handoff

YAML for compose: `templates/embed-handoff.template.yaml`

## Consistency checks

```bash
python3 domains/medical/skill/open-assets/scripts/attribution_check.py \
  domains/medical/assets/form-lab/gicht-2026-08-o/MANIFEST.md
```

Fails if `license` contains `BY` and `attribution_full` missing author-like content.
