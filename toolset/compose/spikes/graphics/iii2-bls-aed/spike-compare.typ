// Side-by-side: free vision PNG vs Typst recreate (visual compare page)
// EXCEPTION_NO_BRIEF: medical-graphics

#import "/packages/bookkit/theme.typ": palette
#import "lib/primar-algorithmus.typ": primar-algorithmus-bewusstlosigkeit

#set page(width: 200mm, height: auto, margin: 8mm, fill: white)
#set text(font: "Libertinus Serif", size: 8pt, fill: palette.text-body)

#align(center)[
  #text(size: 10pt, weight: "bold", fill: palette.primary-dark)[
    S4 Vergleich: Free Vision (Nano Banana) vs. Typst-Recreate (B1)
  ]
]

#v(3mm)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 8pt,
  [
    #align(center)[#text(weight: "bold", size: 8pt)[A · Free vision (AI)]]
    #v(2mm)
    #image(
      "/domains/medical/assets/iii2-bls-aed/primar-algorithmus-raster-nanobanana-free.png",
      width: 100%,
      alt: "Nano Banana free vision Primär-Algorithmus",
    )
  ],
  [
    #align(center)[#text(weight: "bold", size: 8pt)[B · Typst recreate]]
    #v(2mm)
    #scale(x: 92%, y: 92%, reflow: true)[
      #primar-algorithmus-bewusstlosigkeit(show-footer: true)
    ]
  ],
)

#v(4mm)
#block(width: 100%, inset: 6pt, fill: palette.bg-subtle, radius: 3pt)[
  #set text(size: 7.5pt, fill: palette.text-muted)
  *Recreate goals:* same didactic jobs (branch, 4a loop+escalate, CPR strand only);
  claim-safe Typst text; bookkit tokens; no structure-clone of SVG lanes.
]
