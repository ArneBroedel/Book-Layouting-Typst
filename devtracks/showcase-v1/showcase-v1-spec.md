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

| Need | Primary Primitive | Secondary |
|---|---|---|
| Inline emphasis/badges | `box` | `text` |
| Structured page zones | `grid` | `columns` |
| Multi-column reading flow | `columns` / `page(columns: ...)` | `colbreak` |
| Full-width breakout in column layouts | `place(float: true, scope: "parent")` | dedicated spread block |
| Overlay decoration | `place` overlay | page background/foreground |
| Semantic data | `table` | grid-like styling |

### Placement Rules

- Default to flow layout.
- Use overlay `place` only for decorative content that must not shift flow.
- Use floating `place` when surrounding content must reflow.
- Use `scope: "parent"` for cross-column breakouts.
- Keep absolute offsets (`dx`, `dy`) small and documented.

## Styling Architecture

- Global defaults via `set` rules in central style modules.
- Element transformations via `show` rules, scoped and testable.
- Component APIs expose meaningful parameters (`title`, `tone`, `variant`, `width`).
- No duplicate style literals across chapter files.

## Book Structure Requirements

- Front matter, main matter, back matter behavior must be explicit.
- Page numbering strategy documented (including resets if used).
- Running header logic should degrade gracefully on pages with no prior heading.

## Accessibility and Readability

- Minimum contrast target: WCAG AA for body text.
- No core reading text below 7.2pt.
- Keep long-line body blocks within readable measure target.
- Maintain clear hierarchy from chapter opener to caption/footnote.

## Performance Constraints

- Prefer flatter layout trees over deep nesting.
- Avoid unnecessary `context` blocks.
- Encapsulate repeated structures in functions.
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
