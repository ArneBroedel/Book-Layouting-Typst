# Feasibility note

- **chapter_id:** VI-1 / `geriatrie`
- **brief_path:** `domains/medical/briefs/vi1-geriatrie.brief.md`
- **catalog_version:** `0.1.0` (pin from `toolset/form-catalog/VERSION`)
- **bookkit_version:** `0.1.0`
- **bookkit-didactics:** `0.1.0` (facet: `cave`, `learning-objectives`, `ddx-box`, `memo`)
- **genre:** population (no dedicated minima YAML; use lerntext-like diversity + early gatekeeper)
- **content_source (C, read-only):** `/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-vi1-geriatrie.md`
- **author:** tech-feasibility (Wave 5 E2E VI-1)
- **date:** 2026-07-20
- **brief_class:** exploration

## Sections

| brief_section_id | status | form_id or gap_name | notes |
|---|---|---|---|
| **S0** Opener | `mapped` | `chapter-opener` | Title + lead (Untertitel / populations-Rolle). No duplicate H1. |
| **S1** Gatekeeper | `mapped` | `cave` | **Early window** — first catalog form after opener. Vulnerability not age; Delir/Sturz/Funktionsknick = Trigger. One cave only. |
| **S2** Lernziele | `mapped` | `learning-objectives` | `items: ()` from content §1 (5 goals). After gatekeeper, not before. |
| **S3** Scope darf/nicht | `mapped` | `comparison-table` | Headers Darf/soll HP Physio · Nicht (→ verweisen); rows copy-through. Alt: `styled-table` if Media prefers 2-col generic. Prefer `comparison-table` for binary scope. Footnote „Nicht in diesem Kapitel“. |
| **S4** Big Picture + Illness-Script | `mapped` | `key-concept` + `styled-table` | Concept body = definition + maskierte Präsentation + Default-to-Danger; compact 4-axis table (Enabling/Insult/Manifestationen/Onset). |
| **S5** Safety-Fragen | `approx` | `callout` + BASIS list | 5 questions as bullets; no dedicated check-strip. tone warning/info. |
| **S6** Red-Flag-Tabelle | `mapped` | `styled-table` | 3 cols: Kriterium · Dringlichkeit · Aktion. **Separate rows** for each urgency path (no bundling). Urgency-lane chrome = planned `decision-table` — not blocking. AMBOSS-Warnsignale as table footnote. |
| **S7** Red Herrings | `mapped` | `ddx-box` | ≥3 items short. |
| **S8** Assessment + Score-Lücke | `mapped` | `callout` | Explicit: TUG/Tinetti/CGA names OK; **Cut-offs missing** — no invented thresholds. |
| **S9** Präsentationen → Links | `mapped` | `styled-table` | 3 cols: Präsentation · Gatekeeper-Fokus · Weiter im Buch. DDx worst-first as short BASIS note under table. |
| **S10** D-RISC Handlung | `mapped` | `styled-table` | Situation · R · I · S · C (or Situation · R/I/S · C if column budget tight). PT-Sicherheitsregel as `memo` after table or last emphasis row. |
| **S11** Komm. / Safety-Netting | `mapped` | `memo` | Onset, Angehörige, Einwilligung-Verweis, Safety-Netting, Polypharmazie, Semantic Qualifier compact. |
| **S12** Quellen + Lücken | `approx` | `section-break` + BASIS + optional `styled-table` for Lücken | Trailing only. |
| **S13** Critical Claims + HiL | `mapped`* | trailing BASIS list/table | *Audit appendix only; copy-through claims 1–12. HiL as quiet `callout` tone info. |

### Distinct-forms forecast

`chapter-opener`, `cave`, `learning-objectives`, `comparison-table`, `key-concept`, `callout`, `styled-table`, `ddx-box`, `memo`, `section-break`

→ ≥4 distinct forms; early `cave`; not table-only. OK for exploration pilot.

## Catalog gaps to file

| gap / planned id | severity | why not silent substitute | pilot disposition |
|---|---|---|---|
| **`decision-table`** / urgency-strip | medium | Multi-lane urgency in RF + D-RISC | **Not blocking** — `styled-table` with bold urgency cells |
| safety-question check strip | low–medium | F4 still scannable via callout+list | wishlist only |

No new forms invented this round.

## Spike recommended?

- [x] **no**
- [ ] yes — goal:

**Rationale:** All ideal blocks map to stable catalog forms. Approx only on Safety-Questions strip and trailing sources. No protocol-steps dependency.

## Ready for Media Accept?

- [x] **yes**
- [ ] no — blockers:

**Accept focus:** (1) early `cave` before objectives; (2) RF urgency rows stay **split**; (3) Score-Lücke callout required (no cut-off invention); (4) claims copy-through only.

## Compose binding (post-Accept only)

| Section | Compose form(s) |
|---|---|
| S0 | `chapter-opener` |
| S1 | `cave` |
| S2 | `learning-objectives` |
| S3 | `comparison-table` |
| S4 | `key-concept` + `styled-table` |
| S5 | `callout` + BASIS list |
| S6 | `styled-table` |
| S7 | `ddx-box` |
| S8 | `callout` |
| S9 | `styled-table` |
| S10 | `styled-table` + optional `memo` for PT-Sicherheitsregel |
| S11 | `memo` |
| S12 | `section-break` + BASIS (+ Lücken table) |
| S13 | trailing Audit BASIS + HiL `callout` |

Header pins: `catalog_version: 0.1.0`, brief/feasibility/accept/content paths. Stable forms only — no planned ids.
