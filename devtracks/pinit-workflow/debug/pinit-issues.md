# Pinit Issues (Baseline)

Documented as of 2026-03-01. Each issue is reproducible from the regression
test (`debug/pinit-regression.typ`) or the chapter files noted below.

---

## Issue PI-001 — ARROW\_IN\_TEXT (ch12, Macrolid annotation)

- **ID:** PI-001
- **Seite/Datei:** `src/chapters/12-beyond-flow.typ`
- **Pins:** 1, 2
- **Funktion(en):** `pinit-highlight`, `pinit-point-from`
- **Aktuelles Verhalten:** `pin-dy: 0pt` → the arrow shaft starts at the
  exact pin position, which lies inside the highlighted text. The shaft
  visually cuts through the Macrolid word and its highlighting rectangle.
- **Erwartetes Verhalten:** Arrow starts below the highlighted text; no
  letter or highlight background is obscured.
- **Vermutete Ursachen:** `pin-dy = 0` is the natural default but places the
  anchor at the vertical center of the pin, which is inside inline text.
- **Fix-Idee:** Set `pin-dy: 10pt` (one typical line height step). If the
  highlight has extended height, increase to 14–16pt.

---

## Issue PI-002 — ARROW\_MISS\_TARGET (ch18, body-dx/dy demo)

- **ID:** PI-002
- **Seite/Datei:** `src/chapters/18-pinit-showcase.typ` (Phase 2 card)
- **Pins:** 3, 4, 5, 6
- **Funktion(en):** `pinit-point-from` (array of pins)
- **Aktuelles Verhalten:** When the pin array spans two highlight regions,
  pinit computes the midpoint. With the current `body-dy: -8pt`, the arrow
  tip lands between the two highlights rather than at the explanation box
  corner.
- **Erwartetes Verhalten:** Arrow tip ends at the top-left corner of the
  block annotation box.
- **Vermutete Ursachen:** `body-dy` is too small for the vertical gap between
  the pin midpoint and the box. Adjusting it alone without knowing the
  actual pin y-coordinates leads to random guessing.
- **Fix-Idee:** Activate debug, read `dbg-pin(3)` y-coordinate, measure the
  box top edge with `dbg-note`, then set `body-dy` to `(box_y - pin_y)`.

---

## Issue PI-003 — ARROW\_MISS\_TARGET (ch18, formula x²)

- **ID:** PI-003
- **Seite/Datei:** `src/chapters/18-pinit-showcase.typ` (Phase 3 card)
- **Pins:** 11, 12
- **Funktion(en):** `pinit-highlight`, `pinit-point-from`
- **Aktuelles Verhalten:** `body-dx: -15pt` causes the arrow tip to point
  15pt to the left of the annotation text start. After a text reflow the
  annotation drifts further because the formula's x-position shifts.
- **Erwartetes Verhalten:** Arrow tip touches the left edge of the "x-Koor."
  text box, independent of minor formula layout changes.
- **Vermutete Ursachen:** `body-dx` was set by visual estimate without reading
  the actual pin x-coordinate. Negative values assume the box is left of the
  pin, but the offset makes this unreliable.
- **Fix-Idee:** Set `body-dx: 0pt, body-dy: 5pt` as baseline (tip at pin
  midpoint), then use `dbg-export-pin` to get exact coordinates before
  increasing body-* in 3pt steps.

---

## Issue PI-004 — BOX\_OUTSIDE\_PAGE (ch18, code-block annotation)

- **ID:** PI-004
- **Seite/Datei:** `src/chapters/18-pinit-showcase.typ` (Phase 3 card, pins 15/16)
- **Pins:** 15, 16
- **Funktion(en):** `pinit-highlight`, `pinit-point-from`
- **Aktuelles Verhalten:** `offset-dx: 90pt` combined with the code block
  already near the right side of the card pushes the annotation box beyond
  the right page margin. The box is clipped by the page boundary.
- **Erwartetes Verhalten:** Box stays within the printable area; text is fully
  visible.
- **Vermutete Ursachen:** `offset-dx` was chosen without accounting for the
  pin's x-position plus the box width (≈140pt). Sum exceeds the content
  width on the page (≈155mm ≈ 440pt for typical margins).
- **Fix-Idee:** Read `dbg-pin(15)` x-coordinate, then limit
  `offset-dx ≤ page_width - pin_x - box_width - 10pt`. Start with 40pt.

---

## Issue PI-005 — BOX\_OVER\_TEXT (regression Case 2)

- **ID:** PI-005
- **Seite/Datei:** `debug/pinit-regression.typ` (Page 2)
- **Pins:** 3, 4
- **Funktion(en):** `pinit-point-from`
- **Aktuelles Verhalten:** `offset-dy: 20pt` places the annotation box only
  20pt below the pin, which with the pin at typical y ≈ 140pt drops the box
  directly onto the paragraph that follows the pinned text (y ≈ 155–200pt).
- **Erwartetes Verhalten:** Box appears clearly below the paragraph or to
  the right without overlapping any prose.
- **Vermutete Ursachen:** Default/small `offset-dy` does not account for
  the height of the text block between pin and intended box location.
- **Fix-Idee:** Use `offset-dy: 100pt` or switch to Recipe B
  (`pinit-place dx: 80pt, dy: -50pt`) to place the box in the margin area.

---

## Issue PI-006 — PAGE\_BREAK\_DRIFT (ch12, card() wrapper)

- **ID:** PI-006
- **Seite/Datei:** `src/chapters/12-beyond-flow.typ` (Macrolid inside `card()`)
- **Pins:** 1, 2
- **Funktion(en):** `pinit-point-from` inside a `card()` block
- **Aktuelles Verhalten:** When the card straddles a page break, the
  annotation coordinates are computed as if the card starts at page top,
  resulting in the box appearing on the wrong page or at an incorrect y
  position on the next page.
- **Erwartetes Verhalten:** Annotation follows the pin regardless of page
  break position.
- **Vermutete Ursachen:** `absolute-place` uses page top-left of the page
  where the pin happens to land. If a page break shifts the card to page 2,
  the `here().position().page` changes but the calling site was not written
  with this in mind.
- **Fix-Idee:** Add a `#pagebreak(weak: false)` before the card to stabilise
  its page position, or use `pinit-place` (Recipe B) which is pin-relative
  and inherently page-aware.

---

## Issue PI-007 — REFLOW\_INSTABILITY (general)

- **ID:** PI-007
- **Seite/Datei:** All chapters using pinit
- **Pins:** any
- **Funktion(en):** all `pinit-*` functions
- **Aktuelles Verhalten:** After text edits that cause Typst to reflow a
  paragraph, all pins shift vertically. The hard-coded `offset-dx/dy`
  values no longer match the new pin positions, causing the annotations
  to appear at wrong locations.
- **Erwartetes Verhalten:** Annotations remain visually correct after minor
  text edits.
- **Vermutete Ursachen:** `offset-dx/dy` are absolute offsets from the pin
  midpoint. A pin shift of even 6pt (one paragraph line) propagates into a
  visible annotation drift.
- **Fix-Idee:**
  - Keep `offset-*` small (≤ 80pt) to limit drift magnitude.
  - Prefer Recipe B: `pinit-place dx/dy` is pin-relative and drifts together
    with the text unchanged.
  - Re-run debug and capture fresh coordinates after any significant edit.

