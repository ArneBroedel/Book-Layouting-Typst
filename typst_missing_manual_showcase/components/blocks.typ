// components/blocks.typ
#import "../styles/theme.typ": palette, space, type

// Callout – left-bordered block for emphasis
#let callout(body, title: none, color: palette.accent) = block(
  width: 100%,
  fill: color.lighten(90%),
  stroke: (left: (paint: color, thickness: 4pt)),
  inset: (x: space.lg, y: space.md),
  spacing: space.md,
)[
  #if title != none {
    text(weight: "bold", fill: color.darken(20%), size: type.lead)[#title]
    v(space.sm)
  }
  #body
]

// Card – bordered block with optional title
#let card(body, title: none, accent: palette.accent) = block(
  width: 100%,
  fill: palette.paper,
  stroke: (paint: palette.border, thickness: 1pt),
  radius: 8pt,
  inset: space.lg,
  spacing: space.md,
)[
  #if title != none {
    block(width: 100%, inset: (bottom: space.sm))[
      #text(weight: 800, size: type.lead, fill: accent)[#title]
    ]
    line(length: 100%, stroke: (paint: accent.lighten(60%), thickness: 1pt))
    v(space.sm)
  }
  #body
]

// Blockquote – indented italic text with optional author
#let blockquote(body, author: none) = block(
  width: 100%,
  stroke: (left: (paint: palette.accent.lighten(60%), thickness: 3pt)),
  inset: (left: space.xl, right: space.md, y: space.md),
)[
  #set text(size: type.lead, style: "italic", fill: palette.muted)
  #body
  #if author != none {
    v(space.sm)
    align(right)[
      #set text(size: type.small, style: "normal", weight: "bold", fill: palette.ink)
      — #author
    ]
  }
]

// Side Note – rendered inline in a grid layout with the main text
#let side-note(main, note) = {
  grid(
    columns: (1fr, 140pt),
    gutter: 16pt,
    main,
    block(
      fill: palette.surface,
      stroke: (left: (paint: palette.info, thickness: 2pt)),
      inset: (left: space.md, right: space.sm, y: space.sm),
      radius: (right: 4pt),
    )[
      #set text(size: type.small, fill: palette.muted)
      #set par(leading: 1.2em)
      #note
    ],
  )
}

// Pull Quote – decorative in-flow quote block
#let pull-quote(body, color: palette.accent) = block(
  width: 100%,
  breakable: false,
  inset: (x: space.xxl, y: space.lg),
  fill: color.lighten(94%),
  radius: 4pt,
)[
  #set text(size: type.h3, weight: 700, fill: color, style: "italic")
  #set par(leading: 1.4em)
  #align(center)[
    #text(size: 28pt, fill: color.lighten(40%))[„]
    #v(-12pt)
    #body
  ]
]
