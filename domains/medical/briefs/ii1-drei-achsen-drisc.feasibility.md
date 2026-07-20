# Feasibility note

- **chapter_id:** II-1 / `drei-achsen-drisc`
- **brief_path:** `domains/medical/briefs/ii1-drei-achsen-drisc.brief.md`
- **catalog_version:** `0.1.0` (pin from `toolset/form-catalog/VERSION`)
- **bookkit_version:** `0.1.0`
- **bookkit-didactics:** `0.1.0`
- **genre:** `lerntext` (recipe stub: `domains/medical/recipes/lerntext.md`)
- **content_source (C, read-only):** `/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-ii1-drei-achsen-drisc.md`
- **author:** tech-feasibility (Wave E2E II-1)
- **date:** 2026-07-20

## Sections

| brief_section_id | status | form_id or gap_name | notes |
|---|---|---|---|
| **S0** Opener | `mapped` | `chapter-opener` | Stable. Title + lead (Betriebssystem / Gatekeeper-OS). |
| **S1** Gatekeeper-Atemzug | `mapped` | `key-concept` | Stable. Early three-question strip → C. Alt.: `memo` if Media prefers merksatz tone. |
| **S2** Lernziele | `mapped` | `learning-objectives` | Stable. `items: ()` checklist from content §1. |
| **S3** Rolle im Buch | `mapped` | `comparison-table` or `styled-table` | Stable. Ist / Nicht-Ist scope. Prefer `comparison-table` for two-column anti-duplication. |
| **S4** Drei-Achsen + D-RISC | `mapped` | `definition` + `styled-table` (+ short `memo` for C-nomenclature) | Stable stack. Mapping table copy-through; nomenclature note as `memo` or footnote. |
| **S5** Asymmetrisches Denken | `mapped` | `callout` (tone warning/info) or `memo` | Stable. Dual default rules; no dedicated asymmetry form — approx not required. |
| **S6** Stufen R/I/S | `mapped` | `styled-table` (×3) | Stable. Framework footnote as BASIS note under tables. |
| **S7** Flags mappen + Farben-Falle | `mapped` | `styled-table` + `memo`/`callout` | Stable. Short only; detail → II-2. |
| **S8** Pflichtsequenz | `mapped` | `protocol-steps` | Stable (`0.1.0`). Numbered R→S→I→C→Safety-Netting. |
| **S9** C-Muster | `mapped` | `styled-table` | Stable. Danger rows first. `decision-table` remains planned wishlist — not required. |
| **S10** Makro/Mikro + Checkliste | `approx` | `styled-table` + BASIS list/enum | Checkliste as BASIS enum under heading; no dedicated checklist form. Acceptable for pilot. |
| **S11** Häufige Fehler | `mapped` | `memo` or `callout` | Stable. Numbered error list in body. |
| **S12** Mini-Beispiele A/B | `mapped` | `clinical-case` and/or `callout` + mini `styled-table` | Stable. Prefer `clinical-case` for A (Stop & Call); B as second case or callout+table. |
| **S13** Verweise / Quellen | `approx` | `section-break` + BASIS list | Trailing quiet. `reference-list` planned — not needed. |
| **S14** Critical Claims | `mapped`* | trailing BASIS | *Non-body.* Copy-through audit appendix only. |

### Distinct-forms forecast

`chapter-opener`, `key-concept`, `learning-objectives`, `comparison-table`, `definition`, `styled-table`, `callout`/`memo`, `protocol-steps`, `clinical-case`, `section-break`

→ distinct catalog forms ≥ 3 (lerntext minima); concept-first, not emergency-card-only.

## Catalog gaps to file

| gap / planned id | severity | pilot disposition |
|---|---|---|
| `decision-table` (planned) | medium (C-Muster) | Not blocking — `styled-table` with danger-first row order. |
| asymmetry dual-panel / axis ladder (wishlist) | low | No new id; use callout + tables. |

## Spike recommended?

- [x] **no**
- [ ] yes — goal:

**Rationale:** All high-priority sections map to stable forms (`protocol-steps` stable). Checkliste as BASIS enum is standard interim. No spike.

## Ready for Media Accept?

- [x] **yes**
- [ ] no — blockers:

## Compose binding (post-Accept only)

| Section | Compose form(s) |
|---|---|
| S0 | `chapter-opener` |
| S1 | `key-concept` |
| S2 | `learning-objectives` |
| S3 | `comparison-table` |
| S4 | `definition` + `styled-table` + optional `memo` |
| S5 | `callout` or `memo` |
| S6 | `styled-table` ×3 |
| S7 | `styled-table` + `memo` |
| S8 | `protocol-steps` |
| S9 | `styled-table` |
| S10 | `styled-table` + BASIS list |
| S11 | `memo` |
| S12 | `clinical-case` (± table/callout) |
| S13–S14 | `section-break` + BASIS trailing |

Header pins: `catalog_version: 0.1.0`, brief/feasibility/accept/content paths.
