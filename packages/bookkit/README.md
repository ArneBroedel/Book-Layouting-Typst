# bookkit 0.1.0 — foundation package

Generic Typst book runtime extracted from the studio showcase.

## Import (monorepo / consumer with package tree)

```typst
#import "/packages/bookkit/lib.typ": *
```

Compile with `--root` at the project that contains `packages/bookkit/` and always:

```bash
typst compile --root . --ignore-system-fonts --font-path fonts main.typ out.pdf
```

## Assembly order

1. `#show: setup-typography()`
2. Optional full-bleed cover (`book-cover` / zero margins)
3. `#pagebreak()` then `#show: setup-pages()`
4. Chapters with `chapter-opener` (creates the level-1 heading — do **not** add a second `= Title`)

## Public surface

Theme tokens: `palette`, `gradients`, `type-scale`, `space`, `fonts`, `part-colors`,
`didactics` / `evidence` / `legal` (token dicts only).

Setup: `setup-typography`, `setup-pages`.

Components: blocks, inline, tables, grids, layouts, spreads (no medical box implementations).

## Not exported

Internal helpers (`_…`), showcase chapters, research pipeline, heavy domain facets
(`bookkit-didactics`, charts, legal modules, art, …).

## Theme override (v0)

Pass named colors to components (`callout(tone: …)`, `card(accent: …)`) or fork a local
palette in your entry file for covers/headings. Deep theme injection is a later iteration.

## Related

- Facet: `packages/bookkit-didactics/`
- Studio dogfood: `src/styles/*` and foundation `src/components/*` re-export this package
- CLI: `scripts/bookkit`
