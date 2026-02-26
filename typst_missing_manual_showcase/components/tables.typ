// components/tables.typ
#import "../styles/theme.typ": palette

#let zebra-table(columns: (1fr, 1fr), ..rows) = {
  show table.cell.where(y: 0): set text(weight: "bold", fill: palette.ink)

  table(
    columns: columns,
    stroke: (paint: palette.border, thickness: 0.6pt),
    inset: 10pt,
    fill: (x, y) => {
      if y == 0 {
        palette.accent-light
      } else if calc.even(y) {
        palette.surface
      } else {
        palette.paper
      }
    },
    align: (x, y) => if y == 0 { center } else { left },
    ..rows,
  )
}

