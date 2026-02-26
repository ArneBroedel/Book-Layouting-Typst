# Components API

## Admonitions (`admonitions.typ`)
- `note(body)`: Info box.
- `tip(body)`: Good/Tip box.
- `warn(body)`: Warning box.
- `redflag(body)`: Danger/Bad box.
- `checklist(title: "Checkliste", items)`: Checklist box.

## Blocks (`blocks.typ`)
- `callout(body, title: none, color: palette.accent)`: General callout block.
- `card(body, title: none)`: Card with border and optional title.
- `blockquote(body, author: none)`: Blockquote with optional author.
- `margin-note(body)`: Note placed in the right margin.
- `pull-quote(body)`: Quote placed in the left margin.

## Inline (`inline.typ`)
- `badge(body, color: palette.accent)`: Rounded pill badge.
- `highlight(body, color: palette.warn-light)`: Inline text highlight.
- `icon(symbol, color: palette.ink)`: Baseline-safe icon.
- `emphasis-box(body, color: palette.info-light)`: Decorative outset box.

## Grids (`grids.typ`)
- `gallery-grid(items, columns: 3, gutter: space.md)`: Dynamic grid for items.

## Tables (`tables.typ`)
- `zebra-table(columns: (1fr, 1fr), ..rows)`: Table with alternating row colors and bold header.

## Figures (`figures.typ`)
- `fig(img, caption: none, width: 100%)`: Figure wrapper with caption.
