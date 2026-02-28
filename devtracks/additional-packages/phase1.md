# Phase 1: Akademisches Publizieren und Mathematik

This phase creates **Chapter 11** (`src/chapters/11-academic.typ`), highlighting packages that simplify academic writing, math typesetting, and complex bibliography management.

## Tasks

- [ ] Create `src/chapters/11-academic.typ` with the standard imports from `styles/theme.typ` and the components used.
- [ ] Add `chapter-opener(title: [Akademisches Publizieren und Mathematik], lead: [...])` with a lead paragraph explaining that Typst's base math and bibliography engines are strong, but community packages unlock domain-specific workflows.

### Physica — Mathematische Kurzschreibweisen

- [ ] Import `@preview/physica:0.9.8`.
- [ ] Write a section demonstrating Physica's shorthand bindings. Show at least:
  - Partial derivatives (`pdv`, `dv`) compared to raw Typst `frac(diff f, diff x)`.
  - Vector notation (`vu`, `va`) and operators (`curl`, `grad`, `div`).
  - A matrix example using Physica's `mat` shorthands.
- [ ] Use a `comparison-layout()` (or two `code-block()` side by side) to visually contrast "without Physica" vs. "with Physica" for the same formula.
- [ ] Add a `callout(tone: "info")` noting that Physica provides hundreds of shorthands and link to its documentation reference.

### Glossarium — Intelligente Abkürzungsverwaltung

- [ ] Import `@preview/glossarium:0.5.4`.
- [ ] Define a small sample glossary (3–5 medical terms/acronyms, e.g. EKG, MRT, SpO₂) as a dictionary.
- [ ] Demonstrate the first-use expansion: the first `@EKG` prints "Elektrokardiogramm (EKG)", subsequent uses print only "EKG".
- [ ] Use a `key-concept(term: [Introspection])` box explaining how Glossarium uses Typst's `query()` and `state()` to track first-use across the entire document.
- [ ] Add a `side-note()` about scoping: Glossarium's show rules apply document-wide, so wrap in a code block if needed to isolate them for this chapter.

### Alexandria — Mehrere Literaturverzeichnisse

- [ ] Import `@preview/alexandria:0.2.2`.
- [ ] Demonstrate the prefixing scheme: define two small `.bib` data sets (e.g. "klinisch:" and "grundlagen:") and show how `@klinisch:smith2024` routes to one bibliography block while `@grundlagen:jones2023` routes to another.
- [ ] Use a `callout(tone: "success")` explaining that the native Typst compiler only supports one `bibliography` element — Alexandria works around this via show-rule interception.

### Pergamon — Bibliografie-Styling in Typst

- [ ] Import `@preview/pergamon:0.2.0`.
- [ ] Create a `comparison-layout()` showing the **same bibliographic entry** rendered twice:
  - Left: default CSL styling (standard Typst bibliography).
  - Right: Pergamon's Typst-native styling with custom rules (e.g., hyperlinked title, filtered by keyword).
- [ ] Add a `side-note()` explaining that Pergamon enables "refsections" (per-chapter bibliographies) and custom filtering — capabilities not available through CSL alone.

### Finalisation

- [ ] End the chapter with `#section-break()`.
- [ ] Add `#include "chapters/11-academic.typ"` to `src/main.typ` inside the Teil IV block.
- [ ] Compile the full document. Verify that math renders correctly, the glossary expands on first use, and both bibliography blocks appear without errors.
