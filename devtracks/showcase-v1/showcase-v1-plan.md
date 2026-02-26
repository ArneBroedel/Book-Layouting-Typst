# Showcase-v1: Development Plan (Mastery Extended)

## Overview

This devtrack is aligned to `Guides/Typst Layout Mastery.md` and keeps the project on a documented, maintainable Typst path.

Core approach:
1. Deconstruct layout before styling.
2. Build on Typst primitives (`box`, `grid`, `columns`, `place`, `page`).
3. Use `set` for defaults and `show` for transformations.
4. Add context-aware behavior only where needed (`context`, `query`, `counter`).
5. Enforce compile, readability, and performance gates in every phase.

## Phase Map

| Phase | Name | Focus | Effort | Dependencies |
|---|---|---|---|---|
| [Phase 0](showcase-v1-phase0.md) | Layout Deconstruction | Visual target mapping, primitive selection, snapshot baseline | 0.5-1 day | None |
| [Phase 1](showcase-v1-phase1.md) | Typography and Spacing | Type tokens, paragraph rhythm, baseline behavior | 2-3 days | Phase 0 |
| [Phase 2](showcase-v1-phase2.md) | Color and Contrast | Semantic palette, contrast matrix, color semantics | 1-2 days | Phase 1 |
| [Phase 3](showcase-v1-phase3.md) | Components | Box-first component library, tables/figures/lists | 2-3 days | Phases 1-2 |
| [Phase 4](showcase-v1-phase4.md) | Layout and Spreads | Grid/columns systems, full-width breaks, running heads | 3-4 days | Phases 1-3 |
| [Phase 5](showcase-v1-phase5.md) | Content and Polish | Narrative rewrite, data visuals, appendix, metadata | 3-4 days | Phases 1-4 |
| [Phase 6](showcase-v1-phase6.md) | QA and Release | Regression checks, compile budget, release package | 1 day | Phases 0-5 |

Estimated total: 13-18 days.

## Mastery Constraints

### Primitive Discipline
- Use `box` for inline containers; use `block` for block-level containers (Mastery Part 1.2).
- Prefer `grid` for structural layout and `table` for semantic data.
- Use `grid.cell(colspan, rowspan)` for hero sections and asymmetric zones (Mastery Part 3.4).
- Use `grid.hline` / `grid.vline` for visual structure lines (Mastery Part 3.5).
- Use functional `fill(x, y)` / `stroke(x, y)` for striped/checkerboard patterns (Mastery Part 3.3).

### Flow and Placement
- Prefer flow layout first; use `place` only for justified exceptions.
- If `place` is used:
  - `float: true` for flow-aware breakouts.
  - `scope: "parent"` for across-column/page-body elements.
  - `scope: "column"` (default) for column-local floats.
  - Overlay mode only for decorative non-blocking elements.
  - Stacked overlay `place` acceptable for cover/title pages.
- Keep layout trees shallow where possible; avoid unnecessary nested grids/columns.

### Responsive and Adaptive
- Use `layout(size => ...)` for content-area-aware adaptations (Mastery Part 7.1).
- Do NOT use `context { page.width }` for adaptive decisions.
- Dynamic grid columns via computed `columns` parameter (Mastery Part 7.2).

### Reuse and Performance
- Reuse component functions instead of repeating inline markup.
- Prefer `auto` sizing over fixed where possible.
- Keep `context` usage minimal and justified.
- `show` rules must preserve semantic fields (counters, labels) when transforming elements.

## Workstreams

| Workstream | Scope | Start | Notes |
|---|---|---|---|
| Foundations | Type scale, spacing scale, palette, page defaults, block/box discipline | Phase 0 | Required for stable components |
| Components | Admonitions, cards, tables, figures, lists, pull quotes, dynamic grids | Late Phase 1 | Must consume tokens only |
| Layout Systems | Columns, spread patterns, breakouts, headers, sidebar, magazine, adaptive, book cover | Phase 2 | Depends on stable components |
| Content and Assets | Chapter rewrite, SVG assets, showcase of all Mastery patterns | Phase 3 | Uses final component/layout APIs |
| QA and Release | Build checks, render checks, packaging, auto-sizing audit | Continuous, final in Phase 6 | Hard gate for completion |

## Gate Criteria

Every phase:
- `typst compile` succeeds.
- No untracked warnings are introduced.
- PNG render comparison is reviewed.
- Readability at 100% zoom is preserved.
- Changes are committed as a focused phase unit.

Additional gates:
- Phase 0: Deconstruction matrix exists (flow, grid, exceptions, context points). Syntactic mode awareness documented.
- Phase 1: Text defaults (`set text`, `set par`, heading scale) are centralized. Block vs inline discipline verified. `first-line-indent` strategy decided.
- Phase 2: Contrast matrix is documented and validated. Gradient fills and functional `fill(x, y)` patterns are used where appropriate.
- Phase 3: Component catalog includes usage and parameter contracts. Pull-quote and dynamic gallery grid components exist.
- Phase 4: Column breakout and header logic are stable on odd/even pages. Inside/outside margins active. Adaptive layout helper uses `layout(size => ...)`. At least 4 Mastery layout patterns demonstrated (sidebar, magazine, book cover, scientific two-column).
- Phase 5: Content narrative and references are consistent across chapters. All target layout patterns from spec are exercised.
- Phase 6: Final build/regression report and release checklist completed. Auto-sizing audit confirms no unnecessary fixed sizes.

## Locked Decisions

1. No external packages in core redesign.
2. A4 format remains.
3. German content remains.
4. Medical/didactic theme remains.
5. Grid-first, semantic-first layout rules take priority over decoration.

## Rollout Strategy

1. Work in place (`v0 -> v1`) in the main showcase folder.
2. Commit per phase boundary.
3. Render PNG pages after each phase.
4. Run compile checks before each commit.
5. Keep short changelog notes in each phase file.

## Next Step

Start with [Phase 0](showcase-v1-phase0.md), then execute [Phase 1](showcase-v1-phase1.md).
