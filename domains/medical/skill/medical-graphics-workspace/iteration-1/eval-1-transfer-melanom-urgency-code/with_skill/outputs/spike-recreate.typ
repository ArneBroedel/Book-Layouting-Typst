// Eval-1 · Melanom U-urgency+U-scope — Typst recreate (pattern transfer)
// Form Spec: kl-melanom-urgency · recipe: kl-urgency-scope-stack + exceptional-T1
// realize_path: recreate · graphic_mode: code · free vision: skipped (grammar/code track)

#import "/packages/bookkit/theme.typ": palette
#import "melanom-urgency.typ": us-melanom

#set page(width: 180mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)
#set par(justify: false, leading: 0.65em)

#let page-title(t, sub: none) = {
  text(size: 11pt, weight: "bold", fill: palette.primary-dark)[#t]
  if sub != none {
    v(2pt)
    text(size: 7.5pt, fill: palette.text-muted)[#sub]
  }
  v(2pt)
  line(length: 100%, stroke: 0.6pt + palette.primary)
  v(4pt)
}

// Cover
#align(center)[
  #v(6mm)
  #text(size: 8.5pt, fill: palette.text-muted)[
    medical-graphics · eval-1 · pattern transfer · code recreate
  ]
  #v(3mm)
  #text(size: 15pt, weight: "bold", fill: palette.primary-dark)[
    Melanom · U-urgency + U-scope
  ]
  #v(2mm)
  #text(size: 10pt, fill: palette.primary)[
    exceptional-T1 · T2/T3 gewichtet · SCOPE orthogonal
  ]
  #v(4mm)
  #block(width: 90%, inset: 7pt, fill: palette.bg-subtle, radius: 3pt)[
    #set text(size: 8pt)
    Form Spec: `kl-melanom-urgency` · Ontology v1.1\
    Pins: Welle-06 Melanom §5 copy-through · DE only · keine Form-Meta in der Figur
  ]
]

#v(8mm)
#page-title(
  "Dringlichkeit und Zuständigkeit",
  sub: [HP Physio / PT Direktzugang · 10–20 s Scan · gleichtags vs. zeitnah vs. treat+net],
)

#us-melanom()
