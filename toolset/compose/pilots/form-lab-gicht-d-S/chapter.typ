// Form Lab Pass S (d-wave) — Gicht · synthesis from matrix winners (omit-is-win)
// Winners: danger C-band · hot joint R · TIME C-ladder · mimic T/C · boundary R · case R
// Mount only SR PASS rasters · no FAIL · no a/b/c reuse

#import "/packages/bookkit/lib.typ": *

#set document(title: "Gicht — Form Lab Pass S (d-wave)", author: "form-lab/gicht-2026-08-d/S")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Gicht · Form Lab d · Pass S · Synthesis], [omit-is-win · SR PASS])
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

#let asset(name) = "/domains/medical/assets/form-lab/gicht-2026-08-d/R/" + name

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
  #block(width: 100%, inset: 4pt, fill: bar.lighten(92%), height: 26mm)[
    #text(size: 6.8pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
    #v(1pt)
    #set text(size: 6.5pt)
    #body
  ]
]

= Gicht — hochakute Monarthritis und das septische Gelenk

#text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)[
  Pass S (d): Matrix-Gewinner · *omit* V-doodles wo R gewinnt · chrome TIME · type mimics
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
  Eine „typische Podagra“ kann eine septische Arthritis maskieren; Kristallnachweis und Gichtanamnese entwarnen *nicht*.
]

== Erkennung (Raster-Gewinner)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  kachel("kachel-hot-mtp.jpg", [MTP-I · Podagra]),
  kachel("kachel-fever-cue.jpg", [Systemik / Fieber]),
  kachel("kachel-hot-knee.jpg", [Knie-Mono · DDx]),
  kachel("kachel-urate-needles.jpg", [Kristalle ≠ Entwarnung]),
)

== Wann · Mimic (Type/Chrome)

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  panel("WER / Trigger", [Hyperurikämie; Alkohol; Diuretika; purinreich; Anfall binnen *Stunden*.], fill: rgb("#f0fdfa")),
  panel("„Nur Schub“", [Anamnese/Kristalle entwarnen *nicht* bei Fieber/Systemik.], bar: palette.danger, fill: rgb("#fef2f2")),
  panel("„Distorsion / Knie=Gicht“", [Ohne Trauma-Mechanik: Gicht+Infekt. Knie: CPPD + septisch.], bar: rgb("#c2410c"), fill: rgb("#fff7ed")),
)

== TIME (Chrome-Leiter)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  ladder-cell("112", "Sofort", palette.danger, [Hitze + Fieber/Systemik + AZ↓ / Sepsis. Abbruch · *112* · keine Manipulation.]),
  ladder-cell("NA", "Gleichtags", rgb("#c2410c"), [Heißes Mono + Belastungsunfähigkeit (*auch ohne* Fieber). *Noch heute* NA.]),
  ladder-cell("Zeitnah", "FA/HA", palette.primary, [Nur ärztlich eingeordnetes Muster *ohne* aktuelles heißes Mono.]),
  ladder-cell("Beh.", "+ Netz", rgb("#0f766e"), [Stabil freigegeben. Schmerzarm; keine forcierte Belastung im heißen Anfall.]),
)

#v(4pt)
#grid(
  columns: (0.42fr, 0.58fr),
  column-gutter: 6pt,
  kachel("kachel-boundary-no-force.jpg", [Grenze · keine forcierte Maßnahme], h: 34mm),
  block(
    width: 100%,
    inset: 6pt,
    radius: 2pt,
    fill: rgb("#f8fafc"),
    stroke: 0.4pt + palette.border,
  )[
    #text(size: 7.6pt, weight: "bold", font: fonts.sans, fill: palette.primary-dark)[Mini-Fall · 54 J. „wieder Podagra“]
    #v(2pt)
    #set text(size: 7.5pt)
    MTP-I heiß · unbelastet · 38,3 °C · will Mobilisation. \
    *Vordergrund:* Infekt-Triage. *Stop:* Mobilisation/Injektion. *Schritt:* NA/112 · septisch bis Ausschluss.
    #v(3pt)
    #text(size: 7.2pt, fill: palette.danger, weight: "bold")[
      Keine Punktion/IA-Injektion durch HP · kein Probebehandeln bei Systemik.
    ]
  ],
)

#v(3pt)
#align(center)[
  #text(size: 6.6pt, fill: palette.text-muted, font: fonts.sans)[
    S = C danger/TIME + R recognition + type mimics · V omitted (omit-is-win) · wave-d
  ]
]
