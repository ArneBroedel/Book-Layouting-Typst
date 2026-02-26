# Showcase-v1: Spec (Mastery Baseline)

## Product Goal

Deliver a publication-grade Typst showcase that demonstrates professional book layout quality using documented Typst features and reusable architecture.

## Scope

In scope:
- Typography and spacing system.
- Semantic color system with contrast validation.
- Reusable component library.
- Advanced layout patterns (spreads, multi-column, margin systems).
- Context-aware running elements (headers/footers/page counters).
- Content polish, visuals, and release-ready output.

Out of scope (core v1):
- Mandatory external package dependencies.
- HTML export workflows.
- Interactive or runtime-dependent features.

## Layout Architecture

### Primitive Selection Matrix

| Need | Primary Primitive | Secondary | Mastery Ref |
|---|---|---|---|
| Inline emphasis/badges | `box` (with `inset`, `radius`, `baseline`) | `text` | Part 2.2 |
| Block-level callouts/cards | `block` (with `fill`, `inset`, `stroke`) | `rect` | Part 1.2 |
| Structured page zones | `grid` (with `grid.cell` spanning) | `columns` | Part 3 |
| Grid visual structure | `grid.hline` / `grid.vline` | functional `stroke(x, y)` | Part 3.5 |
| Multi-column reading flow | `columns` / `page(columns: ...)` | `colbreak`, `set columns(gutter: ...)` | Part 4 |
| Full-width breakout in column layouts | `place(float: true, scope: "parent")` | dedicated spread block | Part 4.3 |
| Overlay decoration | `place` overlay (no `float`) | page background/foreground | Part 5.2 |
| Pull quotes/margin elements | `place` + `box` (side-placed float) | margin-note helper | Part 6.3 |
| Semantic data | `table` | `show table.cell.where(...)` styling | Part 3 / 8.3 |
| Adaptive/responsive layout | `layout(size => ...)` | conditional grid columns | Part 7.1 |
| Dynamic content grids | `grid` with computed `columns` | `..range().map()` pattern | Part 7.2 |
| Book cover / title pages | stacked `place` calls (overlay mode) | gradient fills, `rotate` | Part 6.4 |

### Block vs Inline Discipline

- Use `box` for inline containers (badges, highlights, baseline-aligned icons).
- Use `block` for block-level containers (callouts, cards, full-width decorative bars).
- Never use `box` where block-level flow is intended — it forces inline behavior.
- The `box(width: 1fr)` pattern is valid inside `grid` columns and paragraphs for fractional inline fills.

### Placement Rules

- Default to flow layout.
- Use overlay `place` only for decorative content that must not shift flow.
- Use floating `place` when surrounding content must reflow.
- Use `scope: "column"` (default) for column-local elements.
- Use `scope: "parent"` for cross-column breakouts and page-body-relative positioning.
- Keep absolute offsets (`dx`, `dy`) small and documented.
- Stacked overlay `place` calls are acceptable for cover/title pages where no flow is needed.

## Styling Architecture

- Global defaults via `set` rules in central style modules.
- Element transformations via `show` rules, scoped and testable.
- Component APIs expose meaningful parameters (`title`, `tone`, `variant`, `width`).
- No duplicate style literals across chapter files.
- Heading show rules must preserve `counter(heading).display()` for numbering.
- Grid/table cell styling via `show grid.cell.where(x: ..., y: ...)` or `show table.cell.where(...)` for positional emphasis.
- Gradient fills (`gradient.linear(...)`) are preferred over flat colors for decorative surfaces (covers, headers).

## Book Structure Requirements

- Front matter, main matter, back matter behavior must be explicit.
- Page numbering strategy documented (including resets if used).
- Running header logic should degrade gracefully on pages with no prior heading.
- Inside/outside margins (`margin: (inside: ..., outside: ...)`) for proper binding gutter.
- Chapter openers use `pagebreak()` with decorative vertical spacing and counter display.
- Odd/even header alternation via `context` + `calc.rem(here().page(), 2)`.

## Accessibility and Readability

- Minimum contrast target: WCAG AA for body text.
- No core reading text below 7.2pt.
- Keep long-line body blocks within readable measure target.
- Maintain clear hierarchy from chapter opener to caption/footnote.

## Responsive and Adaptive Layout

- Use `layout(size => ...)` to adapt layout based on actual available content area dimensions.
- Do NOT use `context { page.width }` for adaptive decisions — it returns configured page width, not text-area width after margins.
- Adaptive patterns include: single-column vs sidebar switch, dynamic gallery grid column counts.
- Keep adaptive logic in dedicated helper functions, not inline in chapter content.

## Target Layout Patterns

The showcase must demonstrate at least these Mastery-derived patterns:

| Pattern | Mastery Part | Phase |
|---|---|---|
| Book cover with stacked `place` overlays and gradient | Part 6.4 | Phase 4 |
| Classic sidebar layout (grid: fixed + 1fr) | Part 6.1 | Phase 4 |
| Magazine layout with mixed full-width/column elements | Part 6.2 | Phase 4 |
| Pull quote floated into margin | Part 6.3 | Phase 3 |
| Scientific paper two-column with full-width title breakout | Part 9.2 | Phase 4 |
| Complete book layout with inside/outside margins | Part 9.1 | Phase 4 |
| Dynamic gallery/product grid | Part 7.2 | Phase 3 |
| Adaptive layout with `layout(size => ...)` | Part 7.1 | Phase 4 |

## Performance Constraints

- Prefer `auto` sizing over fixed sizes where possible — let Typst optimize.
- Prefer flatter layout trees over deep nesting; a single powerful `grid` beats nested grids/columns.
- Avoid unnecessary `context` blocks.
- Encapsulate repeated structures in functions.
- Test layouts incrementally: minimal example first, then add complexity.
- Track compile time regressions in Phase 6.

## Testing and Validation

Per phase:
- `typst compile main.typ main.pdf`
- PNG render pass for visual regressions.
- Spot-check odd/even page behavior.

Final phase:
- Full compile and warnings review.
- Visual QA across chapter openers, tables, figures, notes, references.
- Packaging checklist (metadata, README notes, reproducible commands).

## Deliverables

- Updated phase docs (0-6).
- Updated plan with dependencies and gates.
- Stable spec that governs implementation decisions.

## Success Definition

The showcase demonstrates:
1. High-quality editorial layout.
2. Clear Typst architectural discipline.
3. Reusable component and styling systems.
4. Predictable builds and release readiness.
