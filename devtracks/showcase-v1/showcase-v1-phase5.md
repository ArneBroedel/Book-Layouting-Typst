# Showcase-v1: Phase 5 - Content and Polish

## Objective

Complete editorial-quality content and visual polish while preserving architectural consistency.

## Dependencies

- Phases 1-4 complete.

## Tasks

### 5.1 Narrative Rewrite

Upgrade chapter intros from feature lists to guided narratives:
- problem -> method -> result framing
- clear transitions between examples
- explicit links between design decisions and Typst primitives (referencing Mastery Parts)
- demonstrate block vs inline discipline in narrative context

### 5.2 Visual Asset Integration

Integrate 5-8 SVG assets aligned to chapter goals:
- workflow diagram
- type scale and color system visualizations
- didactic/medical schematic examples
- layout/grid explanation graphics
- book cover design (output of Mastery Part 6.4 pattern)
- sidebar and magazine layout showcase renders

### 5.3 Data-Driven Visual Blocks

Demonstrate computed visuals using Typst logic:
- mini bar charts
- heatmap-like table styles using functional `fill(x, y)` (Mastery Part 3.3)
- progress indicators tied to chapter structure
- dynamic gallery grid with variable column count (Mastery Part 7.2)

### 5.4 Mastery Pattern Showcase Verification

Verify all target layout patterns from the spec are exercised in content:
- [ ] Book cover with stacked `place` overlays and gradient
- [ ] Classic sidebar layout
- [ ] Magazine layout with mixed full-width/column elements
- [ ] Pull quote floated into margin
- [ ] Scientific two-column with full-width title breakout
- [ ] Complete book layout with inside/outside margins
- [ ] Dynamic gallery grid
- [ ] Adaptive layout with `layout(size => ...)`

### 5.5 References and Scholarly Polish

Standardize:
- footnotes
- citations
- bibliography or reference blocks
- figure/table caption conventions

### 5.6 Back Matter and Appendix

Add practical resources:
- install and compile commands
- component quick reference
- glossary/resource links
- Mastery Part cross-reference index (which pattern is demonstrated where)

### 5.7 Metadata and Public Readiness

Set document metadata and update project-facing notes (README/release notes).

## Deliverables

- Updated chapter content
- Added/updated assets
- Final polish of references, appendix, metadata

## Acceptance Criteria

- Content is coherent and story-driven.
- Visual examples are integrated and meaningful.
- References/footnotes are consistent.
- All 8 target Mastery layout patterns are exercised in at least one chapter.
- Showcase is ready for final QA and release pass.

## Time Estimate

3-4 days

## Next Phase

[Phase 6: QA and Release](showcase-v1-phase6.md)
