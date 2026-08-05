# Form Lab chapter sources (runs, not engine)

**Purpose:** Typst `chapter.typ` trees for Chapter Form Lab (studio situation 9 / `form-lab-orchestrator`).

| | |
|---|---|
| **This tree** | `toolset/compose/lab/form-lab-<chapter>[-wave]-<pass>/` |
| **Not this** | `toolset/compose/pilots/` — production / dogfood chapters |
| **Boards** | `toolset/orchestration/form-lab/` (+ `_archive/` for completed waves) |
| **Assets** | `domains/medical/assets/form-lab/` (stable path — do not relocate) |
| **Build out** | `dist/form-lab/` (gitignored) |

Engine code lives under `toolset/compose/` siblings: validate, fixtures, tests, spikes, scripts.  
Lab ≠ production: see `docs/KNOWLEDGE-MAP.md` and `toolset/orchestration/form-lab/README.md`.
