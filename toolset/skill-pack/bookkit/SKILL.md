---
name: bookkit
description: "Use the bookkit Typst foundation package and optional facets. ALWAYS use when importing /packages/bookkit, @local/bookkit, bookkit-didactics, writing a consumer main.typ with setup-typography/setup-pages, applying genre presets or design-brief.yaml, or scaffolding a new book with the toolset starter/CLI. Covers package API, assembly order, theme tokens, and anti-patterns. Does not replace typst-writer for general Typst syntax."
---

# bookkit package skill

Agent procedures for the **bookkit** runtime product (not the studio monorepo as a whole).

## When to use

- Building a document with `#import "/packages/bookkit/lib.typ"`
- Starting from `toolset/starter` or `bookkit init`
- Choosing genre / design-brief → import surface
- Medical didactic boxes → also import `bookkit-didactics`

Always load **`typst-writer`** first for syntax/layout rules. Load this skill for **package API**.

## Imports

```typst
#import "/packages/bookkit/lib.typ": *
// optional facet:
#import "/packages/bookkit-didactics/lib.typ": *
```

Compile root must contain `packages/bookkit/` (and fonts). Prefer CLI:

```bash
bookkit build --root . --entry main.typ
# expands to: typst compile --root . --ignore-system-fonts --font-path fonts …
```

## Assembly order (critical)

```typst
#show: setup-typography()
// optional full-bleed cover
#book-cover(title: […], author: […])
#pagebreak()
#show: setup-pages()
#outline(…)
#chapter-opener(title: […], number: 1)  // CREATES level-1 heading
// DO NOT also write `= Title`
== Section
```

## Foundation API (public)

| Area | Names |
|---|---|
| Tokens | `palette`, `gradients`, `type-scale`, `space`, `fonts`, `part-colors`, `didactics`, `evidence`, `legal` |
| Setup | `setup-typography`, `setup-pages` |
| Blocks | `callout`, `card`, `blockquote`, `pull-quote`, `side-note`, `code-block`, `key-concept`, `protocol-steps` |
| Inline | `badge`, `tag`, `kbd`, `evidence-badge`, `loe-badge`, `qty`, `qty-range` |
| Tables/grids | `styled-table`, `comparison-table`, `long-table`, `score-table`, … |
| Layouts | `sidebar-layout`, `magazine-layout`, `scientific-paper`, `margin-note`, … |
| Spreads | `book-cover`, `chapter-opener`, `section-break`, `feature-spread`, `part-page` |

## Facet: bookkit-didactics

`learning-objectives`, `summary-box`, `memo`, `clinical-pearl`, `cave`, `definition`, `excursus`, `mnemonic`, `ddx-box`, `clinical-case`, `mc-question`, `solution-key`, `clinical-case-spread`.

Foundation does **not** require this facet.

## Genre presets (v0)

| genre | Import advice |
|---|---|
| `plain-book` | foundation only |
| `medical-textbook` | foundation + didactics |
| `scientific-report` | foundation; prefer `callout`/`styled-table` |
| `technical-manual` | foundation; `kbd`/`code-block` heavy |

## Design-brief

Required YAML fields: `title`, `genre`, `language`, `author`. Validate with `bookkit brief-check` or `bookkit doctor`.

## protocol-steps (catalog form)

Numbered action protocol with visual step weight — prefer over plain `#enum` for SOPs / algorithms:

```typst
#protocol-steps(
  title: [Sofortmaßnahmen],
  tone: "danger", // info | success | warning | danger
  (
    [First step],
    (label: "4a", body: [Branch A]),
    (label: "4b", body: [Branch B]),
  ),
)
```

`steps` items are content or dictionaries `{label, body}`. Form id: `protocol-steps` (stable in form-catalog `0.1.0`).

## Anti-patterns

- Cloning studio `src/chapters` or `research/` into a consumer
- Duplicate headings after `chapter-opener`
- Building without `--ignore-system-fonts --font-path fonts`
- Putting didactic box implementations into foundation consumers when a facet import exists
- Assuming MCP holds skill text — skills are file-first
- Using plain bullets for multi-step clinical SOPs when `protocol-steps` is available

## CLI

`bookkit doctor | build | watch | ua | init | print(stub) | brief-check`

## Separation rule

- Token/color change → package/theme (or named args), not skill rewrites
- Agent gotcha fix → skill, not silent API break
