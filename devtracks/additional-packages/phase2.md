# Phase 2: Jenseits des Standardflusses

This phase creates **Chapter 12** (`src/chapters/12-beyond-flow.typ`), demonstrating packages that solve layout problems Typst's built-in `grid`, `place`, and `columns` cannot easily express.

**Narrative arc:** Start with "what Typst already offers" (brief recap of `place` and `grid`), then show how these three packages push beyond those limits — from absolute annotation (Pinit) to wrapping flow (Biceps) to rich asset integration (Fontawesome).

## Tasks

- [ ] Create `src/chapters/12-beyond-flow.typ` with the standard imports.
- [ ] Add `chapter-opener(title: [Jenseits des Standardflusses], lead: [...])` with a lead paragraph framing the chapter: "Typst's native layout engine covers most needs, but some design patterns — absolute callouts, flexible wrapping, icon-rich interfaces — require community extensions."

### Pinit — Absolute Annotationen im Textfluss

- [ ] Import `@preview/pinit:0.2.2`.
- [ ] Create a concrete demo: write a paragraph of clinical text (e.g. a medication interaction warning), then use Pinit to "pin" a location at a key term and draw an annotation callout box at an absolute offset from that pin.
- [ ] Show the visual result as a `figure()` with a caption explaining the mechanism.
- [ ] Add a `callout(tone: "info")` explaining that Pinit escapes standard flow — the annotation is positioned absolutely, regardless of where the surrounding text reflows.

### Biceps — Flexbox-Wrapping für Typst

- [ ] Import `@preview/biceps:0.2.0`.
- [ ] Create a demo with at least 5–6 content blocks of **varying widths** (e.g. medical specialty badges or card-like elements). This is essential — the wrapping behaviour is only visible when items have different intrinsic sizes.
- [ ] Show the items wrapping across multiple rows, demonstrating that Biceps distributes them like CSS Flexbox `flex-wrap: wrap`.
- [ ] Add a `side-note()` contrasting Biceps with a native `grid(columns: (1fr, 1fr, 1fr))` — the grid forces equal columns, while Biceps respects intrinsic widths.

### Fontawesome — Icon-Integration

- [ ] Import `@preview/fontawesome:0.6.0`.
- [ ] Create a richer demo than a simple inline icon — build an icon-rich sidebar or feature list using `icon-text()` from the project's own components, but powered by Fontawesome icons instead of `sym.*` characters.
- [ ] Show at least 6–8 different icons to demonstrate the breadth of the library.
- [ ] Use a `callout(tone: "warning")` noting that `sym.*` does **not** include UI/application icons (refer to the table in `Typst Extensibility.md`). Fontawesome fills that gap.
- [ ] Add a `side-note()`: "Chapter 08 erwähnt Fontawesome in der Schnellreferenz — hier zeigen wir die vollständige Integration."

### Finalisation

- [ ] End the chapter with `#section-break()`.
- [ ] Add `#include "chapters/12-beyond-flow.typ"` to `src/main.typ` inside the Teil IV block.
- [ ] Compile the full document. Ensure Pinit annotations render at the correct position, Biceps wrapping is visually distinct from a grid, and Fontawesome icons display without missing-glyph errors.
