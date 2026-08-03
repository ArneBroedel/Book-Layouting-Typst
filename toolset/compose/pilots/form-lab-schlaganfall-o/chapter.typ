// Form Lab Pass O — Schlaganfall · open-asset pilot
// Ethics: no unlabeled "stroke face" from thin licenses — Bell = MIMIC only

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Schlaganfall — Form Lab Pass O", author: "form-lab/schlaganfall-2026-08-o")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Schlaganfall · Pass O (Open Asset)], [ethics-first · pilot])
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
#set text(size: 8.6pt)
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

#let base = "/domains/medical/assets/form-lab/schlaganfall-2026-08-o/"

#let credit(t) = {
  set text(size: 5.5pt, fill: palette.text-muted, font: fonts.sans)
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
  #text(weight: "bold", fill: palette.danger)[Gefahr: ]
  #body
]

#let soft(title, body, bar: palette.primary, fill: rgb("#f0fdfa")) = block(
  width: 100%,
  inset: (left: 6pt, rest: 5pt),
  radius: 2pt,
  fill: fill,
  stroke: (left: 2.6pt + bar, rest: 0.35pt + bar.lighten(45%)),
)[
  #text(size: 7.5pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
  #v(1.5pt)
  #set text(size: 7.5pt)
  #body
]

#let fast-tile(letter, title, body) = block(
  width: 100%,
  inset: 5pt,
  radius: 2pt,
  fill: white,
  stroke: 0.5pt + palette.primary.lighten(30%),
)[
  #align(center)[
    #text(size: 16pt, weight: "bold", fill: palette.danger, font: fonts.sans)[#letter]
  ]
  #align(center)[#text(size: 7.4pt, weight: "bold", font: fonts.sans)[#title]]
  #v(2pt)
  #set text(size: 7pt)
  #body
]

= Schlaganfall — Open-Asset-Entwurf

#danger[
  Verdacht → *112 / Stroke-Unit-Pfad*. Kein MSK-Abwarten, keine HWS-Manipulation / Provokationstests bei Verdacht.
  TIA (auch remittiert) = Notfall.
]

== FAST (Typst + Icons — kein fragwürdiges Stroke-Gesichtsfoto)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 5pt,
  fast-tile[F][Face][
    #align(center)[#fa-icon("face-grimace", size: 14pt, fill: palette.primary-dark)]
    #v(2pt)
    Gesichtsasymmetrie / hängender Mundwinkel — *prüfen*, nicht bagatellisieren.
  ],
  fast-tile[A][Arm][
    #align(center)[#fa-icon("hand", size: 14pt, fill: palette.primary-dark)]
    #v(2pt)
    Armabsinken / einseitige Schwäche. #text(fill: palette.text-muted)[(open-gap: kein Grün-Foto Armdrift)]
  ],
  fast-tile[S][Speech][
    #align(center)[#fa-icon("comment", size: 14pt, fill: palette.primary-dark)]
    #v(2pt)
    Sprach- / Verständnisstörung, undeutliches Sprechen.
  ],
  fast-tile[T][Time][
    #align(center)[#fa-icon("clock", size: 14pt, fill: palette.danger)]
    #v(2pt)
    Zeit = Hirn. *Last seen normal* erfragen; Lysefenster-Konzept.
  ],
)

#v(4pt)
#soft[BE-FAST Ergänzung][
  *B* Balance · *E* Eyes — plötzliche Gleichgewichts- / Sehstörung erhöhen Verdacht; trotzdem 112-Pfad.
]

== Mimic: periphere Fazialis (*nicht* Stroke-Beweis)

// One winner only (omit-is-win). Other Bell assets stay in MANIFEST as candidates, not on page.
#grid(
  columns: (auto, 1fr),
  gutter: 10pt,
  block(inset: 2pt, radius: 2pt, stroke: 0.45pt + palette.warning, width: 48mm)[
    #image(base + "bells-palsy-smile-cc0.jpg", width: 100%)
    #v(1pt)
    #set text(size: 6.4pt, font: fonts.sans)
    #align(center)[*MIMIC* · periphere Fazialis (Lehrbeispiel)]
    #credit[Bell's Palsy smiling · CC0 · Wikimedia]
  ],
  soft[Diskrimination (Pins)][
    - Periphere Fazialis (Bell) *kann* Mimik betreffen — ist *nicht* der Stroke-Schnellbeweis.
    - Weitere Mimics (ohne Extra-Fotos): HWS-Blockade-Narrativ, Migräne-Aura, Schulter-Arm ohne ZNS-Zeichen.
    - Bei Unsicherheit / plötzlichen Halbseitenzeichen: *immer* Stroke-Pfad, nicht manipulieren.
    - #text(fill: palette.text-muted)[Open-gap: akute Stroke-Gesichtsserie unter Grün+Ethik nicht akzeptiert. Redundante Bell-Kandidaten nicht eingebettet (siehe MANIFEST).]
  ],
)

== TIME & Boundary

#grid(
  columns: (1fr, 1fr),
  gutter: 6pt,
  soft[Zeit][
    Last seen normal · Lysefenster-Konzept · TIA remittiert trotzdem Notfall.
  ],
  soft[Boundary][
    Keine HWS-Manipulation, keine Provokationstests bei Stroke-Verdacht.
  ],
)

== Mini-Fall

Flüchtige Hand-/Sprachstörung + Wunsch nach „HWS einrenken“ → *112*, nicht manipulieren.

#v(4pt)
#block(width: 100%, inset: 5pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
  #set text(size: 6.3pt, font: fonts.sans)
  Credits: `…/schlaganfall-2026-08-o/CREDITS.md` · Pass O · ethics-first.
]
