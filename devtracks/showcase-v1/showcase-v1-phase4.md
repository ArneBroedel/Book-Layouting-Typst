# Showcase-v1: Phase 4 - Layout and Spreads

## Objective

Implement high-impact editorial layouts with stable flow behavior across normal pages and special spreads.

## Dependencies

- Phases 1-3 complete.

## Tasks

### 4.1 Page-Level Layout Baseline (`styles/page.typ`)

Set consistent page geometry and running element strategy (Mastery Part 9.1):
- page size (e.g., 17cm × 24cm or A4)
- inside/outside margins for binding gutter: `margin: (inside: 2.5cm, outside: 2cm, y: 2.5cm)`
- optional page-level columns where needed: `set page(columns: 2)` with `set columns(gutter: 1cm)` (Mastery Part 4.2)
- header/footer scaffolding with odd/even alternation

### 4.2 Spread and Chapter Opener System

Create spread helpers (`components/spreads.typ`) using `grid` and block composition:
- title spread / book cover: stacked `place` overlays with gradient background, decorative shapes, and text layers (Mastery Part 6.4)
- chapter opener layout: `pagebreak()` + `v(5cm)` + counter display + title + `v(2cm)` (Mastery Part 9.1)
- section break surfaces
- use `grid.cell(colspan, rowspan)` for hero sections and asymmetric spanning (Mastery Part 3.4)

### 4.3 Multi-Column Patterns

Use documented column patterns (Mastery Part 4):
- local `columns(2, gutter: ...)` blocks for contained multi-column regions
- `#colbreak()` where explicit control is needed
- page-level columns (`set page(columns: 2)`) for long-form sections only
- `set columns(gutter: ...)` for page-level column spacing

### 4.4 Breakout and Placement Policy

Implement controlled `place` usage (Mastery Part 5):
- float breakouts: `place(float: true, scope: "parent")` for full-width elements in multi-column context
- overlays only for decorative/non-blocking elements (no `float`)
- `scope: "column"` for column-local positioned elements
- `scope: "parent"` for page-body-relative positioning
- avoid excessive `dx`/`dy` hardcoding

### 4.5 Mastery Layout Pattern Demonstrations

Implement at least these patterns from the Mastery guide:

**4.5.1 Classic Sidebar Layout (Part 6.1)**
- `grid(columns: (200pt, 1fr), gutter: 20pt)` with navigation sidebar + main content

**4.5.2 Magazine Layout (Part 6.2)**
- Full-width title + two-column article body
- Image spanning both columns via `place(scope: "parent", float: true)`

**4.5.3 Scientific Paper Template (Part 9.2)**
- `set page(columns: 2)` with full-width title breakout
- `place(top + center, scope: "parent", float: true, box(width: 100%)[...])` for title block

**4.5.4 Book Cover (Part 6.4)**
- Zero-margin page with stacked `place` overlays
- Gradient background, decorative shapes (`rotate`, `circle`), title, author layers

### 4.6 Adaptive Layout Helpers (Mastery Part 7.1)

Create responsive layout utility using `layout(size => ...)`:
- switch between single-column and sidebar layout based on available content width
- do NOT use `context { page.width }` (returns configured width, not text-area width)
- keep adaptive logic in named helper functions

### 4.7 Context-Aware Running Headers

Use `context` + `query` safely (Mastery Part 9.1):
- chapter-aware header text
- robust fallback when no heading exists
- odd/even alignment behavior: `calc.rem(here().page(), 2)` for left/right alternation
- page counter display in header/footer

### 4.8 Layout Utilities

Create helpers in `components/layouts.typ`:
- two-column main + margin notes (sidebar variant)
- wide table section wrapper
- image grid helper with consistent aspect handling
- full-width breakout wrapper for use in column contexts

## Deliverables

- Updated `styles/page.typ`
- New/updated `components/spreads.typ`
- New/updated `components/layouts.typ`
- `main.typ` integration updates

## Acceptance Criteria

- Chapter spread system is reusable and stable.
- Multi-column and breakout behavior is predictable.
- Running headers/footers work across edge pages (odd/even alternation verified).
- Inside/outside margins produce proper binding gutter.
- Adaptive layout helper uses `layout(size => ...)` correctly.
- At least 4 Mastery layout patterns are demonstrated (sidebar, magazine, book cover, scientific two-column).
- No layout regressions in baseline snapshot set.

## Time Estimate

3-4 days

## Next Phase

[Phase 5: Content and Polish](showcase-v1-phase5.md)
