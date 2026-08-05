# Claim audit — kl-crps-wp9-2026-07-31-mimic (WP9b free vision)

- **asset:** `domains/medical/assets/kl-crps-wp9-mimic/vision-free-01.jpg`
- **form_spec / contract:** WP9b Design CLEAN
- **date:** 2026-07-31
- **role:** GX claim safety (not craft CLEAN)

## Pin check (expected German)

| pin | free vision | status |
|---|---|---|
| Title Trügerische Erklärungen | present if rendered | check |
| Frame 1 Heilungsschmerz | expected | PASS if present |
| Danger 1 Disproportionalität… | expected | PASS if present |
| Frame 2 Psychosomatik | expected | PASS if present |
| Danger 2 Notfall-DDx… | expected | PASS if present |
| Frame 3 Nervenläsion | expected | PASS if present |
| Danger 3 regionales vegetativ… | expected | PASS if present |
| Frame 4 Fieber/Eiter | expected | PASS if present |
| Danger 4 Infekt Vorrang | expected | PASS if present |

## Composition harvest (map to atoms)

| cue | atom | use in code |
|---|---|---|
| stacked full-width cards | A4 | yes |
| pale top / dark bottom | A2/A3 | yes |
| thicker card-4 | A5 | yes |
| 4-col layout | A10 reject | **no** |

## Disposition

**PASS (composition)** → hierarchy-faithful **code peel stack** is Accept SoT; free JPG = provenance only.  
Any EN/chrome drift on free image → **do not** embed as accept-asset.