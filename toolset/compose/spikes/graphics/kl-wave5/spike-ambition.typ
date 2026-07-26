// Wave-5 ambition units: free vision + code fallbacks
// Stroke FAST · Compartment spatial

#import "/packages/bookkit/theme.typ": palette
#import "lib/stroke.typ": fast-stroke-code, us-stroke
#import "lib/compartment.typ": criteria-compartment-code, us-compartment

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
  #text(size: 8pt, fill: palette.text-muted)[Wave-5 · Ambition · exploration]
  #v(2mm)
  #text(size: 15pt, weight: "bold", fill: palette.primary-dark)[FAST + Kompartment Spatial]
  #v(2mm)
  #text(size: 8pt)[Free vision primary · code fallback · claim audit labels+icons]
]

#pagebreak()
#h("Schlaganfall · FAST free vision refined", sub: "vision-refined-01 · labels+icons audit")
#align(center)[
  #image("/domains/medical/assets/kl-stroke-fast/vision-refined-01.png", width: 100%)
]

#pagebreak()
#h("Schlaganfall · FAST code fallback", sub: "fast-stroke-code()")
#fast-stroke-code()

#pagebreak()
#h("Schlaganfall · urgency grammar", sub: "nested multi-T1")
#us-stroke()

#pagebreak()
#h("Kompartment · spatial free vision refined", sub: "vision-refined-01 · DE chrome")
#align(center)[
  #image("/domains/medical/assets/kl-compartment-spatial/vision-refined-01.png", width: 100%)
]

#pagebreak()
#h("Kompartment · criteria code fallback")
#criteria-compartment-code()

#pagebreak()
#h("Kompartment · urgency grammar")
#us-compartment()
