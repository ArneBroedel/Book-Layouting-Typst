# AGENTS.md — Book Layouting with Typst

Instructions for AI coding agents (Grok, Claude Code, Copilot, …) in this repository.

**Canonical project rules** (architecture, component inventory, build flags, knowledge lifecycle)
live in [`CLAUDE.md`](CLAUDE.md) and are also auto-loaded. This file adds multi-agent discovery,
platform notes, and the skill gate. Prefer not to restate long architecture prose here.

## What this is

A reproducible **Typst book-production system** plus Typst reference/showcase **and** a productized
**toolset** for reuse outside this monorepo. Flagship showcase: `src/main.typ` → multi-part
medical-didactic book. **Consumer runtime:** `packages/bookkit` (+ optional `bookkit-didactics`),
skill-pack under `toolset/skill-pack/`, starter `toolset/starter/`, CLI `scripts/bookkit`.
Package-research pipeline under `research/` is independent of the book build.

### Consumer path (toolset)

```bash
# From studio or after bookkit init:
./scripts/bookkit doctor --root .
./scripts/bookkit build --root . --entry main.typ   # enforces --ignore-system-fonts --font-path fonts
#import "/packages/bookkit/lib.typ": *               # foundation
#import "/packages/bookkit-didactics/lib.typ": *    # optional medical facet
```

Layers: **Package = code**, **Skills = procedures**, **CLI = orchestration**, **MCP deferred**.
Do **not** clone `src/chapters` or `research/` into consumers. Studio dogfoods packages via thin
re-exports in `src/styles/*` and foundation `src/components/*`.

## Language

- **Book / chapter content:** German (professional / medical-didactic register where applicable).
- **Agent instructions, skills, guides, commit messages:** German or English; be precise either way.
- Prefer domain terms from existing chapters/components over inventing new German labels.

## Skill gate (read before acting)

Project skills encode hard-won conventions and **supersede general Typst advice** in their domain.

| Skill | When |
|---|---|
| `typst-writer` | Any `.typ` create/edit, compile-error fix, layout-defect debug |
| `typst-extension` | Any `@preview` import, JSON/CSV data, `typst.toml`/CI, package choice |
| `bookkit` | Importing bookkit packages, starter/CLI consumer work, design-brief/presets |
| `compose-chapter` | Tech compose: feasibility note, catalog-whitelist `chapter.typ`, spike, validate chapter (Produkt A) — **not** free didactic ideal / gold brief |
| `media-brief` | Media Brief + **Form Spec** for ambitious visual units, free didactic ideal, Accept after feasibility/spike/graphics (Produkt B) — **not** production `.typ` or free-vision PNG gen |
| `medical-graphics` | After Form Spec/Brief: free vision → **claim audit** → recreate/hybrid/refine (playbook); raster end only gated; Decision Note; domain assets (Produkt B) — **not** Form Spec authorship or full compose |
| `pinit-workflow` | Any `#pin*` / pinit annotation work |
| `skill-creator` | Create, improve, evaluate, or harvest skills |

**Canonical bodies:** platform skills under `.github/skills/<name>/` (or `toolset/skill-pack/` for bookkit / compose-chapter).  
**Domain exception:** `media-brief` and `medical-graphics` SoT under `domains/medical/skill/`; discovery paths
(`.github/skills/…`, `.grok/skills/…`, `toolset/skill-pack/…`) are symlinks.

**Grok discovery:** Grok does **not** scan `.github/skills/` by default. Project skills are exposed
via relative symlinks under `.grok/skills/`. Edit the SoT body only (platform: `.github/skills/` or
skill-pack; media-brief / medical-graphics: `domains/medical/skill/…`); never fork a second copy under `.grok/`.

## Build (always reproducible flags)

```bash
# Linux / this workspace (preferred here)
typst compile --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
typst watch   --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
# PDF/UA-1
typst compile --root . --ignore-system-fonts --font-path fonts --pdf-standard ua-1 \
  src/main.typ dist/book-ua.pdf
# Print (3 mm bleed + crop marks + Ghostscript PDF/X-3 CMYK) — needs `gs`
./scripts/build.sh print
# Convenience wrapper (mirrors scripts/build.ps1)
./scripts/build.sh fast|watch|ua|print|print-rgb
```

**Never omit** `--ignore-system-fonts --font-path fonts`. Output must match across machines.

- Official Windows wrapper: `scripts/build.ps1 -Mode <fast|watch|ua|print|print-rgb|test|test-watch>`.
- Primary documented platform is Windows 11; this checkout also runs on Linux with the CLI above.
- Fonts under `fonts/` + Typst-bundled (Libertinus Serif, DejaVu Sans Mono, FA6). Theme tokens already
  use that stack — do not reintroduce Calibri/Segoe/Inconsolata under `--ignore-system-fonts`.
- Print pipeline docs: `prepress/README.md`. Image DPI preflight: `python3 scripts/check-image-dpi.py`.

## Architecture (one-liner)

**theme (data) → styles (rules) → components → chapters → main.**

Change visual constants in `src/styles/theme.typ`, not hardcoded in components/chapters.
Full map: `CLAUDE.md` → Architecture.

## Knowledge architecture

See `docs/KNOWLEDGE-MAP.md`. Core rule:

> **Devtracks are working memory, skills are long-term memory.**

| Type | Location |
|---|---|
| Governance | `CLAUDE.md`, this file, `docs/KNOWLEDGE-MAP.md` |
| Durable reference (*why*) | `Guides/` |
| Executable skills (*what*) | `.github/skills/` (Grok: also via `.grok/skills/`) |
| Active plans only | `devtracks/` (completed → harvest → `_archive/`) |
| Generated ecosystem data | `research/` |

Non-trivial features: open `devtracks/<name>/` with `spec.md` + `plan.md`. On completion, harvest
into skills/guides, footer the plan, `git mv` to `devtracks/_archive/`.

### Active / recent tracks

**v0.2** — see `devtracks/CONSENSUS-v0.md` + `devtracks/PRODUCT-BOUNDARIES.md`.  
**Orchestration complete** (Waves 0–5, E1–E12): `devtracks/ORCHESTRATION.md` + `_orchestration/board.md`.

| Area | Product | Path |
|---|---|---|
| Layout platform (this repo) | **A** | `packages/`, `toolset/` |
| form-catalog core | A | `toolset/form-catalog/core/` (pin `VERSION` = `0.1.0`) |
| compose engine | A | `toolset/compose/` |
| medical domain media | **B** | `domains/medical/` (split candidate; Phase 3 deferred) |
| Kursbuch / content works | **C** | **external** — never SoT in this repo |
| **content-maturity** (MVP done) | **C** process | `devtracks/content-maturity/` · kit transitional `domains/content-maturity/` → split to C |
| **agentic-adaptations** (MVP done) | **C** (+ light A/B) | `devtracks/agentic-adaptations/` · kit extensions under `domains/content-maturity/` |
| Consumer guide | A | `docs/CONSUMER.md` |

**Flow (v0.2):** C content → B media brief → A feasibility/spike → B accept → A compose/validate → PDF.  
**Flow (v0.3 target):** C draft → **content-review / freeze** → B brief → A compose path → **proof / imprimatur** → print. Spec: `devtracks/content-maturity/`.

**Skill gate:** `media-brief` (Form Spec) + **`medical-graphics`** playbook (domain B); `compose-chapter` / `bookkit` / `typst-writer` (platform A); **`content-review`** + **`content-orchestrator`** (C — under `domains/content-maturity/skill/`, discovery via `.github/skills/` / `.grok/skills/`). Graphics guides: `Guides/Medical-Presentation-Forms.md`, `Guides/Medical-Graphics-Playbook.md`. Human checkpoints: `domains/content-maturity/checkpoints.md` (optional **H-Gfx** for risky production assets). Do not put medical genre logic into `packages/bookkit` foundation. Do not copy chapter SoT into this repo. No Genesis-style score auto-rewrite loops on clinical content.

**Workspace:** `workspaces/kursbuch-layout.code-workspace` (A+C multi-root UX only).

**Archived (harvested):** `form-catalog`, `media-design`, `compose-pipeline`, `platform-boundaries`, plus earlier tracks under `devtracks/_archive/`.


## Working conventions

1. **Minimal diffs.** Touch only files needed for the task; no drive-by refactors or unsolicited docs.
2. **Compile to verify** Typst changes: full book or a focused `typst compile` of the affected file.
3. **Visual defects:** export PNG pages (`--format png --ppi 200 --pages N`) and inspect before claiming fixed.
4. **Packages:** always pin full versions (`@preview/cetz:0.3.4`); prefer selective imports.
5. **Do not** invent package versions — verify against Universe / local cache when unsure.
6. **Research pipeline** (`research/pipeline/`, large JSON under `research/data/`): leave alone unless the task is ecosystem survey work.

## Related projects

Layout/PDF production for **Kursbuch 5.0** content may live here or consume patterns from this repo;
the Kursbuch content workspace is separate. Do not pull medical content authorship rules from there
into this design-system repo unless the user asks.
