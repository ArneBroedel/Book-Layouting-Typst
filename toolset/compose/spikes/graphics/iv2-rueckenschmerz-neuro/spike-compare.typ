// Phase B1 — free vision vs Typst recreate (IV-2 S4)
// EXCEPTION_NO_BRIEF: medical-graphics A/B preview

#import "/packages/bookkit/theme.typ": palette
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")
#import "lib/entscheidungs-flow.typ": entscheidungs-flow-rueckenschmerz

#set page(width: 200mm, height: auto, margin: (x: 8mm, y: 8mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)

#align(center)[
  #text(size: 9pt, weight: "bold")[IV-2 S4 · Free vision vs recreate]
  #linebreak()
  #text(size: 7.5pt, fill: palette.text-muted)[
    Links: Nano Banana free · Rechts: Typst B1 (FA6 + bookkit)
  ]
]

#v(3mm)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 6mm,
  [
    #block(
      width: 100%,
      inset: 4pt,
      radius: 3pt,
      fill: palette.bg-subtle,
    )[
      #set text(size: 7.5pt, weight: "bold", fill: palette.text-muted)
      vision-free-01 (Phase A)
    ]
    #v(2mm)
    #image(
      "/domains/medical/assets/iv2-rueckenschmerz-neuro/vision-free-01.png",
      width: 100%,
    )
  ],
  [
    #block(
      width: 100%,
      inset: 4pt,
      radius: 3pt,
      fill: palette.bg-subtle,
    )[
      #set text(size: 7.5pt, weight: "bold", fill: palette.text-muted)
      recreate code (Phase B1)
    ]
    #v(2mm)
    #entscheidungs-flow-rueckenschmerz(show-footer: false)
  ],
)
