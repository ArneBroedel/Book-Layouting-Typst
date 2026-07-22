// Vertical vs landscape layout modes + free vision
#import "/packages/bookkit/theme.typ": palette
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")
#import "lib/pflichtsequenz.typ": pflichtsequenz-risc

#set page(width: 210mm, height: auto, margin: 8mm, fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)

#align(center)[
  #text(weight: "bold")[II-1 S8 · Layout modes]
  #linebreak()
  #text(size: 7.5pt, fill: palette.text-muted)[
    Free horizontal · Typst landscape · Typst vertical (production default)
  ]
]

#v(3mm)
#text(size: 7.5pt, weight: "bold", fill: palette.text-muted)[1 · Free vision (Phase A)]
#v(2mm)
#image("/domains/medical/assets/ii1-drei-achsen-drisc/vision-free-01.png", width: 100%)

#pagebreak()
#text(size: 7.5pt, weight: "bold", fill: palette.text-muted)[2 · Typst landscape (B1+)]
#v(2mm)
#pflichtsequenz-risc(layout: "landscape", show-footer: false)

#v(5mm)
#text(size: 7.5pt, weight: "bold", fill: palette.text-muted)[3 · Typst vertical (B1 production default)]
#v(2mm)
#pflichtsequenz-risc(layout: "vertical", show-footer: false)
