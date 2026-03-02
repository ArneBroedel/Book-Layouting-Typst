// test/pinit-radial.typ — Radial pinit placement showcase
//
// 8 evenly-spaced annotations surround a center circle (45° apart).
// Pins 1-4, 6-8: pinit-point-from  →  arrowhead on circle (arrow points toward circle)
// Pin 5 at 6:00: pinit-point-to    →  arrowhead on annotation (arrow points toward pinit)
//
// Geometry:
//   cx, cy = page centre
//   R = 100pt = circle radius;  pins sit exactly on the circle perimeter
//   D = 175pt = centre-to-box distance;  offset from pin = D-R = 75pt
//   At 45° diagonals each axis offset = 75 × sin(45°) ≈ 53pt
//
// IMPORTANT: offset-dx/dy is PIN-RELATIVE (official docs claim page-absolute — verified wrong).
//   Correct formula: offset-dx = (D-R) × sin(θ),  offset-dy = -(D-R) × cos(θ)
//   where θ = clockwise angle from 12 o'clock.
//
// Compile:
//   typst compile test/pinit-radial.typ --root . --font-path fonts/ test_radial.png

#import "@preview/pinit:0.2.2": *

#set page(width: 595pt, height: 842pt, margin: 10pt)
#set text(size: 9pt)

// ── Geometry ───────────────────────────────────────────────────────────────
#let cx = 297.5pt
#let cy = 421pt
#let R = 100pt
#let D = 185pt
#let s45 = calc.sin(45deg)   // ≈ 0.7071
#let o = D - R               // 85pt — cardinal offset (pin → box along axis)
#let od = o * s45            // ≈ 60.1pt — diagonal offset per axis

// ── Annotation box helper ──────────────────────────────────────────────────
#let c-blue = rgb("#1565c0")
#let c-red = rgb("#b71c1c")

#let ann-box(body, clr: c-blue, txt-size: 8pt, pad-x: 7pt, pad-y: 4pt) = block(
  inset: (x: pad-x, y: pad-y),
  stroke: 0.8pt + clr,
  radius: 3pt,
  fill: white,
)[#text(fill: clr, weight: "bold", size: txt-size)[#body]]

#let lbw = 34pt
#let lbh = 18pt
#let lg = 5pt

#let o-long = o + 30pt
#let od-long = o-long * s45
#let o-short = o - 20pt
#let od-short = o-short * s45

// ── Circle ─────────────────────────────────────────────────────────────────
#absolute-place(dx: cx - R, dy: cy - R)[
  #box(width: 2 * R, height: 2 * R, stroke: 2pt + rgb("#333"), radius: R)
]
#absolute-place(dx: cx - 14pt, dy: cy - 6pt)[
  #text(size: 7pt, fill: rgb("#666"), style: "italic")[circle]
]

// ── Pins placed on circle perimeter ───────────────────────────────────────
// pin_x = cx + R · sin(θ),  pin_y = cy - R · cos(θ)   (page y-axis points DOWN)
// absolute-place positions each pin exactly on the circle edge at its clock angle.

#absolute-place(dx: cx, dy: cy - R)[#pin(1)]   // 12:00
#absolute-place(dx: cx + R * s45, dy: cy - R * s45)[#pin(2)]   // 1:30
#absolute-place(dx: cx + R, dy: cy)[#pin(3)]   // 3:00
#absolute-place(dx: cx + R * s45, dy: cy + R * s45)[#pin(4)]   // 4:30
#absolute-place(dx: cx, dy: cy + R)[#pin(5)]   // 6:00  ← reversed
#absolute-place(dx: cx - R * s45, dy: cy + R * s45)[#pin(6)]   // 7:30
#absolute-place(dx: cx - R, dy: cy)[#pin(7)]   // 9:00
#absolute-place(dx: cx - R * s45, dy: cy - R * s45)[#pin(8)]   // 10:30
#absolute-place(dx: 595pt - 10pt, dy: 10pt)[#pin(9)]          // upper-right page corner (Recipe C)

// ── Title ──────────────────────────────────────────────────────────────────
#absolute-place(dx: cx - 110pt, dy: 15pt)[
  #text(size: 13pt, weight: "bold")[Pinit — Radial Showcase]
]
#absolute-place(dx: cx - 212pt, dy: 34pt)[
  #text(size: 7pt, fill: rgb("#555"))[
    Pins 1–4, 6–8: #text(fill: c-blue, weight: "bold")[pinit-point-from]
    (arrowhead at circle) ·
    Pin 5 (6:00): #text(fill: c-red, weight: "bold")[pinit-point-to]
    (arrowhead at annotation)
  ]
]

// ── Annotations (Recipe B: decoupled placement + arrow) ──────────────────
// 1) Place label explicitly at the desired outer endpoint with pinit-place.
// 2) Draw arrow separately with empty body so box anchoring cannot drift inward.

// 1 ─ 12:00
#pinit-place(dx: -lbw / 2, dy: -o - lbh - lg, 1)[#ann-box[12:00]]
#box()
#pinit-point-from(1, pin-dx: 0pt, pin-dy: 0pt, body-dx: 0pt, body-dy: 0pt, offset-dx: 0pt, offset-dy: -o - lg, fill: c-blue)[]
#box()

// 2 ─ 1:30
#pinit-place(dx: od-long + lg, dy: -od-long - lbh - lg, 2)[#ann-box(txt-size: 7.5pt)[1:30]]
#box()
#pinit-point-from(2, pin-dx: 0pt, pin-dy: 0pt, body-dx: 0pt, body-dy: 0pt, offset-dx: od-long + lg, offset-dy: -od-long - lg, fill: c-blue)[]
#box()

// 3 ─ 3:00
#pinit-place(dx: o-long / 2, dy: -lbh / 2, 3)[#ann-box(txt-size: 9pt, pad-x: 8pt)[3:00]]
#box()
#pinit-point-from(3, pin-dx: 0pt, pin-dy: 0pt, body-dx: 0pt, body-dy: 0pt, offset-dx: o-long + lg, offset-dy: 0pt, fill: c-blue)[]
#box()

// 4 ─ 4:30
#pinit-place(dx: od-short + lg, dy: od-short + lg, 4)[#ann-box(txt-size: 8.5pt)[4:30]]
#box()
#pinit-point-from(4, pin-dx: 7pt, pin-dy: 7pt, body-dx: 0pt, body-dy: 0pt, offset-dx: od-short + lg, offset-dy: od-short + lg, fill: c-blue)[]
#box()

// 5 ─ 6:00 (reversed)
#pinit-place(dx: -lbw / 2, dy: o + lg, 5)[#ann-box(clr: c-red)[6:00]]
#box()
#pinit-point-to(5, pin-dx: 0pt, pin-dy: 0pt, body-dx: 0pt, body-dy: 0pt, offset-dx: 0pt, offset-dy: o + lg, fill: c-red)[]
#box()

// 6 ─ 7:30
#pinit-place(dx: -od - lbw - lg, dy: od + lg, 6)[#ann-box(txt-size: 7.5pt, pad-x: 9pt, pad-y: 5pt)[7:30]]
#box()
#pinit-point-from(6, pin-dx: 0pt, pin-dy: 0pt, body-dx: 0pt, body-dy: 0pt, offset-dx: -od - lg, offset-dy: od + lg, fill: c-blue, stroke: 2.4pt + c-blue)[]
#box()

// 7 ─ 9:00
#pinit-place(dx: -o - lbw - lg, dy: -lbh / 2, 7)[#ann-box(txt-size: 8pt)[9:00]]
#box()
#pinit-point-from(7, pin-dx: R, pin-dy: 0pt, body-dx: 0pt, body-dy: 0pt, offset-dx: -o - lg, offset-dy: 0pt, fill: c-blue)[]
#box()

// 8 ─ 10:30  corner/elbow callout
// Strategy: pinit-point-from with empty body [] draws the diagonal arrow
// (arrowhead at pin/circle). Then absolute-place + line() draws the horizontal
// bar from the elbow corner to the right. Label sits above the right end.
//
// Pin 8 page-absolute position: (cx - R*s45, cy - R*s45) ≈ (226.8, 350.3)
// Elbow corner = pin + (c8-dx, c8-dy)  →  absolute ≈ (149, 236)
// Bar extends RIGHT from corner for bar-w pts; label above the right end.

#let c-teal = rgb("#00796b")
#let c8-dx  = -od - 18pt                     // pin-relative: ≈ -78pt
#let c8-dy  = -od - 55pt                     // pin-relative: ≈ -115pt
#let c8-x   = cx - R * s45 + c8-dx          // absolute page x of corner
#let c8-y   = cy - R * s45 + c8-dy          // absolute page y of corner
#let bar-w  = 75pt                           // horizontal bar length

// (a) diagonal arrow — arrowhead at circle, tail at elbow corner
#pinit-point-from(8,
  pin-dx: 0pt, pin-dy: 0pt,
  body-dx: 0pt, body-dy: 0pt,
  offset-dx: c8-dx, offset-dy: c8-dy,
  fill: c-teal, stroke: 1.2pt + c-teal,
)[]
#box()

// (b) horizontal bar from corner extending right
#absolute-place(dx: 0pt, dy: 0pt)[
  #line(start: (c8-x, c8-y), end: (c8-x + bar-w, c8-y), stroke: 1.2pt + c-teal)
]

// (c) "10:30" label above the RIGHT end of the bar
#absolute-place(dx: c8-x + bar-w - 33pt, dy: c8-y - 15pt)[
  #text(fill: c-teal, weight: "bold", size: 9.5pt)[10:30]
]

// ── Pin 9 — upper-right corner, Recipe C ──────────────────────────────────
// Label at EXACT page coords: right edge 100pt from page right, top 100pt from top.
// Arrow via pinit-point-from with offsets computed from known geometry — no guessing.
//
// Pin 9 absolute:  p9-x = cx + R·s45 ≈ 368.2pt,  p9-y = cy − R·s45 ≈ 350.3pt
// Label box:       lb9-w × lb9-h, right edge at (595 − 100) = 495pt, top at 100pt
// Arrow tail:      label bottom-centre → offset = label_anchor − pin

#let c-orange  = rgb("#e65100")
#let page-w    = 595pt
#let lb9-w     = 72pt             // label box width
#let lb9-h     = 19pt             // label box height (approx for 8pt bold text)
#let lb9-right = page-w - 100pt  // right edge at exactly 495pt
#let lb9-top   = 100pt           // top edge at exactly 100pt from page top
#let p9-x      = 595pt - 10pt   // absolute pin x — upper-right corner of page
#let p9-y      = 10pt           // absolute pin y — upper-right corner of page
// pin-relative offsets to label bottom-centre (where arrow tail exits)
#let off9-dx   = (lb9-right - lb9-w / 2) - p9-x   // ≈ 495 - 36 - 585 = -126
#let off9-dy   = (lb9-top + lb9-h / 2) - p9-y     // ≈ 100 + 9.5 - 10 = 99.5

// (a) Arrow — arrowhead at page corner (p9), tail at label centre (off9)
#pinit-point-from(9,
  pin-dx: -3pt, pin-dy: 3pt,                      // tiny pull-back from actual page corner
  body-dx: 0pt, body-dy: 0pt,
  offset-dx: off9-dx, offset-dy: off9-dy,
  fill: c-orange, stroke: 1pt + c-orange,
)[]
#box()

// (b) Label — absolute-place guarantees exact page-absolute position
#absolute-place(dx: lb9-right - lb9-w, dy: lb9-top)[
  #block(
    width: lb9-w,
    height: lb9-h,
    inset: (x: 0pt, y: 0pt),
    outset: 0pt,
    stroke: 0.8pt + c-orange,
    radius: 3pt,
    fill: white,
  )[#align(center + horizon)[#text(fill: c-orange, weight: "bold", size: 8pt)[upper-right]]]
]
