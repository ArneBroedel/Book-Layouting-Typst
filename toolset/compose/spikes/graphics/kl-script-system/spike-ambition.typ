// Ambition track full pack: free vision + refine + code recreates
// M-B · US-D · CES · MSCC

#import "/packages/bookkit/theme.typ": palette
#import "lib/m-a-mimic.typ": m-a-erysipel
#import "lib/m-b-peel.typ": m-b-erysipel
#import "lib/us-time-scope.typ": us-a-erysipel
#import "lib/us-d-dashboard.typ": us-d-erysipel

#set page(width: 190mm, height: auto, margin: 10mm, fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)

#let h(t, sub: none) = {
  text(size: 12pt, weight: "bold", fill: palette.primary-dark)[#t]
  if sub != none {
    v(1.5pt)
    text(size: 7.5pt, fill: palette.text-muted)[#sub]
  }
  v(2pt)
  line(length: 100%, stroke: 0.55pt + palette.primary)
  v(4pt)
}

#let cap(t) = {
  v(3pt)
  text(size: 7pt, fill: palette.text-muted)[#t]
}

#align(center)[
  #v(8mm)
  #text(size: 9pt, fill: palette.text-muted)[Ambition complete pack · Accept exploration]
  #v(3mm)
  #text(size: 16pt, weight: "bold", fill: palette.primary-dark)[
    Free Vision · Refine · Recreate
  ]
  #v(2mm)
  #text(size: 10pt, fill: palette.primary)[
    M-B · US-D · CES Saddle · MSCC Spine
  ]
  #v(4mm)
  #block(width: 90%, inset: 7pt, fill: palette.bg-subtle, radius: 3pt)[
    #set text(size: 8pt)
    Winners: see `kl-ambition.accept.md`\
    US-D refined DE · M-B Typst peel · CES/MSCC assets PASS
  ]
]

#pagebreak()
#h("M-B Free Vision (peel)", sub: "Audit PASS · asset chrome")
#image("/domains/medical/assets/kl-m-b-mimic/vision-free-01.png", width: 100%)

#pagebreak()
#h("M-B Typst recreate", sub: "claim-safe peel · maintainable")
#m-b-erysipel()

#pagebreak()
#h("M-A Typst baseline", sub: "simple mapping rows")
#m-a-erysipel()

#pagebreak()
#h("US-D Free Vision (raw)", sub: "had EN Action/Trigger — DRIFT")
#image("/domains/medical/assets/kl-us-d-urgency/vision-free-01.png", width: 100%)

#pagebreak()
#h("US-D Refined (DE)", sub: "Action→Handlung · Trigger-meta removed")
#image("/domains/medical/assets/kl-us-d-urgency/vision-refined-01.png", width: 100%)

#pagebreak()
#h("US-D Typst dashboard", sub: "Accept winner code · Erysipel pins")
#us-d-erysipel()

#pagebreak()
#h("US-A Typst baseline", sub: "stack + SCOPE frame")
#us-a-erysipel()

#pagebreak()
#h("CES Saddle Free Vision", sub: "Audit PASS · asset winner")
#align(center)[
  #image("/domains/medical/assets/kl-ces-saddle/vision-free-01.png", width: 70%)
]

#pagebreak()
#h("MSCC Spine Free Vision", sub: "Audit PASS · asset winner")
#align(center)[
  #image("/domains/medical/assets/kl-mscc-spine/vision-free-01.png", width: 70%)
]
