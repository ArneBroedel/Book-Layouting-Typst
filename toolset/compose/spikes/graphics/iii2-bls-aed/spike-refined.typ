// Phase B2 — refined free vision (Nano Banana + book standards)
// realize_path: refine · graphic_mode: asset
// EXCEPTION_NO_BRIEF: medical-graphics

#import "/packages/bookkit/theme.typ": palette

#set page(width: 170mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 8.5pt, fill: palette.text-body)

#align(center)[
  #text(size: 9pt, fill: palette.text-muted)[
    Refine-Spike B2 · Free vision + surgical fixes · Nano Banana · S4
  ]
]

#v(3mm)

#align(center)[
  #image(
    "/domains/medical/assets/iii2-bls-aed/primar-algorithmus-raster-nanobanana-refined.png",
    width: 100%,
    alt: "Primär-Algorithmus refined: 4a-Überwachungsschleife, Eskalation zu 4b, CPR 5–6, minimale Pausen",
  )
]

#v(3mm)
#block(width: 100%, inset: 6pt, fill: palette.bg-subtle, radius: 3pt)[
  #set text(size: 7.5pt, fill: palette.text-muted)
  *B2 fixes:* stabil-loop on *4a* only; Verschlechterung → *4b*; *minimale Pausen*;
  bookkit palette cues; free card composition retained.
  Source free: `…-nanobanana-free.png` · tool: `scripts/graphics-refine-agy.sh`
]
