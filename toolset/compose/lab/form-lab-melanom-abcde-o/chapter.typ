// Form Lab Pass O — Melanom ABCDE · open-asset pilot

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Melanom ABCDE — Form Lab Pass O", author: "form-lab/melanom-abcde-2026-08-o")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Melanom ABCDE · Pass O (Open Asset)], [Commons · pilot])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [Open-asset pilot · not production Accept], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.8pt)
#set par(leading: 0.58em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 13.5pt, weight: "bold", fill: palette.primary-dark)
  block(below: 3.5pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10pt, weight: "bold", fill: palette.primary)
  block(below: 3.5pt, above: 7pt)[
    #it.body
    #v(1.2pt)
    #line(length: 18mm, stroke: 1pt + palette.primary)
  ]
}

#let base = "/domains/medical/assets/form-lab/melanom-abcde-2026-08-o/"

#let credit(t) = {
  set text(size: 5.6pt, fill: palette.text-muted, font: fonts.sans)
  block(above: 1pt)[#t]
}

#let danger(body) = block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.danger)[Rolle im Direktzugang: ]
  #body
]

#let soft(title, body, bar: palette.primary, fill: rgb("#f0fdfa")) = block(
  width: 100%,
  inset: (left: 6pt, rest: 5pt),
  radius: 2pt,
  fill: fill,
  stroke: (left: 2.6pt + bar, rest: 0.35pt + bar.lighten(45%)),
)[
  #text(size: 7.6pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
  #v(1.5pt)
  #set text(size: 7.6pt)
  #body
]

#let fig(path, w: 42mm, cap, cr) = block(
  width: w + 3mm,
  inset: 2pt,
  radius: 2pt,
  stroke: 0.4pt + palette.border,
)[
  #image(path, width: w)
  #v(1pt)
  #set text(size: 6.2pt, font: fonts.sans)
  #align(center)[#cap]
  #credit(cr)
]

#let letter(l, title, body) = block(
  width: 100%,
  inset: 4pt,
  radius: 2pt,
  fill: white,
  stroke: 0.45pt + palette.border,
)[
  #text(size: 11pt, weight: "bold", fill: palette.primary-dark, font: fonts.sans)[#l]
  #text(size: 7.5pt, weight: "bold", font: fonts.sans)[ · #title]
  #v(1pt)
  #set text(size: 7pt)
  #body
]

= Melanom / ABCDE — Open-Asset-Entwurf

#danger[
  Strukturierter Blick + *Zuweisung* — keine Exzision, keine Diagnosesicherung im Direktzugang.
  112 selten; bei suspekter Läsion: *gleichtags/zeitnah* dermatologische Abklärung.
]

== Klinische Bilder (Open Archive)

#grid(
  columns: (1fr, 1fr),
  gutter: 8pt,
  fig(
    base + "melanoma-ssm.jpg",
    w: 72mm,
    [Klinische pigmentierte Läsion (Lehrbeispiel)],
    [Unknown · PD · Wikimedia],
  ),
  fig(
    base + "melanoma-blausen-cc-by.png",
    w: 68mm,
    [Illustration Melanom (didaktisch)],
    [Blausen Medical Communications, Inc. · CC BY 3.0 · Wikimedia],
  ),
)

#v(3pt)
#soft[Ugly Duckling — open-gap][
  Kein lizenziertes Foto-*Paar* „eins tanzt aus der Reihe“ im ersten Scan. Lernjob bleibt textlich: Vergleich mit dem individuellen Naevus-Muster der Person.
]

== ABCDE — Typst-Marken + Foto als Träger

#grid(
  columns: (1fr, 1fr),
  gutter: 5pt,
  letter[A][Asymmetry][Eine Hälfte spiegelt die andere nicht.],
  letter[B][Border][Unregelmäßige, ausgefranste Begrenzung.],
  letter[C][Color][Mehrere Farbtöne / ungleichmäßige Pigmentierung.],
  letter[D][Diameter / Dynamic][Oft > 6 mm; *Veränderung* zählt mit.],
  grid.cell(colspan: 2, letter[E][Evolving / Elevation][Wachstum, Form-, Farb-, Oberflächenänderung — Anlass zur Zuweisung.]),
)

== Mimics & Boundary

#grid(
  columns: (1.1fr, 1fr),
  gutter: 8pt,
  soft[Mimics (Pins)][
    Alter Fleck · seborrhoische Keratose · subunguales Hämatom.
    *Open-gap* wenn Zusatzfotos fehlen — siehe MANIFEST für nachgeladene Keratose-Datei.
  ],
  soft[Boundary][
    Keine destruktiven Maßnahmen, kein „Abkratzen“, keine Eigen-Exzision.
    #fa-icon("user-doctor", fill: palette.primary) → Fachzuweisung.
  ],
)

== Mini-Fall

Rückenläsion beim Entkleiden entdeckt → dokumentieren, *zuweisen*, nicht bagatellisieren.

#v(5pt)
#block(width: 100%, inset: 5pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
  #set text(size: 6.4pt, font: fonts.sans)
  Credits: `domains/medical/assets/form-lab/melanom-abcde-2026-08-o/CREDITS.md` · Pass O pilot.
]
