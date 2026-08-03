// Form Lab Pass C (d-wave) — Melanom ABCDE · Color / Chrome
// lab: melanom-abcde-2026-08-d · pin: chapter-v-10-melanom-abcde-hautscreening.md
// ALLOW: semantic color, bars, bands, cards, TIME chrome
// DENY: free-vision heroes, rainbow ABCDE letter color chips

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Melanom ABCDE — Form Lab Pass C (d-wave)", author: "form-lab/melanom-abcde-2026-08-d/C")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 10mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Melanom · Form Lab d · Pass C · Color/Chrome], [Zuweisung · keine Exzision])
    line(length: 100%, stroke: 0.4pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [wave-d · chrome extreme · quiet ABCDE], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.6pt, fill: palette.text-body)
#set par(leading: 0.58em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 14pt, weight: "bold", fill: palette.primary-dark)
  block(below: 4pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 9.6pt, weight: "bold", fill: palette.primary)
  block(below: 3pt, above: 5.5pt)[
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
  #text(size: 7.1pt, weight: "bold", fill: fg, font: fonts.sans)[#label]
]

#let panel(title, body, bar: palette.primary, fill: rgb("#f0fdfa")) = block(
  width: 100%,
  inset: (left: 8pt, rest: 5.5pt),
  radius: 3pt,
  fill: fill,
  stroke: (left: 3.2pt + bar, rest: 0.4pt + bar.lighten(50%)),
)[
  #text(size: 7.6pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
  #v(2pt)
  #set text(size: 7.4pt)
  #body
]

#let danger-band(body) = block(
  width: 100%,
  inset: 7pt,
  radius: 3pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 4pt + palette.danger, rest: 0.45pt + palette.danger.lighten(40%)),
)[
  #set text(size: 8.1pt)
  #text(weight: "bold", fill: palette.danger)[Rolle im Direktzugang: ]
  #body
]

// Quiet ABCDE row — same family teal, weight hierarchy only (NO rainbow)
#let abcde-cell(letter, name, body) = block(
  width: 100%,
  radius: 2pt,
  clip: true,
  stroke: 0.45pt + palette.primary.lighten(35%),
)[
  #block(width: 100%, fill: palette.primary-dark, inset: (x: 3pt, y: 4pt))[
    #align(center)[
      #text(size: 11pt, weight: "bold", fill: white, font: fonts.sans)[#letter]
    ]
  ]
  #block(width: 100%, inset: 3pt, fill: rgb("#f0fdfa"), height: 20mm)[
    #text(size: 6.4pt, weight: "bold", fill: palette.primary-dark, font: fonts.sans)[#name]
    #v(1pt)
    #set text(size: 6pt)
    #body
  ]
]

#let ladder-cell(code, title, bar, body) = block(
  width: 100%,
  radius: 3pt,
  clip: true,
  stroke: 0.45pt + bar.lighten(25%),
)[
  #block(width: 100%, fill: bar, inset: (x: 3pt, y: 4pt))[
    #align(center)[
      #text(size: 8.5pt, weight: "bold", fill: white, font: fonts.sans)[#code]
    ]
  ]
  #block(width: 100%, inset: 3.5pt, fill: bar.lighten(92%), height: 24mm)[
    #text(size: 6.5pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
    #v(1pt)
    #set text(size: 6pt)
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
  #text(size: 7.4pt, weight: "bold", fill: rgb("#c2410c"), font: fonts.sans)[#title]
  #v(1.5pt)
  #set text(size: 7.1pt)
  #body
]

// ── Title ─────────────────────────────────────────────────────
= Melanom — ABCDE-Hautscreening im Direktzugang

#text(size: 7.9pt, fill: palette.text-muted, font: fonts.sans)[
  Pass C (d): Color · Chrome · quiet ABCDE · TIME-Leiter · Mimic-Peel · ohne free-vision
]

#v(3pt)
#danger-band[
  Strukturierter Blick (ABCDE, Ugly Duckling) + Dringlichkeit + *ärztliche Zuweisung* — keine Exzision, keine physiotherapeutische Hautdiagnose.
]

#v(3pt)
#grid(
  columns: (auto, auto, auto, auto, 1fr),
  column-gutter: 4pt,
  chip("ABCDE", rgb("#ecfeff"), palette.primary-dark),
  chip("Ugly Duckling", rgb("#f0fdfa"), palette.primary),
  chip("Zuweisen", rgb("#fef2f2"), palette.danger),
  chip("112 selten", rgb("#f8fafc"), palette.text-muted),
  [],
)

== Big Picture

#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 7pt,
  [
    #set text(size: 8.1pt)
    Aggressiver Melanozyten-Tumor mit Metastasierungstendenz. Im Direktzugang: *kein* dermatologisches Feinscreening — Früherkennung suspekter Veränderungen und rechtzeitige Zuweisung.

    #v(2pt)
    *Bagatellisierung* („alter Fleck“), übersehener Rücken/Nacken und subunguales Melanom vs. Hämatom ohne Trauma sind die Hauptfallen.
  ],
  panel(
    "Drei Anker",
    [
      *Rolle* — Blick + Zuweisung \
      *Werkzeug* — ABCDE + Ugly Duckling \
      *Grenze* — keine destruktiven Maßnahmen
    ],
    bar: palette.primary-dark,
    fill: rgb("#ecfeff"),
  ),
)

== 1. Wann denken?

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  panel("WER · Risiken", [UV/Solarium; Hauttyp I–II; viele/atypische Nävi; familiäres Melanom; Immunsuppression], fill: rgb("#f0fdfa")),
  panel("WO · Kontext", [Dysplastische Nävi; frühere Hauttumoren; blinde Zonen Rücken/Nacken/Sohle; Nagel ohne Trauma], fill: rgb("#f8fafc"), bar: palette.primary),
  panel("WANN · Evolution", [Neu oder verändert (Form/Farbe/Größe); Juckreiz, Blutung; Wochen–Monate], fill: rgb("#fff7ed"), bar: palette.accent-dark),
)

== 2–3. Mechanismus & ABCDE (quiet hierarchy)

#text(size: 7.3pt, fill: palette.text-muted, font: fonts.sans)[
  Mechanismus: UV-DNA → Melanozytenwachstum · HP-Beitrag: Blick + Zuweisung. ABCDE als *eine* Chrome-Familie (teal) — *kein* Regenbogen.
]

#v(2pt)
#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  abcde-cell("A", "Asymmetrie", [Hälften spiegeln sich nicht.]),
  abcde-cell("B", "Begrenzung", [Unscharf, unregelmäßig, ausfransend.]),
  abcde-cell("C", "Color", [Mehrere Pigmenttöne *in der Läsion*.]),
  abcde-cell("D", "Durchmesser", [Typisch > 5 mm; klein ≠ harmlos.]),
  abcde-cell("E", "Evolution", [Form/Farbe/Größe; Juckreiz, Blutung.]),
)

#v(4pt)
#panel(
  "Ugly Duckling",
  [Eine Läsion unterscheidet sich klar von den übrigen Nävi des Patienten — auch wenn Einzel-ABCDE unklar bleibt. Mitinspizieren bei Entkleidung (Rücken!).],
  bar: palette.primary-dark,
  fill: rgb("#ecfeff"),
)

== 4. Mimic-Peel

#grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 5pt,
  peel[„Alter Fleck, den man schon immer hatte“][Ohne Evolutionsfrage (Form, Farbe, Größe, Juckreiz, Blutung) wird Transformation verpasst.],
  peel[„Seborrhoische Keratose / harmloser Nävus“][Endgültige Einordnung ärztlich; bei ABCDE-Suspekt zuweisen, nicht eigenetikettieren.],
  peel[„Subunguales Hämatom nach Trauma“][Ohne Trauma-Anamnese + Nagelwall-Pigment → Melanom-DDx zeitnah Dermatologie.],
  peel[„Rücken ist nicht Behandlungsziel“][Patient sieht Rücken oft nicht — bei Entkleidung mitinspizieren und bei Auffälligkeit zuweisen.],
)

== 5. TIME — Dringlichkeitsleiter

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 5pt,
  ladder-cell(
    "112",
    "Selten primär",
    palette.danger,
    [Nur vitale Begleitlage (schwere Blutung, Schock). Melanom ≠ reanimationspflichtig.],
  ),
  ladder-cell(
    "Gleichtags",
    "HA / Derm",
    rgb("#c2410c"),
    [Blutung/Ulzeration; ABCDE-suspekt/rasch; B-Symptome + Knoten. Stop · keine Destruktion · „Melanom-DDx?“.],
  ),
  ladder-cell(
    "Zeitnah",
    "Dermatologie",
    palette.primary,
    [Subungual + Nagelwall; Ugly Duckling ohne Blutung. Schriftliche Zuweisung + Netz.],
  ),
  ladder-cell(
    "Beh.",
    "+ Netz",
    rgb("#0f766e"),
    [Ohne Suspekt: MSK fortsetzen; neu auffällig → stop + zuweisen; Screening-Hinweis ab 35 J.],
  ),
)

#v(4pt)
#block(
  width: 100%,
  inset: 7pt,
  radius: 3pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger),
)[
  #text(size: 7.7pt, weight: "bold", fill: palette.danger, font: fonts.sans)[Grenze — absolute Kontraindikationen]
  #v(2pt)
  #text(size: 7.5pt)[Keine Melanom-Diagnose, keine Exzision, keine destruktiven Maßnahmen (Kürettage, Abkratzen, Injektion in die Läsion). Endgültige DDx ist ärztlich.]
]

== 6. Mini-Fall

#block(breakable: false)[
  #block(
    width: 100%,
    inset: 6pt,
    radius: 3pt,
    fill: rgb("#f8fafc"),
    stroke: 0.45pt + palette.border,
  )[
    #text(size: 7.5pt, weight: "bold", font: fonts.sans, fill: palette.primary-dark)[
      52 J., post Diskektomie · Entkleiden: rechte Schulterblatt-Läsion 8 mm, asymmetrisch, unregelmäßig, mehrfarbig · „schon ewig, juckt manchmal“ · will mobilisiert werden
    ]
    #v(3pt)
    #grid(
      columns: (1fr, 1fr, 1fr),
      column-gutter: 5pt,
      panel("Vordergrund", [ABCDE+ am Rücken + Juckreiz → *Zuweisung*, nicht nur MSK-Optimierung], fill: rgb("#fef2f2"), bar: palette.danger),
      panel("Kontraindiziert", [Destruktion · Bagatellisieren als „alter Fleck“ · abwarten ohne ärztliche Klärung], fill: rgb("#fff7ed"), bar: rgb("#c2410c")),
      panel("Nächster Schritt", [Befund (Ort, Größe, ABCDE) · gleichtags/zeitnah Derm/HA · MSK ohne Läsionsmanipulation], fill: rgb("#ecfdf5"), bar: rgb("#0f766e")),
    )
    #v(2pt)
    #text(size: 7.1pt, fill: palette.text-muted)[Lernpunkt: Rücken beim Entkleiden mitinspizieren → strukturiert bewerten → zuweisen. 112 nicht bei stabilem AZ ohne Blutung/Schock.]
  ]
  #v(2pt)
  #align(center)[
    #text(size: 7pt, fill: palette.text-muted, font: fonts.sans)[
      Parent V-10 · quiet ABCDE chrome · 112 selten · wave-d / C
    ]
  ]
]
