// Phase B1+ — landscape dashboard mode (free-vision OS inspired)
// layout: "landscape" · claim-safe · bookkit tokens
// EXCEPTION_NO_BRIEF: medical-graphics landscape experiment

#import "/packages/bookkit/theme.typ": palette
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")
#import "lib/pflichtsequenz.typ": pflichtsequenz-risc

#set page(width: 240mm, height: auto, margin: (x: 8mm, y: 8mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)

#align(center)[
  #text(size: 8.5pt, fill: palette.text-muted)[
    Landscape-Spike B1+ · Free-Vision Dashboard → Typst · II-1 S8
  ]
]

#v(3mm)

#pflichtsequenz-risc(layout: "landscape")

#v(4mm)
#block(width: 100%, inset: 6pt, fill: palette.bg-subtle, radius: 3pt)[
  #set text(size: 7.5pt, fill: palette.text-muted)
  *B1+:* `layout: "landscape"` mirrors free-vision horizontal 5-tile OS (R→S→I→C→SN).
  Default production remains `layout: "vertical"`. Binary rule + asymmetry retained.
  Free: `domains/medical/assets/ii1-drei-achsen-drisc/vision-free-01.png`
]
