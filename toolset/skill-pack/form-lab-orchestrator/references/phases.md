# Phase machine L0–L7

## Overview

```text
L0 Kickoff → L1 T* → L2 C* → L3 V* → L4 R* → [opt D] → L5 Compare → L6 S best-of* → (next lab) → L7 Harvest → COMPLETE
* = iterative craft to medium-optimum / synthesis-clean (not one-shot)
```

**Default:** after L0, **continue immediately** into L1 under L2 autodrive ([`autonomy.md`](autonomy.md)).  
Serial by default. No parallel T∥C unless OR explicitly allows after first lab.

## L0 — Kickoff & freeze

| Step | Output |
|---|---|
| Create lab-id (and portfolio board if multi-lab) | kickoff, board, run-log, route |
| Lock content pins | `pins.md` frozen |
| Human / locked D1–D8 | kickoff decisions |
| Learner jobs (5–8) | matrix rows |
| Scaffold passes | medium-rules + HAND-OFF stubs |

**Exit (default L2):** `NEXT: Pass T craft` — **start L1 in the same turn/session**.  
**Exit (opt-out route-only):** `NEXT: Pass T Worker handoff` and stop.

## L1 — Pass T (Type + Icon)

Allow type hierarchy, lists, tables, simple icons. Deny panel-fill chrome, free vision, rich SVG scenes.

Gate: min rounds + PC empty blocks + exhaustion + PNG set → pilot under `form-lab-<slug>-T/` + `dist/.../T/`.

## L2 — Pass C (Color / Chrome)

Allow semantic color, bands, cards, TIME slabs, mimic rows. Deny free-vision heroes, large custom SVG systems.

## L3 — Pass V (Vector atomic)

Many small SVGs/CeTZ schemas. **Every teaching glyph:** Semantic Read without caption. Anti-doodle FAIL → redraw or demote. Assets under this lab-id.

## L4 — Pass R (Raster atomic)

Many small gens; one primary aspect per learner job. SR + claim audit per atom. Short positive prompts. Do not demote whole pass to code without OR + residual.

## Optional Pass D

Only if matrix prep shows relation jobs weak in all of T/C/V/R.

## L5 — Comparison

| Step | Owner |
|---|---|
| Fill jobs × passes matrix | CM/OR |
| Caption-free scores 1–5 | PC/CM |
| FAIL → not winner; caption-dep ≤2 | hard |
| Human S-rank | optional / waivable (often waived under autodrive) |
| Winner map + asset paths for S | required |

Template: `_templates/comparison-matrix.md` · optional `human-s-rank.md`.

## L6 — Pass S best-of fusion (mandatory product)

**Goal:** best overall teaching chapter for the pins — **not** a medium collage quota.

| Rule | Detail |
|---|---|
| Inputs | Matrix winners/co-winners with SR PASS + **prepared assets** from this lab’s T/C/V/R dist & asset dirs |
| Fusion | Per learner job: single strongest carrier; mix media across jobs when each wins its job |
| Omit is a win | Drop whole medium if it never beats type for any job |
| No new untested media | Do not invent forms not exercised in T–R |
| Iterative | Draft S → PNG → critique → revise until synthesis-clean (coherence, scan, density, SR on mounts) |
| Output | `pilots/form-lab-*-S/` + `dist/.../S/` chapter.pdf + p*.png |

Procedure: `_templates/medium-rules-S.md` · [`craft.md`](craft.md) § Pass S.

## L7 — Harvest (required for COMPLETE)

| Deliverable | Required? |
|---|---|
| `form-vocabulary.md` | **yes** |
| `production-bridge.md` | **yes** |
| `human-s-rank.md` | no (waiver OK) |
| `sr-log.md` | no |

Portfolio-level harvest directory may cover multiple labs after **all** labs have S.

**Exit:** board `harvest=done` + `terminal_status: COMPLETE` (or COMPLETE-with-waiver).

## Portfolio (multi-lab)

```text
for each lab in depth-first order:
  L0 (first lab / scaffold) → L1…L6
then once:
  L7 portfolio harvest → COMPLETE
```

## Caps (defaults)

| Cap | Default |
|---|---|
| min_craft_rounds / pass | 3 |
| max_craft_rounds / pass | 12 |
| Pass R atom gens | 8–12 (D8; not production caps) |
| Refine / atom | 2 |
| Parallel passes | No (default) |
| Autonomy | **L2 autodrive** |

## Board cells

See runtime board template: pins, pass_*, comparison, synthesis_S, **harvest**, human_s_rank, terminal_status, orchestrator_mode (`autodrive` default).
