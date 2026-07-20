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
| `media-brief` | Media Brief, free didactic media design, gold brief, Accept after feasibility/spike (Produkt B) — **not** production `.typ` |
| `pinit-workflow` | Any `#pin*` / pinit annotation work |
| `skill-creator` | Create, improve, evaluate, or harvest skills |

**Canonical bodies:** platform skills under `.github/skills/<name>/` (or `toolset/skill-pack/` for bookkit / compose-chapter).  
**Domain exception:** `media-brief` SoT is `domains/medical/skill/media-brief/`; discovery paths
(`.github/skills/media-brief`, `.grok/skills/media-brief`, `toolset/skill-pack/media-brief`) are symlinks.

**Grok discovery:** Grok does **not** scan `.github/skills/` by default. Project skills are exposed
via relative symlinks under `.grok/skills/`. Edit the SoT body only (platform: `.github/skills/` or
skill-pack; media-brief: `domains/medical/skill/…`); never fork a second copy under `.grok/`.

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
**Full implementation control plane:** `devtracks/ORCHESTRATION.md` (waves, subagents, reviews, E1–E12).

| Track / area | Product | Path |
|---|---|---|
| Layout platform (this repo) | **A** | `packages/`, `toolset/` |
| `form-catalog` | A core | `toolset/form-catalog/core/` |
| `compose-pipeline` | A engine | `toolset/compose/` |
| `media-design` / medical domain | **B** | `domains/medical/` (split candidate) |
| Kursbuch / content works | **C** | **external** — never SoT in this repo |
| `platform-boundaries` | meta | prep + split readiness |
| Orchestration | meta | `devtracks/ORCHESTRATION.md` |

**Flow:** C content → B media brief → A feasibility/spike → B accept → A compose/validate → PDF.

**Skill gate:** `media-brief` (domain B); `compose-chapter` / `bookkit` / `typst-writer` (platform A). Do not put medical genre logic into `packages/bookkit` foundation. Do not copy chapter SoT into this repo.

**Workspace:** `workspaces/kursbuch-layout.code-workspace` (A+C multi-root UX only).

Superseded specs: `presentation-pipeline`, `didactic-media`, `plan-driven-layout`.

**Archived:** toolset MVP etc. under `devtracks/_archive/`.


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
