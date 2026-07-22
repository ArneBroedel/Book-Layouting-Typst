// Template — Phase B1 recreate spike
// EXCEPTION_NO_BRIEF: medical-graphics scaffold
// Copy to: toolset/compose/spikes/graphics/<slug>/spike-recreate.typ

#import "/packages/bookkit/theme.typ": palette
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")
// #import "lib/<module>.typ": <export>

#set page(width: 170mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)

#align(center)[
  #text(size: 8.5pt, fill: palette.text-muted)[
    Recreate-Spike B1 · Free-Vision → Typst · claim-safe · bookkit tokens
  ]
]

#v(3mm)

// #<export>()

#v(4mm)
#block(width: 100%, inset: 6pt, fill: palette.bg-subtle, radius: 3pt)[
  #set text(size: 7.5pt, fill: palette.text-muted)
  *Phase B1:* Form Spec → free vision → Typst recreate. Module under `lib/`.
]
