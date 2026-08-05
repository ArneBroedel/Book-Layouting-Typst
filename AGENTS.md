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

**Prefer `./scripts/bookkit`** for build, validate, catalog, prepress, graphics, and **boundaries** (one binary).
Product map (C content · B media · A print · W web): [`devtracks/PRODUCT-BOUNDARIES.md`](devtracks/PRODUCT-BOUNDARIES.md); contracts [`contracts/`](contracts/); W scaffold [`channels/web/`](channels/web/).
Do **not** load `research/` or `templates/` into default book-production agent context (Produkt R).

## Language

- **Book / chapter content:** German (professional / medical-didactic register where applicable).
- **Agent instructions, skills, guides, commit messages:** German or English; be precise either way.
- Prefer domain terms from existing chapters/components over inventing new German labels.

## Skill gate (read before acting)

Project skills encode hard-won conventions and **supersede general Typst advice** in their domain.  
**Collaboration (who leads / done / CLEAN authority):** short law `toolset/skill-pack/COLLABORATION-CONTRACT.md` — cite, do not fork.

| Skill | When |
|---|---|
| **`studio`** | **Default front door** (`/studio`): guided intake, situation menu, route to the right skill/CLI — use when unsure how to start |
| `typst-writer` | Any `.typ` create/edit, compile-error fix, layout-defect debug |
| `typst-extension` | Any `@preview` import, JSON/CSV data, `typst.toml`/CI, package choice |
| `bookkit` | Importing bookkit packages, starter/CLI consumer work, design-brief/presets |
| `compose-chapter` | Tech compose: feasibility note, catalog-whitelist `chapter.typ`, spike, validate chapter (Produkt A) — **not** free didactic ideal / gold brief |
| `book-production-orchestrator` | **Full-book** durable drive: board + run-log, kickoff→print, L0–L3 between Human gates — after `/studio` chooses full book, or direct kickoff |
| `form-lab-orchestrator` | **Form Lab lab-learning** only: default **L2 autodrive** full T→C→V→R→matrix→**S best-of** + harvest; board under `toolset/orchestration/form-lab/` (+ `_archive/`); chapter.typ `toolset/compose/lab/`; studio situation **9** — **not** default production chapter pipeline |
| `media-brief` | Media Brief + **Form Spec** + **Design Contract** + Design Critic until **Design CLEAN**; Accept only with Design+Visual CLEAN (Produkt B) — **not** production `.typ` or free-vision PNG gen |
| `medical-graphics` | After Design CLEAN: free vision → claim audit → harvest→atoms → realize → **Visual Critic on PNG until Visual CLEAN**; KL form library; Decision Note (Produkt B) — **not** Form Spec authorship or full compose |
| `open-assets` | Third-party / free visuals: source scan, license ampule, attribution, MANIFEST/CREDITS/sidecars, personality rights, print size — **before** free vision when realism/icons needed; Pass O — **not** claim rewrite or free gen itself |
| `content-orchestrator` / `content-review` | Content maturity C1–C4 (Produkt C process) |
| `pinit-workflow` | Any `#pin*` / pinit annotation work |
| `skill-creator` | Create, improve, evaluate, or harvest skills |

**Canonical bodies:** platform skills under `.github/skills/<name>/` (or `toolset/skill-pack/` for bookkit / compose-chapter / book-production-orchestrator / form-lab-orchestrator / studio).  
**Domain exception:** `media-brief`, `medical-graphics`, and `open-assets` SoT under `domains/medical/skill/`; discovery paths
(`.github/skills/…`, `.grok/skills/…`, `toolset/skill-pack/…`) are symlinks.

**Grok discovery:** Grok does **not** scan `.github/skills/` by default. Project skills are exposed
via relative symlinks under `.grok/skills/`. Edit the SoT body only (platform: `.github/skills/` or
skill-pack; media-brief / medical-graphics / open-assets: `domains/medical/skill/…`); never fork a second copy under `.grok/`.

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

**Boundaries v0.3.1** — `devtracks/PRODUCT-BOUNDARIES.md` (C/B/A + Web **W**, ADR **50–60**) · contracts `contracts/` · CLI `bookkit boundaries` · `devtracks/CONSENSUS-v0.md`.  
**Orchestration complete** (Waves 0–5, E1–E12): `devtracks/ORCHESTRATION.md` + `_orchestration/board.md`.

| Area | Product | Path |
|---|---|---|
| Print layout platform (this repo) | **A** | `packages/`, `toolset/` (compose, **boundaries**, form-catalog) |
| form-catalog core | A | `toolset/form-catalog/core/` (pin `VERSION` = `0.1.0`) |
| compose engine | A | `toolset/compose/` |
| shared contracts (release package) | shared | `contracts/` · `./scripts/bookkit boundaries` |
| medical domain media | **B** | `domains/medical/` (split candidate; Phase 3 deferred) |
| Kursbuch / content works | **C** | **external** — never SoT in this repo |
| Web layout (Astro o. ä.) | **W** | scaffold `channels/web/` (runtime with pilot; not bookkit) |
| **workspace-split** (archived) | **A/B/C** structure | `devtracks/_archive/workspace-split/` · modular monorepo done; inventory `devtracks/_archive/workspace-inventory/`; Phase 3 split deferred (D2) |
| **kl-form-language** (archived) | **B** | `devtracks/_archive/kl-form-language/` · system complete; ops: `playbook/10-kl-chapter-pipeline.md` |
| **skill collaboration trilogy** (archived 2026-08-03) | A/B/C control | Index `devtracks/skill-collaboration/` · T1–T3A + R1/R2 under `devtracks/_archive/` · Contract SoT: `toolset/skill-pack/COLLABORATION-CONTRACT.md` · soft packet gate: `./scripts/bookkit validate --quality-packet PATH` |
| **free-vision-harvest** (archived) | **B** | `devtracks/_archive/free-vision-harvest/` · track/harvest/proximity (substrate for realize) |
| Consumer guide | A | `docs/CONSUMER.md` |

**Lab vs production:** Form Lab (`toolset/orchestration/form-lab/`, `toolset/compose/lab/`) is **lab-learning** (studio 9) — not the default chapter ship path. See `docs/KNOWLEDGE-MAP.md`.

**Flow (v0.2 historical):** C content → B media brief → A feasibility/spike → B accept → A compose/validate → PDF.  
**Flow (v0.3 production):** C draft → **content-review / freeze** → B brief → Accept (`channel_scope` `print`\|`web`\|`both`) → **A** compose/validate and/or **W** web → **proof / imprimatur**. Release package: `contracts/` · ADR **50–60**.  
**Form Lab (optional research):** studio situation 9 → `form-lab-orchestrator` L0–L7 → harvest (vocabulary/bridge) — never silent default for chapter layout.

**Skill gate:** **`studio`** (`/studio`) for guided intake when the path is unclear; **`book-production-orchestrator`** for full-book board → print (runbook `docs/BOOK-PRODUCTION-RUNBOOK.md`); **`form-lab-orchestrator`** for Form Lab lab-learning only (situation 9; not production default); `media-brief` (Design CLEAN) + **`open-assets`** (source scan / rights docs when third-party visuals) + **`medical-graphics`** (Visual CLEAN) (domain B); `compose-chapter` / `bookkit` / `typst-writer` (platform A); **`content-review`** + **`content-orchestrator`** (C — under `domains/content-maturity/skill/`). Design-quality living SoT: B skills + templates (provenance: `devtracks/_archive/design-quality-system/`). Graphics guides: `Guides/Medical-Presentation-Forms.md`, `Guides/Medical-Graphics-Playbook.md`. Human checkpoints: `domains/content-maturity/checkpoints.md` (**H-Design**, **H-Explore**, **H-Gfx**). Do not put medical genre logic into `packages/bookkit` foundation. Do not copy chapter SoT into this repo. No Genesis-style score auto-rewrite loops on clinical content. Validate green ≠ design quality.

**Workspace:** `workspaces/kursbuch-layout.code-workspace` (multi-root **A + B + C + W** UX only — no fifth product).

**Archived (harvested):** skill-collaboration trilogy + residuals (`collab-control-plane`, `open-assets-production-wire`, `orchestration-quality-state`, `collab-wire-dogfood`, `quality-packet-soft-gate` → Contract + wire + board cells + soft `--quality-packet` WARN gate), `design-quality-system` (CLEAN doctrine → B skills), `chapter-form-lab` (→ `form-lab-orchestrator` + runtime), `multi-chapter-explore-layout` (→ book-production-orchestrator multi-chapter ops), `workspace-split`, `workspace-inventory`, `kl-form-language`, `medical-graphics`, `content-maturity`, `agentic-adaptations` (runtime stays under `packages/`, `toolset/`, `domains/`).  
Earlier: `form-catalog`, `media-design`, `compose-pipeline`, `platform-boundaries`, plus more under `devtracks/_archive/`.


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
