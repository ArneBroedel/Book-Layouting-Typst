// graphics spike — G (Nano Banana FREE design — no SVG structure ref)
// EXCEPTION_NO_BRIEF: medical-graphics comparison pilot

#import "/packages/bookkit/theme.typ": palette

#set page(width: 170mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 8.5pt, fill: palette.text-body)

#align(center)[
  #text(size: 9pt, fill: palette.text-muted)[
    Raster-Spike Nano Banana *free* (Inhalt + Didaktik, keine Struktur-Vorlage) · S4
  ]
]

#v(3mm)

#align(center)[
  #image(
    "/domains/medical/assets/iii2-bls-aed/primar-algorithmus-raster-nanobanana-free.png",
    width: 100%,
    alt: "Primär-Algorithmus freies Nano-Banana-Design: Überwachen vs CPR mit 4a-Schleife",
  )
]

#v(3mm)
#block(width: 100%, inset: 6pt, fill: palette.bg-subtle, radius: 3pt)[
  #text(size: 7.5pt, fill: palette.text-muted)[
    Brief: `antigravity-nanobanana-free-brief.md`. Keine SVG/PNG-Layout-Referenz.
    Vergleich zu `primar-algorithmus-raster-nanobanana.png` (strukturgebunden).
  ]
]
