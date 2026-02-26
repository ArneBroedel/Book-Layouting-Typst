# Showcase-v1: Phase 3 - Components (Box-First Library)

## Objective

Build a reusable component system using documented Typst layout primitives and stable APIs.

## Dependencies

- Phases 1-2 complete.

## Tasks

### 3.1 Admonition Family (`components/admonitions.typ`)

Create consistent variants (`note`, `tip`, `warn`, `redflag`) with:
- box-based structure
- semantic tone mapping
- optional icon slot
- predictable spacing contract

### 3.2 Core Reusable Blocks

Implement and document:
- `callout(...)`
- `card(...)`
- `blockquote(...)`
- `margin-note(...)`
- `pull-quote(body)` — floated quote placed into margin or side of text using `place` + `box` (Mastery Part 6.3)

### 3.3 Inline Utilities

From Layout Mastery Part 2.2 box patterns:
- badge helper with rounded pill box (`radius: 999pt`, small `inset`)
- inline highlight helper (`box` with `fill`, `inset`, `radius`)
- baseline-safe icon helper (`box(baseline: 30%, height: 1em)`)
- decorative outset helper (`outset: (x: 4pt)` for emphasis without layout shift)
- `box(width: 1fr)` for fractional-width inline fills in grid contexts

### 3.4 Dynamic Content Grid

From Layout Mastery Part 7.2:
- gallery/product grid helper that accepts a list of items and a column count
- uses `grid(columns: n, ..items.map(...))` pattern
- consistent aspect handling via `box(width: 100%, height: ...)` per cell
- gradient fill option for visual variety

### 3.5 Figures and Tables

- Figure wrapper with caption hierarchy.
- Zebra/data table helper with semantic header styling.
- `show table.cell.where(y: 0)` rules for header row emphasis (Mastery Part 8.3).
- `show grid.cell.where(x: 0)` rules for header column emphasis.
- Per-column alignment support via `align: (left, center, right)` (Mastery Part 3.3).
- `grid.hline` and `grid.vline` for visual separators in structured grids (Mastery Part 3.5).

### 3.6 Component API Contracts

For each component document:
- required params
- optional params and defaults
- intended use and anti-use

## Deliverables

- Updated component files in `components/`.
- `components/README.md` with API overview and examples.

## Acceptance Criteria

- Components are token-driven and reusable.
- Inline vs block behavior is correct per Mastery Part 1.2 discipline.
- Pull-quote component works as a floated margin element.
- Dynamic gallery grid renders with variable column counts.
- Component usage in chapters requires minimal local styling.

## Time Estimate

2-3 days

## Next Phase

[Phase 4: Layout and Spreads](showcase-v1-phase4.md)
