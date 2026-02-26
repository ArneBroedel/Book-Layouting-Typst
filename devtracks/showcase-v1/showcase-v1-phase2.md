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

From Layout Mastery:
- use `fill`/`stroke` functions when row/column logic is required
- keep `table` semantic for data; avoid replacing with presentational `grid`

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

## Time Estimate

1-2 days

## Next Phase

[Phase 3: Components](showcase-v1-phase3.md)
