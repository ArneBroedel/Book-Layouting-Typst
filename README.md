# Book Layouting with Typst

**Mission A first:** a reproducible **Typst layout platform** (packages + CLI + skills) that turns content into print-ready PDFs.

Companion layers live in the same modular monorepo until a split trigger fires:

| Produkt | What | Path |
|---|---|---|
| **A** | Layout platform — bookkit, form-catalog, compose, CLI | `packages/`, `toolset/`, `scripts/bookkit` |
| **B** | Domain media (medical briefs, graphics) | `domains/medical/` (split candidate) |
| **C** | Content works + editorial kit | **external** content + transitional `domains/content-maturity/` |
| **R** | Ecosystem survey | `research/` — **not** default agent context |

Boundaries: [`devtracks/PRODUCT-BOUNDARIES.md`](devtracks/PRODUCT-BOUNDARIES.md) · modular monorepo (workspace-split archived): [`devtracks/_archive/workspace-split/`](devtracks/_archive/workspace-split/).

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
```

Scaffold a new consumer:

```bash
./scripts/bookkit init /path/to/my-book
```

**Always** build with repro flags (enforced by CLI):

```bash
typst compile --root . --ignore-system-fonts --font-path fonts main.typ dist/book.pdf
```

Full consumer guide: **[`docs/CONSUMER.md`](docs/CONSUMER.md)**  
Pins: bookkit `0.1.0` · form-catalog `0.1.0`.

### CLI surface (`./scripts/bookkit`)

```text
doctor | build | watch | ua | print | init | brief-check
validate | catalog check | prepress dpi|pdfx
graphics vision|refine|spike-init|manifest
```

---

## Showcase (dogfood)

The multi-part medical-didactic book under `src/` dogfoods the packages via thin re-exports.

```bash
# Linux / this workspace
./scripts/build.sh fast
# or:
typst compile --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
```

Windows: `./scripts/setup.ps1` then `./scripts/preflight.ps1 -RunBuildTest` · `./scripts/build.ps1 -Mode fast`.

Print (needs Ghostscript): `./scripts/build.sh print` or `./scripts/bookkit print --entry src/main.typ`.

---

## Project map (short)

```text
packages/bookkit/          foundation runtime
packages/bookkit-didactics/ optional didactic boxes
toolset/                   compose, form-catalog, starter, skill-pack, examples
scripts/bookkit            unified CLI
src/                       showcase book (not content SoT for other works)
domains/medical/           Produkt B media + harvested Typst libs
domains/content-maturity/  Produkt C process kit (transitional)
pilots/                    dogfood only (see pilots/README.md)
research/                  ecosystem lab (not default context)
docs/CONSUMER.md           how to consume this platform
```

---

## Agent skills

Prefer **project skills** over generic Typst advice. Discovery: `.github/skills/` · Grok: `.grok/skills/` (symlinks to SoT).

| Skill | When |
|---|---|
| **`studio`** (`/studio`) | **Start here** — guided intake, situation menu, routes the right workflow |
| `book-production-orchestrator` | full-book board → print (after studio or direct kickoff) |
| `bookkit` | packages, starter, full CLI |
| `compose-chapter` | feasibility → compose → `bookkit validate` |
| `typst-writer` | any `.typ` edit / layout debug |
| `media-brief` / `medical-graphics` | domain B (SoT under `domains/medical/skill/`) |
| `content-orchestrator` / `content-review` | content maturity (C) |

Prefer **`./scripts/bookkit …`** over hunting ad-hoc scripts.

---

## Principles

- Reproducible: `--ignore-system-fonts --font-path fonts`
- **theme → styles → components → chapters → main**
- No medical genre logic in foundation `packages/bookkit`
- Content SoT stays external (C); no auto-heal compose loops
- Intermediate AI vision PNGs: CANONICAL policy under `domains/medical/assets/`

## Related

- Knowledge map: [`docs/KNOWLEDGE-MAP.md`](docs/KNOWLEDGE-MAP.md)
- Agent instructions: [`AGENTS.md`](AGENTS.md) · architecture detail: [`CLAUDE.md`](CLAUDE.md)
- Prepress: [`prepress/README.md`](prepress/README.md)
