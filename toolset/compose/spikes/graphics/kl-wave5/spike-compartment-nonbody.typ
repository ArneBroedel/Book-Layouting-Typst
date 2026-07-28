#import "/packages/bookkit/theme.typ": palette
#import "lib/compartment.typ": us-compartment, mimic-compartment, criteria-compartment-code

#set page(width: 180mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)

#text(size: 8pt, fill: palette.text-muted)[
  Kompartment · non-body default (anatomy free paused 2026-07-29)
]
#v(3pt)
#text(size: 12pt, weight: "bold", fill: palette.primary-dark)[Handeln und Dringlichkeit]
#v(4pt)
#us-compartment()
#pagebreak()
#text(size: 12pt, weight: "bold", fill: palette.primary-dark)[Klinische Zeichen (Text/Chips)]
#v(4pt)
#criteria-compartment-code()
#pagebreak()
#text(size: 12pt, weight: "bold", fill: palette.primary-dark)[Trügerische Erklärungen]
#v(4pt)
#mimic-compartment()
