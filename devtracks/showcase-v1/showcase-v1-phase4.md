# Showcase-v1: Phase 4 - Layout and Spreads

## Objective

Implement high-impact editorial layouts with stable flow behavior across normal pages and special spreads.

## Dependencies

- Phases 1-3 complete.

## Tasks

### 4.1 Page-Level Layout Baseline (`styles/page.typ`)

Set consistent page geometry and running element strategy:
- page size/margins
- optional page-level columns where needed
- header/footer scaffolding

### 4.2 Spread and Chapter Opener System

Create spread helpers (`components/spreads.typ`) using `grid` and block composition:
- title spread
- chapter opener layout
- section break surfaces

### 4.3 Multi-Column Patterns

Use documented column patterns:
- local `columns(...)` blocks
- `#colbreak()` where explicit control is needed
- page-level columns for long-form sections only

### 4.4 Breakout and Placement Policy

Implement controlled `place` usage:
- float breakouts: `float: true, scope: "parent"`
- overlays only for decorative/non-blocking elements
- avoid excessive `dx`/`dy` hardcoding

### 4.5 Context-Aware Running Headers

Use `context` + `query` safely:
- chapter-aware header text
- robust fallback when no heading exists
- odd/even alignment behavior verified

### 4.6 Layout Utilities

Create helpers in `components/layouts.typ`:
- two-column main + margin notes
- wide table section wrapper
- image grid helper with consistent aspect handling

## Deliverables

- Updated `styles/page.typ`
- New/updated `components/spreads.typ`
- New/updated `components/layouts.typ`
- `main.typ` integration updates

## Acceptance Criteria

- Chapter spread system is reusable and stable.
- Multi-column and breakout behavior is predictable.
- Running headers/footers work across edge pages.
- No layout regressions in baseline snapshot set.

## Time Estimate

3-4 days

## Next Phase

[Phase 5: Content and Polish](showcase-v1-phase5.md)
