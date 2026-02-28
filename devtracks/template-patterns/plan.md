# Implementation Plan: Template Patterns Showcase

This devtrack adds three new chapters (15–17) to the book under a new **Teil V: Template-Muster und Architektur** section. Each phase focuses on extracting and explaining the underlying Document Engineering mechanics of specific Typst templates, organised around four reusable patterns: Dynamic Content Extraction, Margin Architectures, Thematic Overrides, and Data Separation.

## Pre-Phase: Book Structure Setup

- [ ] Add a `part-page(number: "Teil V", title: [Template-Muster und Architektur])` block to `src/main.typ`, placed after `#include "chapters/14-templates.typ"` and before `#include "chapters/07-backmatter.typ"`.
- [ ] Update chapter 08's quick-reference table to add forward cross-references to these new chapters (e.g., `query` patterns → Ch. 15, margin architectures → Ch. 16).
- [ ] Verify that the four reusable patterns (from `Typst_Template_Report.md` §6) are stated in the Part V opener or the introduction of chapter 15 as the organising thesis.

## Phases

- [ ] **Phase 1:** Buch-Layout-Architekturen — Wonderous-Book, TiefFiction, Decision Table (`phase1.md`)
- [ ] **Phase 2:** Komplexe Randnotizen und API-Dokus — Toffee-Tufte, Mantys (`phase2.md`)
- [ ] **Phase 3:** Visuelle Hierarchie und Typst-Grenzen — Caidan, Aspirationally, Soviet-Matrix/Badformer (Exkurs), Learning Path (`phase3.md`)

## Conventions (apply to every phase)

- Use `chapter-opener()` for the chapter heading — do **not** add a separate `= Title`.
- Import only needed components from `styles/` and `components/`.
- End every chapter file with `#section-break()`.
- Use `code-block()` heavily to show the exact Typst source code that makes the patterns work.
- Explain the logic using `callout()`, `side-note()`, and `key-concept()`.
- **Tag each template section** with the reusable pattern(s) it demonstrates, using `badge()` or `tag()` inline markers.
- **Do NOT** apply global `#show: template.with(...)` rules — create scoped examples inside blocks if visual demonstration is needed.
- Reference `templates/<name>/` directories as source material for further exploration.
- Add explicit cross-references to Chapter 14 wherever Touying, Ilm, or Brilliant-CV patterns are mentioned.
- All chapters use German prose consistent with the medical/didactic theme.
- After each phase, `include` the new chapter in `main.typ` inside the Teil V block and compile the full document to verify no regressions.
