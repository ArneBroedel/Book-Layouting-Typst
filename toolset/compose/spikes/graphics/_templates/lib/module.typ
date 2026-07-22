// Template stub — medical-graphics Typst recreate module
// Copy to: toolset/compose/spikes/graphics/<slug>/lib/<name>.typ
// Claim-safe German only; bookkit tokens; FA6.
// See playbook/04-recreate-typst.md

#import "/packages/bookkit/theme.typ": palette
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")

#let _badge(n, fill: palette.primary) = box(
  width: 1.4em,
  height: 1.4em,
  radius: 100%,
  fill: fill,
  baseline: 18%,
  align(center + horizon)[
    #set text(fill: white, weight: "bold", size: 8.5pt)
    #n
  ],
)

#let _arrow-down(fill: palette.primary) = align(center)[
  #text(size: 11pt, fill: fill)[#fa-arrow-down()]
]

/// Rename and implement from Form Spec zones + claim pins.
#let graphic-unit-placeholder(
  title: [UNIT TITLE],
  show-footer: true,
) = block(
  width: 100%,
  breakable: false,
)[
  #block(
    width: 100%,
    inset: (x: 12pt, y: 8pt),
    fill: palette.primary-dark,
    radius: (top: 5pt, bottom: 0pt),
  )[
    #set text(fill: white, weight: "bold", size: 9.5pt)
    #align(center)[#title]
  ]
  #block(
    width: 100%,
    inset: 10pt,
    stroke: 0.85pt + palette.border,
    radius: (top: 0pt, bottom: 5pt),
    fill: white,
  )[
    #set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)
    // TODO: encode Form Spec steps with claim pins only
    #_badge("1")
    #h(6pt)
    #text(weight: "bold")[Step title — claim-safe body]
    #_arrow-down()
    #if show-footer [
      #v(6pt)
      #set text(size: 7pt, fill: palette.text-muted)
      Footer: scan path / cross-links (quiet).
    ]
  ]
]
