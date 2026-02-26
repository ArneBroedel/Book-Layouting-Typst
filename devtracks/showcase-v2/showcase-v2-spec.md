# Showcase-v2: Specification

## Product Goal

Deliver a best-in-class Typst showcase that pushes every documented layout primitive to its limits — producing a publication-grade, 30–40 page reference book that serves as both a visual masterpiece and a reusable template library. This is a ground-up rewrite incorporating every lesson from v1 development.

## Motivation / What's Different from v1

v1 was a learning exercise. v2 is a demonstration of mastery. Specific improvements:

| Area | v1 Problem | v2 Solution |
|---|---|---|
| Visual impact | Generic academic look, "boring" initial output | Rich editorial design: gradient accents, layered spreads, visual rhythm |
| Component quality | Broken margin notes, leaking columns, duplicate headings | Battle-tested patterns only; every component validated in isolation first |
| Architecture | Discovered anti-patterns during build | Anti-patterns baked into guards from day one |
| Page variety | Repetitive page-to-page feel | Deliberate pacing: dense → airy → visual → interactive → dense |
| Content depth | Feature-list chapters | Problem → technique → result narratives with real-world relevance |
| Validation | End-of-build QA only | Compile + PNG verification gate after every phase |

## Scope

### In Scope

- Complete book layout: cover, front matter, 7 chapters, back matter
- Semantic design-token system (colors, spacing, type scale, gradients)
- Reusable component library with documented APIs
- Advanced layout patterns: spreads, multi-column, sidebar, magazine, scientific paper, adaptive
- Context-aware running headers/footers with odd/even alternation
- Inside/outside margins for proper binding gutter
- Dynamic/computed layouts via `layout(size => ...)`
- Bibliography, glossary, cross-references
- German content, medical/didactic theme
- A4 format, PDF + PNG output

### Out of Scope

- External Typst packages (zero dependencies)
- HTML/web export
- Interactive or runtime-dependent features
- Real clinical data or copyrighted medical images

## Target Folder

```
C:\Users\arneb\dev\Book-Layouting-Typst\typst_showcase_v2\
```

## Design Language

### Visual Identity

- **Palette**: Deep teal primary, warm amber accent, clinical white background, soft grays for structure
- **Gradients**: Linear gradients for cover, chapter openers, decorative bars — never flat fills for hero surfaces
- **Typography**: Serif body (Libertinus Serif or system serif), sans headings (bold weight), monospace for code
- **Texture**: Alternating dense/airy spreads; pull quotes and margin annotations add editorial feel
- **Whitespace**: Generous — a premium book, not a packed reference

### Content Tone

German language. Medical/didactic theme. Chapters progress from foundational typography concepts through advanced layout techniques, with each chapter naturally exercising the Typst features it describes.

## Architecture

### File Structure

```
typst_showcase_v2/
├── main.typ                    # Document entry point
├── README.md                   # Build instructions, component catalog
├── assets/
│   └── images/                 # SVG/PNG assets
├── styles/
│   ├── theme.typ               # Pure data: palette, spacing, type-scale tokens
│   ├── typography.typ          # set/show rules for text, par, headings
│   └── page.typ                # Page geometry, margins, headers, footers
├── components/
│   ├── spreads.typ             # Cover, chapter-opener, section-break
│   ├── blocks.typ              # Callout, card, blockquote, pull-quote, side-note
│   ├── layouts.typ             # Sidebar, magazine, scientific-paper, breakout, adaptive
│   ├── grids.typ               # Gallery-grid, comparison-grid, feature-grid
│   ├── inline.typ              # Badge, tag, highlight, icon-text, emphasis-box
│   ├── tables.typ              # Styled tables with zebra, header emphasis, semantic cells
│   └── figures.typ             # Figure wrappers with consistent caption styling
├── chapters/
│   ├── 00-cover.typ            # Full-bleed book cover
│   ├── 01-intro.typ            # Introduction and book overview
│   ├── 02-typography.typ       # Typography showcase
│   ├── 03-structure.typ        # Document structure and headings
│   ├── 04-components.typ       # Component library showcase
│   ├── 05-layout.typ           # Layout systems showcase
│   ├── 06-advanced.typ         # Advanced techniques
│   └── 07-backmatter.typ       # Glossary, bibliography, index
└── data/
    ├── glossary.yml            # Glossary entries
    └── references.bib          # Bibliography
```

### Import Hierarchy (Strict DAG — No Circular Imports)

```
theme.typ          ← pure data, no imports
  ↓
typography.typ     ← imports theme
  ↓
page.typ           ← imports theme
  ↓
components/*.typ   ← import theme (and optionally typography for show-rule helpers)
  ↓
chapters/*.typ     ← import components they need
  ↓
main.typ           ← imports page, typography, includes chapters
```

### Style Ownership Rules

| Concern | Owner File | Mechanism |
|---|---|---|
| Font family, size, language | `typography.typ` | `set text(...)` |
| Line spacing, paragraph spacing | `typography.typ` | `set par(...)` |
| Heading appearance per level | `typography.typ` | `show heading.where(level: N)` |
| Color palette, spacing scale | `theme.typ` | Dictionary exports (pure data) |
| Page size, margins, binding | `page.typ` | `set page(...)` |
| Running headers/footers | `page.typ` | `set page(header: ..., footer: ...)` |
| Component styling | `components/*.typ` | Function parameters + theme tokens |

## Primitive Selection Matrix

| Need | Primary Primitive | Fallback | Notes |
|---|---|---|---|
| Inline emphasis/badges | `box(inset, radius, baseline)` | — | Always set `baseline` for text alignment |
| Block callouts/cards | `block(fill, inset, stroke, radius)` | — | Use `breakable: false` for decorative blocks |
| Structural page zones | `grid(columns, gutter)` + `grid.cell` | — | Grid-first for all structural layout |
| Multi-column reading | `columns(N, gutter: ...)` function | — | **NEVER** `set page(columns: N)` in components |
| Full-width breakout | Dedicated spread block or `place(float: true, scope: "parent")` | — | Only at page-level, never nested |
| Decorative overlays | `place()` without float | — | Only for non-flow decoration |
| Pull quotes | `block` with negative margin or `place` in controlled context | — | Grid-based preferred over `place` offsets |
| Tables with data | `table` + `show table.cell.where(...)` | — | Semantic: use `table`, not `grid` |
| Adaptive layout | `layout(size => ...)` | — | **NEVER** `context { page.width }` |
| Dynamic content grids | `grid` with computed columns + `..range().map()` | — | Spread `..` syntax for generated children |
| Book cover | Stacked `place` overlays + gradient | — | Acceptable: zero-flow cover page |
| Chapter openers | `pagebreak()` + styled `heading` | — | Opener IS the heading — no duplicate `= Title` |

## Hard Rules (Learned from v1)

These are non-negotiable constraints derived from v1 debugging:

1. **`columns()` function only** — Never `set page(columns: N)` inside components. It leaks to all subsequent pages.
2. **`leading` belongs to `par`** — Not `text`. `set par(leading: 0.65em)`.
3. **`place(float: true)` needs alignment** — Must specify `top` or `bottom`.
4. **No hardcoded `dx`/`dy`** — Use grid-based structural layout instead of offset positioning.
5. **One heading system** — Either auto-numbering OR manual numbering, never both.
6. **Chapter opener IS the heading** — Do not add `= Title` after a chapter-opener component.
7. **`breakable: false`** — All decorative/pull-quote blocks must be non-breakable.
8. **Grid children are positional** — `grid(child1, child2)`, NOT `grid()[#a #b]`.
9. **Verify symbols** — Check `sym.*` exists before using (e.g., `sym.lightning` doesn't exist).
10. **`block.spacing` is external** — Use `inset` for internal padding, `spacing` for surrounding margin.
11. **`set page(...)` in covers** — Acceptable, but must call `setup-pages()` again immediately after.
12. **Show rules preserve counters** — Custom heading renders must use `counter(heading).display()` for numbering.

## Component Inventory

### Spreads (full-page or multi-page constructs)

| Component | Description | Key Technique |
|---|---|---|
| `book-cover()` | Full-bleed cover with title, subtitle, gradient, decorative elements | Zero-margin page, stacked `place`, gradient fill |
| `chapter-opener()` | Decorative chapter start with number, title, optional intro | `pagebreak(weak: true)`, gradient bar, counter display |
| `section-break()` | Visual separator between major sections | Centered rule with decorative element |
| `part-page()` | Full-page part divider (e.g., "Part I: Grundlagen") | Centered typography on minimal page |

### Blocks (content-level containers)

| Component | Description | Key Technique |
|---|---|---|
| `callout()` | Semantic admonition (info, tip, warning, danger) | `block` with left accent bar, icon, toned fill |
| `card()` | Elevated content card with optional header | `block` with shadow-like stroke, inset |
| `blockquote()` | Styled quotation with attribution | `block` with left border, italic body |
| `pull-quote()` | Large editorial quote breaking out of flow | Oversized text in styled `block`, `breakable: false` |
| `side-note()` | Annotation in margin area | Reduced-size `block` with accent, grid-placed |
| `code-block()` | Syntax-highlighted code display | `block` with monospace, subtle fill |
| `key-concept()` | Highlighted definition or key term | `block` with gradient accent bar |

### Inline (within-text elements)

| Component | Description | Key Technique |
|---|---|---|
| `badge()` | Small colored label | `box(inset, radius, baseline: 20%)` |
| `tag()` | Outlined tag/category marker | `box` with stroke, no fill |
| `highlight-text()` | Background-highlighted text span | `box` with fill, outset |
| `kbd()` | Keyboard shortcut display | `box` with monospace, raised style |
| `icon-text()` | Symbol + text pair, baseline-aligned | `box(baseline: 20%)` + symbol |

### Layouts (page-region composites)

| Component | Description | Key Technique |
|---|---|---|
| `sidebar-layout()` | Fixed sidebar + fluid main column | `grid(columns: (sidebar-width, 1fr))` |
| `magazine-layout()` | Full-width hero + multi-column body | `block(width: 100%)` hero + `columns()` |
| `scientific-paper()` | Two-column with full-width title/abstract | `columns(2)` body with full-width header |
| `comparison-layout()` | Side-by-side comparison | `grid(columns: (1fr, 1fr))` |
| `adaptive-layout()` | Layout that adapts to available width | `layout(size => ...)` switching |
| `breakout()` | Full-width element in column context | Exiting column flow temporarily |

### Grids (collection displays)

| Component | Description | Key Technique |
|---|---|---|
| `gallery-grid()` | Dynamic image/card gallery | Computed columns, `..items.enumerate().map()` |
| `feature-grid()` | Feature/benefit grid with icons | Fixed columns, colored cards |
| `comparison-grid()` | Before/after or A vs B grid | Two-column grid with headers |
| `stats-grid()` | Key statistics display | Centered number + label cards |

### Tables (data display)

| Component | Description | Key Technique |
|---|---|---|
| `styled-table()` | Base table with zebra rows, header styling | `show table.cell.where(y: 0)` |
| `data-table()` | Dense data table with alignment control | Per-column `align` array |
| `comparison-table()` | Feature comparison with checkmarks | Semantic cell coloring |

## Target Layout Patterns (Must Demonstrate)

Every pattern must appear at least once in the final showcase:

| # | Pattern | Chapter | Technique |
|---|---|---|---|
| 1 | Full-bleed book cover with gradient + overlays | 00 | Stacked `place`, zero margins, gradient |
| 2 | Chapter opener with number + decorative bar | All | `pagebreak`, counter, gradient bar |
| 3 | Classic sidebar layout | 05 | `grid(columns: (Xpt, 1fr))` |
| 4 | Magazine layout with hero + columns | 05 | Full-width block + `columns()` |
| 5 | Scientific two-column paper | 05 | `columns(2)` with full-width header |
| 6 | Pull quote (editorial style) | 02, 04 | Oversized `block`, `breakable: false` |
| 7 | Dynamic gallery grid | 04, 06 | Computed columns, `.enumerate().map()` |
| 8 | Adaptive layout (width-responsive) | 06 | `layout(size => ...)` |
| 9 | Inside/outside binding margins | Global | `margin: (inside: Xmm, outside: Ymm)` |
| 10 | Context-aware running headers | Global | `context` + `query`, odd/even alternation |
| 11 | Zebra-striped semantic table | 03 | `show table.cell.where()`, functional fill |
| 12 | Full-width breakout in column context | 05 | `place(float: true, scope: "parent")` or flow exit |
| 13 | Decorative overlay elements | 00, chapters | `place()` without float for non-flow decoration |
| 14 | Comparison/feature grid | 04 | Grid with enumerated coloring |
| 15 | Stats/KPI display | 06 | Centered cards in grid |

## Content Plan (German, Medical/Didactic)

| Chapter | Title | Content Focus | Key Components Exercised |
|---|---|---|---|
| 00 | Cover | Full-bleed book cover | `book-cover()` |
| 01 | Einleitung | Book overview, reading guide, what you'll learn | `callout()`, `badge()`, section-break |
| 02 | Typographie | Type hierarchy, readability, font pairing | `pull-quote()`, `blockquote()`, `highlight-text()` |
| 03 | Struktur | Headings, lists, tables, cross-references | `styled-table()`, `comparison-table()`, `key-concept()` |
| 04 | Komponenten | Component showcase: every block/inline component | `card()`, `callout()`, `gallery-grid()`, all inline |
| 05 | Layouts | Page layouts: sidebar, magazine, scientific, adaptive | All layout components, `breakout()` |
| 06 | Fortgeschritten | Advanced: dynamic grids, adaptive, computed layouts | `adaptive-layout()`, `stats-grid()`, `gallery-grid()` |
| 07 | Anhang | Glossary, bibliography, component index | Tables, cross-references |

## Quality Gates

### Every Phase

- `typst compile main.typ` succeeds with zero errors
- PNG export renders correctly at 200 PPI
- No regressions in previously completed pages
- All component functions used correctly (no hard rules violated)

### Final Release

- 30–40 pages of publication-grade output
- All 15 target layout patterns demonstrated
- All components exercised at least once
- Consistent visual rhythm across spreads
- WCAG AA contrast for all body text
- Build time under 5 seconds
- Zero external dependencies

## Success Definition

The showcase proves that Typst, using only built-in primitives and documented patterns, can produce output rivaling professional InDesign/LaTeX publications. Every page should make the reader think: *"This was made with Typst?"*
