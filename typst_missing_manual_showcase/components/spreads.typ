// components/spreads.typ
#import "../styles/theme.typ": gradients, palette, space, type

// Book Cover – full-page gradient with stacked place overlays
#let book-cover(title, subtitle, author) = {
  set page(margin: 0pt, header: none, footer: none)

  // Full-page gradient background
  place(top + left, block(width: 100%, height: 100%, fill: gradients.cover))

  // Decorative circle (top-right, partially off-screen)
  place(top + right, dx: 40mm, dy: -30mm, circle(radius: 120mm, fill: palette.paper.transparentize(92%)))

  // Second decorative circle (bottom-left)
  place(bottom + left, dx: -50mm, dy: 30mm, circle(radius: 80mm, fill: palette.paper.transparentize(95%)))

  // Thin accent bar at top
  place(top + left, dy: 0pt, block(width: 100%, height: 6pt, fill: palette.paper.transparentize(60%)))

  // Title block
  place(center + horizon, block(width: 75%, inset: 20mm)[
    #align(center)[
      #text(size: 14pt, weight: 600, fill: palette.paper.transparentize(30%), tracking: 4pt)[TYPST SHOWCASE]
      #v(space.xl)
      #text(size: type.display, weight: 900, fill: palette.paper)[#title]
      #v(space.lg)
      #line(length: 40%, stroke: (paint: palette.paper.transparentize(50%), thickness: 2pt))
      #v(space.lg)
      #text(size: type.h2, fill: palette.paper.transparentize(15%))[#subtitle]
      #v(space.xxl)
      #text(size: type.lead, weight: "bold", fill: palette.paper.transparentize(20%))[#author]
    ]
  ])

  pagebreak()
}

// Chapter Opener – decorative page with number and title
#let chapter-opener(title, number: none) = {
  pagebreak(to: "odd", weak: true)

  // Decorative accent block at top
  block(width: 100%, inset: 0pt, spacing: 0pt)[
    #place(top + left, dy: -20mm, dx: -22mm, block(width: 130%, height: 8pt, fill: palette.accent))
  ]

  v(3cm)

  if number != none {
    // Large decorative number
    block(width: 100%)[
      #text(size: 72pt, weight: 900, fill: palette.accent.transparentize(70%))[#number]
    ]
    v(-20pt)
  }

  // Title
  block(width: 100%)[
    #text(size: type.display, weight: 800, fill: palette.ink)[#title]
  ]

  v(space.sm)
  line(length: 60%, stroke: (paint: palette.accent, thickness: 2pt))
  v(2cm)
}
