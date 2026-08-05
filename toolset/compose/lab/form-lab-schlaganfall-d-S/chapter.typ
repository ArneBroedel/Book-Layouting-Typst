// Form Lab Pass S (d-wave) — Schlaganfall · synthesis from matrix winners (omit-is-win)
// Winners: danger C · FAST recognition R · TIME C-ladder · mimic T/C peel · boundary R · case R
// Mount only SR PASS rasters · omit weak V doodles where R covers · no speech grimace

#import "/packages/bookkit/lib.typ": *

#set document(title: "Schlaganfall — Form Lab Pass S (d-wave)", author: "form-lab/schlaganfall-2026-08-d/S")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Schlaganfall · Form Lab d · Pass S · Synthesis], [omit-is-win · SR PASS])
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
#set text(size: 8.3pt)
#set par(leading: 0.55em, justify: true)
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

#let asset(name) = "/domains/medical/assets/form-lab/schlaganfall-2026-08-d/R/" + name

#let kachel(file, cap, h: 28mm) = block(
  width: 100%,
  inset: 3pt,
  radius: 2pt,
  stroke: 0.4pt + palette.border,
)[
  #align(center)[#image(asset(file), width: 100%, height: h, fit: "cover")]
  #v(1.5pt)
  #align(center)[#text(size: 5.8pt, fill: palette.text-muted, font: fonts.sans)[#cap]]
]

#let panel(title, body, bar: palette.primary, fill: rgb("#f0fdfa")) = block(
  width: 100%,
  inset: (left: 8pt, rest: 5pt),
  radius: 2pt,
  fill: fill,
  stroke: (left: 3pt + bar, rest: 0.35pt + bar.lighten(45%)),
)[
  #text(size: 7.4pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
  #v(1.5pt)
  #set text(size: 7.3pt)
  #body
]

#let ladder-cell(code, title, bar, body) = block(
  width: 100%,
  radius: 2pt,
  clip: true,
  stroke: 0.4pt + bar.lighten(25%),
)[
  #block(width: 100%, fill: bar, inset: (x: 3pt, y: 4pt))[
    #align(center)[#text(size: 8.5pt, weight: "bold", fill: white, font: fonts.sans)[#code]]
  ]
  #block(width: 100%, inset: 4pt, fill: bar.lighten(92%), height: 28mm)[
    #text(size: 6.8pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
    #v(1pt)
    #set text(size: 6.5pt)
    #body
  ]
]

= Schlaganfall und TIA

#text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)[
  Pass S (d): Matrix-Gewinner · *omit* weak V wo R gewinnt · chrome TIME · type mimics · kein Speech-Grimassen-Raster
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
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  Schlaganfall und TIA sind *keine* PT-Arbeitsdiagnosen im Akutverdacht — jeder plausible Verdacht → *112* / Stroke-Unit. Remission entwarnt *nicht*.
]

== Erkennung (Raster-Gewinner)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  kachel("kachel-face-droop.jpg", [Face · Mundwinkel]),
  kachel("kachel-arm-drift.jpg", [Arms · Drift]),
  kachel("kachel-balance.jpg", [Balance · BE-FAST]),
  kachel("kachel-clock.jpg", [Last seen normal]),
)

== Mimic (Type/Chrome) · Speech im Text

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  panel("„Bell“", [Stirn-Check; Begleitdefizit (Arm, Sprache) → 112.], bar: palette.danger, fill: rgb("#fef2f2")),
  panel("„HWS“", [Schwindel + fokal: *keine* Mobilisation.], bar: rgb("#c2410c"), fill: rgb("#fff7ed")),
  panel("„Migräne“", [Unsicherheit = Notfallpfad · Zeitfenster.], bar: palette.danger, fill: rgb("#fef2f2")),
  panel("„Schulter-Arm“", [Apoplektiform = Hemiparese bis Ausschluss.], bar: rgb("#c2410c"), fill: rgb("#fff7ed")),
)

#v(2pt)
#text(size: 7.4pt, fill: palette.text-muted)[
  *Speech:* unklare/verwaschene Sprache — Claim im Text (kein Grimassen-Raster; omit-is-win).
]

== TIME (Chrome-Leiter)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  ladder-cell("112", "FAST / fokal", palette.danger, [FAST ≥ 1 plötzlich; Hemisens/Sehen; Schwindel + fokal. Abbruch · *112* · Stroke-Unit.]),
  ladder-cell("TIA", "112 / NA", rgb("#c2410c"), [Flüchtige Symptome *auch remittiert*. Remission entwarnt *nicht*. Keine PT.]),
  ladder-cell("NA", "Gleichtags", palette.primary, [Nur ohne Akut-Fokal, langsam progredient. Bei Neu-Fokal *112*.]),
  ladder-cell("Beh.", "+ Netz", rgb("#0f766e"), [Gesicherte MSK, keine Red Flags; nach Freigabe; Vigilanz.]),
)

#v(4pt)
#grid(
  columns: (0.38fr, 0.31fr, 0.31fr),
  column-gutter: 5pt,
  kachel("kachel-ban-hws.jpg", [Grenze · keine HWS-Manip.], h: 32mm),
  kachel("kachel-112-phone.jpg", [Notruf 112], h: 32mm),
  block(
    width: 100%,
    inset: 6pt,
    radius: 2pt,
    fill: rgb("#f8fafc"),
    stroke: 0.4pt + palette.border,
  )[
    #text(size: 7.5pt, weight: "bold", font: fonts.sans, fill: palette.primary-dark)[Mini-Fall · 67 J.]
    #v(2pt)
    #set text(size: 7.3pt)
    Flüchtige Hand + Sprache · „steife HWS“ · Hypertonie. \
    *VG:* TIA bis Ausschluss. *Stop:* HWS-Manip. *Schritt:* *112* · Last seen normal.
  ],
)

#v(3pt)
#align(center)[
  #text(size: 6.6pt, fill: palette.text-muted, font: fonts.sans)[
    S = C danger/TIME + R recognition/boundary + type mimics · V omitted (omit-is-win) · wave-d
  ]
]
