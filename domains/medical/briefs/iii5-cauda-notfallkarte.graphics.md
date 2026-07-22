# Graphic Decision Note — III-5 S4 Sofortmaßnahmen

- **chapter_id:** III-5 / `cauda-notfallkarte`
- **brief_path:** `domains/medical/briefs/iii5-cauda-notfallkarte.brief.md`
- **vision_path:** `domains/medical/briefs/iii5-cauda-notfallkarte.vision.md`
- **feasibility_path:** `domains/medical/briefs/iii5-cauda-notfallkarte.feasibility.md`
- **author_role:** graphics
- **date:** 2026-07-22

> Phase A free + B1 recreate. **Eval lean:** production recreate (German claim-safe); free has English stage chrome/typos.

## Phase A — Free vision

| unit_id | free vision | candidate | structure_ref | notes |
|---|---|---|---|---|
| S4 Sofortmaßnahmen | yes | `domains/medical/assets/iii5-cauda-notfallkarte/vision-free-01.png` | **none** | Strong hard-stop ladder; English STOP/PROTECTION/… chrome — strip in B2 |

## Phase B — Realize

| unit_id | realize_path | graphic_mode | module / spike | notes |
|---|---|---|---|---|
| S4 | **recreate** | code | `toolset/compose/spikes/graphics/iii5-cauda-notfallkarte/lib/sofortmassnahmen.typ` | Hard-stop protocol; danger 1+Verbote; BLS escape short; FA6 |

## Spikes

| spike | out |
|---|---|
| `spike-recreate.typ` | `dist/spikes/graphics/iii5-cauda-notfallkarte/recreate.pdf` + `recreate-p1.png` |
| `spike-compare.typ` | `…/compare.pdf` |

## Eval

`dist/spikes/graphics/_eval/eval-batch-2026-07-22.md` — recreate production lean.

## Ready for Media Accept?

- [x] Phase A free vision
- [x] Phase B1 recreate
- [x] Media Accept 2026-07-22 — winner recreate → `iii5-cauda-notfallkarte.accept.md`
