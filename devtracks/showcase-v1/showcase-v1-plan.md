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

- Prefer `grid` for structural layout and `table` for semantic data.
- Prefer flow layout first; use `place` only for justified exceptions.
- If `place` is used:
  - `float: true` for flow-aware breakouts.
  - `scope: "parent"` for across-column/page-body elements.
  - Overlay mode only for decorative non-blocking elements.
- Keep layout trees shallow where possible; avoid unnecessary nested grids/columns.
- Reuse component functions instead of repeating inline markup.

## Workstreams

| Workstream | Scope | Start | Notes |
|---|---|---|---|
| Foundations | Type, spacing, palette, page defaults | Phase 0 | Required for stable components |
| Components | Admonitions, cards, tables, figures, lists | Late Phase 1 | Must consume tokens only |
| Layout Systems | Columns, spread patterns, breakouts, headers | Phase 2 | Depends on stable components |
| Content and Assets | Chapter rewrite and SVG assets | Phase 3 | Uses final component/layout APIs |
| QA and Release | Build checks, render checks, packaging | Continuous, final in Phase 6 | Hard gate for completion |

## Gate Criteria

Every phase:
- `typst compile` succeeds.
- No untracked warnings are introduced.
- PNG render comparison is reviewed.
- Readability at 100% zoom is preserved.
- Changes are committed as a focused phase unit.

Additional gates:
- Phase 0: Deconstruction matrix exists (flow, grid, exceptions, context points).
- Phase 1: Text defaults (`set text`, `set par`, heading scale) are centralized.
- Phase 2: Contrast matrix is documented and validated.
- Phase 3: Component catalog includes usage and parameter contracts.
- Phase 4: Column breakout and header logic are stable on odd/even pages.
- Phase 5: Content narrative and references are consistent across chapters.
- Phase 6: Final build/regression report and release checklist completed.

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
