# Form Lab orchestration runtime

**Purpose:** Multi-session **Chapter Form Lab** — medium-extreme passes with iterative craft to medium-optimum, then comparison + synthesis.

**Track:** `devtracks/chapter-form-lab/`  
**Not:** full book production (`book-production/`). Sibling pattern (board / run-log / route / resume).

## Layout

```text
toolset/orchestration/form-lab/
  README.md                 # this file
  _templates/               # copy into <lab-id>/ at kickoff
  <lab-id>/                 # e.g. gicht-2026-08
    kickoff.md
    board.md
    run-log.md
    route.md
    pins.md
    passes/T|C|V|R|S|D/
      HAND-OFF.md
      medium-rules.md
      critique-rNN.md
      exhaustion.md
    comparison/
      matrix.md
```

## Outputs

```text
dist/form-lab/<lab-id>/<pass>/chapter.pdf
dist/form-lab/<lab-id>/<pass>/p*.png
toolset/compose/pilots/form-lab-<chapter>-<pass>/
```

## Resume

**Orchestrator only:**

```text
Resume Form Lab board <lab-id> as Orchestrator only.
Read board.md + run-log.md + route.md. Route next; do not craft the pass.
```

**Pass Worker:**

```text
Form Lab Pass <P> Worker. Load toolset/orchestration/form-lab/<lab-id>/passes/<P>/HAND-OFF.md
```

## Prompt craft + Semantic Read (Pass R **and** Pass V glyphs)

**SoT (shared with medical-graphics):**  
`domains/medical/skill/medical-graphics/references/prompt-and-semantic-read.md`  
Pointer: [`PROMPT-AND-SEMANTIC-READ.md`](PROMPT-AND-SEMANTIC-READ.md)

| Rule | Detail |
|---|---|
| Prompts (R) | Short, positive, one concrete subject; §1.1 jargon preflight; clinical context when job is in-situ |
| Glyphs (V) | Same Semantic Read **without caption**; thumbnail-legible anatomy; anti-doodle reject patterns |
| After each gen/draw | Open PNG → Semantic Read (hard gate) |
| FAIL | Regen/redraw or demote — not nit; no medium-optimum / matrix winner with FAIL mounted |
| Matrix | Caption-free teaching scores only; caption-dependent ≤2; FAIL cannot win |
| Pass S | Strongest PASS per job; **omit is a win** (no forced medium collage) |
| Redundancy | One primary aspect per learner job |
| Captions | Prefer *Aspekt/Kachel/Gestalt*; caption never clears Semantic Read FAIL |

Templates: `medium-rules-R.md` · `medium-rules-V.md` · `medium-rules-S.md` · `comparison-matrix.md`  
Loop: `devtracks/chapter-form-lab/pass-craft-loop.md`

## Status

Templates and first lab-id are created at **kickoff** after Human locks D1–D8 in the track plan.
