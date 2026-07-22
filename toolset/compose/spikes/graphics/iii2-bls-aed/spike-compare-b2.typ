// Compare free vision vs refined vs Typst recreate
#import "/packages/bookkit/theme.typ": palette
#import "lib/primar-algorithmus.typ": primar-algorithmus-bewusstlosigkeit

#set page(width: 240mm, height: auto, margin: 7mm, fill: white)
#set text(font: "Libertinus Serif", size: 7.5pt, fill: palette.text-body)

#align(center)[
  #text(size: 10pt, weight: "bold", fill: palette.primary-dark)[
    S4 · Free → Refine (B2) → Recreate (B1)
  ]
]
#v(2mm)

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  [
    #align(center)[*A Free*]
    #image("/domains/medical/assets/iii2-bls-aed/primar-algorithmus-raster-nanobanana-free.png", width: 100%, alt: "Free vision")
  ],
  [
    #align(center)[*B Refined*]
    #image("/domains/medical/assets/iii2-bls-aed/primar-algorithmus-raster-nanobanana-refined.png", width: 100%, alt: "Refined vision")
  ],
  [
    #align(center)[*C Typst recreate*]
    #scale(x: 88%, y: 88%, reflow: true)[
      #primar-algorithmus-bewusstlosigkeit(show-footer: false)
    ]
  ],
)
