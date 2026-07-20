# bookkit foundation API (v0.1.0)

## Setup order

1. `setup-typography()` via `#show:`
2. Optional `book-cover` (zero margins)
3. `#pagebreak()` + `setup-pages()` via `#show:`
4. Content; level-1 only through `chapter-opener` / explicit heading policy

## Tokens

See `packages/bookkit/theme.typ`: `palette`, `gradients`, `type-scale`, `space`, `fonts`,
`part-colors`, token dicts `didactics`, `evidence`, `legal`.

## Public functions

Exported from `packages/bookkit/lib.typ` (blocks, inline, tables, grids, layouts, spreads).

## Not public

`_*` helpers; showcase-only modules (art, charts, legal components, page-design, figures);
facet implementations live in `bookkit-didactics`.

## Consumer compile

```bash
typst compile --root . --ignore-system-fonts --font-path fonts main.typ dist/out.pdf
# or
scripts/bookkit build --root . --entry main.typ
```
