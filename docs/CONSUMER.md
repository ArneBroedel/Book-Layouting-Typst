# Using this platform from another repo

This repository is primarily a **layout platform** (Produkt **A**). Other repos
consume packages, catalog, CLI, and skills — they do **not** treat studio
`src/chapters/` or `research/` as content source-of-truth.

| Produkt | What it is | Where |
|---|---|---|
| **A** | Layout platform (bookkit, form-catalog core, compose, starter, CLI) | this repo |
| **B** | Domain media (e.g. medical recipes, `media-brief`) | `domains/medical/` (optional; split candidate) |
| **C** | Content works (author Markdown, claims) | **external** — never SoT here |

Boundaries: [`devtracks/PRODUCT-BOUNDARIES.md`](../devtracks/PRODUCT-BOUNDARIES.md).

---

## Pin versions

Consumers pin **both**:

| Artifact | Current pin | Where |
|---|---|---|
| **bookkit** (foundation) | `0.1.0` | `packages/bookkit/typst.toml` |
| **bookkit-didactics** (optional facet) | `0.1.0` | `packages/bookkit-didactics/typst.toml` |
| **form-catalog** | `0.1.0` | `toolset/form-catalog/VERSION` (must match `core/forms.yaml` → `version:`) |

Pin policy details: [`toolset/form-catalog/README.md`](../toolset/form-catalog/README.md) § VERSION / pin policy.

Do **not** treat the tip of `main` as a pin. Record the package version and catalog
`VERSION` string in the consumer project (lockfile, brief, or release note).

---

## Minimal consumer layout

```text
my-book/
  main.typ
  design-brief.yaml          # optional; starter uses this
  packages/
    bookkit/                 # copy or submodule of packages/bookkit @ 0.1.0
    bookkit-didactics/       # optional facet
  fonts/                     # licensed fonts required by theme tokens
  dist/
```

Scaffold with the studio CLI (from a checkout of this repo):

```bash
./scripts/bookkit init /path/to/my-book
```

Or start from [`toolset/starter/`](../toolset/starter/).

---

## Imports

```typst
// Foundation (required for setup + generic components)
#import "/packages/bookkit/lib.typ": *

// Optional medical-didactic facet (learning-objectives, memo, cave, …)
#import "/packages/bookkit-didactics/lib.typ": *

#show: setup-typography()
// optional full-bleed cover, then:
#pagebreak()
#show: setup-pages()
```

Root-absolute imports (`/packages/…`) require `--root` at the consumer project
root (the directory that contains `packages/`).

Package surface: [`packages/bookkit/README.md`](../packages/bookkit/README.md),
[`packages/bookkit-didactics/README.md`](../packages/bookkit-didactics/README.md).

---

## Build flags (always)

Reproducible builds **must** ignore host fonts:

```bash
typst compile --root . --ignore-system-fonts --font-path fonts main.typ dist/book.pdf
```

Or via CLI (same flags enforced):

```bash
./scripts/bookkit doctor --root .
./scripts/bookkit build  --root . --entry main.typ --out dist/book.pdf
```

Never omit `--ignore-system-fonts --font-path fonts`.

---

## Compose validate (production chapters)

When composing catalog-whitelist chapters (Produkt A engine):

```bash
python3 toolset/compose/scripts/run_validate.py \
  --typ path/to/chapter.typ \
  --content path/to/content.md \          # Produkt C — external path OK
  --catalog toolset/form-catalog/core/forms.yaml \
  --accept path/to/accept.md \
  --genre-minima path/to/genre-minima.yaml \  # optional; domain B may supply
  --root . \
  --font-path fonts
```

Fail-fast, no auto-heal. Full options: [`toolset/compose/README.md`](../toolset/compose/README.md).

---

## Skills (agent gate)

| Skill | Produkt | When |
|---|---|---|
| `bookkit` | A | Importing packages, starter/CLI, design-brief, didactics facet |
| `compose-chapter` | A | Feasibility note, catalog-whitelist `chapter.typ`, spike, validate |
| `typst-writer` | A | Any `.typ` create/edit or layout debug |
| `media-brief` | B | Media Brief / gold brief / Accept — **domain optional**; SoT under `domains/medical/skill/media-brief/` |

Platform skills: `toolset/skill-pack/` (also mirrored under `.github/skills/`).  
Do **not** put medical genre logic into foundation `packages/bookkit`.

---

## Content stays external (C)

- Author Markdown, claims, and audits live in the **content repo**.
- Pass content into validate/compose as **paths** (read-only inputs).
- Do **not** copy chapter SoT into this platform repo or into package trees.
- Pilots under `pilots/` are **dogfood consumers**, not content SoT.

---

## Dogfood example (not SoT)

[`pilots/kursbuch-welle-03-compose/`](../pilots/kursbuch-welle-03-compose/) — Wave-4
production-compose consumer of bookkit + didactics after Media Accept. Clinical
content remains under the external Kursbuch staging tree (Produkt C).

Related baseline layout pilot: [`pilots/kursbuch-welle-03/`](../pilots/kursbuch-welle-03/).

---

## What not to clone into a consumer

- `src/chapters/`, `src/data/` showcase content
- `research/` ecosystem survey data
- Medical content Markdown as SoT
- Invented MCP / auto-heal tooling (not part of the platform)

---

## Related

- Product boundaries: `devtracks/PRODUCT-BOUNDARIES.md`
- Roles / workflow: `devtracks/CONSENSUS-v0.md`
- Knowledge map: `docs/KNOWLEDGE-MAP.md`
- Form catalog pin policy: `toolset/form-catalog/README.md`
- Compose engine: `toolset/compose/README.md`
- Starter: `toolset/starter/README.md`
