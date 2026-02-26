# Showcase-v1: Phase 0 - Layout Deconstruction and Target Mapping

## Objective

Define the visual target and map each target pattern to concrete Typst primitives before style implementation begins.

## Tasks

### 0.1 Capture Baseline

- Compile current `main.typ` and export PNG pages.
- Record 6-10 key pages as baseline references (title, chapter opener, dense text, table, figure, notes).

### 0.2 Syntactic Mode Awareness

Confirm and document that chapter files correctly use Typst's three syntactic modes (Mastery Part 1.1):
- Markup mode for body text, headings, lists.
- Code mode (`#`) for function calls, variable interpolation, logic.
- Math mode (`$...$`) for formulas where applicable.
- Identify any mode confusion in existing files (e.g., unnecessary `#` prefixes in markup context).

### 0.3 Build Deconstruction Matrix

For each target page pattern, define:
- flow zones (main flow, side flow, overlays)
- structural primitive (`grid`, `columns`, `box`, `block`, `place`)
- semantic layer (`table` vs `grid`)
- inline vs block container choice (Mastery Part 1.2)
- responsive/adaptive notes

Include these Mastery-derived target patterns in the matrix:

| Pattern | Primitive Strategy | Mastery Ref |
|---|---|---|
| Title spread / book cover | stacked `place` overlays, gradient fill | Part 6.4 |
| Chapter opener | `pagebreak()`, `v()` spacing, counter display | Part 9.1 |
| Two-column section | `columns(2)` or `page(columns: 2)` + `set columns(gutter: ...)` | Part 4.1-4.2 |
| Table-heavy section | `table` with `show table.cell.where(...)` | Part 8.3 |
| Figure + caption | figure wrapper with `block`-level container | Part 1.2 |
| Sidebar layout | `grid(columns: (fixed, 1fr))` | Part 6.1 |
| Magazine mixed layout | full-width elements + column flow, `place(scope: "parent")` | Part 6.2 |
| Pull quote | `place` + `box` floated to margin | Part 6.3 |
| Scientific two-column with title breakout | `page(columns: 2)` + `place(float: true, scope: "parent")` | Part 9.2 |
| Dynamic gallery grid | `grid` with computed columns, `..range().map()` | Part 7.2 |

### 0.4 Placement Policy

Document where `place` is allowed:
- overlay decorations only (non-flow, no `float`)
- float breakouts with `float: true, scope: "parent"` for full-width inserts
- stacked overlay mode for cover/title pages (Mastery Part 6.4)
- `scope: "column"` (default) vs `scope: "parent"` decision matrix
- max offset policy for `dx`/`dy`

### 0.5 Style System Entry Points

Confirm central style files that own defaults and transforms:
- `styles/theme.typ` tokens (colors, spacing, type scale)
- `styles/typography.typ` text, paragraph, and heading rules
- `styles/page.typ` page geometry, margins, and running elements

### 0.6 Acceptance Snapshot Plan

Define snapshots to compare after every later phase:
- title spread / book cover
- chapter opener
- two-column section
- table-heavy section
- figure + caption section
- sidebar layout
- pull quote in margin

## Deliverables

- Deconstruction matrix checked into project notes.
- Baseline renders saved.
- Placement/styling policy agreed and referenced by Phase 1+.

## Acceptance Criteria

- All major layout patterns (including Mastery Parts 6-9 patterns) are mapped to Typst primitives.
- `place` usage policy is explicit, covering overlay, float, and scope decisions.
- Block vs inline container discipline is documented.
- Baseline snapshot set exists for regression checks.

## Time Estimate

0.5-1 day

## Next Phase

[Phase 1: Typography and Spacing](showcase-v1-phase1.md)
