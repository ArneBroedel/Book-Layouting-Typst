#import "/packages/bookkit/theme.typ": palette
#import "lib/compartment.typ": spatial-compartment-cetz, spatial-compartment-principle

#set page(width: 180mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)

#text(size: 8pt, fill: palette.text-muted)[Kompartment · schematic-first, topologically careful]
#v(3pt)
#text(size: 12pt, weight: "bold", fill: palette.primary-dark)[A · CeTZ comic-schematic (code)]
#v(4pt)
#spatial-compartment-cetz()

#pagebreak()
#text(size: 12pt, weight: "bold", fill: palette.primary-dark)[B · Pure principle (code)]
#v(4pt)
#spatial-compartment-principle()
