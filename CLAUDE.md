# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

A reproducible Typst book-production system. The flagship artifact is a multi-part medical-didactic showcase book (`src/main.typ`) with ~18 chapters, ~28 reusable components, and a layered design-token system. The repo doubles as a Typst reference/showcase: later chapters intentionally demonstrate optional `@preview` packages and patterns. There is also a package-research pipeline (top-level Python + large JSON files) used to survey the Typst ecosystem.

## Build & run

The canonical build is a single `typst compile` invocation with reproducibility flags. **Always** include `--ignore-system-fonts --font-path fonts` so output matches across machines:

```bash
typst compile --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
typst watch   --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
```

Build artifacts go to `dist/` (gitignored). The official wrapper is PowerShell (`scripts/build.ps1 -Mode <fast|watch|ua|test|test-watch>`), mirrored by VS Code tasks (`typst: build (fast)`, `typst: watch`, `typst: build (UA-1)`). The PowerShell scripts are Windows-targeted (the project's documented platform is Windows 11 without WSL/Docker); when working from Linux/WSL, invoke the `typst` command directly with the flags above rather than the `.ps1` scripts.

- `-Mode ua` adds `--pdf-standard ua-1` for accessible PDF/UA output → `dist/book-ua.pdf`.
- `-Mode test` compiles `test/main.typ` → `dist/test.pdf` (note: `test/main.typ` may not exist; `test/` currently holds standalone experiments like `pinit-radial.typ`). Compile a single `.typ` directly to test it in isolation.

`scripts/preflight.ps1 [-RunBuildTest]` validates the toolchain (Windows). `scripts/setup.ps1` installs prerequisites.

## Architecture

Strict separation of concerns; read top-down: **theme (data) → styles (rules) → components → chapters → main**.

- **`src/styles/theme.typ`** — pure design tokens, *no* `set`/`show` rules. Dictionaries: `palette`, `gradients`, `type-scale`, `space`, `fonts`. All visual constants live here; components and chapters import these names rather than hardcoding values.
- **`src/styles/typography.typ`** — `setup-typography()` show rule (fonts, heading scale, paragraph rules).
- **`src/styles/page.typ`** — `setup-pages()` show rule: A4 geometry, asymmetric binding margins (`inside`/`outside`), and `context`-based running headers/footers that query level-1 headings to print the current chapter title and suppress headers on chapter-start pages.
- **`src/components/`** — reusable building blocks grouped by kind: `blocks.typ` (callouts, cards, quotes, code blocks), `inline.typ` (badges, tags, kbd), `tables.typ`, `grids.typ`, `layouts.typ` (sidebar/magazine/scientific multi-column), `spreads.typ` (cover, chapter-opener, `part-page`).
- **`src/chapters/`** — content, numbered `00`–`18`. Each is `#include`-d by `main.typ`. Chapters 01–07 are dependency-free; 08+ deliberately demonstrate `@preview` packages (CeTZ, Fletcher, Codly, Showybox, Tablem, pinit, etc.).
- **`src/data/`** — external data consumed by data-driven chapters: `glossary.yml`, `*.bib`, `sample-patients.json`, `sample-study.csv`.

`main.typ` assembly order matters: the cover renders with zero margins *before* `setup-pages()`, then a `pagebreak()` + `show: setup-pages()` restores normal geometry for the rest. Parts are introduced with `part-page(...)` from `spreads.typ`.

When editing a component, change tokens in `theme.typ` rather than inlining colors/sizes. Design system: teal primary `#0d7377`, amber accent `#d4a039`; Libertinus Serif body, Calibri/Segoe UI sans, Inconsolata mono. Fonts must be present in `fonts/`.

## Skills (read before acting)

`.github/skills/` contains project-authored skills that encode hard-won conventions and supersede general advice in their domain:

- **typst-writer** — use for *any* `.typ` creation/edit, compile-error fix, or layout-defect debugging.
- **typst-extension** — use when importing any `@preview` package, loading JSON/CSV data, or configuring `typst.toml`/CI.
- **pinit-workflow** — use for any `#pin*` / pinit annotation work; references `devtracks/pinit-workflow/` (debug module, regression tests, style guide, AI playbook).
- **git-steward** — strict Git/GitHub policy: never branch/switch without explicit request, never commit on `master`/`main`, prefer PR flow, never `reset --hard`/`clean -fd`/force-push without approval.

## Development process (devtracks)

Feature work is spec-driven and tracked under `devtracks/<name>/` with at least `spec.md` and `plan.md`; complex work splits into `phaseN.md` files linked from `plan.md`. Follow this structure when starting a non-trivial feature.

## Package-research pipeline

Top-level Python scripts (`fetch_packages.py`, `process_index.py`, `process_templates.py`, `refine_json.py`, `check_versions.py`) build and refine the large ecosystem-survey JSON files (`all_packages.json`, `all_templates.json`, `index.json`, `latest_packages_meta.json`) plus `readmes/`. These are research/reference data, independent of the book build — touch only when updating the ecosystem survey.
