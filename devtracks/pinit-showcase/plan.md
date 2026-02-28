# Pinit Showcase Plan

## Objective
Develop a new chapter demonstrating all `pinit` features, strictly adhering to the `Guides/Pinit-Best-Practices.md`.

## Execution Protocol
**CRITICAL:** Pinit is context-sensitive. Every implementation step MUST be followed by compiling the document and running a visual check via PNG to ensure arrows don't clip text, and elements stay within margins.

## Phases

### [Phase 1: Foundation and Basics](./phase1.md)
*   Create new chapter file in `src/chapters/`.
*   Include the new chapter in `src/main.typ`.
*   Demonstrate `#pin()`, `#pinit-highlight()`, and simple `#pinit-point-to()` arrays.
*   Enforce boilerplate: Empty lines and `#box()` resets.

### [Phase 2: Complex Vector Pointers](./phase2.md)
*   Showcase `#pinit-point-from()`.
*   Explain and demonstrate the difference between `pin`, `body`, and `offset` coordinates using visual examples.
*   Demonstrate `#block(inset: ...)` logic to protect text from arrow clipping.

### [Phase 3: Advanced Integrations](./phase3.md)
*   Integrate Pinit inside `raw` code blocks (Regex matching).
*   Demonstrate mathematical equations (`equation-desc` style from official docs).
*   Add a troubleshooting / "Notice" section directly referring to the Typst absolute placement limitations.
