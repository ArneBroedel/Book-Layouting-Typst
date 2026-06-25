# Phase 3: WASM-Plugins und Metaprogrammierung

This phase creates **Chapter 13** (`src/chapters/13-wasm-meta.typ`), exploring how Typst's WASM plugin protocol and introspection features push the boundaries of what a document can do.

**Chapter structure:** Lead with Diagraph (the visual anchor — a rendered graph is immediately striking), then Tidy (the meta anchor — code documenting itself), then CtxJS (the conceptual frontier — embedding a JS engine). Close with a callout about the WASM protocol and mephistypsteles.

## Tasks

- [ ] Create `src/chapters/13-wasm-meta.typ` with the standard imports.
- [ ] Add `chapter-opener(title: [WASM-Plugins und Metaprogrammierung], lead: [...])` with a lead paragraph: "Typst compiles WebAssembly plugins natively — no external tools, no build steps. This chapter demonstrates three packages that use this capability to embed layout engines, scripting runtimes, and documentation generators directly into the compilation."

### Diagraph — Graphviz direkt in Typst

- [ ] Import `@preview/diagraph:0.3.1`.
- [ ] Create a medically themed DOT graph (e.g. a diagnostic pathway: Symptom → Differential → Test → Diagnosis) and render it using Diagraph.
- [ ] Wrap the result in a `figure()` with a caption: "Diagnostischer Entscheidungsbaum — direkt aus DOT-Syntax via WASM-Plugin gerendert."
- [ ] Add a `key-concept(term: [WASM-Purity])` box explaining Typst's WASM purity model: plugin functions must be deterministic (same inputs → same output), which allows the compiler to cache results and run in parallel.
- [ ] Use a `callout(tone: "info")` contrasting Diagraph with Fletcher: Diagraph delegates layout to Graphviz's algorithms (automatic node positioning), while Fletcher gives manual control over node coordinates.

### Tidy — API-Dokumentation aus Docstrings

- [ ] Import `@preview/tidy:0.4.2`.
- [ ] Write a small Typst module string (3–4 functions with `///` docstrings) that models something domain-relevant (e.g. a helper library for formatting patient data).
- [ ] Use Tidy to parse the module string and render a formatted API reference manual.
- [ ] Wrap the output in a `figure()` with a caption: "Automatisch generierte API-Referenz — Tidy analysiert Docstrings direkt zur Kompilierzeit."
- [ ] Add a `side-note()` explaining that Tidy demonstrates "code analyzing code" — one of the most advanced uses of Typst's introspection capabilities.

### CtxJS — JavaScript-Auswertung via WASM

- [ ] Import `@preview/ctxjs:0.3.2`.
- [ ] Create a concrete, visually meaningful demo — not just `eval("2+2")`. Use a JS expression that produces a result Typst alone couldn't easily compute (e.g. Base64 encoding of a string, a formatted date using JS's `Intl.DateTimeFormat`, or a simple mathematical formula evaluation).
- [ ] Show the evaluated result rendered in the document using a `card()` or `callout()`.
- [ ] Add a `callout(tone: "warning")` noting the security and performance implications: CtxJS embeds a full JS runtime, so it increases compilation time and should be used sparingly.

### WASM-Protokoll — Callout

- [ ] Add a `callout(tone: "info", title: [Das WASM-Plugin-Protokoll])` at the end of the chapter summarising the `wasm-minimal-protocol`: how plugins allocate memory, pass byte buffers, and signal success/failure. Mention `mephistypsteles` (`@preview/mephistypsteles`) as an advanced reference — it compiles a portion of Typst's own parser into WASM to produce ASTs, but is computationally expensive and primarily of interest to tooling developers, not document authors.

### Finalisation

- [ ] End the chapter with `#section-break()`.
- [ ] Add `#include "chapters/13-wasm-meta.typ"` to `src/main.typ` inside the Teil IV block.
- [ ] Compile the full document. Verify that the Diagraph graph renders, Tidy produces formatted output, and CtxJS evaluation completes without WASM errors.
