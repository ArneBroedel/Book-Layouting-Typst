# Phase 2: Komplexe Randnotizen und API-Dokus

This phase creates **Chapter 16** (`src/chapters/16-margin-patterns.typ`), exploring how templates break out of the single-column text flow to create rich, multi-column reading experiences.

## Tasks

- [ ] Create `src/chapters/16-margin-patterns.typ` with standard imports.
- [ ] Add `chapter-opener(title: [Komplexe Randnotizen und API-Dokus], lead: [...])` with a lead paragraph: "Technical reports and API manuals demand structures that go beyond standard text flow — wide margins for annotation, side-by-side code and output, and automatic overlap prevention. This chapter dissects two templates that solve these problems."

### Toffee-Tufte — Die Randnotiz-Architektur `tag("Margin Architectures")`

- [ ] Introduce the Tufte layout style: a narrow main text column and a wide margin for notes, citations, and small figures.
- [ ] Use a `code-block()` to demonstrate the core mechanism: using `measure()` to find the height of a note, and `place(dx: ..., dy: ...)` to push it into the margin.
- [ ] Use a `key-concept(term: [Kollisionsvermeidung])` box to explain the hardest part: preventing margin notes from overlapping. Explain how Toffee-Tufte maintains a `state()` tracking the last-used Y-position, and increments it by the measured height of each new note to guarantee no overlap.
- [ ] Create a **scoped visual demo**: Build a simplified margin-note function inside a `block(width: 100%, height: 12cm)` that places 2–3 notes into a simulated right margin. This should work within the book's layout without affecting surrounding pages.
- [ ] Add a `callout(tone: "warning")` noting that until Typst gains native margin-note support (tracked as a core feature request), these workarounds are the state of the art.
- [ ] Add a `side-note()` about when to use Toffee-Tufte vs. the book's own `side-note()` component: Toffee-Tufte is for document-wide architectural decisions; `side-note()` is a lightweight inline component.
- [ ] Reference: `templates/toffee-tufte/` for the full implementation.

### Mantys — Meta-Scaffolding für Dokumentation `tag("Thematic Overrides")`

- [ ] Introduce Mantys as a template designed for documenting Typst packages — "Documentation as Code."
- [ ] Use a `code-block()` to show how Mantys structures side-by-side code documentation: parsing the function signature and displaying the code on the left, with rendered output on the right.
- [ ] Create a **meta-recursive demo**: Use the book's own `callout()` function as the "API" being documented. Show a Mantys-style documentation block that describes `callout(title: string, tone: string, body: content)` — so the reader sees the book documenting its own components.
- [ ] Create a `comparison-layout()`: Left — a plain-text description of a function API; Right — the same information structured as a Mantys-style `#argument("name", type: "string")` block.
- [ ] Explain the pattern: creating custom Typst functions (like `#argument()`, `#return-type()`) to consistently format technical specs — this is the "Thematic Overrides" pattern applied to documentation.
- [ ] Reference: `templates/mantys/` for the full implementation.

### Finalisation

- [ ] End the chapter with `#section-break()`.
- [ ] Add `#include "chapters/16-margin-patterns.typ"` to `src/main.typ`.
- [ ] Compile the full document. Verify that the scoped margin-note demo renders correctly within its block and doesn't affect surrounding pages.
