// Compare free vision vs refined vs Typst recreate (IV-2 S4)
#import "/packages/bookkit/theme.typ": palette
#import "lib/entscheidungs-flow.typ": entscheidungs-flow-rueckenschmerz

#set page(width: 240mm, height: auto, margin: 7mm, fill: white)
#set text(font: "Libertinus Serif", size: 7.5pt, fill: palette.text-body)

#align(center)[
  #text(size: 10pt, weight: "bold", fill: palette.primary-dark)[
    IV-2 S4 · Free → Refine (B2) → Recreate (B1)
  ]
]
#v(2mm)

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  [
    #align(center)[*A Free*]
    #image(
      "/domains/medical/assets/iv2-rueckenschmerz-neuro/vision-free-01.png",
      width: 100%,
      alt: "Free vision Entscheidungs-Flow",
    )
  ],
  [
    #align(center)[*B Refined*]
    #image(
      "/domains/medical/assets/iv2-rueckenschmerz-neuro/vision-refined-01.png",
      width: 100%,
      alt: "Refined vision Entscheidungs-Flow",
    )
  ],
  [
    #align(center)[*C Typst recreate*]
    #scale(x: 88%, y: 88%, reflow: true)[
      #entscheidungs-flow-rueckenschmerz(show-footer: false)
    ]
  ],
)
