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

## Status

Templates and first lab-id are created at **kickoff** after Human locks D1–D8 in the track plan.
