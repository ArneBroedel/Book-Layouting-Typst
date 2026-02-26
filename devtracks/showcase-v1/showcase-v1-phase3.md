# Showcase-v1: Phase 3 - Components (Box-First Library)

## Objective

Build a reusable component system using documented Typst layout primitives and stable APIs.

## Dependencies

- Phases 1-2 complete.

## Tasks

### 3.1 Admonition Family (`components/admonitions.typ`)

Create consistent variants (`note`, `tip`, `warn`, `redflag`) with:
- box-based structure
- semantic tone mapping
- optional icon slot
- predictable spacing contract

### 3.2 Core Reusable Blocks

Implement and document:
- `callout(...)`
- `card(...)`
- `blockquote(...)`
- `margin-note(...)`

### 3.3 Inline Utilities

From Layout Mastery box patterns:
- badge helper with rounded pill box
- inline highlight helper
- baseline-safe icon helper

### 3.4 Figures and Tables

- Figure wrapper with caption hierarchy.
- Zebra/data table helper with semantic header styling.
- `show table.cell.where(...)` rules for header row/column emphasis where needed.

### 3.5 Component API Contracts

For each component document:
- required params
- optional params and defaults
- intended use and anti-use

## Deliverables

- Updated component files in `components/`.
- `components/README.md` with API overview and examples.

## Acceptance Criteria

- Components are token-driven and reusable.
- Inline vs block behavior is correct.
- Component usage in chapters requires minimal local styling.

## Time Estimate

2-3 days

## Next Phase

[Phase 4: Layout and Spreads](showcase-v1-phase4.md)
