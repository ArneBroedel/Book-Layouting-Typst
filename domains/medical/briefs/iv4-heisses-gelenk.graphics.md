# Graphic Decision Note — IV-4 S6 Entscheidungs-Flow

- **chapter_id:** IV-4 / `heisses-gelenk`
- **brief_path:** `domains/medical/briefs/iv4-heisses-gelenk.brief.md`
- **vision_path:** `domains/medical/briefs/iv4-heisses-gelenk.vision.md`
- **feasibility_path:** `domains/medical/briefs/iv4-heisses-gelenk.feasibility.md`
- **author_role:** graphics
- **date:** 2026-07-22

> Phase A free + B1 recreate + **B2 refine done**. Production = Typst recreate; refined PNG = look provenance (claim-cleaned).

## Phase A — Free vision

| unit_id | free vision | candidate | structure_ref | notes |
|---|---|---|---|---|
| S6 Entscheidungs-Flow | yes ⚠ | `vision-free-01.png` | **none** | Claim drift (invented vitals) — provenance only |
| S6 refined | yes | `vision-refined-01.png` | none | B2: vitals stripped; claim-safe German; split kept |

## Phase B — Realize

| unit_id | realize_path | graphic_mode | module / spike | notes |
|---|---|---|---|---|
| S6 | **recreate** + **refine** | code (+ asset refined) | `lib/entscheidungs-flow.typ` | Recreate = print/production; refined optional look |

## Spikes

| spike | out |
|---|---|
| `spike-recreate.typ` | `recreate.pdf` + `recreate-p1.png` |
| `spike-compare.typ` | `compare.pdf` |
| `spike-refined.typ` | `refined.pdf` |

## Ready for Media Accept?

- [x] Phase A free vision
- [x] Phase B1 recreate
- [x] B2 free refine (claim-safe)
- [x] Media Accept 2026-07-22 — winner recreate; free blocked / refined = look only → `iv4-heisses-gelenk.accept.md`
