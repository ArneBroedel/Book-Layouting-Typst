// A/B: free vision ‖ Typst recreate — III-5 S4
#import "/packages/bookkit/theme.typ": palette
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")
#import "lib/sofortmassnahmen.typ": sofortmassnahmen-ces

#set page(width: 200mm, height: auto, margin: 8mm, fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)

#align(center)[
  #text(weight: "bold")[III-5 S4 · Free vision vs recreate]
  #linebreak()
  #text(size: 7.5pt, fill: palette.text-muted)[
    Free: English stage chrome drift · Recreate: claim-safe German production lean
  ]
]
#v(3mm)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 5mm,
  [
    #text(size: 7.5pt, weight: "bold", fill: palette.text-muted)[vision-free-01]
    #v(2mm)
    #image("/domains/medical/assets/iii5-cauda-notfallkarte/vision-free-01.png", width: 100%)
  ],
  [
    #text(size: 7.5pt, weight: "bold", fill: palette.text-muted)[recreate B1]
    #v(2mm)
    #sofortmassnahmen-ces(show-footer: false)
  ],
)
