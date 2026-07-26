#import "/packages/bookkit/theme.typ": palette
#import "lib/compartment.typ": spatial-compartment-principle

#set page(width: 180mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)

#text(size: 8pt, fill: palette.text-muted)[
  Kein MRT/CT-Schnitt · keine Knochen-Labels · nur Prinzip + grobe Lage
]
#v(4pt)
#spatial-compartment-principle()
