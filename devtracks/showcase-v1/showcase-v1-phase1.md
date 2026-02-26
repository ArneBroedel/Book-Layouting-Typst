# Showcase-v1: Phase 1 - Typography and Spacing

## Objective

Establish robust text defaults and spacing rhythm that all later layout and component work depends on.

## Dependencies

- Phase 0 complete.

## Tasks

### 1.1 Token Foundation (`styles/theme.typ`)

Define and document:
- type scale: `micro`, `tiny`, `small`, `body`, `lead`, `h3`, `h2`, `h1`, `display`
- spacing scale: `xs` to `xxxl`
- baseline helper token for rhythm checks

### 1.2 Global Text/Paragraph Defaults (`styles/typography.typ`)

Use `set` rules as single source of truth (Mastery Part 8.1):
- `set text(...)` for font/size/lang/hyphenation
- `set par(...)` for leading/justification/spacing
- `first-line-indent`: decide on indent strategy (traditional book indent vs no-indent with spacing). Document the decision.
- heading defaults and level-specific overrides
- `set heading(numbering: "1.1")` or similar for auto-numbering

### 1.3 Heading Transformation Strategy

Apply `show heading.where(...)` only where transformation is needed (Mastery Part 8.2):
- keep numbering and semantic fields intact
- preserve `counter(heading).display()` in custom heading renders
- keep transformations composable and minimal
- consider gradient-background headings for decorative levels (Mastery Part 8.2 example)

### 1.4 Block vs Inline Discipline (from Layout Mastery Parts 1.2 and 2)

Define and enforce rules for inline and block containers:
- use `box` for inline highlights/badges with `inset`, `radius`, `baseline` (Mastery Part 2.2)
- use `block` for block-level callouts, cards, full-width bars
- verify `baseline` alignment for inline icons (`baseline: 30%` pattern from Mastery Part 2.2)
- use `outset` for decorative emphasis that extends beyond content flow (Mastery Part 2.2)
- `clip: true` when content must not overflow container bounds
- avoid `box` where `block` behavior is intended and vice versa

### 1.5 Readability QA

Validate:
- body leading and line length readability
- hierarchy clarity between body, lead, headings, caption text
- paragraph/list rhythm consistency

## Deliverables

- Updated `styles/theme.typ`
- Updated `styles/typography.typ`
- Optional typography preview page in showcase content

## Acceptance Criteria

- Centralized text/spacing defaults are in place.
- No duplicate typography literals in chapter files.
- Body readability improved with no compile regressions.
- Block vs inline discipline is documented and enforced.
- `first-line-indent` strategy is decided and consistent.
- Heading show rules preserve `counter(heading)` access.

## Time Estimate

2-3 days

## Next Phase

[Phase 2: Color and Contrast](showcase-v1-phase2.md)
