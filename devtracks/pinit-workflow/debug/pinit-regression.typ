// debug/pinit-regression.typ
// Pinit regression test — four cases covering typical positioning problems.
//
// Compile from the pinit-workflow/ directory:
//   typst compile debug/pinit-regression.typ
//
// Each page uses #dbg-grid() + #dbg-pin() so real (page, x, y) coordinates
// are visible in the rendered PDF. Debug mode stays on for the entire file.
//
// Pages:
//   1 — ARROW_IN_TEXT:    pin-dy=0 causes arrow to overlap highlighted text
//   2 — BOX_OVER_TEXT:    offset-dy too small, annotation drops onto prose
//   3 — ARROW_MISS_TARGET: body-dx too large, arrow tip misses the box
//   4 — RECIPE_B (fixed): Case 1 refactored with pinit-place + separate arrow

#import "@preview/pinit:0.2.2": *
#import "../components/pinit-debug.typ": (
  dbg-export-pin, dbg-grid, dbg-note, dbg-pin, disable-pinit-debug, enable-pinit-debug,
)

#set page(paper: "a4", margin: (top: 35mm, bottom: 30mm, left: 28mm, right: 28mm))
#set text(size: 11pt, lang: "de")
#set par(leading: 0.65em, spacing: 1.2em)

#enable-pinit-debug

// ═══════════════════════════════════════════════════════════════════════════
// PAGE 1  ·  ARROW_IN_TEXT
// Problem:  pin-dy is 0pt → arrow start sits inside the highlighted text.
// Symptom:  Arrow shaft and highlight overlap; arrow may obscure letters.
// Fix hint: raise pin-dy to 8–12pt so the arrow starts below the highlight.
// ═══════════════════════════════════════════════════════════════════════════

#dbg-grid(step: 50pt, label-every: 100pt, extent: 700pt)

#text(weight: "bold", size: 14pt)[Case 1 · ARROW\_IN\_TEXT]

#v(1em)

Ein wichtiges Detail: #dbg-pin(1)Macrolid-Antibiotika#dbg-pin(2) sind bei
CYP3A4-Interaktionen kontraindiziert und führen zum Wirkverlust von
Ciclosporin, Tacrolimus und weiteren Substraten.

#pinit-highlight(1, 2, fill: rgb(220, 50, 50, 60), radius: 2pt)
#box()

#pinit-point-from(
  (1, 2),
  pin-dx: 0pt,
  pin-dy: 0pt, // ← BUG: 0pt means arrow start is inside the highlighted text
  body-dx: 0pt,
  body-dy: -8pt,
  offset-dx: 90pt,
  offset-dy: 50pt,
  fill: rgb(180, 0, 0),
)[
  #block(inset: (left: 10pt))[
    #text(weight: "bold")[Kontraindikation!] \
    #text(size: 0.85em)[Massive CYP3A4-Interaktion]
  ]
]
#box()

#dbg-note("↑ pin-dy=0pt → Pfeil startet im Text. Fix: pin-dy auf 8–12pt.", dx: 50pt, dy: 200pt)

#v(10em)

#text(size: 9pt, fill: gray)[
  Expected: `pin-dy: 10pt` moves the arrow start 10pt below the pin position,
  clearing the highlight and all letter descenders.
]

#pagebreak()

// ═══════════════════════════════════════════════════════════════════════════
// PAGE 2  ·  BOX_OVER_TEXT
// Problem:  offset-dy is too small → annotation box overlaps prose below pin.
// Symptom:  Box rendered directly under pinned text, covering the paragraph.
// Fix hint: increase offset-dy to 80–120pt OR switch to Recipe B.
// ═══════════════════════════════════════════════════════════════════════════

#dbg-grid(step: 50pt, label-every: 100pt, extent: 700pt)

#text(weight: "bold", size: 14pt)[Case 2 · BOX\_OVER\_TEXT]

#v(1em)

Wir betrachten die Unterschiede zwischen #dbg-pin(3)body-dx/dy#dbg-pin(4)
und #dbg-pin(5)offset-dx/dy#dbg-pin(6) an einem konkreten Beispiel für die
Pinit-Parametergruppen.

#pinit-highlight(3, 4, fill: rgb(0, 150, 0, 50), radius: 2pt)
#box()

#pinit-point-from(
  (3, 4),
  pin-dx: 0pt,
  pin-dy: 12pt,
  body-dx: 0pt,
  body-dy: -8pt,
  offset-dx: 5pt, // ← BUG: offset too small in both axes
  offset-dy: 20pt, // ← BUG: box drops directly onto the text below
  fill: rgb(0, 120, 0),
)[
  #block(width: 160pt, inset: 8pt, stroke: 1pt + rgb(0, 100, 0))[
    #text(weight: "bold")[body-dx/dy] = Pfeilvektor zur Box. \
    #text(weight: "bold")[offset-dx/dy] = Globale Verschiebung.
  ]
]
#box()

Dieser Absatz unmittelbar darunter wird von der Box überdeckt, weil
`offset-dy` zu klein gewählt wurde. Das ist ein typisches BOX\_OVER\_TEXT
Fehlerfall.

#dbg-note("↑ offset-dy=20pt → Box überdeckt Folgeabsatz. Fix: 80–120pt.", dx: 50pt, dy: 280pt)

#v(12em)

#text(size: 9pt, fill: gray)[
  Expected: `offset-dy: 100pt` moves the box far enough below the pinned text
  to eliminate the overlap with the prose paragraph.
]

#pagebreak()

// ═══════════════════════════════════════════════════════════════════════════
// PAGE 3  ·  ARROW_MISS_TARGET
// Problem:  body-dx is too large → arrow tip points far away from the label.
// Symptom:  Arrow tip and box are visually disconnected.
// Fix hint: reduce body-dx to 0–10pt so the tip lands on the box edge.
// ═══════════════════════════════════════════════════════════════════════════

#dbg-grid(step: 50pt, label-every: 100pt, extent: 700pt)

#text(weight: "bold", size: 14pt)[Case 3 · ARROW\_MISS\_TARGET]

#v(1em)

Pins können auch direkt im Mathemodus gesetzt werden:

$ #dbg-pin(7) x^2 #dbg-pin(8) + #dbg-pin(9) y^2 #dbg-pin(10) = r^2 $

#pinit-highlight(7, 8, fill: rgb(200, 0, 0, 50))
#pinit-highlight(9, 10, fill: rgb(0, 0, 200, 50))
#box()

#pinit-point-from(
  (7, 8),
  pin-dx: 0pt,
  pin-dy: 8pt,
  body-dx: 80pt, // ← BUG: 80pt too large; tip lands far to the right of the label
  body-dy: 30pt,
  offset-dx: -30pt,
  offset-dy: 30pt,
  fill: rgb(180, 0, 0),
)[
  #text(fill: rgb(180, 0, 0), weight: "bold")[x-Koordinate]
]
#box()

#pinit-point-from(
  (9, 10),
  pin-dx: 0pt,
  pin-dy: -10pt,
  body-dx: -70pt, // ← BUG: -70pt too large; tip overshoots to the left
  body-dy: -25pt,
  offset-dx: 30pt,
  offset-dy: -30pt,
  fill: rgb(0, 0, 180),
)[
  #text(fill: rgb(0, 0, 180), weight: "bold")[y-Koordinate]
]
#box()

#dbg-note("↑ body-dx=80pt → Pfeilspitze weit rechts der Box. Fix: 0–10pt.", dx: 50pt, dy: 310pt)

#v(10em)

#text(size: 9pt, fill: gray)[
  Expected: `body-dx: 5pt, body-dy: 5pt` — small values keep the arrow tip
  just to the side of the annotation text without gap.
]

#pagebreak()

// ═══════════════════════════════════════════════════════════════════════════
// PAGE 4  ·  RECIPE B (stabilised refactor of Case 1)
// Technique: Box placed via pinit-place (stable), arrow drawn separately.
// Benefit:   Box position is pin-relative and doesn't drift; arrow corrected
//            independently with body-* without affecting box placement.
// ═══════════════════════════════════════════════════════════════════════════

#dbg-grid(step: 50pt, label-every: 100pt, extent: 700pt)

#text(weight: "bold", size: 14pt)[Case 4 · RECIPE B (refactored, stable)]

#v(1em)

Ein wichtiges Detail: #dbg-pin(11)Macrolid-Antibiotika#dbg-pin(12) sind bei
CYP3A4-Interaktionen kontraindiziert und führen zum Wirkverlust von
Ciclosporin, Tacrolimus und weiteren Substraten.

#pinit-highlight(11, 12, fill: rgb(220, 50, 50, 60), radius: 2pt)
#box()

// Recipe B Step 1: place the box stably via pinit-place (not offset-*)
#pinit-place(dx: 80pt, dy: 50pt, (11, 12))[
  #box(inset: 8pt, stroke: 1.5pt + rgb(180, 0, 0), radius: 4pt)[
    #text(weight: "bold")[Kontraindikation!] \
    #text(size: 0.85em)[Massive CYP3A4-Interaktion]
  ]
]
#box()

// Recipe B Step 2: draw the arrow separately so it can be tuned independently
#pinit-point-from(
  (11, 12),
  pin-dx: 0pt,
  pin-dy: 10pt, // ← FIXED: clear of highlight
  body-dx: 5pt,
  body-dy: -5pt,
  offset-dx: 80pt,
  offset-dy: 50pt,
  fill: rgb(180, 0, 0),
)[]
#box()

#dbg-note("Recipe B: pinit-place + separate arrow — stable, no drift", dx: 50pt, dy: 230pt)

#v(10em)

#text(size: 9pt, fill: gray)[
  Recipe B decouples box position (pinit-place dx/dy) from arrow direction
  (body-dx/dy). Correcting one does not shift the other.
]

#disable-pinit-debug
