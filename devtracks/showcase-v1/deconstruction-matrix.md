# Showcase-v1: Deconstruction Matrix & Placement Policy

## 1. Syntactic Mode Awareness
- **Markup mode**: Used for body text, headings (`=`), lists (`-`, `+`).
- **Code mode**: Introduced with `#` for function calls (`#box()`, `#grid()`), variable interpolation, and logic.
- **Math mode**: Delimited by `$` for formulas.

## 2. Deconstruction Matrix

| Pattern | Flow Zones | Structural Primitive | Semantic Layer | Container Choice | Responsive/Adaptive Notes |
|---|---|---|---|---|---|
| Title spread / book cover | Overlays (no flow) | Stacked `place` overlays | None | `block` for text groups | Fixed to page size |
| Chapter opener | Main flow | `pagebreak()`, `v()` spacing | Heading | `block` | None |
| Two-column section | Main flow (split) | `columns(2)` or `page(columns: 2)` | None | `block` | `set columns(gutter: ...)` |
| Table-heavy section | Main flow | `table` | `table` | `block` | `show table.cell.where(...)` |
| Figure + caption | Main flow | `figure` wrapper | `figure` | `block` | None |
| Sidebar layout | Main flow + Side flow | `grid(columns: (fixed, 1fr))` | None | `block` | `layout(size => ...)` for adaptive switch |
| Magazine mixed layout | Main flow + Overlays | `place(scope: "parent")` + column flow | None | `block` | None |
| Pull quote | Side flow | `place` + `box` floated to margin | Quote | `box` (inline float) | None |
| Scientific two-column | Main flow + Breakout | `page(columns: 2)` + `place(float: true, scope: "parent")` | None | `block` | None |
| Dynamic gallery grid | Main flow | `grid` with computed columns | None | `block` | `..range().map()` |

## 3. Placement Policy
- **Default**: Flow layout.
- **Overlay decorations**: `place` (non-flow, no `float`).
- **Float breakouts**: `place(float: true, scope: "parent")` for full-width inserts in multi-column layouts.
- **Cover/Title pages**: Stacked overlay `place` calls.
- **Scope**: `scope: "column"` (default) for column-local elements; `scope: "parent"` for cross-column breakouts.
- **Offsets**: Keep `dx`/`dy` small and documented.

## 4. Style System Entry Points
- `styles/theme.typ`: Tokens (colors, spacing, type scale).
- `styles/typography.typ`: Text, paragraph, and heading rules.
- `styles/page.typ`: Page geometry, margins, and running elements.

## 5. Acceptance Snapshot Plan
Snapshots to compare after every later phase:
1. Title spread / book cover
2. Chapter opener
3. Two-column section
4. Table-heavy section
5. Figure + caption section
6. Sidebar layout
7. Pull quote in margin
