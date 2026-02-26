# Typst Extensibility: Development Plan

## Overview

This devtrack adds 3 new extensibility-focused chapters to the existing `typst_showcase_v2` document. The plan follows the same incremental-compilation philosophy as the v2 build: every phase produces a compiling document that can be visually verified.

### Core Principles

1. **Additive-only** — No modifications to existing chapters 00–07 or the component/style layer.
2. **Compile-first** — Every phase ends with a successful compile + PNG export.
3. **Package-first** — All external packages are installed and verified before any content is written.
4. **Token-loyal** — New content uses the existing design token system. No new colors, spacing scales, or typography rules.
5. **Regression-safe** — Existing pages must remain visually identical after each phase.

## Phase Map

| Phase | Name | Focus | Dependencies |
|---|---|---|---|
| [Phase 0](typst-extensibility-phase0.md) | Workspace Prep & Package Installation | Install packages, create stubs, verify compilation | Showcase-v2 complete |
| [Phase 1](typst-extensibility-phase1.md) | Chapter 08: Pakete & Ökosystem | Package demos (CeTZ, fletcher, codly, showybox, etc.) | Phase 0 |
| [Phase 2](typst-extensibility-phase2.md) | Chapter 09: Datengetriebene Dokumente | JSON/YAML/CSV parsing, sys.inputs, computed content | Phase 0 |
| [Phase 3](typst-extensibility-phase3.md) | Chapter 10: Werkzeuge & Workflows | Tinymist, CI/CD, accessibility, enterprise patterns | Phase 0 |
| [Phase 4](typst-extensibility-phase4.md) | Assembly & Integration | Wire chapters into main.typ, Part III, visual flow | Phases 1–3 |
| [Phase 5](typst-extensibility-phase5.md) | Polish, QA & Release | Visual QA, regression check, final packaging | Phase 4 |

## Dependency Graph

```
Showcase-v2 (complete)
  │
  └── Phase 0 (Workspace Prep & Package Installation)
        │
        ├── Phase 1 (Ch.08: Packages)  ──┐
        ├── Phase 2 (Ch.09: Data)  ──────┤  (can be parallel)
        └── Phase 3 (Ch.10: Tooling)  ───┘
                                          │
                                    Phase 4 (Assembly & Integration)
                                          │
                                    Phase 5 (Polish, QA & Release)
```

Phases 1–3 are **independent** of each other (they only depend on Phase 0). They can be developed in parallel or in sequence. Phase 4 integrates all three, and Phase 5 is the final QA pass.

## Workstreams by Phase

### Preparation Layer (Phase 0)

Install all required packages, create data files and chapter stubs, verify the baseline compiles. This phase also documents exact package versions for reproducibility.

**Key decisions locked in this phase:**
- Exact package list and versions
- Data file formats and sample content
- New chapter file names and positions in the book

### Content Layer (Phases 1–3)

Write the three new chapters. Each chapter:
- Uses the existing `chapter-opener` spread and component library
- Follows the problem → technique → result narrative from v2
- Includes working, compilable demonstrations (not pseudocode)
- Maintains German language and medical/didactic theme

### Assembly Layer (Phase 4)

Wire everything into `main.typ`:
- Add Part III divider
- Include new chapter files
- Ensure running headers and page numbering flow correctly
- Verify ToC includes new chapters

### Release Layer (Phase 5)

Final visual QA pass:
- Page-by-page review of new content
- Regression check on existing pages
- Package version audit
- Build verification (PDF + PNG)

## Package Inventory

These packages will be used across the new chapters. All are available on the Typst Universe.

| Package | Version | Used In | Purpose |
|---|---|---|---|
| `cetz` | latest stable | Ch.08 | Vector graphics, plots, coordinate diagrams |
| `fletcher` | latest stable | Ch.08 | Flowcharts, node-edge diagrams |
| `codly` | latest stable | Ch.08 | Syntax-highlighted code blocks |
| `codly-languages` | latest stable | Ch.08 | Language definitions for codly |
| `showybox` | latest stable | Ch.08 | Advanced decorative boxes |
| `tablem` | latest stable | Ch.08 | Markdown-style table shorthand |
| `fontawesome` | latest stable | Ch.08 | Professional icons |
| `glossarium` | latest stable | Ch.08 | Structured glossary |

> **Note on versions:** Phase 0 will determine the exact latest stable versions and pin them. Typst packages auto-download on first import, so no separate install step is needed — but we must verify each resolves correctly.

## Anti-Pattern Guards

| Anti-Pattern | Guard Location | Rule |
|---|---|---|
| Unpinned package versions | Phase 0 | Always use `@preview/pkg:x.y.z` with explicit version |
| Package imports in global scope | Phases 1–3 | Import packages only in the chapter files that use them, not in `main.typ` |
| Overriding existing components | Phases 1–3 | Use packages alongside existing components, never replace them |
| Hardcoded data in chapter files | Phase 2 | All sample data lives in `data/` files, loaded via `json()`/`csv()`/`yaml()` |
| Modifying theme tokens | Phases 1–3 | No new colors or spacing values — use existing palette |
| Breaking existing page flow | Phase 4 | Insert Part III + chapters after existing back matter restructuring |

## Gate Criteria

### Every Phase Gate

- [ ] `typst compile main.typ` succeeds (zero errors)
- [ ] PNG export at 200 PPI reviewed
- [ ] No visual regressions on pages from chapters 00–07
- [ ] All package imports resolve and render correctly
- [ ] New content uses theme tokens (no hardcoded colors/sizes)

### Phase-Specific Gates

| Phase | Additional Gate |
|---|---|
| 0 | All packages import without errors; data files parse correctly; stubs compile |
| 1 | CeTZ diagram renders; fletcher flowchart renders; codly code block renders; showybox renders |
| 2 | JSON data loads and renders formatted; CSV data auto-generates table; sys.inputs example compiles |
| 3 | CI/CD pipeline example shown; accessibility checklist section present; Tinymist features documented |
| 4 | Part III appears in ToC; running headers show correct chapter titles; page numbering continuous |
| 5 | All new pages pass visual QA; final page count verified; clean build with zero warnings |

## Target Page Count

The 3 new chapters should add approximately **10–15 pages** to the document:

| Chapter | Target Pages |
|---|---|
| 08 Pakete & Ökosystem | 4–6 |
| 09 Datengetriebene Dokumente | 3–5 |
| 10 Werkzeuge & Workflows | 3–4 |

## Next Step

Begin with [Phase 0: Workspace Prep & Package Installation](typst-extensibility-phase0.md).
