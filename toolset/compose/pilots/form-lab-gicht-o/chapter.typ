// Form Lab Pass O — Gicht · open-asset pilot
// lab: gicht-2026-08-o · visuals from Commons/Health Icons; pins from wave-c

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Gicht — Form Lab Pass O (Open Asset)", author: "form-lab/gicht-2026-08-o")
#set page(
  paper: "a4",
  margin: (inside: 16mm, outside: 14mm, top: 12mm, bottom: 14mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Gicht · Form Lab Pass O (Open Asset)], [pilot · Commons / CC])
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
#set text(size: 9pt)
#set par(leading: 0.62em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 14pt, weight: "bold", fill: palette.primary-dark)
  block(below: 4pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10.5pt, weight: "bold", fill: palette.primary)
  block(below: 4pt, above: 8pt)[
    #it.body
    #v(1.5pt)
    #line(length: 20mm, stroke: 1pt + palette.primary)
  ]
}

#let base = "/domains/medical/assets/form-lab/gicht-2026-08-o/"

#let credit(t) = {
  set text(size: 5.8pt, fill: palette.text-muted, font: fonts.sans)
  block(width: 100%, above: 1pt)[#t]
}

#let danger(body) = block(
  width: 100%,
  inset: 7pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
)[
  #set text(size: 8.5pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  #body
]

#let soft(title, body) = block(
  width: 100%,
  inset: (left: 6pt, rest: 5pt),
  radius: 2pt,
  fill: rgb("#f0fdfa"),
  stroke: (left: 2.8pt + palette.primary, rest: 0.35pt + palette.primary.lighten(45%)),
)[
  #text(size: 8pt, weight: "bold", fill: palette.primary, font: fonts.sans)[#title]
  #v(2pt)
  #set text(size: 8pt)
  #body
]

#let fig(path, w: 48mm, cap, cr) = block(
  width: w + 4mm,
  inset: 2pt,
  radius: 2pt,
  stroke: 0.4pt + palette.border,
  fill: white,
)[
  #image(path, width: w)
  #v(1.5pt)
  #set text(size: 6.5pt, font: fonts.sans)
  #align(center)[#cap]
  #credit(cr)
]

= Gicht — Open-Asset-Entwurf

#danger[
  Podagra kann eine *septische Arthritis* maskieren. Kristallnachweis entwarnt *nicht* vor Infekt —
  bei Fieber, starker Allgemeinsymptomatik oder Unsicherheit: Notaufnahme / 112, nicht mobilisieren.
]

== Erkennungscluster (Blickdiagnose)

#grid(
  columns: (1fr, 1fr),
  gutter: 8pt,
  fig(
    base + "podagra-cc-by.jpg",
    w: 72mm,
    [Podagra — MTP-I gerötet/geschwollen],
    [Gonzosft · CC BY 3.0 DE · Wikimedia],
  ),
  fig(
    base + "chronic-gout-cc-by.jpg",
    w: 58mm,
    [Chronische Gichtveränderung (Lehrbeispiel)],
    [NickGorton · CC BY 2.5 · Wikimedia],
  ),
)

#v(4pt)
#soft[Heißes Mono-Gelenk — Lernmarken][
  - *Lokalisation typisch:* Großzehengrundgelenk (Podagra), auch Mittelfuß / andere Mono-Gelenke
  - *Gestalt:* Rötung, Überwärmung, starke Schmerzhaftigkeit bei Belastung
  - Open photo = Blickdiagnose; *Infekt-Ausschluss* bleibt Claim im Text, nicht im Bild
]

== TIME / Handlung (Text + Icons — open-gap Foto)

#grid(
  columns: (auto, 1fr),
  gutter: 8pt,
  align(center + horizon)[
    #fa-icon("truck-medical", fill: palette.danger, size: 18pt)
    #v(2pt)
    #fa-icon("hospital", fill: palette.primary, size: 16pt)
  ],
  soft[Triage-Gerüst (Pins)][
    - *Sofort / 112:* systemisch krank, Sepsis-Verdacht, nicht transportfähig
    - *Notaufnahme:* heißes Gelenk + Fieber / Unsicherheit septisch vs. Gicht
    - *Zeitnah:* typische Podagra ohne Red flags — ärztliche Abklärung, keine Punktion durch Nicht-Ärzt\*innen
    - *Boundary:* keine Gelenkinjektion / forcierte Manipulation im Direktzugang
  ],
)

== Mimic / Abgrenzung

#soft[Trügerische Erklärungen (Text — kein Open-Foto-Paar gefunden)][
  „Nur Gicht“ · Distorsion · Knie-Schub ohne Infekt-Check. *Open-gap:* kein lizenziertes Foto-Paar septisch vs. Gicht im ersten Scan → bleibt typografisch.
]

== Mini-Fall

*Szene:* Fieber + schmerzhaftes MTP-I. \
*Transfer:* Nicht „Gicht abwarten“ — NA/112-Pfad; Kristalle entwarnen nicht.

#v(6pt)
#block(
  width: 100%,
  inset: 5pt,
  fill: rgb("#f8fafc"),
  stroke: 0.4pt + palette.border,
)[
  #set text(size: 6.5pt, font: fonts.sans)
  *Abbildungsnachweis (Kurz):* siehe `domains/medical/assets/form-lab/gicht-2026-08-o/CREDITS.md`. \
  Pilot Pass O — Rechte/Clinical Gates dokumentiert in MANIFEST; kein Production-Accept.
]
