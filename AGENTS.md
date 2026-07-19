# AGENTS.md — Book Layouting with Typst

Instructions for AI coding agents (Grok, Claude Code, Copilot, …) in this repository.

**Canonical project rules** (architecture, component inventory, build flags, knowledge lifecycle)
live in [`CLAUDE.md`](CLAUDE.md) and are also auto-loaded. This file adds multi-agent discovery,
platform notes, and the skill gate. Prefer not to restate long architecture prose here.

## What this is

A reproducible **Typst book-production system** plus Typst reference/showcase. Flagship artifact:
`src/main.typ` → multi-part medical-didactic book (chapters `00`–`25`, ~28 components, design-token
theme). Package-research pipeline under `research/` is independent of the book build.

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
| `pinit-workflow` | Any `#pin*` / pinit annotation work |
| `skill-creator` | Create, improve, evaluate, or harvest skills |

**Canonical bodies:** `.github/skills/<name>/` (shared source of truth for all tools).

**Grok discovery:** Grok does **not** scan `.github/skills/` by default. Project skills are exposed
via relative symlinks under `.grok/skills/` → `../../.github/skills/…`. Edit the files under
`.github/skills/` only; never fork a second copy under `.grok/`.

## Build (always reproducible flags)

```bash
# Linux / this workspace (preferred here)
typst compile --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
typst watch   --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
# PDF/UA-1
typst compile --root . --ignore-system-fonts --font-path fonts --pdf-standard ua-1 \
  src/main.typ dist/book-ua.pdf
# Convenience wrapper (mirrors scripts/build.ps1)
./scripts/build.sh fast|watch|ua
```

**Never omit** `--ignore-system-fonts --font-path fonts`. Output must match across machines.

- Official Windows wrapper: `scripts/build.ps1 -Mode <fast|watch|ua|test|test-watch>`.
- Primary documented platform is Windows 11; this checkout also runs on Linux with the CLI above.
- Fonts under `fonts/` + Typst-bundled (Libertinus Serif, DejaVu Sans Mono, FA6). Theme tokens already
  use that stack — do not reintroduce Calibri/Segoe/Inconsolata under `--ignore-system-fonts`.

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

### Active tracks

- **`devtracks/typst-toolset/`** — productize layout/design for reuse (packages, skill-pack, starter, CLI; primary)
- `devtracks/skill-eval-baseline/` — skill quality baseline (enabler for toolset Phase 2)
- `devtracks/skill-reuse-pilot/` — reuse pilot; **exit criterion of toolset Phase 2**
- `devtracks/prepress-pdfx/` — print/PDF-X for showcase book (independent of toolset MVP)

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
