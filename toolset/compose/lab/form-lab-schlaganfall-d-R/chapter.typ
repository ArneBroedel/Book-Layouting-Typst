// Form Lab Pass R (d-wave) — Schlaganfall · many small raster Kacheln
// lab: schlaganfall-2026-08-d · pin: chapter-v-4-schlaganfall.md
// ALLOW: multiple free-vision aspects · DENY: mega-infographic · mount only SR PASS
// Speech grimace raster intentionally OMITTED (FAIL risk)

#import "/packages/bookkit/lib.typ": *

#set document(title: "Schlaganfall — Form Lab Pass R (d-wave)", author: "form-lab/schlaganfall-2026-08-d/R")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Schlaganfall · Form Lab d · Pass R · Raster-Kacheln], [SR PASS only])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [wave-d · raster extreme · lab-learning], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.4pt)
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
  fill: white,
)[
  #align(center)[
    #image(asset(file), width: 100%, height: h, fit: "cover")
  ]
  #v(1.5pt)
  #align(center)[
    #set text(size: 5.8pt, fill: palette.text-muted, font: fonts.sans)
    #cap
  ]
]

#let danger-band(body) = block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger),
)[
  #set text(size: 7.8pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr: ]
  #body
]

= Schlaganfall und TIA

#text(size: 7.6pt, fill: palette.text-muted, font: fonts.sans)[
  Pass R (d): viele *kleine* Raster-Kacheln · ein Aspekt pro Job · Claims im Typst · *kein* Speech-Grimassen-Raster
]

#v(2pt)
#danger-band[
  Verdacht → *112* / Stroke-Unit. TIA auch remittiert = Notfall. Remission entwarnt *nicht*. Keine HWS-Manipulation.
]

== Erkennung — FAST-Gestalt (Kacheln)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 5pt,
  kachel("kachel-face-droop.jpg", [Face · einseitiger Mundwinkel-Häng]),
  kachel("kachel-arm-drift.jpg", [Arms · Armhalteversuch / Drift]),
  kachel("kachel-weak-hand.jpg", [Flüchtige Handschwäche · TIA-Cue]),
  kachel("kachel-clock.jpg", [Time · Last seen normal / Uhr]),
)

== BE-FAST · Grenze · Pfad

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 5pt,
  kachel("kachel-balance.jpg", [Balance · Standunsicherheit]),
  kachel("kachel-eyes.jpg", [Eyes · Sehfeld / Posterior-Cue]),
  kachel("kachel-ban-hws.jpg", [Keine HWS-Manipulation]),
  kachel("kachel-112-phone.jpg", [Sofort 112 · Notruf]),
)

== Klinik & TIME (Text trägt Claims)

#grid(
  columns: (1.05fr, 0.95fr),
  column-gutter: 7pt,
  [
    #set text(size: 7.8pt)
    *Wann denken:* Hypertonie, VHF, Diabetes, Rauchen — oft *initial unbekannt*; Beginn *apoplektiform*. \
    *Mechanismus:* Ischämie/Blutung → Penumbra in Minuten; Lyse typ. < 4,5 h nach Last seen normal. \
    *Speech:* unklare/verwaschene Sprache — Claim im *Text* (kein Grimassen-Raster). \
    *Trügerisch:* „Bell“ · „HWS-Blockade“ · „Migräne-Aura“ · „Schulter-Arm“.
  ],
  block(
    width: 100%,
    radius: 2pt,
    stroke: 0.4pt + palette.border,
    inset: 0pt,
    clip: true,
  )[
    #table(
      columns: (16mm, 1fr),
      stroke: (x: none, y: 0.35pt + palette.border),
      inset: 4pt,
      fill: (_, y) => if y == 0 { rgb("#fef2f2") } else if y == 1 { rgb("#fff7ed") } else if y == 2 { rgb("#f0fdfa") } else { rgb("#ecfdf5") },
      text(weight: "bold", size: 7.2pt, fill: palette.danger)[112], text(size: 7.1pt)[FAST ≥ 1 plötzlich; Hemisens/Sehen; Schwindel + fokal],
      text(weight: "bold", size: 7.2pt, fill: rgb("#c2410c"))[TIA], text(size: 7.1pt)[Flüchtige Symptome *auch remittiert* → 112/NA],
      text(weight: "bold", size: 7.2pt, fill: palette.primary)[NA], text(size: 7.1pt)[Nur ohne Akut-Fokal, langsam progredient],
      text(weight: "bold", size: 7.2pt, fill: rgb("#0f766e"))[Beh.], text(size: 7.1pt)[Gesicherte MSK · nach Freigabe · Netz],
    )
  ],
)

#v(3pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  kachel("kachel-stroke-unit.jpg", [Stroke-Unit-Pfad · Time is brain]),
  kachel("kachel-neck-complaint.jpg", [Trügerischer Rahmen · „steife HWS“]),
)

#v(3pt)
#block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger),
)[
  #text(size: 7.5pt, weight: "bold", fill: palette.danger)[Grenze]
  #v(1pt)
  #text(size: 7.4pt)[Keine HWS-Manipulation bei V. a. vertebrobasiläre Ischämie/Dissektion · keine Provokation, die Triage verzögert · Notruf nicht verzögern · Lyse/Bildgebung *ärztlich*.]
]

== Mini-Fall

#grid(
  columns: (0.34fr, 0.33fr, 0.33fr),
  column-gutter: 5pt,
  kachel("kachel-neck-complaint.jpg", [HWS-Wunsch], h: 26mm),
  kachel("kachel-weak-hand.jpg", [Hand „weg“], h: 26mm),
  block(
    width: 100%,
    inset: 5pt,
    radius: 2pt,
    fill: rgb("#f8fafc"),
    stroke: 0.4pt + palette.border,
  )[
    #set text(size: 7.2pt)
    *67 J.* · flüchtige Hand + Sprache · Hypertonie · will HWS-Mobilisation. \
    *VG:* TIA bis Ausschluss. *Stop:* HWS-Manip. *Schritt:* *112*.
  ],
)

#v(2pt)
#align(center)[
  #text(size: 6.6pt, fill: palette.text-muted, font: fonts.sans)[
    10 Kacheln · Speech raster omitted · SR PASS mount only · wave-d / R
  ]
]
