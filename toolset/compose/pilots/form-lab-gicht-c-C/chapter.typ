// Form Lab Pass C (c-wave) — Gicht · Color / Chrome / simple forms
// lab: gicht-2026-08-c · pin: chapter-v-3-gicht.md
// ALLOW: semantic color, bars, bands, cards, TIME stack · DENY: free-vision heroes, large SVG systems

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Gicht — Form Lab Pass C (c-wave)", author: "form-lab/gicht-2026-08-c/C")
#set page(
  paper: "a4",
  margin: (inside: 18mm, outside: 15mm, top: 13mm, bottom: 15mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Gicht · Form Lab c · Pass C (Color/Chrome)], [kristall · septisch bis Ausschluss])
    line(length: 100%, stroke: 0.4pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [Form Lab · chrome extreme · wave c], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 9pt, fill: palette.text-body)
#set par(leading: 0.62em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 15pt, weight: "bold", fill: palette.primary-dark)
  block(below: 5pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10.5pt, weight: "bold", fill: palette.primary)
  block(below: 4pt, above: 8pt)[
    #it.body
    #v(1.5pt)
    #line(length: 24mm, stroke: 1.15pt + palette.primary)
  ]
}

#let danger-band(body) = block(
  width: 100%,
  inset: 8pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger, rest: 0.45pt + palette.danger.lighten(40%)),
)[
  #set text(size: 8.5pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  #body
]

#let soft-card(title, body, fill: rgb("#f0fdfa"), bar: palette.primary) = block(
  width: 100%,
  inset: (left: 8pt, rest: 6pt),
  radius: 2pt,
  fill: fill,
  stroke: (left: 3pt + bar, rest: 0.4pt + bar.lighten(45%)),
)[
  #text(size: 8pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
  #v(2pt)
  #set text(size: 7.8pt)
  #body
]

#let time-tier(code, title, bar, fill, body) = block(
  width: 100%,
  inset: 0pt,
  radius: 2pt,
  clip: true,
  stroke: 0.45pt + bar.lighten(30%),
)[
  #grid(
    columns: (22mm, 1fr),
    block(width: 100%, fill: bar, inset: (x: 4pt, y: 8pt))[
      #align(center)[
        #text(size: 9pt, weight: "bold", fill: white, font: fonts.sans)[#code]
      ]
    ],
    block(width: 100%, fill: fill, inset: 7pt)[
      #text(size: 8pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
      #v(2pt)
      #set text(size: 7.5pt)
      #body
    ],
  )
]

#let mimic-row(title, body, danger: false) = {
  let bar = if danger { palette.danger } else { palette.warning }
  let fill = if danger { rgb("#fef2f2") } else { rgb("#fffbeb") }
  block(
    width: 100%,
    inset: (left: 8pt, rest: 6pt),
    radius: 2pt,
    fill: fill,
    stroke: (left: 3pt + bar, rest: 0.35pt + bar.lighten(40%)),
  )[
    #text(size: 8pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
    #v(2pt)
    #set text(size: 7.6pt)
    #body
  ]
}

// ── Title ─────────────────────────────────────────────────────
= Gicht — hochakute Monarthritis und das septische Gelenk

#text(size: 8.5pt, fill: palette.text-muted, font: fonts.sans)[
  Pass C: Color / Chrome · TIME-Stapel · Mimic-Reihen · ohne free-vision
]

#v(4pt)
#danger-band[Eine „typische Podagra“ kann eine septische Arthritis maskieren; Kristallnachweis und Gichtanamnese entwarnen *nicht*.]

#v(5pt)
== Big Picture

#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 8pt,
  [
    #set text(size: 8.5pt)
    Klinische Manifestation einer Hyperurikämie mit Natriumurat in Gelenken/Weichteilen. Im Direktzugang: _hochakuter Monoarthritis-Anfall_ — klassisch MTP-I (Podagra), Rötung, Überwärmung, oft Belastungsunfähigkeit binnen Stunden.

    #v(3pt)
    *Fehllabelung* ist die Hauptrisikoquelle: heißes Gelenk + Fieber/Systemik ≠ „nur Gicht“. Screenen · triagieren · Diagnosesicherung und Anfallstherapie ärztlich.
  ],
  soft-card(
    "Drei Anker",
    [
      *Zeit:* Stunden, nicht Tage \
      *Ort:* oft MTP-I; jedes Mono möglich \
      *Nicht entwarnen:* Kristalle / Anamnese ≠ septisch ausgeschlossen
    ],
    fill: rgb("#ecfeff"),
    bar: palette.primary-dark,
  ),
)

== 1. Wann denken?

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  soft-card("WER · Risiken", [Hyperurikämie; purinreich; Alkohol; Diuretika; Adipositas; Niereninsuffizienz], fill: rgb("#f0fdfa")),
  soft-card("WOHER · Kontext", [Frühere Attacken/Tophi; metabolisches Syndrom; Ulzera über Tophi], fill: rgb("#f8fafc"), bar: palette.primary),
  soft-card("WANN · Trigger", [Akut Stunden; Alkohol, Mahlzeit, Med-Änderung. Rezidiv stützt, entwarnt nicht bei Systemik], fill: rgb("#fff7ed"), bar: palette.accent-dark),
)

== 2–3. Mechanismus & Klinik

#grid(
  columns: (1fr, 1.2fr),
  column-gutter: 7pt,
  soft-card(
    "Mechanismus (kurz)",
    [Harnsäure ↑ → Uratkristalle → neutrophile Entzündung. Klinisch oft *nicht* sicher von septischer Arthritis trennbar.],
    fill: rgb("#f8fafc"),
    bar: palette.text-muted,
  ),
  block(
    width: 100%,
    inset: 0pt,
    radius: 2pt,
    stroke: 0.4pt + palette.border,
  )[
    #table(
      columns: (24mm, 1fr),
      stroke: (x: none, y: 0.35pt + palette.border),
      inset: (x: 5pt, y: 4pt),
      fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else { white },
      table.header(
        text(weight: "bold", size: 7.5pt, font: fonts.sans)[Domäne],
        text(weight: "bold", size: 7.5pt, font: fonts.sans)[Merkmale],
      ),
      text(size: 7.5pt, weight: "bold")[Anamnese], text(size: 7.5pt)[Mono binnen Stunden; MTP-I; Trigger; *Fieber?*],
      text(size: 7.5pt, weight: "bold")[Beobachtung], text(size: 7.5pt)[Rötung, Hitze, Schwellung; Schonhaltung; Systemik?],
      text(size: 7.5pt, weight: "bold")[Untersuchung], text(size: 7.5pt)[Druck-/Bewegungsschmerz; *ohne* forcierte Manipulation],
      text(size: 7.5pt, weight: "bold")[Verlauf], text(size: 7.5pt)[Stunden–Tage; polyartikulärer Sturm ≠ typischer Schub],
    )
  ],
)

== 4. Mimic-Peel

#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  row-gutter: 5pt,
  mimic-row("„Nur bekannter Gichtschub“", [Anamnese und Kristalle schließen bakterielle Infektion *nicht* aus. Fieber/Systemik → Infekt-Triage.], danger: true),
  mimic-row("„Umgeknickt / Distorsion“", [Ohne adäquate Traumamechanik + entzündliches Bild: Gicht *und* Infekt mitdenken.], danger: true),
  mimic-row("„Knie-Schub = immer Gicht“", [Knie oft CPPD; septisch bleibt Must-not-miss bis Ausschluss.], danger: true),
  soft-card(
    "DDx-Minimal",
    [
      *Gicht* — Stunden, oft MTP-I, ohne schwere Systemik \
      *Septisch* — Hitze + Fieber/Belastungsunfähigkeit \
      *CPPD* — oft Knie \
      *Trauma / Erysipel* — Mechanik bzw. primär kutan
    ],
    fill: rgb("#f8fafc"),
    bar: palette.primary-dark,
  ),
)

== 5. TIME — Dringlichkeit

#time-tier(
  "112",
  "Sofort Notruf",
  palette.danger,
  rgb("#fef2f2"),
  [Heißes Gelenk + Fieber/Systemik + AZ-Verschlechterung / Sepsis-Zeichen; polyartikulärer Sturm mit schwerer Systembedrohung. → Abbruch, Vitalzeichen, *112*, keine Manipulation/Injektion.],
)
#v(4pt)
#time-tier(
  "NA",
  "Notaufnahme / gleichtags",
  rgb("#c2410c"),
  rgb("#fff7ed"),
  [Akutes heißes Mono mit Belastungsunfähigkeit oder stärkstem Ruheschmerz (*auch ohne* Fieber); Hitze + Fieber/Systemik; nach i.a. Injektion/OP/Trauma; Hochrisiko. → PT stop, *noch heute* NA, septisch bis Ausschluss.],
)
#v(4pt)
#time-tier(
  "Zeitnah",
  "Facharzt / Hausarzt",
  palette.primary,
  rgb("#f0fdfa"),
  [Nur bereits ärztlich eingeordnetes rezidivierendes Muster *ohne* aktuelles heißes Mono mit Belastungsunfähigkeit und *ohne* Systemik. Sicherheitsnetz bei Verschlechterung.],
)
#v(4pt)
#time-tier(
  "Beh.",
  "Behandeln + Netz",
  rgb("#0f766e"),
  rgb("#ecfdf5"),
  [Stabil, ärztlich eingeordnet, keine Red Flags. Schmerzarmer Rahmen; keine forcierte Belastung im akuten heißen Anfall.],
)

#v(5pt)
#block(
  width: 100%,
  inset: 7pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger),
)[
  #text(size: 8pt, weight: "bold", fill: palette.danger, font: fonts.sans)[Grenze / absolute Kontraindikationen bis Ausschluss]
  #v(2pt)
  #text(size: 7.8pt)[Keine Punktion, keine IA-Injektion durch HP, keine forcierte Manipulation am unklar heißen Gelenk; kein „Probebehandeln“ bei Fieber/Systemik.]
]

== 6. Mini-Fall

#block(
  width: 100%,
  inset: 7pt,
  radius: 2pt,
  fill: rgb("#f8fafc"),
  stroke: 0.45pt + palette.border,
)[
  #text(size: 8pt, weight: "bold", font: fonts.sans, fill: palette.primary-dark)[54 J., „wieder Podagra“, MTP-I heiß, Vorfuß unbelastet, Fieber 38,3 °C, bittet um Mobilisation]
  #v(4pt)
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 6pt,
    soft-card("Vordergrund", [Infekt-Triage — heißes Mono + Systemik], fill: rgb("#fef2f2"), bar: palette.danger),
    soft-card("Kontraindiziert", [Mobilisation · Injektion · abwarten], fill: rgb("#fff7ed"), bar: rgb("#c2410c")),
    soft-card("Nächster Schritt", [Stop → NA/112 je AZ; septisch bis Ausschluss], fill: rgb("#ecfdf5"), bar: rgb("#0f766e")),
  )
]

#v(6pt)
#align(center)[
  #text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)[
    Parent V-3 · heißes Gelenk → bakterielle Arthritis mitdenken · Kristalle entwarnen nicht
  ]
]
