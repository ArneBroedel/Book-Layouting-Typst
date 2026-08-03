# Form Lab orchestration runtime

**Purpose:** **Chapter Form Lab** — full iterative medium extremes (T→C→V→R), comparison, **Pass S best-of fusion**, and **harvest**.

**Mission class:** **lab-learning** — not the default production chapter pipeline.  
**Entry skill:** [`form-lab-orchestrator`](../../skill-pack/form-lab-orchestrator/SKILL.md)  
**Default autonomy:** **L2 autodrive-to-complete** (full program; do not stop after L0 handoff).  
**Studio:** situation **9** → handoff to that skill (Studio does **not** run craft itself).  
**Track:** `devtracks/_archive/chapter-form-lab/`  
**Not:** full book production (`book-production/`). Sibling pattern (board / run-log / route / resume).

---

## Lab ≠ production

| Form Lab | Production (studio 1–2, book-production) |
|---|---|
| Learn which medium wins; fuse **best-of** in S | Ship Accept + compose + print |
| Extremes T / C / V / R then S | Single best path under Design+Visual CLEAN |
| COMPLETE requires **S + harvest** | COMPLETE = gates + PDF |
| Higher R gen budgets (kickoff D8) | Production free-vision caps stay |

Do **not** open Form Lab for every chapter. Use it when the goal is form research, full medium comparison, or best-of fusion before production defaults.

---

## Full program (per lab)

```text
L0 pins → T* → C* → V* → R* → matrix → S best-of* → (next lab) → L7 harvest → COMPLETE
* iterative ≥ min rounds, PNG + critique each round
```

**Pass S:** fuse matrix winners using **this lab’s prepared assets** (omit-is-win). Not a collage quota.

---

## Layout

```text
toolset/orchestration/form-lab/
  README.md
  _templates/
  <lab-id>/
    kickoff.md  board.md  run-log.md  route.md  pins.md
    passes/T|C|V|R|S|D/
    comparison/
    harvest/                 # or portfolio-level
  portfolio-<wave>/
    board.md
    harvest/
```

### Templates (`_templates/`)

| File | Role |
|---|---|
| `board.md` / `kickoff.md` / `route.md` / `HAND-OFF.md` | OR + worker state |
| `medium-rules-{T,C,V,R,S}.md` | Critic allow/deny; S = best-of fusion |
| `medium-rules-O.md` | **Pilot only:** Open-Asset pass (not production default) |
| `comparison-matrix.md` | jobs × passes |
| `form-vocabulary.md` / `production-bridge.md` | L7 |
| `human-s-rank.md` / `sr-log.md` | optional |

**Open-Asset pilot (2026-08):** policy `domains/medical/OPEN-ASSET-POLICY.md` · portfolio `portfolio-open-asset-2026-08/` · labs `*-2026-08-o` · compose `form-lab-*-o`. Parallel to T–S; **not** autodrive COMPLETE requirement.

---

## Outputs

```text
dist/form-lab/<lab-id>/<pass>/chapter.pdf
dist/form-lab/<lab-id>/<pass>/p*.png
toolset/compose/pilots/form-lab-<chapter>-<pass>/
domains/medical/assets/form-lab/<lab-id>/…   # V/R assets
```

---

## Terminal COMPLETE (hard gate)

1. Full T→C→V→R optima (or residual + OR note)  
2. Matrix + **Pass S best-of**  
3. `harvest/form-vocabulary.md` + `production-bridge.md` (lab **or** portfolio)  
4. Board `harvest=done` (or explicit waiver)

**PDF of T alone is not COMPLETE.**

---

## Resume

**Default autodrive:**

```text
Resume Form Lab board <lab-id|portfolio-id> autonomy L2 autodrive-to-complete.
Read board.md + run-log.md + route.md. Continue to COMPLETE; do not stop at handoff.
Skill: form-lab-orchestrator.
```

**Route-only opt-out:**

```text
Resume Form Lab board <lab-id> as Orchestrator only (route-only).
```

---

## Prompt craft + Semantic Read (Pass R **and** Pass V glyphs)

**SoT:** `domains/medical/skill/medical-graphics/references/prompt-and-semantic-read.md`  
Pointer: [`PROMPT-AND-SEMANTIC-READ.md`](PROMPT-AND-SEMANTIC-READ.md)

| Rule | Detail |
|---|---|
| After each gen/draw | Open PNG → Semantic Read (hard gate) |
| FAIL | Regen/redraw or demote — not matrix/S winner |
| Matrix | Caption-free teaching; caption-dependent ≤2 |
| Pass S | Strongest PASS per job; **omit is a win**; use prepared winners |
| Captions | Aspekt/Kachel/Gestalt; never clear SR FAIL |

Loop: `devtracks/_archive/chapter-form-lab/pass-craft-loop.md` · skill refs: `autonomy.md`, `phases.md`, `craft.md`

---

## Status

- Default skill path: **autodrive-to-complete**.  
- Wave-c harvest example: `portfolio-2026-08-c/harvest/`.  
- Clean restarts use new lab-id / pilot slug; no silent prior-wave asset reuse.
