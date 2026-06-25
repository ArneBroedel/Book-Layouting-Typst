# Specification: Template Patterns Showcase

## Objective

To extend the Typst showcase book with new chapters covering the structural and architectural patterns extracted from the best Typst Universe templates, as identified in `Guides/Typst_Template_Report.md`. This devtrack follows the "Community-Pakete" section (Teil IV, chapters 11–14), moving from using external packages to understanding how top-tier templates engineer their layouts.

## Organising Framework: Four Reusable Patterns

The report identifies four core "Document Engineering" patterns that recur across all templates. These patterns are the **thesis of Teil V** — stated in the Part V opener and explicitly tagged throughout each chapter:

1. **Dynamic Content Extraction** — using `query(heading)` + `context` to build running headers, outlines, and chapter markers (Wonderous-Book).
2. **Margin Architectures** — leveraging `measure()` + `place()` for rich margin-notes and Tufte-style asymmetry (Toffee-Tufte).
3. **Thematic Overrides** — packaging global `#set` and `#show` rules inside a `template.with()` function wrapper (Ilm, Aspirationally).
4. **Data Separation** — injecting `metadata.toml` / YAML to build structured layout without markup clutter (Brilliant-CV).

Each template section must explicitly state which pattern(s) it demonstrates, using a `badge()` or `tag()` inline marker.

## Integration Requirements

- A new **Teil V** part divider must be added to `src/main.typ`: `part-page(number: "Teil V", title: [Template-Muster und Architektur])`.
- Chapters 15–17 must be inserted _before_ `07-backmatter.typ` and after Chapter 14 in the assembly order.
- Chapter 08's quick-reference table should be updated with forward cross-references to these new chapters where relevant.
- Explicit cross-references to Chapter 14 (Touying, Ilm, Brilliant-CV) must be included wherever those templates' patterns are discussed — Teil V builds on Teil IV, it does not repeat it.
- Every new chapter must end with `#section-break()`.

## Scope

Three chapters, each grouping templates by the type of layout problem they solve:

1. **Buch-Layout-Architekturen** (Chapter 15)
   - `Wonderous-Book` (`@preview/wonderous-book:0.1.2`) — Dynamic running headers via `context { query(heading) }`.
   - `TiefFiction` (`@preview/tieffiction:0.2.0`) — Traditional typesetting: chapter breaks, `#dropcap()`, `pagebreak(to: "odd")`.
   - **Decision Table** from the report (§2) — a `styled-table()` mapping document types to recommended templates.
   - **Self-referential teaching moment**: compare Wonderous-Book's running header to this book's own `styles/page.typ` implementation (lines 20–45), which uses the identical `context { query(heading.where(level: 1).before(here())) }` pattern. Show both side-by-side.

2. **Komplexe Randnotizen und API-Dokus** (Chapter 16)
   - `Toffee-Tufte` (`@preview/toffee-tufte:0.1.1`) — Margin architectures using `measure()` + `place()` with collision-avoidance.
   - `Mantys` (`@preview/mantys:1.0.2`) — Meta-scaffolding for API documentation. Use the book's own `callout()` function as the documented API in the Mantys demo (meta-recursive: the book documents itself).

3. **Visuelle Hierarchie und Typst-Grenzen** (Chapter 17)
   - `Caidan` (`@preview/caidan:0.1.0`) — Grid-less typographic scaling, page-as-canvas design.
   - `Aspirationally` (`@preview/aspirationally:0.1.1`) — Thematic overrides via `letter.with()` wrapper.
   - **Exkurs: Typst als Turing-Maschine** — `Soviet-Matrix` (`@preview/soviet-matrix:0.2.1`) and `Badformer` (`@preview/badformer:0.1.0`) as a concluding section, demonstrating functional state management and compiler-as-engine. Not full sections — a `callout()` + `code-block()` each, framed as "what happens when you push Typst to its computational limits."
   - **Learning Path** from the report (§5) — a closing `card()` or `feature-grid()` presenting the four-track study progression (Slides → Data-Driven → Book → Meta).

## Technical Constraints

- Templates that fundamentally override global page layouts **must not** be invoked live as global `#show` rules inside the book.
- Demonstrate the extracted _logic_ (e.g., how the dropcap function works, how `query` fetches headings) using scoped `code-block()`, `callout()`, and `card()` elements.
- For visual impact, use isolated examples wrapped in a `block()` with fixed dimensions, or reference the bundled template files in the `templates/` directory.
- All chapters must use the project's component library (`chapter-opener`, `section-break`, `callout`, `card`, `code-block`, `comparison-layout`, `side-note`, `key-concept`, etc.).
- Reference `templates/<name>/` directories as source material for readers who want to explore further.

## Out of Scope

- Rewriting existing chapters (01–14) beyond adding cross-references in chapter 08.
- Re-demonstrating templates already covered in Chapter 14 (Touying, Ilm, Brilliant-CV) — reference them, don't repeat them.
- Introducing templates not discussed in `Guides/Typst_Template_Report.md`.
