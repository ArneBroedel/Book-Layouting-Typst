# Feasibility note

- **chapter_id:** IV-2 / `rueckenschmerz-neuro`
- **brief_path:** `domains/medical/briefs/iv2-rueckenschmerz-neuro.brief.md`
- **catalog_version:** `0.1.0` (pin from `toolset/form-catalog/VERSION`)
- **bookkit_version:** `0.1.0`
- **bookkit-didactics:** `0.1.0` (`cave` / `memo` / `ddx-box`)
- **genre:** `leitsymptom` (decision path; no dedicated minima file — pilot uses notfall-analogue early-gatekeeper practice)
- **content_source (C, read-only):** `/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-iv2-rueckenschmerz-neuro.md`
- **brief_class:** exploration
- **author:** tech-feasibility (Welle-03 pilot IV-2)
- **date:** 2026-07-20

## Sections

| brief_section_id | status | form_id or gap_name | notes |
|---|---|---|---|
| **S0** Opener + Lernziel-Lead | `mapped` | `chapter-opener` | Stable. Title + lead carries Lernziel (CES vor Lumbago; 112/ED). number: `IV-2`. |
| **S1** Gatekeeper CES | `mapped` | `cave` | **Early gatekeeper required** — first catalog form after opener. One stop only here. |
| **S2** Einstiegsfrage | `mapped` | `callout` | tone warning/info; Safety first question + short context; BASIS list ok inside. |
| **S3** Ursachenmatrix R4→R1 | `mapped` | `styled-table` | 3 cols R / Richtung / Hinweise. Rank weight via bold R4 labels; no dedicated ladder form. |
| **S4** Entscheidungs-Flow | `mapped` | `protocol-steps` | Stable in catalog 0.1.0. Steps 1–4 from content §3; tone danger/warning. |
| **S5a** Red-Flag-Box | `mapped` | `styled-table` | Kriterium → Dringlichkeit → Aktion. Urgency-lane chrome remains planned `decision-table` wishlist — not blocking; bold urgency cells. Large row count may use `long-table` if Media prefers breakable (both stable). Default: `styled-table` like III-5 pilot. |
| **S5b** Safety Questions | `approx` | `callout` + BASIS list | Under RF table; no dedicated check-strip. Accept-visible approx. |
| **S6** R+I+S→C | `mapped` | `styled-table` | 5 cols Konstellation/R/I/S/C; footnote I/S note. |
| **S7** Kontrastpaare | `mapped` | `ddx-box` | Short pairs only. Alt: short `styled-table` — prefer `ddx-box`. |
| **S8** Boxen (LWS-KI / Scores / Alter) | `mapped` | `cave` ×2 + `memo` ×1 | After action path: (1) keine LWS-Technik `cave`, (2) keine PT-Scores `cave` or `memo`, (3) Alter allein `memo`. Not early-window spam. |
| **S9** Master-Verweise + Quellen | `approx` | `section-break` + BASIS lists | Trailing quiet. `reference-list` planned — not needed. |
| **S10** Critical Claims + HiL | `mapped`* | trailing BASIS | *Not didactic body.* Copy-through audit appendix; optional HiL `callout` tone info. |

### Distinct-forms forecast

`chapter-opener`, `cave`, `callout`, `styled-table`, `protocol-steps`, `ddx-box`, `memo`, `section-break`

→ ≥4 distinct stable forms; early `cave` window satisfied; not table-only.

## Catalog gaps to file

| gap / planned id | severity | pilot disposition |
|---|---|---|
| **`decision-table`** / urgency-strip (already planned) | medium | S5a stays **`mapped` → `styled-table`**. Not blocking. |
| safety-question check strip | low–medium wishlist | S5b **approx** `callout`+list. |
| ranked R4→R1 ladder chrome | low | bold R labels in table; no new id. |

No new gaps invented; no silent gap as mapped.

## Spike recommended?

- [x] **no**
- [ ] yes — goal:

**Rationale:** All ideal sections map to stable forms or named approx. `protocol-steps` is stable (0.1.0). Urgency approx is Accept-visible without spike.

## Ready for Media Accept?

- [x] **yes**
- [ ] no — blockers:

**Accept focus:** (1) early `cave` gatekeeper required; (2) S5 urgency via `styled-table` without dedicated lanes; (3) Safety Qs as callout+list approx; (4) three post-path boxes OK if not early spam. Claims copy-through only.

## Compose binding (post-Accept pilot only)

| Section | Compose form(s) |
|---|---|
| S0 | `chapter-opener` |
| S1 | `cave` |
| S2 | `callout` |
| S3 | `styled-table` |
| S4 | `protocol-steps` |
| S5a | `styled-table` |
| S5b | `callout` + BASIS list |
| S6 | `styled-table` |
| S7 | `ddx-box` |
| S8 | `cave` / `memo` (after path) |
| S9 | `section-break` + BASIS |
| S10 | trailing Audit BASIS |

Header pins: `catalog_version: 0.1.0`, brief/feasibility/accept/content paths. Exploration → pilot compose only after Accept (not production/freeze).
