// components/grids.typ
#import "../styles/theme.typ": palette, space, type

// Dynamic Gallery Grid – renders items in a visual card grid
#let gallery-grid(items, columns: 3, gutter: space.md) = {
  let colors = (palette.accent, palette.info, palette.good, palette.warn, palette.bad)
  grid(
    columns: columns,
    gutter: gutter,
    ..items
      .enumerate()
      .map(((i, item)) => block(
        width: 100%,
        height: 80pt,
        fill: colors.at(calc.rem(i, colors.len())).lighten(88%),
        stroke: (paint: colors.at(calc.rem(i, colors.len())).lighten(40%), thickness: 1pt),
        radius: 8pt,
        inset: space.md,
      )[
        #align(center + horizon)[
          #text(size: type.small, weight: "bold", fill: colors.at(calc.rem(i, colors.len())))[#item]
        ]
      ])
  )
}
