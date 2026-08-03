// Form Lab Pass S (c-wave) — Gicht · synthesis from matrix winners
// lab: gicht-2026-08-c · omit-is-win · only Semantic Read PASS marks

#import "/packages/bookkit/lib.typ": *
#import "@preview/cetz:0.3.4"
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Gicht — Form Lab Pass S (c-wave)", author: "form-lab/gicht-2026-08-c/S")
#set page(
  paper: "a4",
  margin: (inside: 18mm, outside: 15mm, top: 13mm, bottom: 15mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Gicht · Form Lab c · Pass S (Synthesis)], [C chrome + R gestalt + V cue + T body])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [Form Lab · synthesis · wave c · omit-is-win], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 9pt)
#set par(leading: 0.62em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 14.5pt, weight: "bold", fill: palette.primary-dark)
  block(below: 4pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10.5pt, weight: "bold", fill: palette.primary)
  block(below: 4pt, above: 8pt)[
    #it.body
    #v(1.5pt)
    #line(length: 22mm, stroke: 1pt + palette.primary)
  ]
}

#let base = "/domains/medical/assets/form-lab/gicht-2026-08-c/R/"

#let danger-band(body) = block(
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

#let time-tier(code, title, bar, fill, body) = block(
  width: 100%,
  radius: 2pt,
  clip: true,
  stroke: 0.4pt + bar.lighten(30%),
)[
  #grid(
    columns: (20mm, 1fr),
    block(fill: bar, inset: (x: 3pt, y: 7pt), width: 100%)[
      #align(center)[#text(size: 8.5pt, weight: "bold", fill: white, font: fonts.sans)[#code]]
    ],
    block(fill: fill, inset: 6pt, width: 100%)[
      #text(size: 8pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
      #v(1.5pt)
      #set text(size: 7.5pt)
      #body
    ],
  )
]

#let kachel(path, w: 38mm, cap) = block(
  width: w + 3mm,
  inset: 2pt,
  radius: 2pt,
  stroke: 0.4pt + palette.border,
)[
  #image(path, width: w)
  #v(1.5pt)
  #align(center)[#text(size: 6pt, fill: palette.text-muted, font: fonts.sans)[#cap]]
]

#let ban-syringe = cetz.canvas(length: 0.85mm, {
  import cetz.draw: *
  rect((-8, -2), (6, 2), fill: rgb("#e0f2fe"), stroke: 0.8pt + palette.primary-dark)
  rect((6, -1), (11, 1), fill: rgb("#94a3b8"), stroke: 0.55pt + palette.primary-dark)
  circle((0, 0), radius: 12, stroke: 1.3pt + palette.danger)
  line((-8.5, -8.5), (8.5, 8.5), stroke: 1.35pt + palette.danger)
})

// ── Chapter ───────────────────────────────────────────────────
= Gicht — hochakute Monarthritis und das septische Gelenk

#text(size: 8pt, fill: palette.text-muted, font: fonts.sans)[
  Pass S · Synthese aus Matrix-Gewinnern (C TIME/Mimic · R Gestalt · V Boundary-Glyph · T Falltext)
]

#v(3pt)
#danger-band[Eine „typische Podagra“ kann eine septische Arthritis maskieren; Kristallnachweis und Gichtanamnese entwarnen *nicht*.]

== Erkennung (Raster-Gewinner)

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  align(center)[#kachel(base + "kachel-hot-mtp.jpg", w: 42mm, [Kachel · MTP-I / Podagra])],
  align(center)[#kachel(base + "kachel-hot-knee.jpg", w: 42mm, [Kachel · Knie-Mono])],
  align(center)[#kachel(base + "kachel-urate-needles.jpg", w: 42mm, [Kachel · Urat — entwarnt nicht])],
)

#v(3pt)
#set text(size: 8.3pt)
Heißes Mono (oft MTP-I) binnen Stunden: Rötung, Hitze, Schonung. *Kristalle erklären Gicht — sie schließen septisch nicht aus.*

== Mimic-Peel (Chrome-Gewinner)

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  block(inset: 5pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: (left: 2.8pt + palette.danger))[
    #text(size: 7.5pt, weight: "bold", fill: palette.danger)[„Nur Schub“]
    #v(2pt)
    #text(size: 7.3pt)[Anamnese/Kristalle entwarnen nicht bei Fieber/Systemik.]
  ],
  block(inset: 5pt, radius: 2pt, fill: rgb("#fff7ed"), stroke: (left: 2.8pt + rgb("#c2410c")))[
    #text(size: 7.5pt, weight: "bold", fill: rgb("#c2410c"))[„Distorsion“]
    #v(2pt)
    #text(size: 7.3pt)[Ohne Traumamechanik + Hitze: Gicht *und* Infekt.]
  ],
  block(inset: 5pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: (left: 2.8pt + palette.danger))[
    #text(size: 7.5pt, weight: "bold", fill: palette.danger)[„Knie = Gicht“]
    #v(2pt)
    #text(size: 7.3pt)[Knie: CPPD häufig; septisch bis Ausschluss.]
  ],
)

== TIME (Chrome-Gewinner)

#time-tier("112", "Sofort Notruf", palette.danger, rgb("#fef2f2"),
  [Hitze + Fieber/Systemik + AZ↓ / Sepsis → Abbruch, 112, keine Manipulation.])
#v(3pt)
#time-tier("NA", "Notaufnahme / gleichtags", rgb("#c2410c"), rgb("#fff7ed"),
  [Heißes Mono + Belastungsunfähigkeit (*auch ohne* Fieber) → noch heute NA; septisch bis Ausschluss.])
#v(3pt)
#time-tier("Zeitnah", "Facharzt / Hausarzt", palette.primary, rgb("#f0fdfa"),
  [Nur ärztlich eingeordnetes Muster ohne aktuelles heißes Mono mit Belastungsunfähigkeit.])
#v(3pt)
#time-tier("Beh.", "Behandeln + Netz", rgb("#0f766e"), rgb("#ecfdf5"),
  [Stabil, freigegeben; schmerzarmer Rahmen; klare Rückkehrgründe.])

== Boundary + Mini-Fall

#grid(
  columns: (22mm, 1fr),
  column-gutter: 8pt,
  align(horizon)[#ban-syringe],
  block(inset: 6pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: (left: 3pt + palette.danger))[
    #text(size: 8pt, weight: "bold", fill: palette.danger)[Absolute Kontraindikationen bis Ausschluss]
    #v(2pt)
    #text(size: 7.8pt)[Keine Punktion / IA-Injektion durch HP; keine forcierte Manipulation am unklar heißen Gelenk; kein Probebehandeln bei Fieber/Systemik.]
  ],
)

#v(5pt)
#block(inset: 6pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
  #text(weight: "bold", font: fonts.sans, size: 8.5pt)[Mini-Fall]
  #v(2pt)
  #set text(size: 8pt)
  54 J., „wieder Podagra“, MTP-I heiß, unbelastet, 38,3 °C, will Mobilisation. \
  *Vordergrund:* Infekt-Triage. *Kontraindiziert:* Mobilisation/Injektion. *Schritt:* NA/112; septisch bis Ausschluss.
]

#v(6pt)
#align(center)[
  #text(size: 7pt, fill: palette.text-muted, font: fonts.sans)[
    Omit: reine V-Mega-Poster · redundant face-stacks · a/b-wave assets · caption-rescued doodles
  ]
]
