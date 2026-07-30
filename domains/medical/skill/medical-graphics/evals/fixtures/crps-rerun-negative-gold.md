# Negative gold — CRPS re-run (design-quality)

**Slug:** `kl-crps-rerun-2026-07-30`  
**Role:** regression / eval fixture notes — **not** Accept gold  
**Policy track:** `devtracks/design-quality-system/`  
**Prior harvest lesson:** `devtracks/_archive/free-vision-harvest/`

## What failed (product)

| Location | Defect | Class |
|---|---|---|
| §1.3 Entstehung und Mechanismus | CeTZ chain; text cramped/glued; unclear gain vs vertical list | worse-than-simple / overflow |
| §1.4 Klinische Hinweise table | Untersuchung orange without pedagogical color semantics | uncontracted-atom / dual-coding |
| §1.5 Trügerische Erklärungen | Raw Typst `block(…)` source on page | **code-leak** |
| Process | Agent self-Accept; validate OK; no PNG Visual Critic | missing Visual CLEAN / self-accept |

## What process must catch (evals)

| Eval skill | Assertion |
|---|---|
| media-brief design-critic | Blocks unjustified orange without atom meaning |
| media-brief accept-clean-gate | Refuses Accept without Design+Visual CLEAN |
| medical-graphics visual-critic | Blocks code-leak page description |
| medical-graphics design-clean-gate | Refuses free gen without Design CLEAN |

## Paths (if present in workspace)

- Chapter: `toolset/compose/pilots/kl-crps-rerun-2026-07-30/chapter.typ`  
- Module: `domains/medical/lib/typst/kl-wave6/crps-rerun.typ`  
- Pages: `dist/pilots/kl-crps-rerun-2026-07-30/pages/`  
- Briefs: `domains/medical/briefs/kl-crps-rerun-2026-07-30*`  

Do **not** treat these as winners to copy.
