// components/layouts.typ — Layout components

#import "../styles/theme.typ": fonts, gradients, palette, space, type-scale

// ── Sidebar layout ─────────────────────────────────────────────
// Fixed sidebar + fluid main content via grid.
#let sidebar-layout(
  main,
  sidebar: none,
  sidebar-width: 160pt,
  gutter: space.lg,
  sidebar-position: left,
) = {
  let sidebar-content = block(
    width: 100%,
    fill: palette.bg-subtle,
    inset: space.md,
    radius: 4pt,
    sidebar,
  )

  let cols = if sidebar-position == left {
    (sidebar-width, 1fr)
  } else {
    (1fr, sidebar-width)
  }

  let children = if sidebar-position == left {
    (sidebar-content, main)
  } else {
    (main, sidebar-content)
  }

  grid(
    columns: cols,
    column-gutter: gutter,
    ..children,
  )
}

// ── Magazine layout ────────────────────────────────────────────
// Full-width hero followed by multi-column body.
// GUARD: uses columns() function, never set page(columns: N)
#let magazine-layout(
  hero,
  body,
  column-count: 2,
  gutter: space.lg,
) = {
  block(width: 100%, hero)
  v(space.lg)
  columns(column-count, gutter: gutter, body)
}

// ── Scientific paper ───────────────────────────────────────────
// Two-column academic layout with full-width title and abstract.
#let scientific-paper(
  body,
  title: none,
  authors: none,
  abstract: none,
) = {
  if title != none {
    block(
      width: 100%,
      above: space.lg,
      below: space.md,
      text(size: type-scale.h2, weight: "bold", font: fonts.sans, title),
    )
  }

  if authors != none {
    block(
      width: 100%,
      below: space.md,
      text(size: type-scale.small, fill: palette.text-muted, authors),
    )
  }

  if abstract != none {
    block(
      width: 100%,
      inset: space.md,
      fill: palette.bg-subtle,
      radius: 4pt,
      below: space.xl,
      {
        text(weight: "bold", size: type-scale.small)[Abstract]
        v(space.xs)
        set text(size: type-scale.small)
        abstract
      },
    )
  }

  columns(2, gutter: space.lg, body)
}

// ── Comparison layout ──────────────────────────────────────────
// Side-by-side comparison of two content blocks.
#let comparison-layout(
  left,
  right,
  left-title: none,
  right-title: none,
) = {
  grid(
    columns: (1fr, 1fr),
    column-gutter: space.lg,
    {
      if left-title != none {
        block(below: space.sm, text(weight: "bold", font: fonts.sans, left-title))
      }
      left
    },
    {
      if right-title != none {
        block(below: space.sm, text(weight: "bold", font: fonts.sans, right-title))
      }
      right
    },
  )
}

// ── Adaptive layout ────────────────────────────────────────────
// Width-aware layout: sidebar when wide, stacked when narrow.
// GUARD: uses layout(size => ...), never context { page.width }
#let adaptive-layout(
  body,
  sidebar: none,
  sidebar-width: 160pt,
  breakpoint: 400pt,
) = {
  layout(size => {
    if sidebar != none and size.width > breakpoint {
      grid(
        columns: (sidebar-width, 1fr),
        column-gutter: space.lg,
        sidebar, body,
      )
    } else {
      if sidebar != none {
        block(width: 100%, sidebar)
        v(space.lg)
      }
      body
    }
  })
}

// ── Breakout ───────────────────────────────────────────────────
// Full-width element, used between column sections.
#let breakout(body) = {
  block(
    width: 100%,
    above: space.xl,
    below: space.xl,
    body,
  )
}
