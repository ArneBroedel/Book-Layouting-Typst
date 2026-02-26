# Showcase-v1: Phase 2 - Color and Contrast

## Objective

Introduce a semantic color system that supports meaning, hierarchy, and accessibility.

## Dependencies

- Phase 1 complete.

## Tasks

### 2.1 Palette Architecture (`styles/theme.typ`)

Define grouped tokens:
- neutrals: paper, ink, mute, borders
- semantic tones: info, good, warn, bad (+ light variants)
- editorial accents: primary/accent variants
- gradient presets: define 2-3 `gradient.linear(...)` presets for decorative surfaces (cover backgrounds, heading bars, hero sections) — Mastery Part 6.4, 8.2

### 2.2 Contrast Matrix

Document and validate key text/background pairs:
- body on paper
- heading accents on paper
- component titles on tinted surfaces
- table header text on header fill

### 2.3 Style Binding

Bind palette tokens into typography and components via `set` and `show` rules.
- headings and captions
- admonitions/callouts/cards
- figures/tables/list markers

### 2.4 Grid/Table Color Semantics

From Layout Mastery Parts 3.3, 3.5, 8.3:
- use functional `fill: (x, y) => ...` for striped/checkerboard grid patterns
- use functional `stroke: (x, y) => ...` for conditional borders (e.g., every Nth row)
- use `show grid.cell.where(x: 0): set text(weight: "bold")` for header column emphasis
- use `show table.cell.where(y: 0): set text(fill: blue)` for header row emphasis
- keep `table` semantic for data; avoid replacing with presentational `grid`
- per-column `align: (left, center, right)` for mixed-alignment tables (Mastery Part 3.3)

### 2.5 Running Elements Color Pass

Apply restrained color use in headers/footers:
- muted text for running metadata
- subtle separator strokes
- maintain contrast and print legibility

## Deliverables

- Updated palette and contrast notes.
- Component and typography color mapping updates.

## Acceptance Criteria

- Semantic colors are consistent and non-conflicting.
- Target text/background combinations pass AA.
- No color-only meaning without typographic cue.
- Gradient presets are defined for decorative surfaces.
- Functional `fill(x, y)` / `stroke(x, y)` patterns are used in at least one grid/table component.

## Time Estimate

1-2 days

## Next Phase

[Phase 3: Components](showcase-v1-phase3.md)
