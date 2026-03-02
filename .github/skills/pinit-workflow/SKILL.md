---
name: pinit-workflow
description: "Place, debug, and fix pinit annotations in Typst documents. ALWAYS use this skill when: writing any #pin(), #pinit-highlight, #pinit-point-from, #pinit-point-to, #pinit-place, or #pinit-line-to call; when an arrow, label, or annotation box is in the wrong place, overlapping text, outside the page, or pointing at nothing; when the user asks 'how do I annotate', 'how does pinit work', 'my arrow is wrong', 'my box is off-page', or 'how do I debug pinit'. Also use when the user asks about the debug module (dbg-pin, dbg-grid), Recipe A vs Recipe B vs Recipe C, coordinate reading, the AI correction loop, margin/sidebar annotations, absolute-place patterns, the pinit offset coordinate-system bug, or why offset-dx keeps drifting despite correct math. This skill supersedes general Typst layout advice whenever a @preview/pinit call is involved."
---

# Pinit Workflow

Place stable, visually correct pinit annotations in Typst documents without trial-and-error.
This skill encodes a full workflow: mental model → boilerplate → initial placement →
debug-assisted coordinate reading → systematic correction → stabilisation via Recipe B.

All patterns are verified against `@preview/pinit:0.2.2`.

**Project debug module:** `devtracks/pinit-workflow/components/pinit-debug.typ`
**Regression tests:** `devtracks/pinit-workflow/debug/pinit-regression.typ`
**Style guide:** `devtracks/pinit-workflow/docs/pinit-style-guide.md`
**AI playbook:** `devtracks/pinit-workflow/docs/pinit-ai-playbook.md`

---

## 1 — Mental Model (Read This First)

Pinit has three independent parameter groups. Most bugs come from mentally mixing them up.

| Group            | Parameters                | What it actually controls                                                               |
| ---------------- | ------------------------- | --------------------------------------------------------------------------------------- |
| **A — Tip**      | `pin-dx` / `pin-dy`       | Where the arrow tip lands, relative to the pin anchor                                   |
| **B — Vector**   | `body-dx` / `body-dy`     | Direction and length of the arrow shaft, measured from the text box back toward the tip |
| **C — Position** | `offset-dx` / `offset-dy` | Global position of the entire annotation (text box + arrow base) relative to the pin    |

**The mental trap everyone falls into:** thinking `offset-*` moves the box far away and `body-*` pulls the arrow back. That's inverted. Keep `offset-*` modest (≤ 80pt), and let `body-*` define the arrow vector.

**Correct mental image:** Think of a flag on a pole. `offset-*` plants the pole (the text box). `body-*` draws the wire from the flag down to the ground (the arrow). `pin-*` says exactly where the wire meets the ground (the highlighted text).

**⚠ Verified documentation bug — offset is ALWAYS pin-relative.** The official `pinit-point-from` docs claim `offset-dx` is "relative to the left edge of the page." This is **incorrect**. Verified with `@preview/pinit:0.2.2`: placing a pin at (50pt, 50pt) and calling `pinit-point-from` with `offset-dx: 20pt, offset-dy: 20pt` lands the annotation at (70pt, 70pt) — pin + offset — not at (20pt, 20pt). Both `pinit-point-from` and `pinit-point-to` use pin-relative offsets. There is no page-absolute offset mode in pinit. For true page-absolute placement use Recipe C (`absolute-place`).

**⚠ Multi-pin array anchor is the midpoint, not pin[0].** When passing an array `(1, 2)`, all offset calculations are relative to the **geometric midpoint** of all listed pins — not to pin[0]. Example: Pin 1 at x=60pt, Pin 2 at x=240pt → midpoint x=150pt. With `offset-dx: 50pt` the annotation lands at x=200pt, not x=110pt. Formula: `offset-dx = desired_x − midpoint_x`.

---

## 2 — Non-Negotiable Boilerplate

Without these two lines, pinit annotations appear at random locations on the wrong page/container:

```typst
Text with #pin(1)marked word#pin(2).
                          ← BLANK LINE HERE (mandatory)
#pinit-highlight(1, 2, fill: rgb(255, 0, 0, 40), radius: 3pt)
#box()                    ← MANDATORY #box() after EVERY pinit call

#pinit-point-from(
  (1, 2),
  pin-dx: 0pt, pin-dy: 8pt,
  body-dx: 0pt, body-dy: -10pt,
  offset-dx: 80pt, offset-dy: 50pt,
  fill: red,
)[
  #block(inset: (left: 12pt))[Explanation]   ← Always wrap in block(inset:)
]
#box()                    ← MANDATORY
```

**Why `#box()`?** Typst's layout engine needs an inline anchor after an absolutely-placed element to correctly track flow position. Without it, the next element thinks it starts where the pin is, not where the annotation ended.

**Why blank line before?** It forces Typst to close the current paragraph before processing the pinit call, preventing the engine from confusing pin coordinates with mid-paragraph positions.

**Why `block(inset:)`?** Bare text has no physical bounding box that pinit can use as an arrow anchor. `inset` creates an invisible padding zone; the arrow tip stops cleanly at the edge instead of stabbing into the letters.

---

## 3 — Initial Placement (Recipe A — Direct Pinit)

Use Recipe A when you're placing a new annotation for the first time.

```typst
#import "@preview/pinit:0.2.2": *

Text about #pin(1)important concept#pin(2) here.

#pinit-highlight(1, 2, fill: palette.primary.transparentize(80%), radius: 3pt)
#box()

#pinit-point-from(
  (1, 2),
  pin-dx:    0pt,   // tip centered horizontally on pin
  pin-dy:    8pt,   // tip 8pt below pin — clears highlight + descenders
  body-dx:   0pt,   // arrow goes straight down...
  body-dy:  -10pt,  // ...then up into the text box (short connector)
  offset-dx: 80pt,  // box placed ~80pt to the right of pin
  offset-dy: 40pt,  // box placed ~40pt below pin
  fill: palette.primary,
)[
  #block(inset: (left: 14pt))[
    #text(weight: "bold")[Header] \
    More detail here.
  ]
]
#box()
```

**Safe starting values** — use these until you read real coordinates via the debug module:

| Parameter   | Safe default | Reason                                   |
| ----------- | ------------ | ---------------------------------------- |
| `pin-dy`    | `8pt`        | Clears one typical text line             |
| `body-dx`   | `0pt`        | Neutral; tune once tip direction matters |
| `body-dy`   | `-10pt`      | Short upward connector into box          |
| `offset-dx` | `60–80pt`    | Gets box clearly to the right            |
| `offset-dy` | `40–60pt`    | Gets box below adjacent text             |

---

## 4 — Debug Workflow (Read Actual Coordinates)

When safe defaults don't work, replace guessing with real coordinates.

### Setup

```typst
#import "../components/pinit-debug.typ": *
// (path relative to document; adjust as needed)

#enable-pinit-debug   // activates from this point forward in the document
#dbg-grid()           // draws a labelled coordinate grid over the page
```

Replace `pin()` with `dbg-pin()`:

```typst
Text #dbg-pin(1)target word#dbg-pin(2) continues.
```

Compile. Each pin now renders:

- An **orange box** (8×8pt) at the exact pin anchor
- A **label**: `1 · p1 · 142.3pt, 215.8pt` — name, page, x, y from page top-left
- The **grey grid** with axis labels every 100pt

### Reading and applying coordinates

**Single pin:** Pin 1 at `(x=142pt, y=216pt)`. Box target `(x=220pt, y=280pt)`.
Set `offset-dx = 220 − 142 = 78pt`, `offset-dy = 280 − 216 = 64pt`.

**Array of pins `(1, 2)`:** Pin 1 at x=142pt, Pin 2 at x=195pt → midpoint x = (142+195)/2 = 168.5pt.
For box at x=220pt: `offset-dx = 220 − 168.5 = 51.5pt` — **not** 78pt.
Always compute offsets from the midpoint; never from pin[0] alone.

For the arrow tip: if the highlight ends at `y = 225pt`, set `pin-dy = 225 − 216 = 9pt`.

### Teardown

When the annotation is stable, restore `pin()` and remove debug controls:

```typst
// Remove: #enable-pinit-debug and #dbg-grid()
// Replace: #dbg-pin(1) → #pin(1)
```

`#disable-pinit-debug` is also available if you want to turn it off mid-document
without removing the import.

### `dbg-export-pin` (Phase 4 — coordinate capture)

For precise coordinate extraction suitable for copy-pasting into multiple annotations:

```typst
Text #dbg-export-pin(1)concept#dbg-export-pin(2).
```

Renders a green "EXPORT · 1 · p1 · x=142.30pt · y=215.80pt" label with 2-decimal precision.

---

## 5 — Systematic Correction Loop

**Rule: change exactly one parameter group per iteration.** Changing two groups simultaneously makes it impossible to know which one fixed (or broke) the result.

```
Render → Classify problem → identify param group → make one targeted change → repeat
```

### Classification and fix

| Problem class       | What you see                          | Group to change           | Typical jump  |
| ------------------- | ------------------------------------- | ------------------------- | ------------- |
| `ARROW_IN_TEXT`     | Arrow shaft crosses highlight or text | **A** `pin-dy` ↑          | +5, +8, +12pt |
| `ARROW_MISS_TARGET` | Tip misses the annotation box edge    | **B** `body-dx`/`body-dy` | ±2–8pt        |
| `BOX_OVER_TEXT`     | Box lands on prose below              | **C** `offset-dy` ↑       | +30–50pt      |
| `BOX_OUTSIDE_PAGE`  | Box clipped at page edge              | **C** `offset-dx` ↓       | −20–50pt      |
| `DRIFT_AFTER_EDIT`  | Annotation drifts when text changes   | Switch to Recipe B        | —             |
| `BOX_FIXED_COLUMN`  | Box must land at absolute page column | Switch to Recipe C        | —             |
| `OK`                | Everything correct                    | Done                      | —             |

**Abort rule:** After 3 iterations without reaching `OK`, switch to Recipe B.

---

## 6 — Recipe B (Decoupled, Stable)

When Recipe A drifts after text edits or after 3 correction iterations, switch to Recipe B.
Box and arrow become independent — correcting one does not disturb the other.

```typst
Text with #pin(11)marked passage#pin(12).

#pinit-highlight(11, 12, fill: palette.danger.transparentize(80%), radius: 2pt)
#box()

// Step 1 — Box positioned stably, pin-relative, via pinit-place
#pinit-place(dx: 80pt, dy: 50pt, (11, 12))[
  #box(inset: 8pt, stroke: 1.5pt + palette.danger, radius: 4pt)[
    #text(weight: "bold")[Warning] \
    Detailed note here.
  ]
]
#box()

// Step 2 — Arrow drawn separately (can be tuned without moving the box)
#pinit-point-from(
  (11, 12),
  pin-dx: 0pt,
  pin-dy: 10pt,     // clear of highlight
  body-dx: 5pt,
  body-dy: -5pt,
  offset-dx: 80pt,  // must match pinit-place dx
  offset-dy: 50pt,  // must match pinit-place dy
  fill: palette.danger,
)[]                 // empty body — the box is already placed by pinit-place
#box()
```

**When to use Recipe B:**

- Annotation needs to stay stable across future text edits
- Recipe A has been corrected 3+ times and still drifts
- The annotation is inside a `card()` or other container that may paginate
- You need to independently tune box size and arrow direction

---

## 7 — Recipe C (Absolute-Place, Fixed-Column Margin)

Use Recipe C when every annotation box must land at the **same absolute x-column** regardless
of where each pin falls — for example, a left or right margin note column. Recipes A and B
cannot achieve this: their `offset-dx/dy` are pin-relative (see Section 1 warning), so a fixed
`offset-dx` value produces a different absolute x for every annotation.

### Implementation

```typst
// Step 1 — Capture pin page-absolute coordinates via state
#let _pincoords = state("pincoords", (:))

#let record-pin(n) = {
  pin(n)
  context {
    let pos = here().position()   // truly page-absolute (top-left origin)
    _pincoords.update(old => {
      let m = if old == none { (:) } else { old }
      m.insert(str(n), pos)
      m
    })
  }
}

// Step 2 — Margin note: box at absolute coords + connecting arrow line
// note-x : absolute x of box left edge from page left edge
// note-w : box width — keep note-x + note-w < left-margin width (in pt)
// dy     : vertical offset from pin y — stack notes with dy: 0, 36, 72 ...
#let margin-note(pins, note-x: 5pt, note-w: 100pt, dy: 0pt, content) = {
  let anchor = str(pins.at(0))
  context {
    let coords = _pincoords.get()
    if coords != none and anchor in coords {
      let pinpos = coords.at(anchor)
      let box-y  = pinpos.y + dy

      // Box: absolute-place is truly page-absolute — no pinit offset math
      absolute-place(dx: note-x, dy: box-y)[
        #block(width: note-w, inset: (x: 4pt, y: 3pt),
               stroke: 0.6pt + red, radius: 2pt)[
          #text(size: 6.5pt, fill: red)[#content]
        ]
      ]

      // Arrow: line() in absolute page space — origin at (0,0)
      absolute-place(dx: 0pt, dy: 0pt)[
        #line(
          start: (pinpos.x, pinpos.y + 4pt),
          end:   (note-x + note-w + 2pt, box-y + 7pt),
          stroke: 0.8pt + red,
        )
      ]
    }
  }
}
```

### Usage

```typst
Some #record-pin(1)*marked term*#record-pin(2) in text.

#pinit-highlight(1, 2, fill: rgb(255, 0, 0, 30), radius: 2pt)
#box()
#margin-note((1, 2), note-x: 5pt, note-w: 100pt)[First note]
#margin-note((1, 2), note-x: 5pt, note-w: 100pt, dy: 36pt)[Stacked note]
```

`record-pin` is a drop-in for `pin()` — it calls `pin()` internally, so `pinit-highlight`
still works normally. Use it wherever you later need the pin's y-coordinate.

### Sizing reference (4 cm left margin)

- 4 cm ≈ 113pt of left margin available
- `note-x: 5pt, note-w: 100pt` → box spans x=5 to x=105pt (8pt clearance before text area)
- Stack multiple notes by incrementing `dy` by approximately 36pt per note

### Recipe B vs C decision

| Goal                                                  | Recipe |
| ----------------------------------------------------- | ------ |
| Box near annotated text, pin-relative position fine   | B      |
| All annotation boxes aligned at a fixed page x-column | **C**  |
| Margin / sidebar note column                          | **C**  |
| One-off inline annotation                             | A or B |

---

## 8 — Radial Showcase Patterns (Field-Tested)

Validated while building `test/pinit-radial.typ`.

### 8.1 Decoupled endpoint pattern (Recipe B++)

Use `pinit-place` to lock the label location, and draw the arrow separately with empty body `[]`.
This prevents label drift when changing arrow length/angle.

```typst
#pinit-place(dx: X, dy: Y, 1)[#ann-box[1:30]]
#box()
#pinit-point-from(1, offset-dx: X, offset-dy: Y, ... )[]
#box()
```

### 8.2 Elbow/shelf callout with zero-gap join

If you mix a diagonal pinit arrow with a horizontal `line()` shelf, both must share the exact
same elbow coordinates. Set `body-dx: 0pt` and `body-dy: 0pt` in the pinit arrow and compute one
common corner point for both primitives.

### 8.3 Absolute page-corner target

For "point to page corner, not object" scenarios:

1. Define absolute pin target (e.g. `p9-x = page-w - 10pt`, `p9-y = 10pt`).
2. Define absolute label anchor (centre or bottom-centre).
3. Compute pin-relative offsets explicitly:
  `off-dx = anchor-x - p9-x`, `off-dy = anchor-y - p9-y`.

This is Recipe C geometry, even if the arrow primitive is `pinit-point-from`.

### 8.4 Edge clipping guard

When the tip is at/near page border, pull the tip back by 2–4pt with `pin-dx/pin-dy` to avoid
visual clipping of the arrowhead in raster/PDF viewers.

### 8.5 Deterministic label geometry

If offsets depend on label centre or bottom edge, set explicit label dimensions (`width`, `height`)
instead of relying only on content + inset. This makes coordinate math reproducible.

---

## 9 — Special Cases

### Formulas

Pins inside `$...$` math expressions work but pin placement uses the formula's internal metrics.
`pin-dy` typically needs to be larger (12–16pt) because math boxes have extra vertical extent.

```typst
$ #pin(1) x^2 #pin(2) + y^2 = r^2 $

#pinit-highlight(1, 2, fill: rgb(255, 0, 0, 40))
#box()

#pinit-point-from(
  (1, 2),
  pin-dx: 0pt, pin-dy: 14pt,   // formula needs more clearance
  body-dx: 5pt, body-dy: -5pt,
  offset-dx: -30pt, offset-dy: 30pt,
  fill: red,
)[#text(fill: red)[x-term]]
#box()
```

### Code blocks (raw)

`#pin()` calls inside `` ` `` raw blocks are treated as literal text and not evaluated.
Use a `show raw: it => { show regex(...): ... }` pre-processor:

````typst
#show raw: it => {
  show regex("pin\d+"): name => pin(int(name.text.slice(3)))
  it
}

```typst
let x = pin15 10 pin16
````

#pinit-highlight(15, 16, fill: rgb(255, 0, 0, 40))
#box()

````

Note: this requires pin numbers not to conflict with other pins in the document.

### Inside `card()` / container blocks

Containers can paginate. If the card straddles a page break, the absolute-place coordinate
for the annotation lands on the wrong page. To stabilise:

1. Add `#pagebreak(weak: false)` before the card to lock its page position, **or**
2. Use Recipe B — `pinit-place` is pin-relative and inherits the correct page from the pin.

### Multiple pins, single annotation

`pinit-point-from` accepts an array of pins and uses the **geometric midpoint** of all listed
pins as the offset anchor — not pin[0]. The wider the span between pins, the more the midpoint
diverges from any individual pin. Always compute `offset-dx/dy` from the midpoint.

```typst
// Pin 1 at x=60pt, Pin 2 at x=200pt → midpoint x = 130pt
// To reach box-x=250pt: offset-dx = 250 − 130 = 120pt  (NOT 250 − 60 = 190pt)
#pin(1)first#pin(2) and #pin(3)second#pin(4) terms.

#pinit-highlight(1, 2); #box()
#pinit-highlight(3, 4); #box()

#pinit-point-from(
  (1, 2, 3, 4),   // anchor = midpoint of ALL pins — compute offsets from midpoint, not pin[0]
  offset-dx: 120pt,
  ...
)[Covers both terms]
#box()
````

**Need consistent absolute x regardless of pin positions? → Recipe C (Section 7).**

---

## 10 — Troubleshooting Checklist

Work through this in order before changing any parameter:

1. **Arrow at completely wrong location (wrong page, top of doc):**
   Missing blank line before the pinit call, or missing `#box()` after it.

2. **Arrow tip cuts into highlighted text:**
   Increase `pin-dy` (try 8pt → 12pt → 16pt). One group change per render.

3. **Arrow shaft stabs into the annotation text (through the letters):**
   Wrap annotation body in `#block(inset: (left: Xpt))`. Start with 12pt.

4. **Annotation box covers the paragraph below:**
   Increase `offset-dy`. If still unstable after 2 tries, switch to Recipe B with
   `pinit-place dy: -50pt` to push the box into the margin above instead.

5. **Box clips at right/bottom page edge:**
   Decrease `offset-dx` (box too far right) or `offset-dy` (box too far down).
   Alternatively set an explicit `width:` on the box to prevent content overflow.

6. **`pinit-point-to` hard to align:**
   Switch to `pinit-point-from` — it's easier because the text box is the
   unambiguous anchor and the arrow is computed from there toward the pin.

7. **Everything OK in isolation but drifts after text edit:**
   Recipe B. Run debug, read pin and box coordinates, translate to
   `pinit-place dx/dy`.

8. **Offset math looks correct per debug coordinates, but box still lands at wrong absolute x:**
   The docs claim `pinit-point-from`'s `offset-dx` is page-absolute — this is incorrect. It is
   pin-relative. For true absolute-column placement switch to Recipe C.

9. **Box drifts per annotation because pin x varies (different text widths per bullet/item):**
   Recipe C. Box x is fully independent of pin x in Recipe C.

10. **Annotation inside math or code block not rendering:**
  See Section 9 (Special Cases).

---

## 11 — AI-Assisted Correction Prompts

When asking an AI to fix a pinit annotation, always provide:

- The current Typst code block
- The error class from Section 5 (e.g. `ARROW_IN_TEXT`)
- The `dbg-pin` coordinates if available

**Prompt template — single fix iteration:**

> The arrow from pin (1,2) has problem class: `[CLASS]`.
> Pin coordinates from dbg-pin: Pin 1 at `(x=142pt, y=216pt)`, Pin 2 at `(x=195pt, y=216pt)`.
> Current `[group params]` = `[current values]`.
> Change ONLY `[group A|B|C]` to fix this. Give the Typst patch; one change only.

**AI rule:** One parameter group per response. The AI must state which group it changed and the reasoning. If after 3 responses the class is still not `OK`, the AI must switch to Recipe B.

---

## 12 — Quick Reference

```
WORKFLOW
  1. Write text with #pin(1)word#pin(2)
  2. Add blank line + #pinit-highlight + #box()
  3. Add blank line + #pinit-point-from(...) with safe defaults + #box()
  4. Compile → classify problem → one group change → repeat
  5. If 3+ iterations: activate debug, read coordinates, or switch to Recipe B
  6. If BOX_FIXED_COLUMN (need absolute column alignment): switch to Recipe C
  7. For radial/elbow/page-corner patterns: use Section 8 formulas before trial-and-error

DOCS BUG (verified, @preview/pinit:0.2.2)
  offset-dx/dy in pinit-point-from is PIN-RELATIVE, not page-absolute (docs lie)
  Multi-pin array anchor = MIDPOINT of all pins, not pin[0]
  Correct formula: offset-dx = desired_x − midpoint_x  (NOT desired_x − pin0.x)
  For true page-absolute placement: use absolute-place (Recipe C)

DEBUG MODULE (devtracks/pinit-workflow/components/pinit-debug.typ)
  #enable-pinit-debug        activate (state-based, works across module boundary)
  #disable-pinit-debug       deactivate
  #dbg-grid()                draw coordinate grid on this page
  #dbg-pin(n)                drop-in for #pin(n); shows orange box + coordinates
  #dbg-export-pin(n)         green label with machine-readable coordinates

PARAMETER GROUPS — one group per correction iteration
  A: pin-dx / pin-dy         where tip lands on the pin
  B: body-dx / body-dy       arrow direction vector
  C: offset-dx / offset-dy   global box position (pin-relative, NOT page-absolute)

RECIPE B — when Recipe A keeps drifting
  #pinit-place(dx: X, dy: Y, (1, 2))[#box(...)[content]]  ← box
  #pinit-point-from((1,2), ..., offset-dx: X, offset-dy: Y)[]  ← arrow

RECIPE C — when boxes need absolute page-column alignment (margin/sidebar notes)
  state("pincoords") + record-pin(n) captures page-absolute pin coords via here().position()
  absolute-place(dx: col-x, dy: pinpos.y + dy)[#box(...)[content]]      ← box
  absolute-place(dx: 0pt, dy: 0pt)[#line(start: ..., end: ...)]         ← arrow
  absolute-place IS truly page-absolute; pinit offset-dx/dy is NOT

RADIAL/PAGE-CORNER PATTERNS (Section 8)
  Decouple: place label with pinit-place, draw arrow with pinit-point-from []
  Elbow: pinit tail and line() start must share exactly one corner coordinate
  Corner target math: off-dx = anchor-x - pin-x ; off-dy = anchor-y - pin-y
  Near page edge: add pin pull-back (2–4pt) to avoid clipped arrowheads

SAFE DEFAULTS (before reading actual coordinates)
  pin-dy: 8pt   body-dy: -10pt   offset-dx: 70pt   offset-dy: 50pt
```
