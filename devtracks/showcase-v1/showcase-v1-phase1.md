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

Use `set` rules as single source of truth:
- `set text(...)` for font/size/lang/hyphenation
- `set par(...)` for leading/justification/spacing/indent strategy
- heading defaults and level-specific overrides

### 1.3 Heading Transformation Strategy

Apply `show heading.where(...)` only where transformation is needed.
- keep numbering and semantic fields intact
- keep transformations composable and minimal

### 1.4 Inline/Block Discipline (from Layout Mastery)

Define rules for inline badges and block callouts:
- use `box` for inline highlights/badges
- verify baseline alignment for inline icons (`baseline` tuning)
- avoid block wrappers where inline behavior is intended

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

## Time Estimate

2-3 days

## Next Phase

[Phase 2: Color and Contrast](showcase-v1-phase2.md)
