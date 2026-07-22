# Graphic Decision Note — IV-2 S4 Entscheidungs-Flow

- **chapter_id:** IV-2 / `rueckenschmerz-neuro`
- **brief_path:** `domains/medical/briefs/iv2-rueckenschmerz-neuro.brief.md`
- **vision_path:** `domains/medical/briefs/iv2-rueckenschmerz-neuro.vision.md`
- **feasibility_path:** `domains/medical/briefs/iv2-rueckenschmerz-neuro.feasibility.md`
- **author_role:** graphics
- **date:** 2026-07-22

> Free-first pilot #2 (after III-2). Phase A free vision + Phase B1 Typst recreate + Phase B2 refine done.

## Phase A — Free vision

| unit_id | free vision | candidate | structure_ref | notes |
|---|---|---|---|---|
| S4 Entscheidungs-Flow | yes | `domains/medical/assets/iv2-rueckenschmerz-neuro/vision-free-01.png` | **none** | Nano Banana free via `graphics-vision-agy.sh` |

## Phase B — Realize

| unit_id | realize_path | graphic_mode | module / spike | notes |
|---|---|---|---|---|
| S4 | **recreate** | code | `toolset/compose/spikes/graphics/iv2-rueckenschmerz-neuro/lib/entscheidungs-flow.typ` | Vertical protocol 1–4; solid red 1–2; R/I/S trio; Default-to-Danger banner; FA6 icons; claim-safe |
| S4 | **refine** (B2) | asset | `vision-refined-01.png` + `spike-refined.typ` / `spike-compare-b2.typ` | Surgical refine of free: book palette, high-contrast chips, equal R/I/S, louder Default-to-Danger |

## Visual-Units

| unit_id | type | ideal | graphic_mode | realize_path | rationale |
|---|---|---|---|---|---|
| S4 | procedure / decision | Numbered protocol 1–4 with step weight + Default-to-Danger loud | **code** | **recreate** (done B1) + optional **refine** (done B2) | Free vision set stepped path; production = maintainable Typst + FA icons; refined PNG for A/B |

## Asset manifest

| path | format | source | license | alt | role | print_ok |
|---|---|---|---|---|---|---|
| `…/iv2-rueckenschmerz-neuro/vision-free-01.png` | png | ai-gen:nanobanana free | project-internal | Entscheidungs-Flow IV-2: First-Look → RF → R/I/S → C mit Default-to-Danger | vision-free | ~146 dpi @150mm (screen) |
| `…/iv2-rueckenschmerz-neuro/vision-refined-01.png` | png | ai-gen:nanobanana refine B2 | project-internal | same flow; book palette; louder Default-to-Danger | vision-refined | ~146 dpi @150mm (screen) |
| `lib/entscheidungs-flow.typ` | typst | recreate B1 | project | same claim-safe flow | production-candidate | vector (yes) |

## Spikes

| spike | out |
|---|---|
| `spike-recreate.typ` | `dist/spikes/graphics/iv2-rueckenschmerz-neuro/recreate.pdf` + `recreate-p1.png` |
| `spike-compare.typ` | `dist/…/compare.pdf` (free PNG ‖ Typst) |
| `spike-refined.typ` | `dist/…/refined.pdf` (B2 refined PNG) |
| `spike-compare-b2.typ` | `dist/…/compare-b2.pdf` (free ‖ refined ‖ Typst) |
| pilot embed | `pilots/kursbuch-welle-03/chapters/iv2.typ` → `#entscheidungs-flow-rueckenschmerz()` |
| compose pilot | `pilots/kursbuch-welle-03-compose/chapters/iv2.typ` (replaces decision-diagram + vertical-flow; keeps process-pathway strip) |

## Ready for Media Accept?

- [x] Phase A free vision
- [x] Phase B1 recreate (Typst module + pilot embed)
- [x] Optional B2 refine of free PNG → `vision-refined-01.png`
- [x] Media Accept on ideal proximity — **accept 2026-07-22** (winner: recreate code; free vision = ideal provenance) → `iv2-rueckenschmerz-neuro.accept.md`
