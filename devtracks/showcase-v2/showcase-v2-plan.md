# Showcase-v2: Development Plan

## Overview

A ground-up rebuild leveraging every lesson from v1 development, the SKILL.md reference, and the Working_With_Typst report. The plan is structured for incremental compilation: every phase produces a compiling document that can be visually verified.

### Core Principles

1. **Compile-first** — Every phase ends with a successful compile + PNG export.
2. **Isolation-first** — Components are tested in isolation before integration.
3. **Tokens-first** — All visual decisions flow from `theme.typ` tokens; zero magic numbers in components.
4. **Grid-first** — Structural layout uses `grid`, not `place` offsets.
5. **Guard-first** — Every known anti-pattern has an explicit "DO NOT" warning in the phase where it's relevant.

## Phase Map

| Phase | Name | Focus | Effort | Dependencies |
|---|---|---|---|---|
| [Phase 0](showcase-v2-phase0.md) | Scaffold & Theme | Project setup, token system, empty compiling document | 0.5 day | None |
| [Phase 1](showcase-v2-phase1.md) | Typography | Font selection, heading hierarchy, paragraph rhythm | 1 day | Phase 0 |
| [Phase 2](showcase-v2-phase2.md) | Page Setup | Page geometry, margins, running headers/footers | 1 day | Phase 1 |
| [Phase 3](showcase-v2-phase3.md) | Block & Inline Components | Callout, card, blockquote, pull-quote, badges, tags | 1.5 days | Phases 0–2 |
| [Phase 4](showcase-v2-phase4.md) | Layout Systems & Grids | Sidebar, magazine, scientific, adaptive, gallery grids | 2 days | Phases 0–3 |
| [Phase 5](showcase-v2-phase5.md) | Spreads & Special Pages | Book cover, chapter openers, part pages, section breaks | 1.5 days | Phases 0–4 |
| [Phase 6](showcase-v2-phase6.md) | Chapters & Content Assembly | All 8 chapter files with narrative content | 3 days | Phases 0–5 |
| [Phase 7](showcase-v2-phase7.md) | Polish, QA & Release | Visual QA, pattern audit, performance, packaging | 1 day | Phases 0–6 |

**Estimated total: 11.5 days**

## Dependency Graph

```
Phase 0 (Scaffold & Theme)
  │
  ├── Phase 1 (Typography)
  │     │
  │     └── Phase 2 (Page Setup)
  │           │
  │           ├── Phase 3 (Block & Inline Components)
  │           │     │
  │           │     └── Phase 4 (Layout Systems & Grids)
  │           │           │
  │           │           └── Phase 5 (Spreads & Special Pages)
  │           │                 │
  │           │                 └── Phase 6 (Chapters & Content Assembly)
  │           │                       │
  │           │                       └── Phase 7 (Polish, QA & Release)
```

Each phase is strictly sequential — no parallel tracks. This is deliberate: v1 showed that premature component work before stable foundations causes rework.

## Workstreams by Phase

### Foundation Layer (Phases 0–2)

Build the token system, typography, and page geometry that everything else depends on.

**Key decisions locked in this layer:**
- Color palette (teal/amber/gray)
- Type scale (8 sizes from micro to display)
- Spacing scale (6 sizes from xs to xxxl)
- Font families (serif body, sans headings, mono code)
- Page size (A4), margins (inside/outside for binding)
- Heading numbering strategy (auto-numbering with `set heading(numbering: ...)`)
- Running header content and alternation pattern

### Component Layer (Phases 3–4)

Build all reusable components that chapters will consume. Each component:
- Accepts only theme tokens for visual properties
- Has a documented parameter contract
- Is tested with a minimal example before integration
- Respects block/inline discipline

### Assembly Layer (Phases 5–6)

Build special pages and chapter content that compose the components and layouts into the final document.

### Release Layer (Phase 7)

Visual QA, pattern coverage audit, performance check, packaging.

## Anti-Pattern Guards (Embedded Per Phase)

These guards are repeated in the specific phase where they matter most:

| Anti-Pattern | Guard Location | Rule |
|---|---|---|
| `set page(columns: N)` in components | Phase 4 | Use `columns(N)` function only |
| `leading` on `text` | Phase 1 | `leading` belongs to `set par(...)` |
| `place(float: true)` without alignment | Phase 5 | Must specify `top` or `bottom` |
| Hardcoded `dx`/`dy` offsets | Phase 4, 5 | Use grid-based structural layout |
| Duplicate headings | Phase 5, 6 | Chapter-opener IS the heading |
| Mixed auto/manual numbering | Phase 1 | Choose one system globally |
| `breakable: true` on decorative blocks | Phase 3 | Always `breakable: false` |
| `grid()[#a #b]` syntax | Phase 3, 4 | Use positional args: `grid(a, b)` |
| Unverified `sym.*` symbols | Phase 3 | Verify before using |
| `context { page.width }` for adaptive | Phase 4 | Use `layout(size => ...)` |
| `set page(...)` leaking from covers | Phase 5 | Re-call `setup-pages()` after cover |

## Gate Criteria

### Every Phase Gate

- [ ] `typst compile main.typ` succeeds (zero errors)
- [ ] PNG export at 200 PPI reviewed
- [ ] No visual regressions on previously completed pages
- [ ] No anti-patterns from the guard table introduced
- [ ] All new components use theme tokens (no hardcoded colors/sizes)

### Phase-Specific Gates

| Phase | Additional Gate |
|---|---|
| 0 | Token dictionaries export correctly; empty document compiles |
| 1 | Typography hierarchy visible across 5+ heading levels; body text readable |
| 2 | Inside/outside margins correct on odd/even pages; running headers alternate |
| 3 | Each component compiles in isolation; block/inline discipline correct |
| 4 | 4+ layout patterns render correctly; `columns()` function used (not `set page`) |
| 5 | Cover renders full-bleed; chapter openers don't duplicate headings |
| 6 | All chapters compile; 30+ pages total; all 15 target patterns present |
| 7 | Final QA checklist 100% pass; build time < 5s; zero external deps |

## Locked Decisions

1. **No external packages** — Zero dependencies beyond Typst built-ins.
2. **A4 format** — 210mm × 297mm.
3. **German content** — Medical/didactic theme.
4. **Inside/outside margins** — Binding-aware margin system.
5. **Auto-numbering headings** — Via `set heading(numbering: "1.1")`, no manual numbers.
6. **Token-driven design** — All colors, sizes, spacing from `theme.typ` dictionaries.
7. **Grid-first layout** — Structural elements use `grid`, not `place` offsets.
8. **`columns()` function** — Never `set page(columns: N)` in components.
9. **Target folder** — `C:\Users\arneb\dev\Book-Layouting-Typst\typst_showcase_v2\`

## Validation Strategy

After each phase:
1. Compile: `typst compile main.typ`
2. Export PNGs: `typst compile --format png --ppi 200 main.typ "png_output/page-{0p}-of-{t}.png"`
3. Visual review of all pages
4. Regression check against previous phase PNGs
5. Anti-pattern audit of new/changed code

## Next Step

Begin with [Phase 0: Scaffold & Theme](showcase-v2-phase0.md).
