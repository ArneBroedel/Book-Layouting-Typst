// Spike: kl-crps-rerun-2026-07-30 — hierarchy-faithful recreate
// Free-vision track units: mimic peel · regional cues
// Grammar: BP · enabling · mechanism · cues · FA/NM · US · transfer · DDx

#import "/packages/bookkit/theme.typ": palette
#import "lib/crps-rerun.typ": *

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

#align(center)[
  #v(6mm)
  #text(size: 8pt, fill: palette.text-muted)[
    Exploration · `kl-crps-rerun-2026-07-30` · free-vision-ambition · no banned pilot import
  ]
  #v(3mm)
  #text(size: 15pt, weight: "bold", fill: palette.primary-dark)[
    CRPS (Morbus Sudeck) — Graphics Spike
  ]
  #v(2mm)
  #text(size: 9.5pt, fill: palette.primary)[
    Urgency stack · Mimic peel · Regional cues · Discrimination
  ]
  #v(4mm)
]

#pagebreak()
#h("Big Picture", sub: "Was · Gefahr Fehllabel · Richtung")
#bp-crps-rerun()

#pagebreak()
#h("Wann denken?", sub: "Enabling triptych + Tempo Tage–Wochen")
#enabling-crps-rerun()

#pagebreak()
#h("Entstehung und Mechanismus", sub: "Kette + Chronifizierung + DDx first")
#mechanism-crps-rerun()

#pagebreak()
#h("Klinische Hinweise", sub: "4-Kanal-Matrix")
#cues-crps-rerun()

#pagebreak()
#h("Regional cues (ambition code)", sub: "abstract distal field + channel weight · free-vision proximity")
#regional-cues-crps-rerun()

#pagebreak()
#h("Verdacht & Warnsignale", sub: "FA two-col + NM strip")
#discrimination-crps-rerun()

#pagebreak()
#h("Trügerische Erklärungen — Map", sub: "frame → danger")
#mimic-crps-rerun()

#pagebreak()
#h("Trügerische Erklärungen — Peel", sub: "hierarchy-faithful recreate after free vision")
#mimic-peel-crps-rerun()

#pagebreak()
#h("Handeln und Dringlichkeit", sub: "T1 multi-trigger · T2 · T3 CRPS · T4 + SCOPE")
#us-crps-rerun()

#pagebreak()
#h("Fall zur Selbstprüfung", sub: "open questions")
#transfer-crps-rerun()

#pagebreak()
#h("DDx-Minimal", sub: "quiet delta")
#ddx-crps-rerun()
