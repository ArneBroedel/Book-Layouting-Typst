// components/inline.typ
#import "../styles/theme.typ": palette, space, type

// Badge helper
#let badge(body, color: palette.accent) = box(
  inset: (x: 6pt, y: 2pt),
  radius: 999pt,
  fill: color.lighten(85%),
  stroke: (paint: color, thickness: 0.5pt),
  baseline: 20%,
)[
  #set text(size: type.micro, weight: "bold", fill: color.darken(20%))
  #body
]

// Inline highlight helper
#let highlight(body, color: palette.warn-light) = box(
  inset: (x: 2pt, y: 0pt),
  radius: 2pt,
  fill: color,
  outset: (y: 2pt),
)[#body]

// Baseline-safe icon helper
#let icon(symbol, color: palette.ink) = box(
  baseline: 30%,
  height: 1em,
)[
  #set text(fill: color)
  #symbol
]

// Decorative outset helper
#let emphasis-box(body, color: palette.info-light) = box(
  fill: color,
  outset: (x: 4pt, y: 2pt),
  radius: 2pt,
)[#body]
