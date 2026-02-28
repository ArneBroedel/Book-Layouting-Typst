# Implementation Plan: Additional Packages Showcase

This devtrack adds four new chapters (11–14) to the book under a new **Teil IV: Community-Pakete** section. Each phase creates one chapter, integrates it into the book assembly, and verifies compilation.

## Pre-Phase: Book Structure Setup

- [ ] Add a `part-page(number: "Teil IV", title: [Community-Pakete])` block to `src/main.typ`, placed after `#include "chapters/10-tooling.typ"` and before `#include "chapters/07-backmatter.typ"`.
- [ ] Update chapter 08's quick-reference table to add forward cross-references: "→ Kapitel 12" for Fontawesome, "→ Kapitel 11" for Glossarium, "→ Kapitel 14" for Touying.

## Phases

- [ ] **Phase 1:** Academic Publishing — Physica, Glossarium, Alexandria, Pergamon (`phase1.md`)
- [ ] **Phase 2:** Beyond Standard Flow — Pinit, Biceps, Fontawesome (`phase2.md`)
- [ ] **Phase 3:** WebAssembly & Metaprogramming — Diagraph, Tidy, CtxJS (`phase3.md`)
- [ ] **Phase 4:** Templates, Presentations & Enterprise — Touying, Ilm, Brilliant-CV (`phase4.md`)

## Conventions (apply to every phase)

- Use `chapter-opener()` for the chapter heading — do **not** add a separate `= Title`.
- Import only needed components: `spreads`, `blocks`, `inline`, `grids`, `tables`, `layouts` as required.
- End every chapter file with `#section-break()`.
- Pin every package import with the full `@preview/name:X.Y.Z` syntax.
- All chapters use German prose consistent with the medical/didactic theme.
- After each phase, `include` the new chapter in `main.typ` inside the Teil IV block and compile the full document to verify no regressions.
