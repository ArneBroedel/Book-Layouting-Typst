// components/tables.typ — Table components

#import "../styles/theme.typ": fonts, palette, space, type-scale

// ── Styled table ───────────────────────────────────────────────
// Base table with header styling and zebra striping.
#let styled-table(..args) = {
  block(
    breakable: false,
    above: space.lg,
    below: space.lg,
    width: 100%,
    table(
      stroke: 0.5pt + palette.border-light,
      inset: (x: space.md, y: space.sm),
      fill: (x, y) => {
        if y == 0 { palette.primary } else if calc.even(y) { palette.bg-subtle } else { white }
      },
      ..args,
    ),
  )
}

// ── Comparison table ───────────────────────────────────────────
// Feature comparison with semantic coloring.
#let comparison-table(headers: (), rows: ()) = {
  let col-count = headers.len()

  block(
    breakable: false,
    above: space.lg,
    below: space.lg,
    width: 100%,
    table(
      columns: col-count,
      stroke: 0.5pt + palette.border-light,
      inset: (x: space.md, y: space.sm),
      fill: (x, y) => {
        if y == 0 { palette.primary } else if calc.even(y) { palette.bg-subtle } else { white }
      },
      ..headers.map(h => text(fill: white, weight: "bold", size: type-scale.small, h)),
      ..rows.flatten(),
    ),
  )
}
