# Spec — Design-Quality System

**Status:** **ARCHIVED 2026-08-03** · core process shipped · residual → trilogy T1–T3 · [STATUS.md](STATUS.md)  
**Product:** B (media-brief, medical-graphics) · thin A (studio, compose, CREATIVE-COMPOSE) · C checkpoints  
**Plan:** [plan.md](plan.md)  
**Neighbors:** Form Lab uses PNG eyes (lab bar); multi-chapter explore dogfooded floors; trilogy T1–T3 **cites** this doctrine — does not rewrite it

## Problem

The didactic media pipeline optimizes for **artifact completeness and claim safety**, not for **reader-facing design quality under adversarial pressure**. Agents can self-tick Accept and ship PDFs with unjustified chrome, worse-than-simple forms, and even raw Typst source on the page (CRPS re-run).

## Goal

Before any Human quality review of a didactic chapter/unit:

1. Every non-trivial presentation is **designed with justification** (Design Contract).  
2. An **adversarial Design Critic** attacks atoms until Design CLEAN.  
3. Realization (code/raster/hybrid) is **visually inspected** on PNG/PDF until Visual CLEAN.  
4. Builder may not CLEAN their own work; Accept requires both CLEAN packets.  
5. Exploration does **not** license dirty visual product.

## Non-goals

- Auto-heal clinical claims / Genesis rewrite loops  
- Fold medical genre into `packages/bookkit`  
- LLM vision CI as sole quality gate (v1)  
- Full rewrite of all existing KL modules in this track  
- Collaboration Contract / board quality cells / open-assets production wire → **skill-collaboration trilogy** (T1–T3)  
- Form Lab medium extremes → **chapter-form-lab**  
- Multi-chapter portfolio throughput → **multi-chapter-explore-layout** (process complete)

## Success criteria

See plan §10 (S1–S10) and [STATUS.md](STATUS.md). **Minimum ship P1–P2 (S1–S7) + WP7 + WP9 unit pilot: met.**

## Locked Human decisions (2026-07-30, recommended defaults accepted with plan)

| # | Decision |
|---|---|
| **D1 Exploration bar** | Same Visual CLEAN as production for any chapter PDF shown as a quality result |
| **D2 H-Design** | L2 may auto-loop design up to budget then stop if unclean; residual blocks → Human. L1 stops more often for review. |
| **D3 Roles** | Forced role separation; artifact is law; optional subagents |
| **D4 CRPS** | Process-first; unit pilot (WP9) sufficient for process ship; full chapter re-pilot Human-only, not track-blocking |

## Budgets

| Loop | Max | Then |
|---|---|---|
| AI free gens / unit | 2 | Human / stop free |
| AI refine gens / unit | 2 | code or Human |
| Design critique rounds | 4 | H-Design / Human |
| Visual critique rounds | 5 | Human visual gate |
| Media↔Tech feasibility | 2 | Human (unchanged) |

Floor beats schedule: open `block` → no Accept.

## Residual (explicitly not core doctrine)

| Item | Disposition |
|---|---|
| WP8 critique-export / soft packet path CLI | Optional → **T3** Phase B |
| Board cells `design_clean` / `visual_clean` / packet paths | **T3** Phase A |
| CLEAN authority one-pager | **T1** Collaboration Contract (cites this track) |
| open-assets before free vision on sit.2 | **T2** (after Design CLEAN) |
| Full CRPS chapter re-pilot | Human dogfood only |
