# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

A reproducible Typst book-production system **and generalizable toolset**. The flagship showcase is a multi-part medical-didactic book (`src/main.typ`) with ~18 chapters and many components. **Product runtime** lives under `packages/bookkit` (foundation) and `packages/bookkit-didactics` (optional facet); consumers use `toolset/starter`, `scripts/bookkit`, and `toolset/skill-pack/`. Showcase `src/styles/*` and foundation components **re-export** the packages (dogfood). The repo also surveys the Typst ecosystem under `research/`.

## Build & run

The canonical build is a single `typst compile` invocation with reproducibility flags. **Always** include `--ignore-system-fonts --font-path fonts` so output matches across machines:

```bash
typst compile --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
typst watch   --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
```

Build artifacts go to `dist/` (gitignored). The official wrapper is PowerShell (`scripts/build.ps1 -Mode <fast|watch|ua|print|print-rgb|test|test-watch>`), mirrored by VS Code tasks (`typst: build (fast)`, `typst: watch`, `typst: build (UA-1)`). The PowerShell scripts are Windows-targeted (the project's documented platform is Windows 11 without WSL/Docker); when working from Linux/WSL, use `./scripts/build.sh <fast|watch|ua|print|print-rgb>` or invoke `typst` directly with the flags above rather than the `.ps1` scripts.

- `-Mode ua` adds `--pdf-standard ua-1` for accessible PDF/UA output → `dist/book-ua.pdf`.
- `-Mode print` builds a print-ready PDF → `dist/book-print.pdf`: Typst with `--input print=true` (3 mm bleed + crop marks + TrimBox) then Ghostscript PDF/X-3 CMYK post-step (`scripts/print-pdfx.sh`). Requires `gs` on PATH. Intermediate RGB: `-Mode print-rgb` → `dist/book-print-rgb.pdf`. Details: `prepress/README.md`.
- `-Mode test` compiles `test/main.typ` → `dist/test.pdf` (note: `test/main.typ` may not exist; `test/` currently holds standalone experiments like `pinit-radial.typ`). Compile a single `.typ` directly to test it in isolation.

`scripts/preflight.ps1 [-RunBuildTest]` validates the toolchain (Windows). `scripts/setup.ps1` installs prerequisites.

## Architecture

Strict separation of concerns; read top-down: **theme (data) → styles (rules) → components → chapters → main**.

**Toolset boundary:** implementation of foundation tokens/components is in `packages/bookkit/`; medical boxes in `packages/bookkit-didactics/`. Paths under `src/styles/` and foundation `src/components/` are thin re-exports so existing chapter imports keep working while dogfooding the package.

- **`src/styles/theme.typ`** — re-export of package theme (pure design tokens). Dictionaries: `palette`, `gradients`, `type-scale`, `space`, `fonts`, `didactics`, `evidence`, `legal`.
- **`src/styles/typography.typ`** — re-export of `setup-typography()`.
- **`src/styles/page.typ`** — re-export of `setup-pages()` (A4, binding margins, hydra headers; print bleed when `--input print=true`).
- **`src/styles/print.typ`** — re-export of prepress helpers (`print-mode`, `page-bleed`, `crop-marks`) from `packages/bookkit/print.typ`.
- **`src/components/`** — reusable building blocks grouped by kind: `blocks.typ` (callouts, cards, quotes, code blocks), `inline.typ` (badges, tags, kbd, `evidence-badge`/`loe-badge`, `qty`/`qty-range`), `tables.typ` (styled/comparison + `score-table`, `reference-table` with deviation highlighting, `long-table` with repeating header, `cspan`/`rspan`), `grids.typ`, `layouts.typ` (sidebar/magazine/scientific multi-column + `margin-note`/`margin-setup` via `@preview/marginalia`), `spreads.typ` (cover, chapter-opener, `part-page`, `feature-spread`/`clinical-case-spread`), `didactics.typ` (medical-didactic boxes: learning-objectives, summary, memo, definition, clinical-pearl, cave, excursus, mnemonic, ddx, clinical-case), `exam.typ` (`mc-question`/`solution-key`), `charts.typ` (CeTZ medical charts: bar, box, Kaplan-Meier, ROC, percentile, forest), `diagrams.typ` (`cycle-diagram`/`pathway-diagram`), `pedigree.typ` (genetics genogram), `figures.typ` (image/text-flow: `plate` native floats, `wrap-figure` via `@preview/wrap-it`, `kontur-figur` contour-wrap via `@preview/meander`, `bildtafel` subfigures via `@preview/subpar`, `anatomie-figur` labeled-image markers+legend, `bild-detail` self-built magnifier, `setup-figure-numbering` native per-chapter numbering), `page-design.typ` (page-background/decoration, all native unless noted: `watermark` background/foreground, `full-bleed` zero-margin page fill/image, `section-background` breakable fill that flows across page breaks, `margin-band` binding-aware outer color band, `thumb-index` stepped edge tabs / Daumenregister keyed to `theme.part-colors`, `page-frame`/`corner-ornament` decorative borders, `gradient-panel`/`gradient-text`/`tiling-background`), `art.typ` (generative full-bleed page art, almost all from pure Typst primitives: `aurora` radial-gradient mesh, `phyllotaxis` golden-angle dot spiral, `moire` op-art interference, `wave-field` native-`curve` sine interference, `mandala` radial petal symmetry, `mondrian` neo-plasticist blocks, `type-poster` gradient typography, `guilloche` parametric rosette, `kaleidoscope` mirrored-SVG bloom; `art-page` zero-margin wrapper + own vivid `art-colors`/`spectrum` palette), `legal.typ` (Berufs- und Rechtskunde, all native + token-bound via `theme.legal`: `norm`/`paragraf` inline statute citation, `gesetzeskasten` verbatim-norm box with `absatz`/`nummer`/`buchstabe` hanging-indent structure, `rechtsprechung` case-law box, `legaldefinition`, `pruefungsschema`/`gutachten` exam-scheme boxes, `tatbestand-rechtsfolge` norm anatomy, `normenhierarchie` rank pyramid, `randnummer` margin-numbered commentary, `abkuerzungen` abbreviation register).
- **`src/chapters/`** — content, numbered `00`–`25`. Each is `#include`-d by `main.typ`. Chapters 01–07 are dependency-free; 08+ deliberately demonstrate `@preview` packages (CeTZ, Fletcher, Codly, Showybox, Tablem, pinit, etc.). Chapters 19–22 (Teil VI) showcase the medical-textbook capability set: didactic boxes & clinical tables (19), medical data-visualization (20), conceptual diagrams incl. alchemist structures & timeliney timelines (21), image integration & text-image flow (22). Chapter 23 (Teil VII) showcases page-background/design: gradients & color areas, breakable section backgrounds, tiling textures, watermarks, full-bleed pages, margin bands, the thumb-index/Daumenregister, and decorative frames/corner ornaments. Chapter 24 (also Teil VII) is an artistic interlude — full-bleed generative page art from `components/art.typ`. Chapter 25 (Teil VIII) covers Berufs- und Rechtskunde — legal-text presentation from `components/legal.typ` (statute boxes, norm citation, case law, Gutachten, Normenhierarchie). The back matter (`07`) renders an auto-collected index via `@preview/in-dexter` from `index[…]` markers placed throughout chapters 19–25.
- **`src/data/`** — external data consumed by data-driven chapters: `glossary.yml`, `*.bib`, `sample-patients.json`, `sample-study.csv`.
- **`src/assets/`** — image files used by chapters (e.g. `anatomy/*.svg`). `image()` resolves paths relative to the calling file, so `figures.typ` helpers expect root-absolute paths (`/src/assets/…`).

`main.typ` assembly order matters: the cover renders with zero margins *before* `setup-pages()`, then a `pagebreak()` + `show: setup-pages()` restores normal geometry for the rest. Parts are introduced with `part-page(...)` from `spreads.typ`.

When editing a component, change tokens in `theme.typ` rather than inlining colors/sizes. Design system: teal primary `#0d7377`, amber accent `#d4a039`; Libertinus Serif body, Calibri/Segoe UI sans, Inconsolata mono. Fonts must be present in `fonts/`.

## Product boundaries (generalisable platform)

- **A — this repo:** layout platform (`packages/`, `toolset/form-catalog/core`, `toolset/compose`). Generalisable; no content SoT.
- **B — domain media:** `domains/medical/` (recipes, briefs, media skill) — split candidate for a separate repo.
- **C — content works:** external (e.g. Kursbuch); read-only inputs for pilots.
- Roles/workflow: `devtracks/CONSENSUS-v0.md`. Repo policy: `devtracks/PRODUCT-BOUNDARIES.md`.

## Skills (read before acting)

`.github/skills/` is the **canonical** location for project-authored skills (shared by Claude Code, Copilot, and Grok). They encode hard-won conventions and supersede general advice in their domain:

- **typst-writer** — use for *any* `.typ` creation/edit, compile-error fix, or layout-defect debugging.
- **typst-extension** — use when importing any `@preview` package, loading JSON/CSV data, or configuring `typst.toml`/CI.
- **bookkit** — use when building with `/packages/bookkit`, starter/CLI consumers, design-brief, or didactics facet.
- **media-brief** / **medical-graphics** — domain B (SoT under `domains/medical/skill/`); ideal presentation vs. code/asset/A/B graphic realization.
- **pinit-workflow** — use for any `#pin*` / pinit annotation work; self-contained (debug module, regression tests, style guide, and AI playbook ship inside the skill).
- **skill-creator** — use to create, improve, evaluate, or benchmark a skill (e.g. when harvesting a completed devtrack into a skill).

**Grok skill discovery:** Grok does not scan `.github/skills/` by default. Relative symlinks under `.grok/skills/` point at the same directories so Grok auto-loads them. Edit SoT only (platform: `.github/skills/` or skill-pack; domain: `domains/medical/skill/…`); never fork under `.grok/`. Multi-agent entry notes: `AGENTS.md`.

## Knowledge architecture

Knowledge is organized into five types — full version, lifecycle, and "where do I put X?" list in `docs/KNOWLEDGE-MAP.md`:

- **Governance / conventions** → `CLAUDE.md` + `AGENTS.md` + `docs/KNOWLEDGE-MAP.md` (how to work in this repo).
- **Durable reference** (the *why*) → `Guides/` (Typst theory + lessons-learned ledger).
- **Executable skills** (the *what*) → `.github/skills/`.
- **Active dev plans** → `devtracks/` (nothing completed stays here).
- **External / generated data** → `research/` (+ `templates/` study corpus).

Core rule: **devtracks are working memory, skills are long-term memory.** A track is "done" only once its learnings are *harvested* and it is archived.

## Development process (devtracks)

Feature work is spec-driven and tracked under `devtracks/<name>/` with at least `spec.md` and `plan.md`; complex work splits into `phaseN.md` files linked from `plan.md`. Follow this structure when starting a non-trivial feature. **On completion, harvest** the track's learnings into the relevant skill(s) (via `skill-creator`) and guide(s), add a `## Harvested into` footer to its `plan.md`, then `git mv` it to `devtracks/_archive/`. Devtracks never hold completed work; `_archive/` is frozen provenance.

## Package-research pipeline

Python scripts under `research/pipeline/` (`fetch_packages.py`, `process_index.py`, `process_templates.py`, `refine_json.py`, `check_versions.py`) build and refine the large ecosystem-survey JSON files under `research/data/` (`all_packages.json`, `all_templates.json`, `index.json`, `latest_packages_meta.json`). These are research/reference data, independent of the book build — touch only when updating the ecosystem survey.
