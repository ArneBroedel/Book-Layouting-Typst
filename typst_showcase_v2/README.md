# Typst Showcase v2

A publication-grade, 30-page showcase of Typst's layout capabilities.
German content with a medical/didactic theme, A4 format, zero external dependencies.

## Quick Start

```sh
cd typst_showcase_v2
typst compile main.typ                           # → main.pdf
typst compile main.typ "Typst-Showcase-v2.pdf"   # → named PDF
```

## PNG Export

```sh
typst compile --format png --ppi 200 main.typ "png_output/page-{0p}.png"
```

## Key Metrics

| Metric | Value |
|--------|-------|
| Pages | 30 |
| Compile time | ~0.6 s |
| Components | 28 |
| Layout patterns | 15 |
| External deps | 0 |

## Architecture

```
main.typ                  ← Assembly file
├── styles/
│   ├── theme.typ          ← Design tokens (colors, fonts, spacing)
│   ├── typography.typ     ← Typography set/show rules
│   └── page.typ           ← Page geometry, headers, footers
├── components/
│   ├── blocks.typ         ← Callout, card, blockquote, pull-quote, side-note, code-block, key-concept
│   ├── inline.typ         ← Badge, tag, highlight-text, kbd, icon-text
│   ├── tables.typ         ← Styled-table, comparison-table
│   ├── figures.typ        ← Figure show rules
│   ├── layouts.typ        ← Sidebar, magazine, scientific-paper, comparison, adaptive, breakout
│   ├── grids.typ          ← Gallery-grid, feature-grid, stats-grid, comparison-grid
│   └── spreads.typ        ← Book-cover, chapter-opener, section-break, part-page
├── chapters/
│   ├── 00-cover.typ       ← Full-bleed book cover
│   ├── 01-intro.typ       ← Introduction & conventions
│   ├── 02-typography.typ  ← Typography & readability
│   ├── 03-structure.typ   ← Document structure & cognitive load
│   ├── 04-components.typ  ← Component showcase
│   ├── 05-layout.typ      ← Layout patterns
│   ├── 06-advanced.typ    ← Advanced techniques
│   └── 07-backmatter.typ  ← Glossary, index, bibliography
└── data/
    ├── glossary.yml       ← German medical terms
    └── references.bib     ← Academic references
```

## 15 Layout Patterns Demonstrated

1. Full-bleed book cover
2. Chapter opener with decorative number + gradient bar
3. Classic sidebar layout
4. Magazine layout with hero + columns
5. Scientific two-column paper
6. Pull quote (editorial style)
7. Dynamic gallery grid
8. Adaptive layout (width-responsive)
9. Inside/outside binding margins
10. Context-aware running headers
11. Zebra-striped semantic table
12. Full-width breakout in column context
13. Decorative overlay elements
14. Comparison/feature grid
15. Stats/KPI display

## Design System

- **Fonts**: Libertinus Serif (body), Calibri (headings), Inconsolata (code)
- **Colors**: Teal primary (#0d7377), amber accent (#d4a039), clinical white background
- **Content**: German medical/didactic theme with authentic terminology

## Devtrack

See `devtracks/showcase-v2/` for the full 8-phase development plan.
