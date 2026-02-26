// components/tables.typ
#import "../styles/theme.typ": palette

#let zebra-table(columns: (1fr, 1fr), ..rows) = {
  table(
    columns: columns,
    stroke: (paint: palette.muted, thickness: 0.6pt),
    inset: 10pt,
    fill: (x, y) => {
      if y == 0 {
        palette.accent.lighten(90%)
      } else if calc.even(y) {
        palette.muted.lighten(95%)
      } else {
        palette.paper
      }
    },
    align: (x, y) => if y == 0 { center } else { left },
    ..rows,
  )
}

