# AGENTS.md — Book Layouting with Typst

Instructions for AI coding agents (Grok, Claude Code, Copilot, …) in this repository.

**Canonical project rules** (architecture, component inventory, build flags, knowledge lifecycle)
live in [`CLAUDE.md`](CLAUDE.md) and are also auto-loaded. This file is the **skill-routing
and multi-agent discovery** layer. Do not restate CLAUDE architecture prose here.

## What this is

A reproducible **Typst book-production system** plus Typst reference/showcase **and** a
productized **toolset** for reuse outside this monorepo. Flagship showcase: `src/main.typ`
(8 Teile, chapters `00`–`25`). **Consumer runtime:** `packages/bookkit` (+ optional
`bookkit-didactics`), skill-pack under `toolset/skill-pack/`, starter `toolset/starter/`,
CLI `scripts/bookkit` **v0.1.2**.

```bash
# From studio or after bookkit init:
./scripts/bookkit doctor --root .
./scripts/bookkit build --root . --entry main.typ   # enforces --ignore-system-fonts --font-path fonts
#import "/packages/bookkit/lib.typ": *               # foundation
#import "/packages/bookkit-didactics/lib.typ": *    # optional medical facet
```

Layers: **Package = code**, **Skills = procedures**, **CLI = orchestration**, **MCP deferred**.
Do **not** clone `src/chapters` or `research/` into consumers. Studio dogfoods packages via
thin re-exports in `src/styles/*` and foundation `src/components/*`.

**Prefer `./scripts/bookkit`** for build, validate, catalog, prepress, graphics, and
**boundaries**. Product map: [`devtracks/PRODUCT-BOUNDARIES.md`](devtracks/PRODUCT-BOUNDARIES.md)
v0.3.1. Contracts: [`contracts/`](contracts/). W is a **reserved scaffold**
[`channels/web/`](channels/web/) (Astro not started) — not under `packages/bookkit`.
Do **not** load `research/` or `templates/` into default book-production context (Produkt R).

## Language

- **Book / chapter content:** German (professional / medical-didactic register where applicable).
- **Agent instructions, skills, guides, commit messages:** German or English; be precise either way.
- Prefer domain terms from existing chapters/components over inventing new German labels.

## Skill gate (read before acting)

Project skills encode hard-won conventions and **supersede general Typst advice** in their
domain. **Collaboration (who leads / done / CLEAN authority):**
`toolset/skill-pack/COLLABORATION-CONTRACT.md` — cite, do not fork.

| Skill | When |
|---|---|
| **`studio`** | **Default front door** (`/studio`): guided intake, situation menu, route to the right skill/CLI — use when unsure how to start |
| `typst-writer` | Any `.typ` create/edit, compile-error fix, layout-defect debug |
| `typst-extension` | Any `@preview` import, JSON/CSV data, `typst.toml`/CI, package choice |
| `bookkit` | Importing bookkit packages, starter/CLI consumer work, design-brief/presets |
| `compose-chapter` | Tech compose: feasibility note, `chapter.typ`, spike, validate (Produkt A) — **not** free didactic ideal / gold brief |
| `book-production-orchestrator` | **Full-book** durable drive: board + run-log, kickoff→print, L0–L3 between Human gates — after `/studio` chooses full book, or direct kickoff |
| `form-lab-orchestrator` | **Form Lab lab-learning** only: default **L2 autodrive** T→C→V→R→matrix→**S best-of** + harvest; `toolset/orchestration/form-lab/`; `toolset/compose/lab/`; studio situation **9** — **not** the default chapter ship path |
| `media-brief` | Media Brief + **Form Spec** + **Design Contract** + Design Critic until **Design CLEAN**; Accept only with Design+Visual CLEAN (Produkt B) — **not** production `.typ` or free-vision PNG gen |
| `medical-graphics` | After Design CLEAN: free vision → claim audit → harvest → realize → **Visual Critic on PNG until Visual CLEAN**; playbook `00–11` (Produkt B) — **not** Form Spec authorship or full compose |
| `open-assets` | Third-party / free visuals: source scan, license, attribution, MANIFEST/CREDITS — **before** free vision when realism/icons needed — **not** claim rewrite or free gen itself |
| `content-orchestrator` / `content-review` | Content maturity C1–C4 (Produkt C process) |
| `pinit-workflow` | Any `#pin*` / pinit annotation work |
| `skill-creator` | Create, improve, evaluate, or harvest skills |

**Canonical bodies:** platform skills under `.github/skills/<name>/` (or `toolset/skill-pack/`
for bookkit / compose-chapter / book-production-orchestrator / form-lab-orchestrator / studio).
**Domain exception:** `media-brief`, `medical-graphics`, and `open-assets` SoT under
`domains/medical/skill/`; discovery paths (`.github/skills/…`, `.grok/skills/…`,
`toolset/skill-pack/…`) are symlinks.

**Grok discovery:** Grok does **not** scan `.github/skills/` by default. Project skills are
exposed via relative symlinks under `.grok/skills/`. Edit the SoT body only; never fork a
second copy under `.grok/`.

Hard rules that the gate encodes (do not weaken):

- Production compose needs **H1 freeze** + later **H2 accept**. Validate green ≠ design quality.
- Design CLEAN → (conditional `open-assets`) → free vision → Visual CLEAN → packet → Accept → compose.
- Do not put medical genre logic into `packages/bookkit`. Do not copy chapter SoT into this repo.
- Never invent clinical claims; never agent-sign freeze / proof / imprimatur.
- Form Lab is studio **9** only — not the default for “layout this chapter”.

Human gates: `domains/content-maturity/checkpoints.md`. Full-book runbook:
`docs/BOOK-PRODUCTION-RUNBOOK.md`. Roles / today’s flow:
[`devtracks/ROLES-AND-FLOW.md`](devtracks/ROLES-AND-FLOW.md).

## Build (always reproducible flags)

Studio compiler pin: **Typst 0.15.0** (CI). Prefer `./scripts/bookkit` over ad-hoc wrappers.

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

- Windows wrapper: `scripts/build.ps1 -Mode <fast|watch|ua|print|print-rgb>`. Setup: `SETUP-WINDOWS.md`.
- This checkout also runs on Linux/WSL with the CLI above (`./scripts/bookkit`, `./scripts/build.sh`).
- Fonts: Typst-bundled **Libertinus Serif** + **DejaVu Sans Mono**; `fonts/` holds **Font Awesome 6**.
  Theme tokens already use that stack — do **not** reintroduce Calibri / Segoe / Inconsolata
  under `--ignore-system-fonts`.
- Print pipeline: `prepress/README.md`. Image DPI: `python3 scripts/check-image-dpi.py`.

## Architecture (one-liner)

**theme (data) → styles (rules) → components → chapters → main.**

Change visual constants in `src/styles/theme.typ` (re-export of `packages/bookkit/theme.typ`),
not hardcoded in components/chapters. Full inventory: `CLAUDE.md` → Architecture.

## Knowledge + product map

See [`docs/KNOWLEDGE-MAP.md`](docs/KNOWLEDGE-MAP.md). Core rule:

> **Devtracks are working memory, skills are long-term memory.**

Open tracks and archive index: [`devtracks/README.md`](devtracks/README.md)
(currently no open feature tracks; governance docs stay at `devtracks/` root).
Consumer guide: [`docs/CONSUMER.md`](docs/CONSUMER.md). Folder legend: [`docs/REPO-MAP.md`](docs/REPO-MAP.md).

**Production flow (v0.3.1):** C draft → content-review / **freeze** → B brief → Accept
(`channel_scope` `print`\|`web`\|`both`) → **A** compose/validate and/or **W** web →
**proof / imprimatur**. Release package: `contracts/` · ADR 50–60.

**Lab ≠ production:** Form Lab (`toolset/orchestration/form-lab/`, `toolset/compose/lab/`)
is lab-learning (studio 9), not the default chapter ship path.

Workspace UX only (no fifth product): `workspaces/kursbuch-layout.code-workspace`.

## Working conventions

1. **Minimal diffs.** Touch only files needed for the task; no drive-by refactors or unsolicited docs.
2. **Compile to verify** Typst changes: full book or a focused `typst compile` of the affected file.
3. **Visual defects:** export PNG pages (`--format png --ppi 200 --pages N`) and inspect before claiming fixed.
4. **Packages:** always pin full versions (`@preview/cetz:0.3.4`); prefer selective imports.
5. **Do not** invent package versions — verify against Universe / local cache when unsure.
6. **Research pipeline** (`research/pipeline/`, large JSON under `research/data/`): leave alone unless the task is ecosystem survey work.

## Related projects

Layout/PDF production for **Kursbuch 5.0** content may live here or consume patterns from this
repo; the Kursbuch content workspace is separate. Do not pull medical content authorship rules
from there into this design-system repo unless the user asks.
