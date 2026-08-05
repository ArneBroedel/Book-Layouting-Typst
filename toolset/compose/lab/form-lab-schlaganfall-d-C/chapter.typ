// Form Lab Pass C (d-wave) — Schlaganfall · Color / Chrome / simple forms
// lab: schlaganfall-2026-08-d · pin: chapter-v-4-schlaganfall.md
// ALLOW: semantic color, bars, bands, cards, TIME chrome · DENY: free-vision heroes, large SVG systems

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Schlaganfall — Form Lab Pass C (d-wave)", author: "form-lab/schlaganfall-2026-08-d/C")
#set page(
  paper: "a4",
  margin: (inside: 16mm, outside: 14mm, top: 12mm, bottom: 14mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Schlaganfall · Form Lab d · Pass C · Color/Chrome], [Verdacht → 112])
    line(length: 100%, stroke: 0.4pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [wave-d · chrome extreme · lab-learning], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.8pt, fill: palette.text-body)
#set par(leading: 0.6em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 14.5pt, weight: "bold", fill: palette.primary-dark)
  block(below: 4pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10pt, weight: "bold", fill: palette.primary)
  block(below: 4pt, above: 8pt)[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 6pt,
      align(horizon)[
        #box(width: 3.2pt, height: 10pt, fill: palette.primary, radius: 1pt)
      ],
      it.body,
    )
  ]
}

#let chip(label, fill, fg) = box(
  fill: fill,
  inset: (x: 6pt, y: 3pt),
  radius: 10pt,
  stroke: 0.4pt + fg.lighten(35%),
)[
  #text(size: 7.2pt, weight: "bold", fill: fg, font: fonts.sans)[#label]
]

#let panel(title, body, bar: palette.primary, fill: rgb("#f0fdfa")) = block(
  width: 100%,
  inset: (left: 9pt, rest: 6pt),
  radius: 3pt,
  fill: fill,
  stroke: (left: 3.2pt + bar, rest: 0.4pt + bar.lighten(50%)),
)[
  #text(size: 7.8pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
  #v(2pt)
  #set text(size: 7.6pt)
  #body
]

#let danger-band(body) = block(
  width: 100%,
  inset: 8pt,
  radius: 3pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 4pt + palette.danger, rest: 0.45pt + palette.danger.lighten(40%)),
)[
  #set text(size: 8.3pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  #body
]

#let ladder-cell(code, title, bar, body) = block(
  width: 100%,
  radius: 3pt,
  clip: true,
  stroke: 0.45pt + bar.lighten(25%),
)[
  #block(width: 100%, fill: bar, inset: (x: 4pt, y: 5pt))[
    #align(center)[
      #text(size: 9.5pt, weight: "bold", fill: white, font: fonts.sans)[#code]
    ]
  ]
  #block(width: 100%, inset: 5pt, fill: bar.lighten(92%), height: 32mm)[
    #text(size: 7.1pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
    #v(1.5pt)
    #set text(size: 6.7pt)
    #body
  ]
]

#let peel(title, body) = block(
  width: 100%,
  inset: (left: 8pt, rest: 5pt),
  radius: 2pt,
  fill: rgb("#fff7ed"),
  stroke: (left: 3pt + rgb("#c2410c"), rest: 0.35pt + rgb("#fdba74")),
)[
  #text(size: 7.6pt, weight: "bold", fill: rgb("#c2410c"), font: fonts.sans)[#title]
  #v(1.5pt)
  #set text(size: 7.3pt)
  #body
]

#let fast-tile(letter, title, body, bar) = block(
  width: 100%,
  radius: 2pt,
  clip: true,
  stroke: 0.4pt + bar.lighten(20%),
)[
  #block(width: 100%, fill: bar, inset: (x: 4pt, y: 4pt))[
    #align(center)[
      #text(size: 11pt, weight: "bold", fill: white, font: fonts.sans)[#letter]
      #h(3pt)
      #text(size: 7pt, weight: "bold", fill: white.transparentize(10%), font: fonts.sans)[#title]
    ]
  ]
  #block(width: 100%, inset: 4pt, fill: bar.lighten(93%), height: 14mm)[
    #set text(size: 6.6pt)
    #body
  ]
]

// ── Title ─────────────────────────────────────────────────────
= Schlaganfall und TIA

#text(size: 8pt, fill: palette.text-muted, font: fonts.sans)[
  Pass C (d): Color · Chrome · TIME-Leiter · FAST-Kacheln · Mimic-Peel · ohne free-vision
]

#v(3pt)
#danger-band[
  Schlaganfall und TIA sind *keine* PT-Arbeitsdiagnosen im Akutverdacht: jeder plausible Verdacht → *112* und Stroke-Unit-Pfad. Remission entwarnt *nicht*.
]

#v(4pt)
#grid(
  columns: (auto, auto, auto, auto, 1fr),
  column-gutter: 5pt,
  chip("Sekunden–Minuten", rgb("#ecfeff"), palette.primary-dark),
  chip("Last seen normal", rgb("#fef2f2"), palette.danger),
  chip("TIA = Notfall", rgb("#fff7ed"), rgb("#c2410c")),
  chip("keine HWS-Manip.", rgb("#fef2f2"), palette.danger),
  [],
)

== Big Picture

#grid(
  columns: (1.2fr, 0.8fr),
  column-gutter: 8pt,
  [
    #set text(size: 8.3pt)
    Plötzlicher Ausfall von Gehirnfunktionen durch Ischämie (ca. 80–85 %) oder Blutung (ca. 15–20 %). *TIA*: flüchtiges fokal-neurologisches Defizit — bis Ausschluss *Notfall*.

    #v(3pt)
    Hauptrisiko: *Fehlzuordnung* als HWS-Blockade, periphere Fazialis oder Migräne-Aura — und Verlust des Lysefensters (< 4,5 h nach Last seen normal).
  ],
  panel(
    "Drei Anker",
    [
      *Beginn* — apoplektiform, Sekunden–Minuten \
      *Zeit* — Last seen normal · Lyse < 4,5 h \
      *Nicht entwarnen* — Remission / „nur HWS“ entwarnt *nicht*
    ],
    bar: palette.primary-dark,
    fill: rgb("#ecfeff"),
  ),
)

== 1. Wann denken?

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  panel("WER · Risiken", [Hypertonie; Vorhofflimmern; Diabetes; Rauchen; Atherosklerose — oft *initial nicht* bekannt], fill: rgb("#f0fdfa")),
  panel("WOHER · Kontext", [Frühere TIA/Schlaganfall; kardiovaskuläre Vorerkrankungen], fill: rgb("#f8fafc"), bar: palette.primary),
  panel("WANN · Zeit", [Apoplektiform. Entscheidend: *Last seen normal*], fill: rgb("#fff7ed"), bar: palette.accent-dark),
)

== FAST / BE-FAST (Chrome)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  fast-tile("F", "Face", [Mundwinkel asymmetrisch / hängend?], palette.danger),
  fast-tile("A", "Arms", [Armhalteversuch — ein Arm sinkt ab?], rgb("#c2410c")),
  fast-tile("S", "Speech", [Sprache unklar, verwaschen, Wortfindung?], palette.primary-dark),
  fast-tile("T", "Time", [≥ 1 positiv + plötzlich → *sofort 112*], palette.danger),
)
#v(3pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  panel("B · Balance", [Stand/Gang-Unsicherheit, Ataxie — sensibilisiert für *posterioren* Kreislauf], bar: palette.primary, fill: rgb("#ecfeff")),
  panel("E · Eyes", [Sehstörung / Doppelbilder — FAST allein unempfindlich für Posterior], bar: palette.primary, fill: rgb("#ecfeff")),
)
#v(2pt)
#text(size: 7.4pt, fill: palette.text-muted, font: fonts.sans)[
  BE-FAST ersetzt die 112-Logik *nicht*. Bei jedem fokal-neurologischen Gesamteindruck: Notruf.
]

== Mimic-Peel

#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  row-gutter: 5pt,
  peel("„Periphere Fazialis / Bell“", [Ohne Stirn-Check zentrale Parese möglich. Begleitdefizite (Arm, Sprache) → Schlaganfallpfad.]),
  peel("„HWS-Blockade / Nacken“", [Plötzlicher Schwindel + fokal oder akute Ataxie = zentralverdächtig. *Keine* Mobilisation.]),
  peel("„Migräne-Aura“", [Flüchtige aura-ähnliche Symptome ohne sichere Anamnese: TIA/Infarkt mitdenken — Zeitfenster.]),
  peel("„Schulter-Arm / Radix“", [Apoplektiforme Armschwäche + zentrale Zeichen = Hemiparese bis Beweis des Gegenteils.]),
)

== TIME-Leiter

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  ladder-cell("112", "FAST / fokal", palette.danger, [FAST ≥ 1 plötzlich; Hemisens/Sehen; Schwindel + fokal. Abbruch · sichern · *112* · Stroke-Unit. Keine Tests.]),
  ladder-cell("TIA", "112 / NA", rgb("#c2410c"), [Flüchtige Symptome *auch remittiert* (bes. 48 h). Remission entwarnt *nicht*. Keine PT, kein Abwarten.]),
  ladder-cell("NA", "Gleichtags", palette.primary, [Nur *ohne* Akut-Fokal und ohne 112-Kriterien, langsam progredient. PT aus; bei Neu-Fokal *112*.]),
  ladder-cell("Beh.", "+ Netz", rgb("#0f766e"), [Nur gesicherte MSK-Ursache, keine Red Flags; nach Freigabe aus Akutphase. Vigilanz.]),
)

#v(4pt)
#grid(
  columns: (0.42fr, 0.58fr),
  column-gutter: 7pt,
  panel(
    "Grenze · absolut",
    [Keine HWS-Manipulation bei V. a. vertebrobasiläre Ischämie/Dissektion. Keine Provokation, die Triage verzögert. ABCD² nur informativ. Lyse/Bildgebung *ärztlich*.],
    bar: palette.danger,
    fill: rgb("#fef2f2"),
  ),
  block(
    width: 100%,
    inset: 6pt,
    radius: 2pt,
    fill: rgb("#f8fafc"),
    stroke: 0.4pt + palette.border,
  )[
    #text(size: 7.6pt, weight: "bold", font: fonts.sans, fill: palette.primary-dark)[Mini-Fall · 67 J. flüchtige Hand + Sprache]
    #v(2pt)
    #set text(size: 7.4pt)
    „Steife HWS + Schwindel“ · vor 40 min Hand „weg“, Sprache undeutlich — fast weg. Hypertonie. Will HWS-Mobilisation. \
    *Vordergrund:* TIA bis Ausschluss. *Stop:* HWS-Manip. *Schritt:* *112* · Last seen normal übergeben.
  ],
)

#v(3pt)
#align(center)[
  #text(size: 6.8pt, fill: palette.text-muted, font: fonts.sans)[
    Parent-System V-4 · chrome extreme · wave-d / C
  ]
]
