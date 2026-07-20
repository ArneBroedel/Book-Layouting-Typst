# Feasibility note

- **chapter_id:** III-2 / `bls-aed-notfallprozeduren`
- **brief_path:** `domains/medical/briefs/iii2-bls-aed.brief.md`
- **catalog_version:** `0.1.0` (pin from `toolset/form-catalog/VERSION`)
- **bookkit_version:** `0.1.0`
- **author:** tech role
- **date:** 2026-07-20

## Sections

| brief_section_id | status | form_id or gap_name | notes |
|---|---|---|---|
| S0 Opener | mapped | `chapter-opener` | Karten-Titel |
| S1 Gatekeeper | mapped | `cave` | early window; alt. `memo` |
| S2 Triggers | approx | `callout` + BASIS list | scan cues |
| S3 Handlungstabelle 112 | mapped | `styled-table` | urgency columns |
| S4 Primär-Algorithmus | mapped | `protocol-steps` | labels 1–3, 4a/4b, 5–6 |
| S5 AED-Handlungskern | mapped | `protocol-steps` | numbered AED sequence |
| S6 Lagerungen | mapped | `styled-table` | indication matrix |
| S7 Überwachung | approx | `callout` / short `styled-table` | no invented vitals |
| S8 Sofortmaßnahmen Org | mapped | `protocol-steps` | org checklist |
| S9 Scope HP Physio | mapped | `comparison-table` or `styled-table` | binary allow/deny |
| S10 Praxis-Notfallplan | mapped | `protocol-steps` | min contents |
| S11 Verwechslungen | mapped | `ddx-box` | short |
| S12 Links/Quellen | approx | `section-break` + BASIS | trailing quiet |
| Critical Claims | non-body | trailing BASIS list | copy-through audit |

## Catalog gaps to file

- `decision-table` / urgency-strip still optional wishlist (not blocking; table approx OK)
- Branching is covered via `protocol-steps` labels `4a`/`4b` — no separate branch form needed for pilot

## Spike recommended?

- [x] no
- [ ] yes — goal:

## Ready for Media Accept?

- [x] yes
- [ ] no — blockers:
