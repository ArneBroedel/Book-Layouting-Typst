# Process — open-assets (detail)

## Decision tree

```text
Is the unit pure schema / flow / TIME text?
  YES → open_asset_scan=skip; Typst/code first
  NO  → continue

Is realism or standard iconography needed?
  NO  → optional scan (time-box) or skip
  YES → open_asset_scan=required

Run Source Scan (archives in order)
  viable green rights + clinical pass?
    YES → accept one winner → document → embed handoff
    NO  → document gap → paid stock (Human) OR Typst/schema OR controlled gen
         (log which; do not pretend gen is open photo)
```

## Step 0 — Job brief

Write into source-scan or graphics brief:

- learner_job, must_see  
- realism_required, clinical_risk_if_wrong  
- personality_sensitive  
- planned layout width (mm) for DPI check  

## Step 1 — Source Scan artifact

Use `templates/source-scan.template.md`.

- EN + DE queries  
- Archive checkboxes  
- Max **8** candidates  

## Step 2 — Collect

- Download **original** (not recompressed search thumb)  
- Stable local name: `{slug}-{role}-{license-hint}.{ext}`  
- Record permalink **file page**, not only binary CDN URL  
- Note `downloaded_at` (ISO date)  

## Step 3 — Rights Gate

See `licenses-and-attribution.md` + personality flags.

Outcomes: pass / fail / human-required.

## Step 4 — Clinical Gate

- Entity match (gout toe ≠ nail graphic)  
- Mimic labeling  
- Semantic Read without caption  
- Style/density  
- `print_size_check.py` vs planned width  

## Step 5 — Winner selection

- Exactly **one** `accepted` per learner_job for page embed  
- Others: `candidate` with reason “redundant job” or rejected with reason  
- Human may **swap** winner later; does not require shipping all candidates  

## Step 6 — Document

1. MANIFEST row complete  
2. `filename.license.json` sidecar (hash, attribution_full)  
3. CREDITS.md rollup  
4. Caption uses attribution_short derived from attribution_full  

## Step 7 — Handoff

Fill `templates/embed-handoff.template.yaml` for compose/graphics.

## Step 8 — Verify (recommended)

```bash
python3 domains/medical/skill/open-assets/scripts/verify_commons_meta.py File:…
python3 domains/medical/skill/open-assets/scripts/attribution_check.py path/to/MANIFEST.md
```

## Caps

| Loop | Cap |
|---|---|
| Source-scan rounds / unit | 1 systematic + optional 1 refine |
| Candidates stored | ≤ 8 |
| Free web rabbit holes | stop when green winner exists |
| Paid stock | Human only |

## Failure modes

| Failure | Action |
|---|---|
| Only NC/ND found | gap → schema or Human stock |
| Clinical FAIL | reject; do not “fix with caption” |
| personality unknown + face | human-required; do not production-accept alone |
| DPI too small | smaller figure or new asset |
| BY without author | do not accept until author found or Human waiver |
