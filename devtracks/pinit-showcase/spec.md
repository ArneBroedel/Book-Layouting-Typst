# Pinit Showcase Specification

## Objective
Create a comprehensive new chapter in the Typst book showcasing the full capabilities of the `@preview/pinit` package. This chapter must serve as a definitive guide for users, providing functional, aesthetically pleasing examples of all key features.

## Critical Requirements
1.  **Reference Material**: Development MUST heavily rely on two sources:
    *   The official `pinit` documentation (https://typst.app/universe/package/pinit).
    *   Our internal `Guides/Pinit-Best-Practices.md` document.
2.  **Visual Evaluation**: Pinit uses absolute positioning which is highly sensitive to context. **EVERY SINGLE STEP** requires a critical visual evaluation (compiling the PDF/PNG and inspecting the layout). Do not assume parameters will work without visual confirmation.
3.  **Robustness**: All examples must implement the "Boilerplate Safety Protocol" (empty line before, `#box()` after) defined in the Best Practices guide to prevent layout breakage.

## Features to Showcase
*   Basic Highlighting (`#pinit-highlight`) and Rectangles (`#pinit-rect`).
*   Simple Pointing (`#pinit-point-from`, `#pinit-point-to`).
*   Advanced Coordinates: Demonstrating the relationship between `pin-dx/dy`, `body-dx/dy`, and `offset-dx/dy`.
*   Complex Layouts: Multi-pin arrays and text-bounding using `#block(inset: ...)`.
*   [Optional/Advanced]: Integration with `fletcher` (`#pinit-fletcher-edge`) if applicable.
*   Code Annotations: Using Pinit inside raw blocks with regex replacements.

## Success Criteria
*   A new chapter (`src/chapters/XX-pinit-showcase.typ` or similar) is integrated into the book.
*   All examples render perfectly within the constraints of the `card()` environment without overflowing margins or clipping text.
*   The code serves as a robust copy-paste template for future users.
