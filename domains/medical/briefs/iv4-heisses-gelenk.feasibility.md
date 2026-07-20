# Feasibility note

- **chapter_id:** IV-4 / `heisses-gelenk`
- **brief_path:** `domains/medical/briefs/iv4-heisses-gelenk.brief.md`
- **catalog_version:** `0.1.0` (pin from `toolset/form-catalog/VERSION`)
- **bookkit_version:** `0.1.0`
- **bookkit-didactics:** `0.1.0` (`cave` / `memo` / `ddx-box`)
- **genre:** `leitsymptom` (decision path; pilot early-gatekeeper practice)
- **content_source (C, read-only):** `/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-iv4-heisses-gelenk.md`
- **brief_class:** exploration
- **author:** tech-feasibility (Welle-03 pilot IV-4)
- **date:** 2026-07-20

## Sections

| brief_section_id | status | form_id or gap_name | notes |
|---|---|---|---|
| **S0** Opener + Lernziel | `mapped` | `chapter-opener` | Title + lead; number `IV-4`. |
| **S1** Gatekeeper split 112 vs ED | `mapped` | `cave` | **Early gatekeeper required.** Body carries **exact** thresholds from content (Fieber ≥ 38,5 °C + AZ → 112; NWB ohne Sepsis → ED noch heute). Numbered split inside cave. |
| **S2** Einstiegsfrage SPLIT | `mapped` | `callout` | Two numbered paths; no mixed answer. tone warning. |
| **S3** Ursachenmatrix R4→R1 | `mapped` | `styled-table` | 3 cols; bold R4. |
| **S4** Red-Flag-Box | `mapped` | `styled-table` | Kriterium → Dringlichkeit → Aktion; urgency bold. Optional quiet RF data-label footnote. |
| **S5** Multi-S1-Split | `mapped` | `styled-table` | 4 cols: Konstellation / Bakteriell-S1 / Gicht-OA-S1 / Aktion Direktzugang. Alt `comparison-table` stable — prefer `styled-table` for free header labels. |
| **S6** Entscheidungs-Flow | `mapped` | `protocol-steps` | Stable 0.1.0; steps from content §3. |
| **S7** R+I+S→C | `mapped` | `styled-table` | 5 cols + I/S footnote. |
| **S8** Kontrastpaare | `mapped` | `ddx-box` | Short pairs. |
| **S9** Absolute KI | `mapped` | `cave` | After action path; technique bans list. |
| **S10** Gicht/OA kein Freifahrtschein | `mapped` | `memo` | After KI. |
| **S11** Labor/Scores kein Entwarnen | `mapped` | `styled-table` or `callout` | Prefer short `styled-table` Tool \| darf nicht (content §8); no invented cut-offs. Anamnesefragen optional short `callout` if space — content has them under RF; may fold under S4 as BASIS list (approx ok). |
| **S12** Master-Verweise + Quellen | `approx` | `section-break` + BASIS | Trailing quiet. |
| **S13** Critical Claims + HiL | `mapped`* | trailing BASIS | Audit appendix copy-through. |

### Anamnesefragen (Gatekeeper list under RF)

| unit | status | form | notes |
|---|---|---|---|
| Anamnesefragen | `approx` | BASIS list under S4 or short `callout` | Content §4 under RF; not a separate form. |

### Distinct-forms forecast

`chapter-opener`, `cave`, `callout`, `styled-table`, `protocol-steps`, `ddx-box`, `memo`, `section-break`

→ ≥4 distinct; early gatekeeper; not table-only.

## Catalog gaps to file

| gap / planned id | severity | pilot disposition |
|---|---|---|
| **`decision-table`** urgency-strip | medium | RF stays **`mapped` → `styled-table`**. |
| Dual-threshold gatekeeper banner | low–medium | Numbered split inside `cave` body. |

No blocking gaps; spike not needed.

## Spike recommended?

- [x] **no**
- [ ] yes — goal:

## Ready for Media Accept?

- [x] **yes**
- [ ] no — blockers:

**Accept focus:** (1) early `cave` with exact 112 vs ED split; (2) no mixed urgency answers; (3) Multi-S1 table keeps strict bacterial path; (4) Labor box does not invent cut-offs. Claims copy-through.

## Compose binding (post-Accept pilot only)

| Section | Compose form(s) |
|---|---|
| S0 | `chapter-opener` |
| S1 | `cave` |
| S2 | `callout` |
| S3 | `styled-table` |
| S4 | `styled-table` (+ optional Anamnese list) |
| S5 | `styled-table` |
| S6 | `protocol-steps` |
| S7 | `styled-table` |
| S8 | `ddx-box` |
| S9 | `cave` |
| S10 | `memo` |
| S11 | `styled-table` |
| S12 | `section-break` + BASIS |
| S13 | trailing Audit BASIS |

Header pins: `catalog_version: 0.1.0`. Exploration → pilot compose only after Accept.
