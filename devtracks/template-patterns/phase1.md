# Phase 1: Buch-Layout-Architekturen

This phase creates **Chapter 15** (`src/chapters/15-book-patterns.typ`), focusing on the deep architectural patterns used in complex book templates. This is the anchor chapter of Teil V and sets up the four-pattern framework.

## Tasks

- [ ] Create `src/chapters/15-book-patterns.typ` with standard imports from `styles/theme.typ` and `components/`.
- [ ] Add `chapter-opener(title: [Buch-Layout-Architekturen], lead: [...])` with a lead paragraph introducing Teil V's thesis: templates are not black boxes — they are built from four reusable patterns (Dynamic Content Extraction, Margin Architectures, Thematic Overrides, Data Separation). This chapter demonstrates the first pattern.

### Pattern Framework Introduction

- [ ] Add a `feature-grid(column-count: 2)` presenting the four reusable patterns with brief descriptions:
  - Dynamic Content Extraction → Wonderous-Book, this book's `page.typ`
  - Margin Architectures → Toffee-Tufte (Ch. 16)
  - Thematic Overrides → Aspirationally (Ch. 17), Ilm (see Ch. 14)
  - Data Separation → Brilliant-CV (see Ch. 14)
- [ ] Add a `side-note()`: "Die ersten beiden Muster werden in diesem und dem nächsten Kapitel demonstriert. Die letzten beiden wurden bereits in Kapitel 14 am Beispiel von Ilm und Brilliant-CV vorgestellt."

### Decision Table — Welches Template für welchen Zweck?

- [ ] Create a `styled-table()` mapping the report's §2 Decision Table into the book:
  - Columns: Zweck / Empfohlenes Template / Typ / Kernstärke
  - Rows: Slides (Touying → Ch. 14), Data-Driven CVs (Brilliant-CV → Ch. 14), Non-Fiction Book (Ilm → Ch. 14), Fiction Book (TiefFiction → below), Reports (Toffee-Tufte → Ch. 16), API-Dokus (Mantys → Ch. 16), Marketing (Caidan → Ch. 17), Glossar (Glossarium → Ch. 11).
- [ ] Add a `callout(tone: "info")` explaining the Template vs. Package vs. Hybrid distinction from the report's §1.

### Wonderous-Book — Dynamische Kolumnentitel `tag("Dynamic Content Extraction")`

- [ ] Introduce the concept of dynamic running headers (Kolumnentitel) that reflect the current chapter.
- [ ] Use a `code-block()` to show the core logic: `context { query(heading.where(level: 1).before(here())) }` inside `page(header: [...])`.
- [ ] Explain how to filter the query to find headings *before* the current page, and pick the last one.
- [ ] Use a `key-concept(term: [Context & Query])` box explaining that `query` returns elements from the fully compiled document, and `context` makes page headers reactive to the current location.
- [ ] **Self-referential comparison**: Use a `comparison-layout()` showing Wonderous-Book's running header code (left) next to this book's own implementation from `styles/page.typ` lines 20–45 (right). Add a `callout(tone: "success")`: "Dieses Buch verwendet exakt dasselbe Muster — die Kolumnentitel, die Sie beim Lesen dieser Seite sehen, werden durch den rechts gezeigten Code erzeugt."
- [ ] Reference: `templates/wonderous-book/` for the full implementation.

### TiefFiction — Traditioneller Buchsatz und Initialen

- [ ] Tag: `badge("Thematic Overrides")`
- [ ] Introduce traditional literary features: drop caps (Initialen), chapter starting pages, and recto-page enforcement.
- [ ] Use a `code-block()` to show a simplified version of TiefFiction's `#dropcap()` logic, demonstrating how it `measure()`s the first letter and wraps the rest of the text.
- [ ] Create a scoped, isolated demo: wrap a `dropcap()` example inside a `block(width: 100%)` so it renders within the chapter without affecting the book's typography.
- [ ] Add a `callout(tone: "info")` explaining that true drop caps require manipulation of `box`, `text(size: ...)`, and line-heights — Typst has no native CSS `float: left` equivalent.
- [ ] Add a `side-note()` on `pagebreak(to: "odd")` — ensuring chapters always start on the right page (recto). Note that this book uses `pagebreak()` without `to: "odd"` for its chapter openers.
- [ ] Reference: `templates/tieffiction/` for the full implementation.

### Finalisation

- [ ] End the chapter with `#section-break()`.
- [ ] Add `#include "chapters/15-book-patterns.typ"` to `src/main.typ` inside the Teil V block.
- [ ] Compile the full document. Verify no global state leaked, and that the self-referential comparison renders correctly.
