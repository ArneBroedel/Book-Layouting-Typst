// Wave G3 R1 — code recreate (ontology v1.1 · Form Specs P0)
// US-A Erysipel · US-B ACS · M-A Mimic
// realize_path: recreate · graphic_mode: code · free vision: skipped (ambition optional)

#import "/packages/bookkit/theme.typ": palette
#import "lib/us-time-scope.typ": us-a-erysipel, us-b-acs
#import "lib/m-a-mimic.typ": m-a-erysipel
#import "lib/discrimination.typ": (
  fa-a-erysipel,
  nm-a-erysipel,
  discrimination-erysipel,
  section-four-erysipel,
)

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

#let note(t) = {
  v(4pt)
  block(width: 100%, fill: palette.bg-subtle, inset: 5pt, radius: 2pt)[
    #set text(size: 7pt, fill: palette.text-muted)
    #t
  ]
}

// Cover
#align(center)[
  #v(8mm)
  #text(size: 8.5pt, fill: palette.text-muted)[Wave G3 · medical-graphics · code recreate]
  #v(3mm)
  #text(size: 16pt, weight: "bold", fill: palette.primary-dark)[KL P0 Units]
  #v(2mm)
  #text(size: 11pt, fill: palette.primary)[
    US-A · US-B · M-A · FA+NM · §4 stack
  ]
  #v(4mm)
  #block(width: 88%, inset: 7pt, fill: palette.bg-subtle, radius: 3pt)[
    #set text(size: 8pt)
    Form Specs P0+P1 · Ontology v1.1\
    Grundsatz: keine Form-Meta in der Figur\
    Claims: Erysipel + ACS Welle-06 copy-through
  ]
]

#pagebreak()

// Must-see checklist
#page-title("Must-see Check (Form Spec)")
#set text(size: 8.5pt)
#table(
  columns: (28mm, 1fr, 18mm),
  stroke: 0.4pt + palette.border-light,
  inset: 5pt,
  fill: (_, y) => if y == 0 { palette.bg-muted } else { white },
  table.header([*Spec*], [*Must-see*], [*hier*]),
  [US], [T1 ≠ T2 labels + weight], [ja],
  [US], [ACTION inside tier], [ja],
  [US], [Multi-trigger inside T1 (ACS)], [US-B],
  [US], [SCOPE frame not a TIME step], [ja],
  [US], [No Treat-ohne-Netz], [ja],
  [US], [T3 omitted when empty (Erysipel)], [US-A],
  [M], [Frame → danger direction], [ja],
  [M], [No Label/Darunter UI], [ja],
  [M], [Erysipel four maps], [ja],
  [FA], [Two poles content labels only], [ja],
  [NM], [Separate strip, not 2×2 cell], [ja],
  [all], [No form-meta in figure], [ja],
)

#pagebreak()
#page-title(
  "US-A · Erysipel",
  sub: "TIME stack T1–T2–T4 + SCOPE · T3 collapsed",
)
#us-a-erysipel()
#note[
  Spike-Notiz (nicht Teil der Grafik): SCOPE nur über Form getrennt — kein Meta-Text „keine Dringlichkeitsstufe“.
]

#pagebreak()
#page-title(
  "US-B · ACS multi-T1",
  sub: "Eine T1-Karte: Handlung einmal + Trigger-Cluster innen",
)
#us-b-acs()
#note[
  Spike-Notiz (nicht Teil der Grafik): Multi-Trigger nur innerhalb T1.
]

#pagebreak()
#page-title(
  "M-A · Mimic map Erysipel",
  sub: "FRAME-ERROR relation-map · keine Wireframe-Wörter",
)
#m-a-erysipel()
#note[
  Spike-Notiz (nicht Teil der Grafik): Mapping Frame→Gefahr ohne Wireframe-UI.
]

#pagebreak()
#page-title(
  "FA-A + NM · Erysipel",
  sub: "HYP-H zwei Pole · HYP-OTHER eigene Leiste — kein 2×2",
)
#discrimination-erysipel()
#note[
  Spike-Notiz: „Erhärtet“ nicht als 112-Rot; Must-not-miss lauter als „Passt eher nicht“.
]

#pagebreak()
#page-title(
  "§4 Composite · Erysipel",
  sub: "FA + NM + M-A wie im Lesefluss des Scripts",
)
#section-four-erysipel()
#note[
  Spike-Notiz: drei Relationen nacheinander, nicht ein gemeinsames Grid.
]

#pagebreak()
#page-title(
  "Band-Core-Stack · Erysipel (Auszug)",
  sub: "Discrimination → Action (US-A) — Scan-Pfad-Skizze",
)
#set text(size: 9pt, weight: "bold", fill: palette.primary-dark)
Erysipel
#v(1pt)
#set text(size: 8pt, weight: "regular", fill: palette.text-muted)
Scharf begrenztes, flammenförmiges Erythem — nicht „Muskelkater“
#v(5pt)
#discrimination-erysipel()
#v(6pt)
#us-a-erysipel()
#note[
  Spike-Notiz: volles kl-kurz hätte davor Enabling/Cues/Mechanismus; hier nur P0/P1-Kern.
]
