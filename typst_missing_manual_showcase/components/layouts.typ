// components/layouts.typ
#import "../styles/theme.typ": palette, space, type

// Classic Sidebar Layout – fixed sidebar + fluid main
#let sidebar-layout(sidebar, body, sidebar-width: 180pt) = {
  grid(
    columns: (sidebar-width, 1fr),
    gutter: 20pt,
    block(
      fill: palette.surface,
      radius: 8pt,
      inset: space.lg,
      stroke: (paint: palette.border, thickness: 0.5pt),
    )[#sidebar],
    body,
  )
}

// Magazine Layout – full-width title + two-column body
#let magazine-layout(title, subtitle: none, body) = {
  // Full-width header area with accent background
  block(width: 100%, fill: palette.accent.lighten(92%), inset: space.xl, radius: (top: 8pt))[
    #text(size: type.h1, weight: 900, fill: palette.accent)[#title]
    #if subtitle != none {
      v(space.sm)
      text(size: type.lead, fill: palette.muted)[#subtitle]
    }
  ]
  v(space.lg)
  // Two-column body
  columns(2, gutter: 20pt)[
    #body
  ]
}

// Scientific Paper Header – for use as a standalone block (NOT set page)
#let scientific-header(title, authors, abstract) = {
  block(width: 100%, fill: palette.surface, inset: space.xl, radius: 8pt, stroke: (
    paint: palette.border,
    thickness: 0.5pt,
  ))[
    #align(center)[
      #text(size: type.h2, weight: "bold")[#title]
      #v(space.md)
      #text(size: type.lead, fill: palette.muted)[#authors]
    ]
    #v(space.lg)
    #block(width: 90%, inset: (x: space.lg))[
      #text(size: type.small, weight: "bold")[Abstract:]
      #h(4pt)
      #text(size: type.small, style: "italic")[#abstract]
    ]
  ]
}

// Scientific Paper – full template using page-level columns
#let scientific-paper(title, authors, abstract, body) = {
  // Header block (full width)
  block(width: 100%, fill: palette.surface, inset: space.xl, radius: 8pt, stroke: (
    paint: palette.border,
    thickness: 0.5pt,
  ))[
    #align(center)[
      #text(size: type.h2, weight: "bold")[#title]
      #v(space.md)
      #text(size: type.lead, fill: palette.muted)[#authors]
    ]
    #v(space.lg)
    #block(width: 90%, inset: (x: space.lg))[
      #text(size: type.small, weight: "bold")[Abstract:]
      #h(4pt)
      #text(size: type.small, style: "italic")[#abstract]
    ]
  ]
  v(space.lg)
  // Two-column body
  columns(2, gutter: 16pt)[
    #set text(size: type.small)
    #set par(leading: 1.2em)
    #body
  ]
}

// Adaptive Layout Helper – switches layout based on available width
#let adaptive-layout(sidebar, body) = layout(size => {
  if size.width > 400pt {
    grid(
      columns: (200pt, 1fr),
      gutter: 20pt,
      block(
        fill: palette.surface,
        radius: 8pt,
        inset: space.lg,
        stroke: (paint: palette.border, thickness: 0.5pt),
      )[#sidebar],
      body,
    )
  } else {
    block(width: 100%)[
      #sidebar
      #v(space.lg)
      #body
    ]
  }
})

// Full-width breakout block – visual accent block
#let breakout(body) = {
  block(
    width: 100% + 40mm,
    inset: space.xl,
    outset: (x: 20mm),
    body,
  )
}
