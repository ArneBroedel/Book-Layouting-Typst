# Phase 3: Visuelle Hierarchie und Typst-Grenzen

This phase creates **Chapter 17** (`src/chapters/17-visual-hierarchy.typ`), combining templates focused on graphic design and formal correspondence with a closing look at Typst's computational limits and a recommended learning path.

## Tasks

- [ ] Create `src/chapters/17-visual-hierarchy.typ` with standard imports.
- [ ] Add `chapter-opener(title: [Visuelle Hierarchie und Typst-Grenzen], lead: [...])` with a lead paragraph: "Not every Typst document is a long-form book or technical report. This chapter explores templates built for single-page graphic design and formal correspondence, then pushes Typst to its computational boundaries."

### Caidan — Grid-loses Graphic Design

- [ ] Introduce Caidan's approach to marketing materials (menus, flyers): treating the page as a canvas rather than a stream of paragraphs.
- [ ] Explain the pattern of breaking out of document flow using absolute positioning (`place`), custom font scaling, and decorative line elements.
- [ ] Use a `code-block()` to show how multiple fonts are mixed contextually: different `set text(font: ...)` rules scoped to specific `block()` regions, without changing global document rules.
- [ ] Use a `callout(tone: "info")` to explain the "poster-style" design approach in Typst: `place()` + `box()` + `align()` as alternatives to `grid()` when rigid columns are counter-productive.
- [ ] Reference: `templates/caidan/` for the full implementation.

### Aspirationally — Formale Eleganz und Theming `tag("Thematic Overrides")`

- [ ] Introduce Aspirationally as a case study in minimalist, formal layouts (academic cover letters, teaching statements).
- [ ] Use a `code-block()` to demonstrate the actual API: `#show: letter.with(sender: [...], recipient: [...])` — note: the function is `letter.with()`, not generic `template.with()`.
- [ ] Explain how the `letter()` function consumes structured metadata (sender, recipient, date) and maps each field to a specific layout position before rendering the body content.
- [ ] Add a `side-note()` connecting to Chapter 14: "In Kapitel 14 haben wir gesehen, wie Brilliant-CV externe YAML-Daten nutzt. Aspirationally erreicht dasselbe Ziel über Typst-Funktionsargumente — beide implementieren das Muster _Data Separation_, nur mit unterschiedlichen Datenquellen."
- [ ] Add a `comparison-layout()` showing: Left — raw Typst layout code for a letter (manual `place`, `align`, `v`); Right — the same result achieved with `letter.with(...)`. Caption: "Thematic Overrides reduzieren 30 Zeilen Layout-Code auf einen Funktionsaufruf."
- [ ] Reference: `templates/aspirationally/` for the full implementation.

### Exkurs: Typst als Turing-Maschine

- [ ] Add a section break (`== Exkurs: Typst als Turing-Maschine`) framing this as a conceptual exploration, not a practical template recommendation.
- [ ] **Soviet-Matrix**: Use a `card(title: [Soviet-Matrix — Tetris im Compiler])` with a brief explanation and a focused `code-block()` showing a simplified matrix transformation (e.g., rotating a 2D array of blocks, or checking for completed rows). Use a `key-concept(term: [Functional State Loop])` box: since Typst variables are immutable, game state is passed recursively through functions — each "frame" is a pure function of the previous state plus input.
- [ ] **Badformer**: Use a `card(title: [Badformer — Pseudo-3D im Compiler])` with a brief explanation of how `polygon`, `path`, and `rect` are combined with mathematical projection formulas to render 3D space.
- [ ] Add a `callout(tone: "warning")`: these templates are not practical for document authoring — they stress the compiler and demonstrate its limits. But they are invaluable for mastering Typst's Skript-System (arrays, dictionaries, recursion, math functions).
- [ ] Reference: `templates/soviet-matrix/` and `templates/badformer/`.

### Abschluss: Der Lernpfad zum Document Engineer

- [ ] Add a closing section with a `feature-grid(column-count: 2)` presenting the report's §5 Recommended Learning Path as four structured tracks:
  1. **Folien-Track** (Touying → Ch. 14): Learn `state` and page persistence.
  2. **Daten-Track** (Brilliant-CV → Ch. 14): Learn TOML/YAML → layout mapping.
  3. **Buch-Track** (Ilm → Ch. 14 + Wonderous-Book → Ch. 15): Learn systemic typography + dynamic `context` headers.
  4. **Meta-Track** (Soviet-Matrix → above): Master scripting by pushing Typst to its limits.
- [ ] Add a closing `pull-quote()`: a fitting quote about templates as reusable architectural decisions.

### Finalisation

- [ ] End the chapter with `#section-break()`.
- [ ] Add `#include "chapters/17-visual-hierarchy.typ"` to `src/main.typ`.
- [ ] Compile the full document. Verify all new chapters (15–17) are correctly integrated.
- [ ] Check the Table of Contents for correct Teil V grouping.
- [ ] Verify all cross-references to chapters 11, 14, 15, and 16 are accurate.
