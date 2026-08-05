---
name: form-lab-orchestrator
description: "ALWAYS use as the controller for Chapter Form Lab (lab-learning): by default L2 autodrive-to-complete — full iterative medium extremes T→C→V→R (min craft rounds each), comparison matrix, Pass S best-of fusion from prepared winning assets into the strongest chapter, then harvest (form-vocabulary + production-bridge). Maintain board/run-log/route under toolset/orchestration/form-lab/; execute PW/PC/CM/SY procedures in-session with role-separated artifacts unless user opts out. Do NOT use as the default production chapter pipeline (studio situation 2 / book-production-orchestrator / compose-chapter). Do NOT stop after L0 handoff under default autonomy; do not rewrite clinical claims; do not mark COMPLETE without harvest (or explicit waiver); do not one-shot a pass or skip matrix before S."
---

# form-lab-orchestrator

**Controller for Form Lab** — **lab-learning**, not production default.

**Default autonomy: L2 autodrive-to-complete.** After kickoff (or on resume), run the **full program** for every lab on the portfolio board until **COMPLETE** — do **not** stop after writing a Pass T HAND-OFF and wait for the user.

Owns **board + run-log + route**, drives **serial medium passes** with iterative craft floors, **compares**, **fuses best-of into Pass S**, then **harvest**. Sibling of `book-production-orchestrator` (same durable-board idea; different phase machine).

**SoT:** `toolset/skill-pack/form-lab-orchestrator/`  
**Runtime:** `toolset/orchestration/form-lab/<lab-id>/` (new labs) · completed waves under `…/form-lab/_archive/`  
**Chapter.typ:** `toolset/compose/lab/form-lab-*-<pass>/` (**not** `compose/pilots/`)  
**Assets:** `domains/medical/assets/form-lab/<lab-id>/` (path stable — do not relocate)  
**Track:** `devtracks/_archive/chapter-form-lab/`  
**README:** `toolset/orchestration/form-lab/README.md`  
**Autonomy detail:** [`references/autonomy.md`](references/autonomy.md)

**Does not replace:** `typst-writer`, `medical-graphics`, `compose-chapter` — under L2 the orchestrator **loads and executes** their craft procedures as PW/PC steps, still logging every step.

---

## Mission class: lab-learning

| This skill | Not this skill |
|---|---|
| Full medium extremes per chapter; learn job→carrier | Default per-chapter production layout |
| COMPLETE = full stack + **Pass S best-of** + **harvest** | COMPLETE = Accept + compose + print gates |
| Studio **situation 9** only | Studio situations 1–7 production paths |
| Higher R gen budgets allowed (kickoff D8) | Production free-vision caps |

**If the user wants a normal optimized chapter:** use `studio` situation 2 (or `book-production-orchestrator` for multi-chapter) — **not** Form Lab.

---

## When to use

- User asks for **Form Lab**, medium extremes, T/C/V/R, form vocabulary, clean restart wave  
- “Volle Ausarbeitung / alle Medien / best-of Kapitel” for pinned monographs  
- Resume existing board under `toolset/orchestration/form-lab/`  
- Portfolio multi-lab depth-first craft through harvest  

## When NOT to use

| Situation | Use instead |
|---|---|
| Unsure how to start / general layout help | **`studio`** (front door) |
| Full book → print | `book-production-orchestrator` |
| One chapter **production** pipeline | studio situation 2 |
| Only free vision / claim audit one unit | `medical-graphics` |
| Only compose/validate | `compose-chapter` |
| Only content review | `content-orchestrator` / `content-review` |
| Rewrite clinical claims | Content (C) / author |

---

## Default: L2 autodrive-to-complete

**Unless the user explicitly asks for route-only / L0 guided / stop-after-handoff:**

```text
kickoff (if needed) → immediately enter drive loop → do not pause for user between passes
per lab:  T* → C* → V* → R* → matrix → S* (best-of fusion) → next lab
portfolio: after all labs S → L7 harvest → terminal COMPLETE
* = iterative craft ≥ min_rounds, PNG every round, medium-optimum + exhaustion
```

| May stop | Must not stop for |
|---|---|
| Hard error / missing content pin | “Pass T handoff written — please start worker” |
| Cap hit with residual dossier + OR note | Courtesy pause after each medium |
| Human gate only if **not** waived at kickoff | Re-asking D1–D8 every lab when portfolio-locked |
| True ambiguity that changes claims/pins | Preference for new session (waived under L2) |

In-session OR **executes** PW / PC / CM / SY as **role-separated steps** with disk artifacts (`critique-rNN.md`, HAND-OFF updates, dist PNGs). That is **not** a forbidden monologue — a monologue is one-shot craft without rounds, PNG eyes, or medium rules.

Opt-out phrases (user must say): `route-only`, `Orchestrator only`, `L0 guided`, `stop after handoff`, `new session per pass only`.

---

## Modes

### 1) Kickoff → autodrive (default path)

1. Create portfolio (if multi-lab) + first `toolset/orchestration/form-lab/<lab-id>/` from `_templates/`.  
2. Write `kickoff.md` (D1–D8), `board.md`, `run-log.md`, `route.md`, `pins.md`.  
3. Scaffold medium-rules + HAND-OFF for T/C/V/R/S.  
4. Freeze pins.  
5. **Continue immediately into Mode 3 (drive)** — write Pass T HAND-OFF then **run** Pass T craft in-session (unless user opted route-only).

### 2) Status / resume

**Default resume (autodrive):**

```text
Resume Form Lab board <lab-id|portfolio-id> autonomy L2 autodrive-to-complete.
Read board.md + run-log.md + route.md. Continue full program to COMPLETE; do not stop at handoff.
```

**Explicit route-only (opt-out):**

```text
Resume Form Lab board <lab-id> as Orchestrator only (route-only).
Read board + run-log + route. Route next; do not craft.
```

### 3) Drive loop (serial L0–L7, full program)

```text
loop until portfolio COMPLETE or hard stop:
  1. Read board → next phase for current lab (depth-first portfolio order)
  2. Refresh HAND-OFF + medium-rules for this pass
  3. Execute pass as PW: iterative build → compile+PNG → PC critique-rNN → revise
        until medium-optimum (min rounds, empty blocks, no SR FAIL, exhaustion.md)
  4. Log + board; advance T→C→V→R
  5. After R optimum: L5 matrix (caption-free; FAIL cannot win)
  6. L6 Pass S: best-of fusion from matrix winners + prepared assets only
        (omit-is-win; one primary mark per job; iterative synthesis-clean)
  7. Next lab (scaffold if needed) or, if last lab done: L7 harvest
  8. COMPLETE only when harvest=done (or documented waiver)
```

### 4) Harvest only

If craft stack done but harvest missing: write form-vocabulary + production-bridge from matrices/dist **without re-craft**.

---

## Full program (what “vollständig” means)

For **each** lab chapter:

| Stage | Must deliver |
|---|---|
| **T** | Type+icon extreme; ≥ min rounds; pilot + dist PDF/PNG; exhaustion |
| **C** | Color/chrome extreme; same craft bar |
| **V** | Many vector glyphs; **SR PASS** each mounted mark; assets under wave lab-id |
| **R** | Many small rasters (D8 budget); **SR PASS** + claim honesty; no prior-wave asset reuse unless OR documents exception |
| **Matrix** | jobs × T/C/V/R scores; winners/co-winners only from PASS marks |
| **S best-of fusion** | Single strongest chapter: **use prepared winning assets** from T/C/V/R (paths in matrix notes); do **not** invent untested media; **omit** weak media; iterative to synthesis-clean |
| **Harvest** (portfolio after all labs) | form-vocabulary + production-bridge |

**Pass S is the product of the lab for teaching layout** — the best fusion under omit-is-win, not a collage quota and not “T only because faster.”

Detail: [`references/phases.md`](references/phases.md) · craft: [`references/craft.md`](references/craft.md) · harvest: [`references/harvest.md`](references/harvest.md).

---

## Phase machine (L0–L7)

| Phase | Goal | Typical next |
|---|---|---|
| **L0** | Kickoff, pins freeze, D1–D8 | **L1 immediately** (default) |
| **L1** | Pass T medium-optimum | Pass C |
| **L2** | Pass C medium-optimum | Pass V |
| **L3** | Pass V + SR on glyphs | Pass R |
| **L4** | Pass R + SR on atoms | Comparison (or opt. D) |
| **L5** | jobs×passes matrix; Human S-rank optional/waivable | Pass S |
| **L6** | **Best-of fusion** Pass S from winners + assets | Next lab or harvest |
| **L7** | form-vocabulary + production-bridge | **COMPLETE** |

---

## Roles (under default L2)

| Role | Duty | Must not |
|---|---|---|
| **OR** | Board, budgets, sequence; **runs** PW/PC/CM/SY steps in-session under L2 | Skip rounds; skip PNG; skip matrix before S; stop after L0 handoff by default |
| **PW** | Implement one pass under medium rules | Mark optimum alone without PC artifact; switch medium mid-pass |
| **PC** | Adversarial PNG critique; medium purity; SR | Soften FAIL to ship; skip critique file |
| **CM** | Matrix after optima | Score FAIL as winners |
| **SY** | Pass S best-of from matrix + prepared assets | Invent untested forms; force all media on p1 |
| **H** | Kickoff locks; optional H-Pass / S-rank (often waived) | Treated as required after every pass when waived |

Quorum: medium-optimum = PW build + PC empty blocks + min rounds + exhaustion + no open SR FAIL.

---

## ALWAYS / NEVER

| ALWAYS | NEVER |
|---|---|
| Default **L2 autodrive-to-complete** unless user opts out | Stop after L0 HAND-OFF and wait (default path) |
| Persist board + run-log + route every step | Rely only on chat for multi-session state |
| Full T→C→V→R iterative program per lab | Skip a medium without OR residual + board note |
| Min craft rounds (default 3) + PNG every round | One-shot pass → matrix / S |
| Semantic Read hard gate on R **and** V teaching marks | Mount FAIL as matrix winner / S carrier |
| Caption-free matrix; then **S best-of fusion** from winners | Force all media onto page 1; collage without matrix |
| Reuse **this lab’s** prepared winning assets in S | Silent reuse of other-wave pilots/assets when clean restart |
| **Harvest before COMPLETE** (or document waiver) | Mark COMPLETE on PDF/PNG only |
| State lab-learning ≠ production default | Use Form Lab as silent default production chapter path |
| Freeze pins before Pass T | Rewrite clinical claims for layout drama |
| Separate Builder vs Critic **steps** (artifacts) | One-shot “looks fine” without critique-rNN |

---

## Resume & kickoff phrases

**Default (pasteable):**

```text
Skill: form-lab-orchestrator
autonomy: L2 autodrive-to-complete
lab_id / portfolio: <slug>
content pins: <paths>
mission_class: lab-learning
Run full program: T→C→V→R→matrix→S best-of per lab → portfolio harvest → COMPLETE.
Do not stop after L0 handoff.
```

**Pass-focused (only if user isolates one pass):**

```text
Form Lab Pass <T|C|V|R|S> Worker.
Lab: toolset/orchestration/form-lab/<lab-id>/
Load: passes/<P>/HAND-OFF.md + medium-rules.md + pins.md
Goal: iterative craft to medium-optimum (min 3) OR synthesis-clean best-of for S.
```

More: [`references/resume.md`](references/resume.md).

---

## Artifacts

```text
toolset/orchestration/form-lab/
  _templates/                         # living SoT
  portfolio-2026-08-c|d/              # living harvest exemplars
  portfolio-open-asset-2026-08/       # living Pass O dogfood
  _archive/<lab-id>/                  # completed craft boards (resume for provenance)
  <lab-id>/                           # NEW active lab only
    kickoff.md  board.md  run-log.md  route.md  pins.md
    passes/<P>/  comparison/  harvest/
dist/form-lab/<lab-id>/<pass>/        # PDF + p*.png (gitignored)
toolset/compose/lab/form-lab-*-<pass>/  # chapter.typ runs — not compose/pilots/
domains/medical/assets/form-lab/<lab-id>/…  # V/R assets (stable mounts)
```

Templates: `toolset/orchestration/form-lab/_templates/`.  
**Resume:** look for board under `form-lab/<id>/` first; if missing, `form-lab/_archive/<id>/`.

---

## Related

| | |
|---|---|
| Front door | `studio` situation **9** → this skill (default autodrive) |
| Autonomy levels | [`references/autonomy.md`](references/autonomy.md) |
| Production full book | `book-production-orchestrator` |
| Production one chapter | studio situation 2 |
| Pass R helpers | `medical-graphics` + `prompt-and-semantic-read.md` |
| Typst craft | `typst-writer` / `compose-chapter` |
| Track | `devtracks/_archive/chapter-form-lab/` |
| Boundaries | [`references/boundaries.md`](references/boundaries.md) |
| Roles | [`references/roles.md`](references/roles.md) |
