# Pinit Showcase Phase 2: Complex Vector Pointers

## Goals
1.  Implement complex arrow point layouts using `#pinit-point-from()` and `#pinit-point-to()`.
2.  Demonstrate the use of an array of pins: `#pinit-point-from((1, 2))`.
3.  Visually explain the difference between `body-dx` / `pin-dx` and `offset-dx`.

## Acceptance Criteria
- [x] Visual Evaluation: Compile to PNG. Arrows MUST point precisely from the text to the pins.
- [x] Visual Evaluation: Text strings MUST be wrapped in a `#block(inset: ...)` to prevent arrows from overlapping the letters.
- [x] The generated output must rival the elegance of the official Pinit documentation "A simple highlighted text" example.
