// A/B: free vision ‖ Typst recreate — IV-4 S6
// NOTE: free vision has claim invention on step 1 — do not accept-asset without B2
#import "/packages/bookkit/theme.typ": palette
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")
#import "lib/entscheidungs-flow.typ": entscheidungs-flow-heisses-gelenk

#set page(width: 200mm, height: auto, margin: 8mm, fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)

#align(center)[
  #text(weight: "bold")[IV-4 S6 · Free vision vs recreate]
  #linebreak()
  #text(size: 7.5pt, fill: palette.danger)[
    Free step-1 text has invented vitals — production = recreate only until B2
  ]
]
#v(3mm)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 5mm,
  [
    #text(size: 7.5pt, weight: "bold", fill: palette.danger)[vision-free-01 ⚠ claim drift]
    #v(2mm)
    #image("/domains/medical/assets/iv4-heisses-gelenk/vision-free-01.png", width: 100%)
  ],
  [
    #text(size: 7.5pt, weight: "bold", fill: palette.success.darken(10%))[recreate B1 claim-safe]
    #v(2mm)
    #entscheidungs-flow-heisses-gelenk(show-footer: false)
  ],
)
