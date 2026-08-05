// Form Lab Pass C (d-wave) — Gicht · Color / Chrome / simple forms
// lab: gicht-2026-08-d · pin: chapter-v-3-gicht.md
// ALLOW: semantic color, bars, bands, cards, TIME chrome · DENY: free-vision heroes, large SVG systems

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Gicht — Form Lab Pass C (d-wave)", author: "form-lab/gicht-2026-08-d/C")
#set page(
  paper: "a4",
  margin: (inside: 16mm, outside: 14mm, top: 12mm, bottom: 14mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Gicht · Form Lab d · Pass C · Color/Chrome], [Kristalle entwarnen nicht])
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

// Horizontal TIME ladder cell (d-wave — not full-width vertical tiers only)
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
  #block(width: 100%, inset: 5pt, fill: bar.lighten(92%), height: 30mm)[
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

// ── Title ─────────────────────────────────────────────────────
= Gicht — hochakute Monarthritis und das septische Gelenk

#text(size: 8pt, fill: palette.text-muted, font: fonts.sans)[
  Pass C (d): Color · Chrome · TIME-Leiter · Mimic-Peel · ohne free-vision
]

#v(3pt)
#danger-band[
  Eine „typische Podagra“ kann eine septische Arthritis maskieren; Kristallnachweis und Gichtanamnese entwarnen *nicht*.
]

#v(4pt)
#grid(
  columns: (auto, auto, auto, 1fr),
  column-gutter: 5pt,
  chip("Stunden", rgb("#ecfeff"), palette.primary-dark),
  chip("oft MTP-I", rgb("#f0fdfa"), palette.primary),
  chip("Kristalle entwarnen nicht", rgb("#fef2f2"), palette.danger),
  [],
)

== Big Picture

#grid(
  columns: (1.2fr, 0.8fr),
  column-gutter: 8pt,
  [
    #set text(size: 8.3pt)
    Hyperurikämie → Natriumurat in Gelenken/Weichteilen. Direktzugang: _hochakuter Monoarthritis-Anfall_ — klassisch Podagra (MTP-I), Rötung, Überwärmung, oft Belastungsunfähigkeit binnen Stunden.

    #v(3pt)
    *Fehllabelung* ist die Hauptrisikoquelle: heißes Gelenk + Fieber/Systemik ≠ „nur Gicht“. Screenen · triagieren · Diagnosesicherung und Anfallstherapie *ärztlich*.
  ],
  panel(
    "Drei Anker",
    [
      *Zeit* — Stunden, nicht Tage \
      *Ort* — oft MTP-I; jedes Mono möglich \
      *Nicht entwarnen* — Kristalle/Anamnese schließen septisch *nicht* aus
    ],
    bar: palette.primary-dark,
    fill: rgb("#ecfeff"),
  ),
)

== 1. Wann denken?

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  panel("WER · Risiken", [Hyperurikämie; purinreich; Alkohol; Diuretika; Adipositas; Niereninsuffizienz], fill: rgb("#f0fdfa")),
  panel("WOHER · Kontext", [Frühere Attacken/Tophi; metabolisches Syndrom; Ulzera über Tophi], fill: rgb("#f8fafc"), bar: palette.primary),
  panel("WANN · Trigger", [Akut Stunden; Alkohol, Mahlzeit, Med-Änderung. Rezidiv stützt — entwarnt nicht bei Systemik], fill: rgb("#fff7ed"), bar: palette.accent-dark),
)

== 2–3. Mechanismus & Klinik

#grid(
  columns: (0.9fr, 1.1fr),
  column-gutter: 7pt,
  panel(
    "Mechanismus (kurz)",
    [Harnsäure ↑ → Uratkristalle → neutrophile Entzündung. Klinisch oft *nicht* sicher von septischer Arthritis trennbar; Superinfektion von Tophi möglich.],
    fill: rgb("#f8fafc"),
    bar: palette.text-muted,
  ),
  block(
    width: 100%,
    radius: 3pt,
    stroke: 0.4pt + palette.border,
    clip: true,
  )[
    #table(
      columns: (24mm, 1fr),
      stroke: (x: none, y: 0.35pt + palette.border),
      inset: (x: 5pt, y: 4pt),
      fill: (_, y) => if y == 0 { rgb("#ccfbf1") } else if calc.odd(y) { rgb("#f8fafc") } else { white },
      table.header(
        text(weight: "bold", size: 7.4pt, font: fonts.sans)[Domäne],
        text(weight: "bold", size: 7.4pt, font: fonts.sans)[Merkmale],
      ),
      text(size: 7.4pt, weight: "bold")[Anamnese], text(size: 7.4pt)[Mono binnen Stunden; MTP-I; Trigger; *Fieber?*],
      text(size: 7.4pt, weight: "bold")[Beobachtung], text(size: 7.4pt)[Rötung, Hitze, Schwellung; Schonhaltung; Systemik?],
      text(size: 7.4pt, weight: "bold")[Untersuchung], text(size: 7.4pt)[Druck-/Bewegungsschmerz; *ohne* forcierte Manipulation],
      text(size: 7.4pt, weight: "bold")[Verlauf], text(size: 7.4pt)[Stunden–Tage; polyartikulärer Sturm ≠ typischer Schub],
    )
  ],
)

== 4. Mimic-Peel

#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  row-gutter: 5pt,
  peel[„Nur bekannter Gichtschub“][Anamnese und Kristalle schließen bakterielle Infektion *nicht* aus. Fieber/Systemik → Infekt-Triage.],
  peel[„Umgeknickt / Distorsion“][Ohne adäquate Traumamechanik + entzündliches Bild: Gicht *und* Infekt mitdenken.],
  peel[„Knie-Schub = immer Gicht“][Knie oft CPPD; septisch bleibt Must-not-miss bis Ausschluss.],
  panel(
    "DDx-Minimal",
    [
      *Gicht* — Stunden, oft MTP-I, ohne schwere Systemik \
      *Septisch* — Hitze + Fieber/Belastungsunfähigkeit \
      *CPPD* — oft Knie \
      *Trauma / Erysipel* — Mechanik bzw. primär kutan
    ],
    fill: rgb("#f0fdfa"),
    bar: palette.primary-dark,
  ),
)

== 5. TIME — Dringlichkeitsleiter

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 5pt,
  ladder-cell(
    "112",
    "Sofort Notruf",
    palette.danger,
    [Heißes Gelenk + Fieber/Systemik + AZ↓ / Sepsis-Zeichen; polyartikulärer Sturm mit schwerer Systembedrohung. Abbruch · Vital · *112* · keine Manipulation.],
  ),
  ladder-cell(
    "NA",
    "Gleichtags",
    rgb("#c2410c"),
    [Heißes Mono mit Belastungsunfähigkeit oder stärkstem Ruheschmerz (*auch ohne* Fieber); Hitze + Systemik; nach i.a./OP/Trauma; Hochrisiko. *Noch heute* NA.],
  ),
  ladder-cell(
    "Zeitnah",
    "Fach-/Hausarzt",
    palette.primary,
    [Nur bereits ärztlich eingeordnetes rezidivierendes Muster *ohne* aktuelles heißes Mono mit Belastungsunfähigkeit und *ohne* Systemik.],
  ),
  ladder-cell(
    "Beh.",
    "+ Sicherheitsnetz",
    rgb("#0f766e"),
    [Stabil, ärztlich eingeordnet, keine Red Flags. Schmerzarmer Rahmen; keine forcierte Belastung im akuten heißen Anfall.],
  ),
)

#v(5pt)
#block(
  width: 100%,
  inset: 7pt,
  radius: 3pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger),
)[
  #text(size: 7.8pt, weight: "bold", fill: palette.danger, font: fonts.sans)[Grenze / absolute Kontraindikationen bis Ausschluss]
  #v(2pt)
  #text(size: 7.6pt)[Keine Punktion, keine IA-Injektion durch HP, keine forcierte Manipulation am unklar heißen Gelenk; kein „Probebehandeln“ bei Fieber/Systemik.]
]

== 6. Mini-Fall

#block(
  width: 100%,
  inset: 7pt,
  radius: 3pt,
  fill: rgb("#f8fafc"),
  stroke: 0.45pt + palette.border,
)[
  #text(size: 7.8pt, weight: "bold", font: fonts.sans, fill: palette.primary-dark)[
    54 J., „wieder Podagra“, MTP-I heiß, Vorfuß unbelastet, Fieber 38,3 °C, bittet um Mobilisation
  ]
  #v(4pt)
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 6pt,
    panel("Vordergrund", [Infekt-Triage — heißes Mono + Systemik], fill: rgb("#fef2f2"), bar: palette.danger),
    panel("Kontraindiziert", [Mobilisation · Injektion · abwarten], fill: rgb("#fff7ed"), bar: rgb("#c2410c")),
    panel("Nächster Schritt", [Stop → NA/112 je AZ; septisch bis Ausschluss], fill: rgb("#ecfdf5"), bar: rgb("#0f766e")),
  )
]

#v(3pt)
#align(center)[
  #text(size: 7pt, fill: palette.text-muted, font: fonts.sans)[
    Parent V-3 · heißes Gelenk → bakterielle Arthritis mitdenken · Kristalle entwarnen nicht · wave-d / C
  ]
]
