# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

> **Mission + boundaries (read first)**  
> **C** = content external + process kit (`domains/content-maturity/`) · **B** = medical media (`domains/medical/`) · **A** = **print** layout platform (`packages/`, `toolset/`, `scripts/bookkit`) · **W** = isolated Astro PoC (`channels/web/`) · **R** = `research/` (not default context).  
> **Start when unsure:** skill **`studio`** (slash `/studio`) — guided intake, then route. Prefer **`./scripts/bookkit`** for build / validate / prepress / graphics / **boundaries**. Product map: [`devtracks/PRODUCT-BOUNDARIES.md`](devtracks/PRODUCT-BOUNDARIES.md) v0.3.1 (ADR 50–60). Contracts: [`contracts/`](contracts/). Consumer guide: [`docs/CONSUMER.md`](docs/CONSUMER.md). Skill routing: [`AGENTS.md`](AGENTS.md).

## What this is

A reproducible Typst book-production system **and generalizable toolset**. The flagship
showcase is a multi-part medical-didactic book (`src/main.typ`): **8 Teile**, chapters
`00`–`25` (26 files; `07` is back matter). **Product runtime** lives under
`packages/bookkit` (foundation) and `packages/bookkit-didactics` (optional facet);
consumers use `toolset/starter`, `scripts/bookkit` **v0.1.2**, and `toolset/skill-pack/`.
Showcase `src/styles/*` and foundation `src/components/*` **re-export** the packages
(dogfood). The repo also surveys the Typst ecosystem under `research/` (Produkt R —
not default agent context).

Chapter map: [`src/SHOWCASE-README.md`](src/SHOWCASE-README.md).

## Build & run

Studio compiler pin: **Typst 0.15.0** (CI SoT: `.github/workflows/build.yml`;
`packages/bookkit/typst.toml` and `bookkit-didactics` declare the same).

The canonical build is a single `typst compile` with reproducibility flags. **Always**
include `--ignore-system-fonts --font-path fonts`:

```bash
typst compile --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
typst watch   --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
```

Prefer the unified CLI (same flags enforced):

```bash
./scripts/bookkit build --root . --entry src/main.typ --out dist/book.pdf
./scripts/bookkit print --root . --entry src/main.typ   # needs gs
```

Build artifacts go to `dist/` (gitignored).

**Windows:** `scripts/build.ps1 -Mode <fast|watch|ua|print|print-rgb>` · setup
`scripts/setup.ps1` · preflight `scripts/preflight.ps1 [-RunBuildTest]`. Notes:
[`SETUP-WINDOWS.md`](SETUP-WINDOWS.md).

**Linux / WSL (this checkout):** `./scripts/build.sh <fast|watch|ua|print|print-rgb>`
or `./scripts/bookkit` / raw `typst` as above. Both platforms are first-class.

- `-Mode ua` / `bookkit ua` → `--pdf-standard ua-1` → `dist/book-ua.pdf`.
- `-Mode print` / `bookkit print` → Typst `--input print=true` (3 mm bleed + crop marks
  + TrimBox) then Ghostscript PDF/X-3 CMYK (`scripts/print-pdfx.sh`). Needs `gs`.
  Intermediate RGB: `-Mode print-rgb` → `dist/book-print-rgb.pdf`. Details: `prepress/README.md`.
- `test/` holds standalone experiments (e.g. `pinit-radial.typ`). Compile a
  single `.typ` there directly; the build wrappers have no `test` mode.

VS Code tasks: `typst: build (fast)`, `typst: watch`, `typst: build (UA-1)`.

## Architecture

Strict separation of concerns; read top-down: **theme (data) → styles (rules) →
components → chapters → main**.

**Toolset boundary:** foundation tokens/components live in `packages/bookkit/`;
medical boxes in `packages/bookkit-didactics/`. Paths under `src/styles/` and
foundation `src/components/` are thin re-exports so existing chapter imports keep
working while dogfooding the package.

| Path | Role |
|---|---|
| `src/styles/theme.typ` | Re-export of package theme (tokens: `palette`, `gradients`, `type-scale`, `space`, `fonts`, `didactics`, `evidence`, `legal`, `part-colors`) |
| `src/styles/typography.typ` | Re-export of `setup-typography()` |
| `src/styles/page.typ` | Re-export of `setup-pages()` (A4, binding margins, hydra headers; print bleed when `--input print=true`) |
| `src/styles/print.typ` | Re-export of `print-mode` / `page-bleed` / `crop-marks` from `packages/bookkit/print.typ` |

### Components (`src/components/`)

| File | Lives in | What |
|---|---|---|
| `blocks.typ` | bookkit | callout, card, quotes, code-block, key-concept, protocol-steps |
| `inline.typ` | bookkit | badge, tag, kbd, `evidence-badge` / `loe-badge`, `qty` / `qty-range` |
| `tables.typ` | bookkit | styled / comparison / `score-table`, `reference-table`, `long-table`, `cspan` / `rspan` |
| `grids.typ` | bookkit | gallery / feature / stats / comparison grids |
| `layouts.typ` | bookkit | sidebar / magazine / scientific + `margin-note` (`@preview/marginalia`) |
| `spreads.typ` | bookkit + didactics facet | cover, chapter-opener, `part-page`, `feature-spread`; `clinical-case-spread` from didactics |
| `didactics.typ` | bookkit-didactics | learning-objectives, summary, memo, definition, clinical-pearl, cave, excursus, mnemonic, ddx, clinical-case |
| `exam.typ` | bookkit-didactics | `mc-question` / `solution-key` |
| `charts.typ` | showcase-only | CeTZ medical charts (bar, box, Kaplan-Meier, ROC, percentile, forest) |
| `diagrams.typ` | showcase-only | `cycle-diagram` / `pathway-diagram` |
| `pedigree.typ` | showcase-only | genetics genogram |
| `figures.typ` | showcase-only | `plate`, `wrap-figure`, `kontur-figur`, `bildtafel`, `anatomie-figur`, `bild-detail`, `setup-figure-numbering` |
| `page-design.typ` | showcase-only | watermark, full-bleed, section-background, margin-band, thumb-index, page-frame, gradient/tiling |
| `art.typ` | showcase-only | generative full-bleed page art (`aurora`, `phyllotaxis`, `mandala`, …) |
| `legal.typ` | showcase-only | statute / case-law / Gutachten / Normenhierarchie (token-bound via `theme.legal`) |

### Showcase chapters

`src/chapters/` `00`–`25`, each `#include`-d by `main.typ`. Full part list:
[`src/SHOWCASE-README.md`](src/SHOWCASE-README.md).

- **01–06** dependency-free core (typography, structure, components, layouts).
- **08+** demonstrate `@preview` packages (CeTZ, Fletcher, Codly, Showybox, Tablem, pinit, …).
- **19–22** (Teil VI) medical-textbook set: didactic boxes, data viz, diagrams, image/text flow.
- **23–24** (Teil VII) page design + generative art.
- **25** (Teil VIII) Berufs- und Rechtskunde.
- **07** back matter: auto-collected index via `@preview/in-dexter` from `index[…]` markers in 19–25.

`src/data/` — `glossary.yml`, `*.bib`, `sample-patients.json`, `sample-study.csv`.  
`src/assets/` — images (e.g. `anatomy/*.svg`). `image()` resolves relative to the calling
file, so `figures.typ` helpers expect root-absolute paths (`/src/assets/…`).

`main.typ` assembly order: cover with zero margins **before** `setup-pages()`, then
`pagebreak()` + `show: setup-pages()`. Parts use `part-page(...)` from `spreads.typ`.

When editing a component, change tokens in `theme.typ` rather than inlining colors/sizes.
Design system: teal primary `#0d7377`, amber accent `#d4a039`. Fonts under
`--ignore-system-fonts`: **Libertinus Serif** (body + headings), **DejaVu Sans Mono**
(code), Font Awesome 6 from `fonts/`. There is no bundled sans — do not reintroduce
Calibri / Segoe / Inconsolata.

## Product boundaries (generalisable platform)

- **C — content works:** external (e.g. Kursbuch); process kit transitional `domains/content-maturity/`; never chapter SoT here.
- **B — domain media:** `domains/medical/` (recipes, briefs, assets, media/graphics/open-assets skills) — split candidate.
- **A — print layout (this repo core):** `packages/`, `toolset/` (compose, form-catalog, **boundaries**), CLI. Generalisable; no content SoT.
- **W — web layout:** isolated Astro PoC in `channels/web/` (own `package.json`, pins only); **not** under `packages/bookkit`.
- **Lab ≠ production:** Form Lab is lab-learning (studio **9** / `form-lab-orchestrator`), not the default chapter ship path.
- **Shared contracts:** `contracts/` + `./scripts/bookkit boundaries check-tree|check-release`.
- Roles/workflow: [`devtracks/ROLES-AND-FLOW.md`](devtracks/ROLES-AND-FLOW.md) · policy: `devtracks/PRODUCT-BOUNDARIES.md` v0.3.1 · role theory: `devtracks/CONSENSUS-v0.md`.

## Skills (read before acting)

Routing table and discovery rules: [`AGENTS.md`](AGENTS.md). Load the matching skill
before acting in its domain. Grok discovers via `.agents/skills/` (relative
symlinks to SoT). Edit SoT only (`toolset/skill-pack/`; domain B:
`domains/medical/skill/…`); never fork under discovery paths.

Graphics playbook: `domains/medical/skill/medical-graphics/playbook/` **`00–11`**.
Guides: `Guides/Medical-Presentation-Forms.md`, `Guides/Medical-Graphics-Playbook.md`.

## Knowledge architecture

Full version, lifecycle, and “where do I put X?”: [`docs/KNOWLEDGE-MAP.md`](docs/KNOWLEDGE-MAP.md).

Core rule: **devtracks are working memory, skills are long-term memory.** A track is
“done” only once its learnings are *harvested* and it is archived.

## Development process (devtracks)

Feature work is spec-driven under `devtracks/<name>/` with at least `spec.md` and
`plan.md`; complex work splits into `phaseN.md` files linked from `plan.md`. **On
completion, harvest** into the relevant skill(s) (via `skill-creator`) and guide(s),
add a `## Harvested into` footer to `plan.md`, then `git mv` to `devtracks/_archive/`.
Open-track index: [`devtracks/README.md`](devtracks/README.md).

## Package-research pipeline

Python scripts under `research/pipeline/` build the ecosystem-survey JSON under
`research/data/`. Independent of the book build — touch only when updating the survey.
