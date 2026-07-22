// graphics spike — D (raster asset-full, Imagine)
// mode: asset — PNG/JPG with all labels baked in
// EXCEPTION_NO_BRIEF: medical-graphics raster pilot

#import "/packages/bookkit/theme.typ": palette

#set page(width: 170mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 8.5pt, fill: palette.text-body)

#align(center)[
  #text(size: 9pt, fill: palette.text-muted)[
    Raster-Spike full (Imagine PNG, Text *in* der Pixelgrafik) · S4
  ]
]

#v(3mm)

#align(center)[
  #image(
    "/domains/medical/assets/iii2-bls-aed/primar-algorithmus-raster-full.png",
    width: 100%,
    alt: "Primär-Algorithmus Bewusstseinsstörung/Kollaps als Pixelgrafik: Schritte 1–6 mit Verzweigung 4a/4b",
  )
]

#v(3mm)
#block(
  width: 100%,
  inset: 6pt,
  fill: palette.bg-subtle,
  radius: 3pt,
)[
  #text(size: 7.5pt, fill: palette.text-muted)[
    *Asset-full (Raster).* Quelle: Grok Imagine → edit. Claims in Pixeln —
    Revision = Bild neu erzeugen/editieren. Native Größe 864×1152 px;
    bei ~150 mm Satzbreite ≈ 146 dpi (unter Print-300 — Exploration/Screen;
    Print: höher auflösen oder Vektor bevorzugen).
  ]
]
