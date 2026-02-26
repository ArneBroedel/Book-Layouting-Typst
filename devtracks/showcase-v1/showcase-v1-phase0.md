# Showcase-v1: Phase 0 - Layout Deconstruction and Target Mapping

## Objective

Define the visual target and map each target pattern to concrete Typst primitives before style implementation begins.

## Tasks

### 0.1 Capture Baseline

- Compile current `main.typ` and export PNG pages.
- Record 6-10 key pages as baseline references (title, chapter opener, dense text, table, figure, notes).

### 0.2 Build Deconstruction Matrix

For each target page pattern, define:
- flow zones (main flow, side flow, overlays)
- structural primitive (`grid`, `columns`, `box`, `place`)
- semantic layer (`table` vs `grid`)
- responsive/adaptive notes

### 0.3 Placement Policy

Document where `place` is allowed:
- overlay decorations only
- float breakouts with `scope: "parent"` for full-width inserts
- max offset policy for `dx`/`dy`

### 0.4 Style System Entry Points

Confirm central style files that own defaults and transforms:
- `styles/theme.typ` tokens
- `styles/typography.typ` text and heading rules
- `styles/page.typ` page and running elements

### 0.5 Acceptance Snapshot Plan

Define snapshots to compare after every later phase:
- title spread
- chapter opener
- two-column section
- table-heavy section
- figure + caption section

## Deliverables

- Deconstruction matrix checked into project notes.
- Baseline renders saved.
- Placement/styling policy agreed and referenced by Phase 1+.

## Acceptance Criteria

- All major layout patterns are mapped to Typst primitives.
- `place` usage policy is explicit.
- Baseline snapshot set exists for regression checks.

## Time Estimate

0.5-1 day

## Next Phase

[Phase 1: Typography and Spacing](showcase-v1-phase1.md)
