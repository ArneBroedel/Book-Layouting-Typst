// components/tables.typ
#import "../styles/theme.typ": palette, space, type

#let zebra-table(columns: (1fr, 1fr), ..rows) = {
  table(
    columns: columns,
    stroke: (paint: palette.muted, thickness: 0.4pt),
    inset: 6pt,
    fill: (x, y) => if y == 0 { palette.ink.mix(palette.paper) }
      else if calc.even(y) { palette.paper }
      else { palette.paper.mix(palette.muted) },
    ..rows,
  )
}

