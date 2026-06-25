# Phase 4: Vorlagen, Präsentationen und Enterprise

This phase creates **Chapter 14** (`src/chapters/14-templates.typ`), covering large-scale template management, presentation frameworks, and enterprise usage patterns.

**Critical constraint:** Touying and Ilm both apply global `page`/`show` overrides that are incompatible with the book's own `setup-typography()` and `setup-pages()`. They **must not** be invoked live. Instead, demonstrate their API via `code-block()` components with explanatory `callout()` boxes and descriptive `figure()` captions.

## Tasks

- [ ] Create `src/chapters/14-templates.typ` with the standard imports (including `comparison-layout` from `layouts.typ`).
- [ ] Add `chapter-opener(title: [Vorlagen, Präsentationen und Enterprise], lead: [...])` with a lead paragraph: "The Typst ecosystem provides complete, opinionated design systems — from slide presentations to corporate document shells. This chapter explores how these templates work architecturally, even when they cannot be demonstrated live within another styled document."

### Touying — Präsentations-Framework

- [ ] Show Touying's API via a `code-block()` containing a complete minimal slide deck (the `#show: simple-theme.with(...)`, `= Title`, `== Slide`, `#pause` pattern from the guide).
- [ ] Add a `callout(tone: "warning", title: [Warum keine Live-Demo?])` explaining: Touying overrides the global `page` function to set 16:9 aspect ratio and slide-specific margins. Invoking it inside a running A4 book would break every surrounding page.
- [ ] Use a `card()` to describe the key Touying concepts: `#pause` (animation markers), `#meanwhile` (parallel content), and document-wide theme state via `context`.
- [ ] Add a `side-note()`: "Touying wird in Kapitel 08 in der Schnellreferenz erwähnt — dieses Kapitel erklärt die Architektur hinter dem Framework."

### Ilm — Organisatorische Design-Shell

- [ ] Show Ilm's one-liner API via a `code-block()`: `#show: ilm.with(title: [...], author: [...], date: [...])`.
- [ ] Use a `feature-grid()` to highlight what Ilm provides out of the box: page geometry, typography, table of contents, index, and consistent styling — all from a single function call.
- [ ] Add a `callout(tone: "info")` contrasting Ilm with this showcase's own design system: Ilm is an opinionated, self-contained shell (users never write layout logic), whereas this book's `styles/` + `components/` approach is modular and composable.
- [ ] Add a `side-note()` noting the same live-demo constraint as Touying: Ilm's show rules would conflict with the book's own setup.

### Brilliant-CV — Datengetriebene Vorlagen

- [ ] Import `@preview/brilliant-cv:2.1.0` (or show via `code-block()` if import conflicts arise).
- [ ] Demonstrate the YAML-driven pattern: show a sample YAML snippet (personal data, work experience) alongside a `code-block()` of the Typst template that consumes it.
- [ ] Use a `comparison-layout()` to explicitly contrast Brilliant-CV's approach with Chapter 09's JSON/CSV pattern:
  - Left: "Kapitel 09 — Rohdaten → individuelles Rendering" (developer writes the for-loop and styling).
  - Right: "Brilliant-CV — Strukturierte YAML → opinionierte Vorlage" (designer built the styling; user only writes data).
- [ ] Add a `key-concept(term: [Separation of Concerns])` box: the CV's layout logic is totally divorced from the content, allowing users to swap templates without touching their data.

### Enterprise-Muster — Callout

- [ ] Add a `callout(tone: "info", title: [Ressourcenlimitierung mit layout-ltd])` mentioning `@preview/layout-ltd:0.1.0`: in multi-tenant or CI environments, `layout-ltd` sets hard limits on layout iterations to prevent rogue templates from consuming excessive CPU. The visual output is identical with or without it — it's a backend safety measure, not a visual feature. Refer to Chapter 10's Enterprise-Muster section for the broader organisational patterns.

### Finalisation

- [ ] End the chapter with `#section-break()`.
- [ ] Add `#include "chapters/14-templates.typ"` to `src/main.typ` inside the Teil IV block.
- [ ] Compile the full document. Verify that no global page/show overrides leak from the scoped code-block demonstrations into the surrounding book.
- [ ] Perform a final review of all four new chapters (11–14) for consistent tone, visual style, and component usage.
