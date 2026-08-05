# Graphics Decision Note — `kl-crps-rerun-2026-07-30`

- **date:** 2026-07-30  
- **brief:** `domains/medical/briefs/kl-crps-rerun-2026-07-30.brief.md`  
- **module SoT:** `domains/medical/lib/typst/kl-wave6/crps-rerun.typ`  
- **spike PDF:** `dist/spikes/graphics/kl-crps-rerun-2026-07-30/recreate.pdf`  
- **ban:** no import of old pilot `kl-crps`  

## Track per unit

| unit_id | track | free gens | audit | harvest | realize_path | winner |
|---|---|---|---|---|---|---|
| U-urgency + U-scope | free-vision optional → **code** | 0 | n/a | n/a | R1 code stack | `us-crps-rerun()` |
| U-mimic | **free-vision-ambition** | 1 | PASS | yes | R1 hierarchy code peel | `mimic-peel-crps-rerun()` (map fallback `mimic-crps-rerun()`) |
| U-regional-cues | **free-vision-ambition** | 1 | PASS | yes | R1 hierarchy code hub | `regional-cues-crps-rerun()` |
| U-discrimination | grammar-only opt-in | 0 | n/a | n/a | pin-swap FA+NM | `discrimination-crps-rerun()` |
| BP / enabling / mechanism / cues / transfer / ddx | code band grammar | 0 | n/a | n/a | transfer | matching `*-crps-rerun()` |

## Harvest (must-cues)

### Mimic free vision

| cue | must/nice | ported to code? |
|---|---|---|
| 4 vertical peel cards side-by-side | must | yes |
| Frame (white top) / danger (dark bottom) | must | yes |
| Card-4 red alert border for Fieber/Eiter | must | yes |
| Title “Trügerische Erklärungen” | must | yes |
| Drop “Trügerischer Rahmen” meta labels | nice | waived (omitted in code) |

### Regional cues free vision

| cue | must/nice | ported to code? |
|---|---|---|
| Center hub Core-Verdacht | must | yes |
| Four channel cards | must | yes |
| Untersuchung emphasis ribbon | must | yes |
| No limb anatomy | must | yes |
| Dark poster chrome of free PNG | nice | waived → book teal/print-friendly |

## Free-vision proximity

| unit | proximity | note |
|---|---|---|
| mimic | **yes** | 4-card peel + alert card-4 |
| regional-cues | **yes** | hub + 4 channels + Allodynie badge |

## Carrier policy (D4)

Code SoT for maintainability after PASS free vision; PNGs kept as provenance only (MANIFEST not `accepted` embed).

## Caps used

- Free gens: 1/2 mimic · 1/2 regional  
- Refine: 0  
- No anatomy free vision  
