# Book Layouting with Typst

**Mission A first:** a reproducible **Typst print layout platform** (packages + CLI + skills) that turns frozen content + accepted media into print-ready PDFs — with clear task separation for content, assets, and a future web channel.

Companion layers live in the same modular monorepo until a split trigger fires:

| Produkt | What | Path |
|---|---|---|
| **C** | Content works (text, claims, freeze) | **external** + process kit `domains/content-maturity/` |
| **B** | Domain media (briefs, open-assets, graphics) | `domains/medical/` (split candidate) |
| **A** | Print layout — bookkit, form-catalog, compose, CLI | `packages/`, `toolset/`, `scripts/bookkit` |
| **W** | Web layout (Astro) | isolated PoC `channels/web/` — not bookkit |
| **R** | Ecosystem survey | `research/` — **not** default agent context |

**Boundaries (policy + hard checks):** [`devtracks/PRODUCT-BOUNDARIES.md`](devtracks/PRODUCT-BOUNDARIES.md) v0.3.1 · shared contracts [`contracts/`](contracts/) · CLI `./scripts/bookkit boundaries` · monorepo history: [`devtracks/_archive/workspace-split/`](devtracks/_archive/workspace-split/).

---

## Start in 5 minutes (layout consumer)

```bash
# From a studio checkout
./scripts/bookkit doctor --root .
./scripts/bookkit build --root . --entry toolset/examples/minimal/main.typ --out dist/toolset/minimal.pdf
./scripts/bookkit validate \
  --typ toolset/compose/fixtures/pass_minimal/chapter.typ \
  --content toolset/compose/fixtures/pass_minimal/content.md \
  --accept toolset/compose/fixtures/pass_minimal/accept.md \
  --genre-minima toolset/compose/fixtures/pass_minimal/genre-minima.yaml \
  --root . --skip-compile
./scripts/bookkit catalog check
./scripts/bookkit boundaries check-tree
./scripts/bookkit boundaries check-release contracts/fixtures/pass_print_minimal.yaml
```

Scaffold a new consumer:

```bash
./scripts/bookkit init /path/to/my-book
```

**Always** build with repro flags (enforced by CLI):

```bash
typst compile --root . --ignore-system-fonts --font-path fonts main.typ dist/book.pdf
```

Studio compiler pin: **Typst 0.15.0** (CI and `packages/bookkit/typst.toml`).  
Package pins: bookkit `0.1.0` · bookkit-didactics `0.1.0` · form-catalog `0.1.0`.  
CLI tool version: `bookkit` **0.1.2** (not a package pin).

Full consumer guide: **[`docs/CONSUMER.md`](docs/CONSUMER.md)**

### CLI surface (`./scripts/bookkit` v0.1.2)

```text
doctor | build | watch | ua | print | init | brief-check
validate | catalog check | boundaries check-tree|check-release|check
prepress dpi|pdfx | graphics vision|refine|spike-init|manifest
```

**Task order (production):** C Freeze → B Accept (`channel_scope`) → A print (W web when a pilot exists).  
Release package template: [`contracts/templates/chapter-release.template.yaml`](contracts/templates/chapter-release.template.yaml).

---

## Showcase (dogfood)

The multi-part medical-didactic book under `src/` (8 Teile, chapters `00`–`25`) dogfoods the packages via thin re-exports. Chapter map: [`src/SHOWCASE-README.md`](src/SHOWCASE-README.md).

```bash
# Linux / this workspace — prefer the unified CLI
./scripts/bookkit build --root . --entry src/main.typ --out dist/book.pdf
# or:
./scripts/build.sh fast
typst compile --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
```

Windows: `./scripts/setup.ps1` then `./scripts/preflight.ps1 -RunBuildTest` · `./scripts/build.ps1 -Mode fast`. Setup notes: [`SETUP-WINDOWS.md`](SETUP-WINDOWS.md).

Print (needs Ghostscript): `./scripts/build.sh print` or `./scripts/bookkit print --entry src/main.typ`.

---

## Project map (short)

```text
packages/bookkit/          A foundation runtime
packages/bookkit-didactics/ A optional didactic boxes
toolset/                   A compose, boundaries, form-catalog, starter, skill-pack
  compose/pilots/          production/dogfood chapter.typ
  compose/lab/             Form Lab chapter.typ only (lab-learning)
  orchestration/…          production boards vs form-lab (+ _archive)
scripts/bookkit            unified CLI (v0.1.2)
contracts/                 shared C/B/A/W release + pin contracts
channels/web/              W isolated Astro PoC (pins + npm in this folder only)
src/                       A showcase book (not content SoT for other works)
domains/medical/           B media + harvested Typst libs (gold briefs top-level)
domains/content-maturity/  C process kit (transitional)
workspaces/                multi-root UX (A+B+C+W)
pilots/                    consumer dogfood only (≠ compose/pilots)
research/                  R ecosystem lab (not default context)
docs/KNOWLEDGE-MAP.md      knowledge layers + Lab≠Prod
docs/REPO-MAP.md           folder legend
docs/CONSUMER.md           how to consume this platform
```

---

## Agent skills

When the path is unclear, start with **`/studio`**. Full routing table: [`AGENTS.md`](AGENTS.md).

| Skill | When |
|---|---|
| **`studio`** (`/studio`) | Guided intake, situation menu, routes the right workflow |
| `book-production-orchestrator` | full-book board → print |
| `bookkit` / `compose-chapter` / `typst-writer` | packages, chapter.typ, any `.typ` edit |
| Domain B / C | `media-brief`, `medical-graphics`, `open-assets`, `content-review` — see AGENTS |

Prefer **`./scripts/bookkit …`** over hunting ad-hoc scripts. Skill SoT: `toolset/skill-pack/` · discovery: `.agents/skills/` (Grok) · `.github/skills/` (Copilot).

---

## Principles

- Reproducible: `--ignore-system-fonts --font-path fonts`
- Fonts: Typst-bundled Libertinus Serif + DejaVu Sans Mono; `fonts/` holds Font Awesome 6
- **theme → styles → components → chapters → main**
- No medical genre logic in foundation `packages/bookkit`
- Content SoT stays external (C); assets SoT in B; print A / web W share pins, not code
- No auto-heal compose loops; intermediate AI vision PNGs: CANONICAL under `domains/medical/assets/`

## Related

- Knowledge map: [`docs/KNOWLEDGE-MAP.md`](docs/KNOWLEDGE-MAP.md)
- Agent instructions: [`AGENTS.md`](AGENTS.md) · architecture: [`CLAUDE.md`](CLAUDE.md)
- Roles / flow: [`devtracks/ROLES-AND-FLOW.md`](devtracks/ROLES-AND-FLOW.md)
- Prepress: [`prepress/README.md`](prepress/README.md)
