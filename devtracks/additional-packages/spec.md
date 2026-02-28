# Specification: Additional Packages Showcase

## Objective

To extend the current Typst showcase book with new chapters covering community packages and extensibility features described in `Guides/Typst Extensibility.md` that are not yet demonstrated in chapters 01–10.

## Integration Requirements

- A new **Teil IV** part divider must be added to `src/main.typ` before the new chapters, separating them from Teil III (Erweiterbarkeit).
- Chapters 11–14 must be inserted _before_ `07-backmatter.typ` in the assembly order.
- Chapter 08's quick-reference table must be updated with forward cross-references to the new chapters where those packages are demonstrated in full.
- Every new chapter must end with `#section-break()`, consistent with all existing chapters.

## Scope

The following packages have been identified from the report. Packages are grouped by showcaseable theme, not by mere taxonomy.

1. **Math, Glossaries & Bibliography** (Chapter 11: _Akademisches Publizieren_)
   - `Physica` (`@preview/physica:0.9.8`) — Math DSL shorthands
   - `Glossarium` (`@preview/glossarium:0.5.4`) — Introspection-driven acronym tracking
   - `Alexandria` (`@preview/alexandria:0.2.2`) — Multiple bibliographies via prefixing
   - `Pergamon` (`@preview/pergamon:0.2.0`) — Typst-native bibliography styling (shown as Before/After comparison)

2. **Beyond Standard Flow** (Chapter 12: _Jenseits des Standardflusses_)
   Unifying idea: what happens when Typst's built-in `grid`/`place`/`columns` aren't enough.
   - `Pinit` (`@preview/pinit:0.2.2`) — Absolute annotations relative to text anchors
   - `Biceps` (`@preview/biceps:0.2.0`) — Flexbox-style wrapping layout
   - `Fontawesome` (`@preview/fontawesome:0.6.0`) — Icon integration in text and layout (extends ch. 08 reference)

3. **WebAssembly & Metaprogramming** (Chapter 13: _WASM-Plugins und Metaprogrammierung_)
   - `Diagraph` (`@preview/diagraph:0.3.1`) — Graphviz layout via WASM (visual anchor)
   - `Tidy` (`@preview/tidy:0.4.2`) — Docstring → rendered API reference (meta anchor)
   - `CtxJS` (`@preview/ctxjs:0.3.2`) — QuickJS evaluation via WASM (conceptual demo with concrete output)
   - `mephistypsteles` — mentioned in a callout as a WASM-protocol reference, not a full section (no meaningful visual output for a printed showcase)

4. **Templates, Presentations & Enterprise** (Chapter 14: _Vorlagen, Präsentationen und Enterprise_)
   - `Touying` (`@preview/touying:0.6.1`) — Presentation slide engine (demonstrated as markup structure via code block + explanatory caption, NOT live invocation — Touying overrides global page geometry)
   - `Ilm` (`@preview/ilm:2.0.0`) — Organisational template shell (same scoped approach — Ilm's show rules conflict with the book's own `setup-typography`/`setup-pages`)
   - `Brilliant-CV` (`@preview/brilliant-cv:2.1.0`) — Data-driven template (explicitly contrasted against ch. 09's JSON/CSV approach: structured YAML → opinionated layout, not raw data → custom rendering)
   - `layout-ltd` (`@preview/layout-ltd:0.1.0`) — Resource limiting (mentioned in a callout within the Enterprise section, not its own section — output is visually identical with or without it)

## Technical Constraints

- Packages that override global `page` or `show` rules (Touying, Ilm) **must not** be invoked live in the book. Demonstrate their API via `code-block()` components with explanatory `callout()` boxes and descriptive figure captions. Where possible, show expected output conceptually with a `card()`.
- All package versions must be pinned with the full `@preview/name:X.Y.Z` syntax.
- All chapters must use the project's component library (`chapter-opener`, `section-break`, `callout`, `card`, `code-block`, `comparison-layout`, `side-note`, etc.).

## Out of Scope

- Rewriting existing chapters (01–10) beyond adding cross-references in chapter 08.
- Introducing packages not discussed in `Guides/Typst Extensibility.md`.
