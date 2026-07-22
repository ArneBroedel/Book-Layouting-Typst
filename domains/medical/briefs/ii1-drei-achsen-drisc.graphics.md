# Graphic Decision Note — II-1 S8 Pflichtsequenz R+I+S→C

- **chapter_id:** II-1 / `drei-achsen-drisc`
- **brief_path:** `domains/medical/briefs/ii1-drei-achsen-drisc.brief.md`
- **vision_path:** `domains/medical/briefs/ii1-drei-achsen-drisc.vision.md`
- **feasibility_path:** `domains/medical/briefs/ii1-drei-achsen-drisc.feasibility.md`
- **author_role:** graphics
- **date:** 2026-07-22

> Phase A free + B1 recreate. **Eval:** free = best ideal of batch (horizontal OS); recreate = print vertical OS. Both claim-safe.

## Phase A — Free vision

| unit_id | free vision | candidate | structure_ref | notes |
|---|---|---|---|---|
| S8 Pflichtsequenz | yes ★ | `domains/medical/assets/ii1-drei-achsen-drisc/vision-free-01.png` | **none** | 1376×768 horizontal 5-tile; binary banner; **not** notfall-karte |

## Phase B — Realize

| unit_id | realize_path | graphic_mode | module / spike | notes |
|---|---|---|---|---|
| S8 | **recreate** | code | `lib/pflichtsequenz.typ` | `layout: "vertical"` (default production) · `layout: "landscape"` (B1+ dashboard, free-inspired) |

## Spikes

| spike | out |
|---|---|
| `spike-recreate.typ` | `recreate.pdf` + `recreate-p1.png` (vertical) |
| `spike-landscape.typ` | `landscape.pdf` + `landscape-p1.png` (B1+ dashboard) |
| `spike-compare.typ` | free ‖ vertical stack |
| `spike-compare-layout.typ` | free ‖ landscape ‖ vertical |

## Eval

`dist/spikes/graphics/_eval/eval-batch-2026-07-22.md` — free ideal proximity high; production still code for maintainability.

## Ready for Media Accept?

- [x] Phase A free vision
- [x] Phase B1 recreate
- [x] Media Accept 2026-07-22 — winner recreate; free = landscape ideal → `ii1-drei-achsen-drisc.accept.md`
