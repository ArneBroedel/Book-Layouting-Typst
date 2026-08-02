# Spec — Chapter Form Lab

**Status:** planning (Human approved intent 2026-08-02)  
**Product:** B (visual craft) · thin A (compose/Typst) · orchestration pattern  
**Related:** `design-quality-system`, `multi-chapter-explore-layout`, archived `free-vision-harvest` / `medical-graphics` / `kl-form-language`  
**Not this track:** full-book production, claim rewrite, portfolio throughput N× chapters

---

## 1. Problem

Recent exploration (multi-chapter portfolio, design-quality gates) improved **process completeness**, **claim safety**, and **print density** — but the shipped visual language collapsed to **colored text boxes**. Free vision is often demoted; SVG/icons/diagrams stay underused; Visual CLEAN measures defect absence more than teaching power.

A single compose pass forces a **compromise default**. Extremes are never trained. Capability does not grow.

## 2. Goal

Run a **Form Lab** on a **small set of chapters** (default: one anchor):

1. Freeze content claims once.  
2. Run **separate medium-extreme passes** (Typography+Icons, Color/Chrome, Vector, Raster-atomic, optional Diagram).  
3. Each pass is driven by an **iterative craft loop** until the medium is **exhausted** (medium-optimum), not one-shot.  
4. An **Orchestrator** owns board, routing, budgets, resume across sessions — **never** does all pass craft in one monologue.  
5. **Pass Workers** (subagents or **new sessions**) execute one pass at a time with Builder ↔ Critic loops.  
6. After all passes: **compare**, then **synthesize** a hybrid chapter from proven winners only.  
7. **Harvest** vocabulary + when-to-use rules into skills/guides.

## 3. Non-goals

| Out of scope | Why |
|---|---|
| Ten-chapter portfolio in this track | Depth over breadth |
| Replacing book-production-orchestrator | Lab is a **sibling** controller, not full P0–P11 book |
| Auto-heal clinical claims | Claims frozen; layout only |
| One mega-session “do all passes” | Explicit anti-pattern |
| Declaring production freeze/print | Exploration / craft research |

## 4. Success criteria

| ID | Criterion |
|---|---|
| **S1** | Orchestrator board + run-log durable; resume works mid-pass |
| **S2** | Each active pass has ≥ **min craft rounds** (default 3) of build→PNG→critique→revise before any “optimum” claim |
| **S3** | Medium-optimum requires explicit **exhaustion dossier** (what was tried, residual limits of the medium) |
| **S4** | Pass T ships with **almost no** panel-fill chrome; Pass V ships **many** vectors; Pass R ships **many small** rasters — medium rules enforced by Critic |
| **S5** | Comparison matrix unit×pass filled with Human-visible scores |
| **S6** | Synthesis chapter cites evidence from passes (no untested media) |
| **S7** | Harvest: form vocabulary + ladder deltas + orchestrator pattern encoded |

## 5. Locked design principles

1. **Same content, different media** — pins frozen before Pass T.  
2. **One dominant medium per pass** — hard allow/deny lists.  
3. **Iterate to optimum for that medium** — not “good enough to compare”.  
4. **Orchestrate, don’t monologue** — Orchestrator routes; Workers craft.  
5. **Session boundaries are features** — new session per pass (or per major craft wave) preferred.  
6. **PNG eyes every craft round** — no clean without page images.  
7. **Compare before synthesize**.  
8. **Floor: claim honesty** — medium extremism does not license wrong clinical meaning.  
9. **Semantic Read hard gate** — free gens use short positive prompts; review must catch nonsense motifs before medium-optimum / Human handoff as done (`prompt-and-semantic-read.md`).

## 6. Pass catalog (v1)

| Pass ID | Name | Dominant medium | Exhaustion question |
|---|---|---|---|
| **T** | Type + Icon | Typography, hierarchy, lists/tables, simple icons | What is the best teaching we can do *without* area chrome / free vision / rich SVG scenes? |
| **C** | Color / Chrome | Color meaning, panels, bands, grids, shapes (simple toolset) | What is the best hierarchy/scan we can do with layout chrome *without* rich illustration? |
| **V** | Vector | Many small SVGs / CeTZ vector schemas / pictogram system | What is the best teaching with *vector* atoms (not one giant SVG poster)? |
| **R** | Raster atomic | Many small free-vision / refined rasters per aspect | What is the best teaching with *many small images* (not one mega-infographic)? |
| **D** | Diagram *(optional)* | Relation: flow, fork, timeline, matrix-as-graph | What is best when *relations* are the medium? |
| **S** | Synthesis | Combination of proven winners only | Best overall chapter after comparison |

## 7. Roles

| Role | Duty | Must not |
|---|---|---|
| **OR** Form-Lab Orchestrator | Board, route, budgets, spawn/handoff, stop conditions, comparison schedule | Implement a full pass craft loop itself as sole builder |
| **PW** Pass Worker (Builder) | Implement pass under medium rules; revise from critique | Mark medium-optimum alone; switch medium mid-pass |
| **PC** Pass Critic | Adversarial visual + pedagogy critique on **latest PNGs**; medium-rule audit | Soften to ship; rewrite claims; implement fixes |
| **CM** Comparator | Cross-pass matrix after all optima | Prefer aesthetics without learner-job link |
| **SY** Synthesizer | Build Pass S from matrix winners | Invent untested forms |
| **H** Human | Kickoff locks, optional mid-pass gate, ranking, archive | Receive one-shot passes as “done” |

**Quorum:** Medium-optimum = PW latest build + **PC** status `medium-optimum` (or Human override).  
Builder ≠ sole Critic on the same artifact version.

## 8. Relationship to existing skills

| Existing | Use in Form Lab |
|---|---|
| `book-production-orchestrator` | Pattern donor (board/run-log/route/resume); **not** the controller for passes |
| `typst-writer` | Pass T/C/V code craft |
| `medical-graphics` | Pass R (and hybrid bits in S); claim audit |
| `media-brief` | Optional light Form Spec per pass unit; not full production Accept theater |
| `compose-chapter` | Chapter assembly per pass slug |
| design-quality Visual CLEAN | Adapted: **medium-optimum** is stricter on craft, looser on portfolio monotony |

New runtime: `toolset/orchestration/form-lab/<lab-id>/`  
New skill (phase): `form-lab-orchestrator` (or extension pack under skill-pack).

## 9. Chapter portfolio (locked selection 2026-08-02)

**N = 4** monographs from  
`Kursbuch5/.../2026-07-welle-06-kl-full/monographs/`.  
Full rationale: [portfolio.md](portfolio.md).

| # | Chapter | File | Form-lab stress |
|---|---|---|---|
| 1 | **Gicht** | `chapter-v-3-gicht.md` | lokale Gelenk-Gestalt, Mimic, TIME |
| 2 | **Schlaganfall** | `chapter-v-4-schlaganfall.md` | FAST Körper-Schema, hyper-akut, kl-voll |
| 3 | **Melanom ABCDE** | `chapter-v-10-melanom-abcde-hautscreening.md` | Kriterien-Icons, Screening, Icon-Semantik |
| 4 | **Anaphylaxie** | `chapter-v-12-anaphylaxie.md` | Multi-System-Kaskade, Handlungssequenz, kl-voll |

Execution default: **depth-first** (all passes on Gicht, then Schlaganfall, …) — see portfolio Option A.

## 10. Open decisions (kickoff)

| ID | Question | Default proposal |
|---|---|---|
| **D1** | Portfolio | **Locked:** Gicht · Schlaganfall · Melanom-ABCDE · Anaphylaxie ([portfolio.md](portfolio.md)) |
| **D2** | Execution order | **A** depth-first per chapter (Gicht first); alt B medium-first |
| **D3** | Pass D (diagram) | Optional after T/C/V/R comparison if matrix gaps |
| **D4** | Min craft rounds per pass | **3** (hard floor); soft target 5–8 until exhaustion |
| **D5** | Max craft rounds per pass | **12** then Human / stop with residual dossier |
| **D6** | Subagent vs new session | **New session preferred** per pass; subagent OK for single craft round |
| **D7** | Human gate per pass | After medium-optimum candidate (H-Pass); may waive to agent-optimum for exploration with later Human rank |
| **D8** | Free vision caps in Pass R | Raised vs production (e.g. 8–12 atomic gens) with per-atom audit — Human confirm at kickoff |

---

## 11. Acceptance of this spec

Human confirms D2–D8 (D1 portfolio locked 2026-08-02) → implement master + Gicht board + Pass T handoff.  
Plan: [plan.md](plan.md) · Portfolio: [portfolio.md](portfolio.md).
