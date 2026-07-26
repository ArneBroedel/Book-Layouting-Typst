#import "/packages/bookkit/theme.typ": palette
#import "lib/compartment.typ": spatial-compartment-principle, spatial-compartment-cetz, us-compartment

#set page(width: 180mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)

#text(size: 12pt, weight: "bold", fill: palette.primary-dark)[Kompartment · Prinzip-Schema (Textbook-Default)]
#v(2pt)
#text(size: 8pt, fill: palette.text-muted)[
  Human 2026-07: pathologisches Prinzip schematisch — keine Atlas-Anatomie / keine Free-Vision-„korrekten“ Schnitte.
]
#v(6pt)
#spatial-compartment-principle()

#pagebreak()
#text(size: 11pt, weight: "bold", fill: palette.primary-dark)[Referenz · Urgency-Stack (Code)]
#v(4pt)
#us-compartment()
