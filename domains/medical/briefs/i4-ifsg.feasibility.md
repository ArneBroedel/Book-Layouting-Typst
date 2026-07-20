# Feasibility note

- **chapter_id:** I-4 / `ifsg-meldepflicht-behandlungsverbote`
- **brief_path:** `domains/medical/briefs/i4-ifsg.brief.md`
- **catalog_version:** `0.1.0` (pin from `toolset/form-catalog/VERSION`)
- **bookkit_version:** `0.1.0`
- **bookkit-didactics:** `0.1.0`
- **genre:** `lerntext` + legal gatekeeper
- **content_source (C, read-only):** `/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-i4-ifsg-meldepflicht-behandlungsverbote.md`
- **author:** tech-feasibility (Wave E2E I-4)
- **date:** 2026-07-20

## Sections

| brief_section_id | status | form_id or gap_name | notes |
|---|---|---|---|
| **S0** Opener | `mapped` | `chapter-opener` | Stable. Title + lead (IfSG / keine Rechtsberatung). |
| **S1** Draft ≠ Rechtsfreigabe | `mapped` | `cave` | **Early legal gatekeeper** — first catalog form after opener. One only. |
| **S2** Lernziele | `mapped` | `learning-objectives` | Stable. items from content §1. |
| **S3** Einordnung / Brücke | `approx` | short BASIS par + `styled-table` | Bridge table for cross-links; prose minimal copy-through. |
| **S4** Drei Schichten | `mapped` | `styled-table` | A/B/C layers. Core concept table. |
| **S5** Norm-Rahmen | `mapped` | `key-concept` and/or `callout` + `styled-table` | §6/§7/§24/Meldeweg as table or stacked callouts; no legal-special form required. |
| **S6** Operational darf/nicht | `mapped` | `styled-table` | Situation → Erlaubt? → Konsequenz. |
| **S7** Treat-vs-Refer + Gatekeeper Alltag | `mapped` | `styled-table` + `cave`/`memo` | Urgency table + everyday gatekeeper box. |
| **S8** Praxisbox | `mapped` | `protocol-steps` | Stable. Steps 1–5 from content §6. |
| **S9** Fangfragen | `mapped` | `styled-table` or `comparison-table` | Fangfrage → Denkrichtung. Prefer `styled-table` for long cells. |
| **S10** Klinik-Brücke | `mapped` | `styled-table` | Compact trailing map. |
| **S11** Offene Lücken | `mapped` | `callout` (tone warning) | Explicit do-not-fill; no invented §8. |
| **S12** Quellen | `approx` | `section-break` + BASIS list | Trailing; jurist lines from content. |
| **S13** Critical Claims | `mapped`* | trailing BASIS | Audit appendix copy-through. |

### Distinct-forms forecast

`chapter-opener`, `cave`, `learning-objectives`, `styled-table`, `key-concept`/`callout`, `protocol-steps`, `section-break`

→ ≥ 3 distinct forms; early cave + objectives; not table-only body.

## Catalog gaps to file

| gap / planned id | severity | pilot disposition |
|---|---|---|
| legal-norm / gesetzeskasten as catalog form | low–medium | Not in form-catalog core as stable medical recipe form for this pilot; use `key-concept`/`callout`/`styled-table`. |
| `decision-table` (planned) | medium | Not blocking — operational `styled-table`. |

## Spike recommended?

- [x] **no**
- [ ] yes — goal:

**Rationale:** Stable maps cover gatekeeper, layers, ops tables, protocol, fangfragen. Legal chrome wishlist is approx via existing forms. No spike.

## Ready for Media Accept?

- [x] **yes**
- [ ] no — blockers:

**Accept focus:** (1) early legal cave not blocking rest of compose; (2) open gaps callout mandatory; (3) no §8 HP invention in layout.

## Compose binding (post-Accept only)

| Section | Compose form(s) |
|---|---|
| S0 | `chapter-opener` |
| S1 | `cave` |
| S2 | `learning-objectives` |
| S3 | BASIS + `styled-table` |
| S4 | `styled-table` |
| S5 | `key-concept` / `callout` + `styled-table` |
| S6 | `styled-table` |
| S7 | `styled-table` + `cave`/`memo` |
| S8 | `protocol-steps` |
| S9 | `styled-table` |
| S10 | `styled-table` |
| S11 | `callout` |
| S12–S13 | `section-break` + BASIS |

Header pins: `catalog_version: 0.1.0`, brief/feasibility/accept/content paths.
