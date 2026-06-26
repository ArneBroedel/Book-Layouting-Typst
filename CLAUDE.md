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

- **`src/styles/theme.typ`** — pure design tokens, *no* `set`/`show` rules. Dictionaries: `palette`, `gradients`, `type-scale`, `space`, `fonts`, `didactics` (medical box labels/colors), `evidence` (recommendation grades / LOE). All visual constants live here; components and chapters import these names rather than hardcoding values.
- **`src/styles/typography.typ`** — `setup-typography()` show rule (fonts, heading scale, paragraph rules).
- **`src/styles/page.typ`** — `setup-pages()` show rule: A4 geometry, asymmetric binding margins (`inside`/`outside`), and `context`-based running headers/footers that query level-1 headings to print the current chapter title and suppress headers on chapter-start pages.
- **`src/components/`** — reusable building blocks grouped by kind: `blocks.typ` (callouts, cards, quotes, code blocks), `inline.typ` (badges, tags, kbd, `evidence-badge`/`loe-badge`, `qty`/`qty-range`), `tables.typ` (styled/comparison + `score-table`, `reference-table` with deviation highlighting, `long-table` with repeating header, `cspan`/`rspan`), `grids.typ`, `layouts.typ` (sidebar/magazine/scientific multi-column + `margin-note`/`margin-setup` via `@preview/marginalia`), `spreads.typ` (cover, chapter-opener, `part-page`, `feature-spread`/`clinical-case-spread`), `didactics.typ` (medical-didactic boxes: learning-objectives, summary, memo, definition, clinical-pearl, cave, excursus, mnemonic, ddx, clinical-case), `exam.typ` (`mc-question`/`solution-key`), `charts.typ` (CeTZ medical charts: bar, box, Kaplan-Meier, ROC, percentile, forest), `diagrams.typ` (`cycle-diagram`/`pathway-diagram`), `pedigree.typ` (genetics genogram), `figures.typ` (image/text-flow: `plate` native floats, `wrap-figure` via `@preview/wrap-it`, `kontur-figur` contour-wrap via `@preview/meander`, `bildtafel` subfigures via `@preview/subpar`, `anatomie-figur` labeled-image markers+legend, `bild-detail` self-built magnifier, `setup-figure-numbering` native per-chapter numbering), `page-design.typ` (page-background/decoration, all native unless noted: `watermark` background/foreground, `full-bleed` zero-margin page fill/image, `section-background` breakable fill that flows across page breaks, `margin-band` binding-aware outer color band, `thumb-index` stepped edge tabs / Daumenregister keyed to `theme.part-colors`, `page-frame`/`corner-ornament` decorative borders, `gradient-panel`/`gradient-text`/`tiling-background`), `art.typ` (generative full-bleed page art, almost all from pure Typst primitives: `aurora` radial-gradient mesh, `phyllotaxis` golden-angle dot spiral, `moire` op-art interference, `wave-field` native-`curve` sine interference, `mandala` radial petal symmetry, `mondrian` neo-plasticist blocks, `type-poster` gradient typography, `guilloche` parametric rosette, `kaleidoscope` mirrored-SVG bloom; `art-page` zero-margin wrapper + own vivid `art-colors`/`spectrum` palette).
- **`src/chapters/`** — content, numbered `00`–`24`. Each is `#include`-d by `main.typ`. Chapters 01–07 are dependency-free; 08+ deliberately demonstrate `@preview` packages (CeTZ, Fletcher, Codly, Showybox, Tablem, pinit, etc.). Chapters 19–22 (Teil VI) showcase the medical-textbook capability set: didactic boxes & clinical tables (19), medical data-visualization (20), conceptual diagrams incl. alchemist structures & timeliney timelines (21), image integration & text-image flow (22). Chapter 23 (Teil VII) showcases page-background/design: gradients & color areas, breakable section backgrounds, tiling textures, watermarks, full-bleed pages, margin bands, the thumb-index/Daumenregister, and decorative frames/corner ornaments. Chapter 24 (also Teil VII) is an artistic interlude — full-bleed generative page art from `components/art.typ`. The back matter (`07`) renders an auto-collected index via `@preview/in-dexter` from `index[…]` markers placed throughout chapters 19–24.
- **`src/data/`** — external data consumed by data-driven chapters: `glossary.yml`, `*.bib`, `sample-patients.json`, `sample-study.csv`.
- **`src/assets/`** — image files used by chapters (e.g. `anatomy/*.svg`). `image()` resolves paths relative to the calling file, so `figures.typ` helpers expect root-absolute paths (`/src/assets/…`).

`main.typ` assembly order matters: the cover renders with zero margins *before* `setup-pages()`, then a `pagebreak()` + `show: setup-pages()` restores normal geometry for the rest. Parts are introduced with `part-page(...)` from `spreads.typ`.

When editing a component, change tokens in `theme.typ` rather than inlining colors/sizes. Design system: teal primary `#0d7377`, amber accent `#d4a039`; Libertinus Serif body, Calibri/Segoe UI sans, Inconsolata mono. Fonts must be present in `fonts/`.

## Skills (read before acting)

`.github/skills/` contains project-authored skills that encode hard-won conventions and supersede general advice in their domain:

- **typst-writer** — use for *any* `.typ` creation/edit, compile-error fix, or layout-defect debugging.
- **typst-extension** — use when importing any `@preview` package, loading JSON/CSV data, or configuring `typst.toml`/CI.
- **pinit-workflow** — use for any `#pin*` / pinit annotation work; self-contained (debug module, regression tests, style guide, and AI playbook ship inside the skill).
- **skill-creator** — use to create, improve, evaluate, or benchmark a skill (e.g. when harvesting a completed devtrack into a skill).

## Knowledge architecture

Knowledge is organized into five types — full version, lifecycle, and "where do I put X?" list in `docs/KNOWLEDGE-MAP.md`:

- **Governance / conventions** → `CLAUDE.md` + `docs/KNOWLEDGE-MAP.md` (how to work in this repo).
- **Durable reference** (the *why*) → `Guides/` (Typst theory + lessons-learned ledger).
- **Executable skills** (the *what*) → `.github/skills/`.
- **Active dev plans** → `devtracks/` (nothing completed stays here).
- **External / generated data** → `research/` (+ `templates/` study corpus).

Core rule: **devtracks are working memory, skills are long-term memory.** A track is "done" only once its learnings are *harvested* and it is archived.

## Development process (devtracks)

Feature work is spec-driven and tracked under `devtracks/<name>/` with at least `spec.md` and `plan.md`; complex work splits into `phaseN.md` files linked from `plan.md`. Follow this structure when starting a non-trivial feature. **On completion, harvest** the track's learnings into the relevant skill(s) (via `skill-creator`) and guide(s), add a `## Harvested into` footer to its `plan.md`, then `git mv` it to `devtracks/_archive/`. Devtracks never hold completed work; `_archive/` is frozen provenance.

## Package-research pipeline

Python scripts under `research/pipeline/` (`fetch_packages.py`, `process_index.py`, `process_templates.py`, `refine_json.py`, `check_versions.py`) build and refine the large ecosystem-survey JSON files under `research/data/` (`all_packages.json`, `all_templates.json`, `index.json`, `latest_packages_meta.json`). These are research/reference data, independent of the book build — touch only when updating the ecosystem survey.
