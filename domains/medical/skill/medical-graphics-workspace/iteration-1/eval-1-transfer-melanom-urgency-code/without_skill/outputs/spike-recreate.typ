// Minimal spike — Melanom urgency/scope recreate (eval-1 without_skill)
// Imports us-melanom() from local module; compile from repo root.

#import "/packages/bookkit/theme.typ": palette
#import "melanom-urgency.typ": us-melanom

#set page(width: 170mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)
#set par(justify: false, leading: 0.65em)

#align(center)[
  #text(size: 8pt, fill: palette.text-muted)[
    Transfer · U-urgency + U-scope · exceptional T1
  ]
  #v(2mm)
  #text(size: 13pt, weight: "bold", fill: palette.primary-dark)[
    Melanom — Handeln und Dringlichkeit
  ]
  #v(1.5mm)
  #text(size: 8.5pt, fill: palette.primary)[
    Screening-Stil · T2/T3 primär · SCOPE orthogonal
  ]
]

#v(5mm)
#line(length: 100%, stroke: 0.55pt + palette.primary)
#v(4mm)

#us-melanom()
