// graphics spike — C asset-full SVG v4
// EXCEPTION_NO_BRIEF: medical-graphics

#import "/packages/bookkit/theme.typ": palette

#set page(width: 170mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 8.5pt, fill: palette.text-body)

#align(center)[
  #text(size: 9pt, fill: palette.text-muted)[
    Asset-Spike SVG v4 (Text *in* der Grafik) · korrekter Flow · S4
  ]
]

#v(3mm)

#align(center)[
  #image(
    "/domains/medical/assets/iii2-bls-aed/primar-algorithmus-full.svg",
    width: 100%,
    alt: "Primär-Algorithmus v4: 4a-Überwachungsschleife, Eskalation zu 4b, CPR-Pfad 5–6",
  )
]
