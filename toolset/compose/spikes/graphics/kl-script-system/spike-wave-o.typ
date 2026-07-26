// Wave O — script-core units + full Erysipel stack
// Creative push: BP strip, onset bar, CeTZ mechanism, case stage
// P0/P1 accepted modules reused

#import "/packages/bookkit/theme.typ": palette
#import "lib/script-core.typ": (
  bp-erysipel,
  enabling-erysipel,
  mechanism-erysipel,
  cues-erysipel,
  transfer-erysipel,
)
#import "lib/discrimination.typ": section-four-erysipel
#import "lib/us-time-scope.typ": us-a-erysipel

#set page(width: 180mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)
#set par(justify: false, leading: 0.65em)

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

// ── Cover ─────────────────────────────────────────────────────
#align(center)[
  #v(10mm)
  #text(size: 8.5pt, fill: palette.text-muted)[Wave O · script-core + full stack]
  #v(3mm)
  #text(size: 17pt, weight: "bold", fill: palette.primary-dark)[Erysipel — KL-Kern]
  #v(2mm)
  #text(size: 10pt, fill: palette.primary)[
    Big Picture · Enabling · Mechanismus · Cues · §4 · Action · Transfer
  ]
  #v(5mm)
  #block(width: 90%, inset: 8pt, fill: palette.bg-subtle, radius: 3pt)[
    #set text(size: 8pt)
    Nach P0/P1 (sauber, bewusst zurückhaltend): hier mehr *visuelle* Ambition —
    Kausalkette (CeTZ), Drei-Takt-BP, Onset-Balken, Fall-Bühne.\
    Unverändert: Claims copy-through · keine Form-Meta in der Figur.
  ]
]

#pagebreak()
#h("Big Picture", sub: "Was · Gefahr · Richtung")
#bp-erysipel()

#pagebreak()
#h("Wann ist daran zu denken?", sub: "Risiko · Kontext · Tempo")
#enabling-erysipel()

#pagebreak()
#h("Entstehung und Mechanismus", sub: "Kausalkette + Eskalation")
#mechanism-erysipel()

#pagebreak()
#h("Klinische Hinweise", sub: "Vier Kanäle · Untersuchung betont")
#cues-erysipel()

#pagebreak()
#h("Verdacht, Abgrenzung, Trügerisches")
#section-four-erysipel()

#pagebreak()
#h("Handeln und Dringlichkeit")
#us-a-erysipel()

#pagebreak()
#h("Fall zur Selbstprüfung")
#transfer-erysipel()

#pagebreak()
// Full continuous stack (dense) — how a short chapter might feel
#h("Durchlauf · kl-kurz-Dichte", sub: "Eine Seite-Logik, hier über Seiten gebrochen zum Lesen")
#set text(size: 12pt, weight: "bold", fill: palette.primary-dark)
Erysipel
#v(1pt)
#set text(size: 8.5pt, weight: "regular", fill: palette.text-muted)
Scharf begrenztes, flammenförmiges Erythem — Direktzugang
#v(5pt)
#bp-erysipel()
#v(6pt)
#text(size: 9pt, weight: "bold", fill: palette.primary-dark)[Wann denken?]
#v(3pt)
#enabling-erysipel()
#v(6pt)
#text(size: 9pt, weight: "bold", fill: palette.primary-dark)[Mechanismus]
#v(3pt)
#mechanism-erysipel()
#v(6pt)
#text(size: 9pt, weight: "bold", fill: palette.primary-dark)[Klinische Hinweise]
#v(3pt)
#cues-erysipel()

#pagebreak()
#text(size: 9pt, weight: "bold", fill: palette.primary-dark)[Verdacht & Mimikry]
#v(3pt)
#section-four-erysipel()
#v(6pt)
#text(size: 9pt, weight: "bold", fill: palette.primary-dark)[Handeln]
#v(3pt)
#us-a-erysipel()
#v(6pt)
#transfer-erysipel()
