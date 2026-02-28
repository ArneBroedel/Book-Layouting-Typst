# Pinit Showcase Phase 3: Advanced Integrations

## Goals
1.  Implement Pinit within raw code blocks using regex. (e.g., `#show raw: it => { show regex("pin\d"): ... }`).
2.  Demonstrate annotation of mathematical formulas (e.g., `equation-desc.typ` example from the `pinit` repo).
3.  Consider integrating `#pinit-fletcher-edge()` if the fletcher package is available/desired.

## Acceptance Criteria
- [x] Visual Evaluation: Compile to PNG. Verify that pins are successfully parsed *before* typst syntax highlighting breaks them.
- [x] Equations are correctly annotated with precise coordinates.
- [x] **MANDATORY:** Add a final "Troubleshooting" block referencing the `Guides/Pinit-Best-Practices.md` to teach subsequent users how to fix alignment issues.
