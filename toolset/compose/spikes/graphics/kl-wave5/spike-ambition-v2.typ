// Wave-5 ambition CORRECTION after Human review
// FAST: code densified (free Typst-dashboard demoted)
// Compartment: CeTZ anatomical cross-section (hexagon free FAIL)

#import "/packages/bookkit/theme.typ": palette
#import "lib/stroke.typ": fast-stroke-code
#import "lib/compartment.typ": spatial-compartment, criteria-compartment-code

#set page(width: 180mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)

#let h(t, sub: none) = {
  text(size: 11pt, weight: "bold", fill: palette.primary-dark)[#t]
  if sub != none {
    v(2pt)
    text(size: 7.5pt, fill: palette.text-muted)[#sub]
  }
  v(2pt)
  line(length: 100%, stroke: 0.55pt + palette.primary)
  v(4pt)
}

#align(center)[
  #text(size: 8pt, fill: palette.text-muted)[Wave-5 · Ambition v2 · post-mortem correction]
  #v(2mm)
  #text(size: 14pt, weight: "bold", fill: palette.primary-dark)[FAST Code + Kompartment CeTZ]
  #v(2mm)
  #block(width: 95%, inset: 7pt, fill: rgb("#fef2f2"), radius: 2pt)[
    #set text(size: 7.5pt)
    Free „vision“ PNGs were *Typst fallback after API 429* — not Nano Banana anatomy.
    Hexagon-Querschnitt *FAIL*. FAST free densitäts-schwach → *Code winner*.
    See `briefs/_wave5/ambition-raster-postmortem.md`.
  ]
]

#pagebreak()
#h("FAST · densified code (Accept winner)", sub: "fast-stroke-code() · no empty icon wells")
#fast-stroke-code()

#pagebreak()
#h("Kompartment · CeTZ Querschnitt (corrected)", sub: "spatial-compartment-cetz · four compartments · anterior highlight")
#spatial-compartment()

#pagebreak()
#h("Kompartment · criteria stack (pin-safe companion)")
#criteria-compartment-code()
