# Showcase-v1: Phase 6 - QA and Release Hardening

## Objective

Finalize build quality, visual stability, and release packaging for showcase-v1.

## Dependencies

- Phases 0-5 complete.

## Tasks

### 6.1 Build and Warning Audit

Run:
- `typst compile main.typ main.pdf`
- `typst compile --format png --ppi 200 main.typ "png_output/page-{0p}-of-{t}.png"`

Track:
- compile success/failure
- warning inventory (must be zero or explicitly waived)

### 6.2 Regression Snapshot Review

Compare against Phase 0 baseline pages:
- title spread
- chapter opener
- dense body text page
- table-heavy page
- figure+caption page
- margin-note page

### 6.3 Running Logic Verification

Verify context-driven systems:
- header chapter lookup fallback works
- page counters/final page numbers are correct
- odd/even alignment behavior remains stable

### 6.4 Performance Sanity

Record compile time and detect regressions from earlier baselines.

Additional performance checks (Mastery Part 10.1):
- audit for unnecessary fixed sizes where `auto` would suffice
- check for deeply nested grid/columns structures that could be flattened
- verify `context` blocks are justified and minimal
- confirm component functions are used instead of repeated inline markup

### 6.5 Mastery Pattern Coverage Audit

Verify all target patterns from the spec are present and functional:

| Pattern | Present | File/Page | Notes |
|---|---|---|---|
| Book cover (stacked `place` + gradient) | Yes | `components/spreads.typ` | Used in `main.typ` |
| Classic sidebar layout | Yes | `components/layouts.typ` | Used in `chapters/03-layout.typ` |
| Magazine layout (mixed width/column) | Yes | `components/layouts.typ` | Used in `chapters/03-layout.typ` |
| Pull quote (margin float) | Yes | `components/blocks.typ` | Used in `chapters/03-layout.typ` |
| Scientific two-column + title breakout | Yes | `components/layouts.typ` | Used in `chapters/05-med-didactics.typ` |
| Book layout (inside/outside margins) | Yes | `styles/page.typ` | Used globally |
| Dynamic gallery grid | Yes | `components/grids.typ` | Used in `chapters/04-graphics.typ` |
| Adaptive layout (`layout(size => ...)`) | Yes | `components/layouts.typ` | Available for use |

### 6.6 Release Packaging

Prepare:
- final PDF
- optional PNG sample set
- updated README highlights
- short changelog summary

## Deliverables

- QA checklist with pass/fail status: PASS
- Final showcase build artifacts: Generated
- Release notes summary: Updated README.md

## Acceptance Criteria

- [x] Compile passes with no blocking issues.
- [x] Core snapshot pages pass visual review.
- [x] Running headers/footers and counters are correct.
- [x] All 8 Mastery layout patterns are verified present and functional.
- [x] Auto-sizing audit confirms no unnecessary fixed sizes.
- [x] Layout tree depth is reasonable (no deep nesting without justification).
- [x] Release package is ready to share.

## Time Estimate

1 day

## Outcome

Showcase-v1 is production-ready and demonstrably aligned with Typst layout mastery practices.
