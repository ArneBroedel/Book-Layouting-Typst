// Form Lab Pass S (d-wave) — Melanom ABCDE · synthesis from matrix winners (omit-is-win)
// Winners: role C-band · ABCDE R · Ugly R · mimics T/C · urgency C-ladder · boundary C/T · case R
// Mount only SR PASS rasters · omit V where R wins · no a/b/c reuse

#import "/packages/bookkit/lib.typ": *

#set document(title: "Melanom ABCDE — Form Lab Pass S (d-wave)", author: "form-lab/melanom-abcde-2026-08-d/S")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Melanom · Form Lab d · Pass S · Synthesis], [omit-is-win · SR PASS])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [wave-d · best-of · lab-learning], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.2pt)
#set par(leading: 0.54em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 13.5pt, weight: "bold", fill: palette.primary-dark)
  block(below: 3pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 9.5pt, weight: "bold", fill: palette.primary)
  block(below: 3pt, above: 6pt)[
    #it.body
    #v(1pt)
    #line(length: 16mm, stroke: 1pt + palette.primary)
  ]
}

#let asset(name) = "/domains/medical/assets/form-lab/melanom-abcde-2026-08-d/R/" + name

#let kachel(file, cap, h: 26mm) = block(
  width: 100%,
  inset: 3pt,
  radius: 2pt,
  stroke: 0.4pt + palette.border,
)[
  #align(center)[#image(asset(file), width: 100%, height: h, fit: "cover")]
  #v(1.5pt)
  #align(center)[#text(size: 5.7pt, fill: palette.text-muted, font: fonts.sans)[#cap]]
]

#let panel(title, body, bar: palette.primary, fill: rgb("#f0fdfa")) = block(
  width: 100%,
  inset: (left: 8pt, rest: 5pt),
  radius: 2pt,
  fill: fill,
  stroke: (left: 3pt + bar, rest: 0.35pt + bar.lighten(45%)),
)[
  #text(size: 7.3pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
  #v(1.5pt)
  #set text(size: 7.2pt)
  #body
]

#let ladder-cell(code, title, bar, body) = block(
  width: 100%,
  radius: 2pt,
  clip: true,
  stroke: 0.4pt + bar.lighten(25%),
)[
  #block(width: 100%, fill: bar, inset: (x: 3pt, y: 4pt))[
    #align(center)[#text(size: 8.2pt, weight: "bold", fill: white, font: fonts.sans)[#code]]
  ]
  #block(width: 100%, inset: 4pt, fill: bar.lighten(92%), height: 24mm)[
    #text(size: 6.6pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
    #v(1pt)
    #set text(size: 6.3pt)
    #body
  ]
]

= Melanom — ABCDE-Hautscreening im Direktzugang

#text(size: 7.4pt, fill: palette.text-muted, font: fonts.sans)[
  Pass S (d): Matrix-Gewinner · *omit* V wo R gewinnt · chrome TIME · type mimics · quiet (kein ABCDE-Regenbogen)
]

#v(2pt)
#block(
  width: 100%,
  inset: 7pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 4pt + palette.danger),
)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.danger)[Rolle im Direktzugang: ]
  Strukturierter Blick (ABCDE, Ugly Duckling) + Dringlichkeit + *ärztliche Zuweisung* — keine Exzision, keine physiotherapeutische Hautdiagnose.
]

== Erkennung — ABCDE (Raster-Gewinner)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  kachel("kachel-asym.jpg", [A · Asymmetrie]),
  kachel("kachel-border.jpg", [B · Begrenzung]),
  kachel("kachel-color.jpg", [C · Farbvielfalt]),
  kachel("kachel-diam.jpg", [D · > 5 mm]),
  kachel("kachel-evol.jpg", [E · Evolution]),
)

== Ugly Duckling · Mimics (R + Type)

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  kachel("kachel-ugly.jpg", [Ugly Duckling · Feld], h: 30mm),
  kachel("kachel-nail.jpg", [Subungual · Band + Wall], h: 30mm),
  block(breakable: false)[
    #panel("„Alter Fleck“", [Ohne Evolutionsfrage (Form, Farbe, Größe, Juckreiz, Blutung) Transformation verpasst.], bar: rgb("#c2410c"), fill: rgb("#fff7ed"))
    #v(3pt)
    #panel("Seborrhoika / „harmlos“", [Endgültige Einordnung ärztlich; bei ABCDE-Suspekt *zuweisen*, nicht eigenetikettieren.], bar: rgb("#c2410c"), fill: rgb("#fff7ed"))
  ],
)

== TIME (Chrome-Leiter)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  ladder-cell("112", "Selten", palette.danger, [Nur vitale Begleitlage (schwere Blutung, Schock). Melanom ≠ reanimationspflichtig.]),
  ladder-cell("Gleichtags", "HA / Derm", rgb("#c2410c"), [Blutung/Ulzeration; ABCDE-suspekt/rasch; B-Symptome + Knoten. Stop · keine Destruktion.]),
  ladder-cell("Zeitnah", "Dermatologie", palette.primary, [Subungual + Nagelwall; Ugly Duckling ohne Blutung. Schriftliche Zuweisung.]),
  ladder-cell("Beh.", "+ Netz", rgb("#0f766e"), [Ohne Suspekt: MSK fortsetzen; neu auffällig → stop + zuweisen.]),
)

#v(4pt)
#block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger),
)[
  #text(size: 7.5pt, weight: "bold", fill: palette.danger, font: fonts.sans)[Grenze]
  #v(1pt)
  #text(size: 7.3pt)[Keine Melanom-Diagnose, keine Exzision, keine destruktiven Maßnahmen. Endgültige DDx ist ärztlich.]
]

== Mini-Fall

#grid(
  columns: (0.4fr, 0.6fr),
  column-gutter: 6pt,
  kachel("kachel-back-case.jpg", [Rücken / Schulterblatt · mitinspizieren], h: 36mm),
  block(
    width: 100%,
    inset: 6pt,
    radius: 2pt,
    fill: rgb("#f8fafc"),
    stroke: 0.4pt + palette.border,
  )[
    #text(size: 7.5pt, weight: "bold", font: fonts.sans, fill: palette.primary-dark)[52 J. · post Diskektomie · Entkleiden]
    #v(2pt)
    #set text(size: 7.4pt)
    Rechte Schulterblatt-Läsion ~8 mm, asymmetrisch, unregelmäßig, mehrfarbig; „schon ewig, juckt manchmal“. \
    *Vordergrund:* ABCDE+ am Rücken → *zuweisen*. \
    *Kontraindiziert:* Destruktion · Bagatellisieren · nur abwarten. \
    *Schritt:* gleichtags/zeitnah Derm/HA; MSK ohne Läsionsmanipulation; 112 nicht bei stabilem AZ.
  ],
)

#v(3pt)
#align(center)[
  #text(size: 7pt, fill: palette.text-muted, font: fonts.sans)[
    Parent V-10 · best-of C+R+T · V omitted · wave-d / S
  ]
]
