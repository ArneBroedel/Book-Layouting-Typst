// Form Lab Pass C (c-wave) — Melanom ABCDE · Color / Chrome / simple forms
// lab: melanom-abcde-2026-08-c · pin: chapter-v-10-melanom-abcde-hautscreening.md
// ALLOW: semantic color, bars, bands, cards, TIME stack · DENY: rainbow ABCDE letter chips, free-vision, large SVG

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Melanom ABCDE — Form Lab Pass C (c-wave)", author: "form-lab/melanom-abcde-2026-08-c/C")
#set page(
  paper: "a4",
  margin: (inside: 17mm, outside: 14mm, top: 12mm, bottom: 13mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(
      columns: (1fr, auto),
      [Melanom ABCDE · Form Lab c · Pass C (Color/Chrome)],
      [Screen · zuweisen · keine Exzision],
    )
    line(length: 100%, stroke: 0.4pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [Form Lab · chrome extreme · wave c · no rainbow ABCDE], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.8pt, fill: palette.text-body)
#set par(leading: 0.58em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 14.5pt, weight: "bold", fill: palette.primary-dark)
  block(below: 4pt, above: 0pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10.5pt, weight: "bold", fill: palette.primary)
  block(below: 4pt, above: 7pt)[
    #it.body
    #v(1.5pt)
    #line(length: 24mm, stroke: 1.1pt + palette.primary)
  ]
}

#let danger-band(body) = block(
  width: 100%,
  inset: 7pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger, rest: 0.45pt + palette.danger.lighten(40%)),
)[
  #set text(size: 8.2pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  #body
]

#let soft-card(title, body, fill: rgb("#f0fdfa"), bar: palette.primary) = block(
  width: 100%,
  inset: (left: 7pt, rest: 5.5pt),
  radius: 2pt,
  fill: fill,
  stroke: (left: 3pt + bar, rest: 0.4pt + bar.lighten(45%)),
)[
  #text(size: 7.8pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
  #v(2pt)
  #set text(size: 7.5pt)
  #body
]

// Quiet same-family ABCDE letter — NOT rainbow clinical-C-as-UI-hues
#let abcde-row(letter, name, body) = block(
  width: 100%,
  inset: (x: 5pt, y: 3.2pt),
  fill: white,
  stroke: (bottom: 0.35pt + palette.border-light),
)[
  #grid(
    columns: (9mm, 28mm, 1fr),
    column-gutter: 4pt,
    align(horizon)[
      #box(
        width: 7.5mm,
        height: 7.5mm,
        radius: 1pt,
        fill: palette.primary-dark,
        stroke: none,
      )[
        #align(center + horizon)[
          #text(size: 9pt, weight: "bold", fill: white, font: fonts.sans)[#letter]
        ]
      ]
    ],
    align(horizon)[
      #text(size: 8pt, weight: "bold", fill: palette.primary-dark, font: fonts.sans)[#name]
    ],
    align(horizon)[
      #text(size: 7.6pt)[#body]
    ],
  )
]

#let time-tier(code, title, bar, fill, body) = block(
  width: 100%,
  inset: 0pt,
  radius: 2pt,
  clip: true,
  stroke: 0.45pt + bar.lighten(30%),
)[
  #grid(
    columns: (20mm, 1fr),
    block(width: 100%, fill: bar, inset: (x: 3pt, y: 7pt))[
      #align(center)[
        #text(size: 8pt, weight: "bold", fill: white, font: fonts.sans)[#code]
      ]
    ],
    block(width: 100%, fill: fill, inset: 6pt)[
      #text(size: 7.8pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
      #v(1.5pt)
      #set text(size: 7.3pt)
      #body
    ],
  )
]

#let mimic-row(title, body) = block(
  width: 100%,
  inset: (left: 7pt, rest: 5pt),
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger, rest: 0.35pt + palette.danger.lighten(40%)),
)[
  #text(size: 7.6pt, weight: "bold", fill: palette.danger, font: fonts.sans)[#title]
  #v(1.5pt)
  #set text(size: 7.3pt)
  #body
]

// ── Title ─────────────────────────────────────────────────────
= Melanom – ABCDE-Hautscreening im Direktzugang

#text(size: 8.5pt, fill: palette.text-muted, font: fonts.sans)[
  Pass C: Color / Chrome · quiet ABCDE (same-family) · TIME-Stapel · Mimic-Reihen
]

#v(3pt)
#danger-band[Keine Melanom-Diagnose und keine destruktiven Maßnahmen. ABCDE-suspekt → gleichtags–zeitnah zuweisen; 112 nur bei vitaler Begleitlage.]

== Big Picture

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  soft-card(
    [HP-Rolle],
    [Strukturierter Blick (ABCDE + Ugly Duckling) beim Entkleiden · beschreiben · *zuweisen* — nicht diagnostizieren oder exzidieren.],
    fill: rgb("#f0fdfa"),
    bar: palette.primary,
  ),
  soft-card(
    [Gefahr Fehllabel],
    [„Alter Fleck“, „seborrhoische Keratose“, „Nagelhämatom“ ohne Evolutionsfrage → verzögerte Diagnostik.],
    fill: rgb("#fef2f2"),
    bar: palette.danger,
  ),
  soft-card(
    [Dringlichkeit],
    [Melanom typisch *nicht* 112. Blutend/ulzeriert/ABCDE-suspekt → gleichtags–zeitnah HA/Derm.],
    fill: rgb("#f8fafc"),
    bar: palette.primary-dark,
  ),
)

== ABCDE — quiet letter hierarchy

#text(size: 7.3pt, fill: palette.text-muted, font: fonts.sans)[
  Same-family chips (primary-dark) — *Color* = pigment variety in one lesion, not rainbow UI hues.
]

#v(2pt)
#block(
  width: 100%,
  radius: 2pt,
  stroke: 0.45pt + palette.primary.lighten(40%),
  fill: rgb("#f8fafc"),
  inset: (y: 1pt, x: 0pt),
)[
  #abcde-row([A], [Asymmetrie], [Hälften nicht deckungsgleich])
  #abcde-row([B], [Begrenzung], [unscharf / unregelmäßig])
  #abcde-row([C], [Color], [Farbvielfalt *in einer* Läsion])
  #abcde-row([D], [Durchmesser], [typisch > 5 mm — nicht allein ausschlaggebend])
  #abcde-row([E], [Evolution], [Form/Farbe/Größe, Juckreiz, Blutung])
]

#v(4pt)
#block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#fff7ed"),
  stroke: (left: 3.5pt + palette.warning, rest: 0.4pt + palette.warning.lighten(35%)),
)[
  #set text(size: 7.8pt)
  #text(weight: "bold", fill: palette.warning.darken(15%))[
    #fa-icon("star", solid: true, size: 8pt)  Ugly Duckling
  ]
  #v(2pt)
  #text(size: 7.4pt)[
    Die Läsion, die *anders* ist als die übrigen Nävi — auch ohne volles ABCDE. Einzeln und im Vergleich bewerten.
  ]
]

== 1. Wann denken?

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  soft-card([Risiken / WER], [UV/Solarium; Hauttyp I–II; atypische Nävi; familiäres Melanom; Immunsuppression], fill: rgb("#f0fdfa")),
  soft-card([Kontext / WO], [Dysplastische Nävi; frühere Hauttumoren; Rücken/Nacken schlecht einsehbar; Nagel *ohne* Trauma], fill: rgb("#f8fafc"), bar: palette.primary-dark),
  soft-card([Zeit / WANN], [Neu oder Evolution Wochen–Monate; Blutung/Ulzeration], fill: rgb("#fff7ed"), bar: palette.warning.darken(10%)),
)

== 2–3. Mechanismus & Klinik

#grid(
  columns: (0.9fr, 1.1fr),
  column-gutter: 6pt,
  soft-card(
    [Mechanismus (kurz)],
    [UV-DNA-Schäden → unkontrolliertes Melanozytenwachstum. Früh ärztlich exzidiert → bessere Prognose. DA: Blick + Zuweisung.],
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
      inset: (x: 5pt, y: 3.5pt),
      fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else { white },
      table.header(
        text(weight: "bold", size: 7.2pt, font: fonts.sans)[Domäne],
        text(weight: "bold", size: 7.2pt, font: fonts.sans)[Merkmale],
      ),
      text(size: 7.3pt, weight: "bold")[Anamnese], text(size: 7.3pt)[Neu/Veränderung; Juckreiz/Blutung; UV; subungual Trauma?],
      text(size: 7.3pt, weight: "bold")[Beobachtung], text(size: 7.3pt)[ABCDE; Ugly Duckling; *Rücken mitinspizieren*],
      text(size: 7.3pt, weight: "bold")[Untersuchung], text(size: 7.3pt)[*Keine* Biopsie/Kürettage/Destruktion],
      text(size: 7.3pt, weight: "bold")[Verlauf], text(size: 7.3pt)[Größe/Form/Farbe ↑; Blutung; B-Symptome + Knoten],
    )
  ],
)

== 4. Mimics / trügerische Erklärungen

#grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 4pt,
  mimic-row([„Alter Fleck“], [Ohne Evolutionsfrage wird maligne Transformation verpasst.]),
  mimic-row([„Seborrhoische Keratose“], [Endgültige Einordnung *ärztlich*; bei ABCDE-Suspekt zuweisen.]),
  mimic-row([„Nagelhämatom“], [Ohne Trauma + Nagelwall-Pigment → Melanom-DDx zeitnah.]),
  mimic-row([„Rücken nicht Behandlungsziel“], [Bei Entkleidung mitinspizieren und bei Auffälligkeit zuweisen.]),
)

#v(3pt)
#block(breakable: false)[
  #soft-card(
    [DDx-Minimal],
    [
      *Melanom-Verdacht* — ABCDE+/Evolution/Ugly Duckling/Blutung → zuweisen \
      *Atypischer Nävus* — ABCDE-ähnlich; nur ärztlich/histologisch \
      *Seborrhoische Keratose* — oft „aufgeklebt“; bei Unsicherheit nicht selbst etikettieren \
      *Subunguales Hämatom* — Trauma; ohne Trauma + Nagelwall → Melanom-DDx
    ],
    fill: rgb("#f8fafc"),
    bar: palette.primary-dark,
  )
]

== 5. TIME — Dringlichkeit

#stack(
  spacing: 3.5pt,
  // 112 de-emphasized: quiet outline, not solid shout (screening ≠ Notfall)
  block(
    width: 100%,
    inset: (left: 8pt, rest: 5.5pt),
    radius: 2pt,
    fill: white,
    stroke: (left: 2.5pt + palette.text-muted, rest: 0.45pt + palette.border),
  )[
    #text(size: 7.5pt, weight: "bold", fill: palette.text-muted, font: fonts.sans)[112 · selten]
    #v(1.5pt)
    #text(size: 7.2pt, fill: palette.text-muted)[
      Nur vitale Begleitlage (schwere Blutung, Schock). Melanom selbst onkologisch-dermatologisch zeitkritisch, *nicht* primär reanimationspflichtig.
    ]
  ],
  // solid shout for primary screening urgency
  block(
    width: 100%,
    radius: 2pt,
    clip: true,
    stroke: 0.6pt + palette.danger,
  )[
    #block(width: 100%, fill: palette.danger, inset: 6pt)[
      #set text(fill: white)
      #grid(
        columns: (auto, 1fr),
        column-gutter: 6pt,
        align(horizon)[
          #box(fill: white, inset: (x: 5pt, y: 2pt), radius: 2pt,
            text(size: 7.5pt, weight: "bold", fill: palette.danger)[G-Z])
        ],
        align(horizon)[#text(size: 8.5pt, weight: "bold")[Gleichtags–zeitnah — primäre Stufe]],
      )
      #v(2pt)
      #set text(size: 7.2pt)
      Blutung/Ulzeration unklar; ABCDE-suspekt/rasch wachsend; B-Symptome + multiple Hautknoten. → Stopp an Läsion; *keine* Destruktion; gleichtags HA/Derm; schriftlich „Melanom-DDx / ABCDE-suspekt?“
    ]
  ],
  time-tier(
    [Derm],
    [Zeitnah Dermatologie / HA],
    palette.primary,
    rgb("#f0fdfa"),
    [Subungual + Nagelwall (Hutchinson-Verdacht); Ugly Duckling ohne akute Blutung. → Schriftliche Zuweisung zur Exzisionsabklärung.],
  ),
  time-tier(
    [Beh.],
    [Behandeln + Sicherheitsnetz],
    rgb("#0f766e"),
    rgb("#ecfdf5"),
    [Ohne Suspekt: MSK fortsetzen; neu auffällige Läsion → stoppen + zuweisen; Hinweis gesetzliches Screening (DE ab 35 J., alle 2 J.) ohne es zu ersetzen.],
  ),
)

#v(4pt)
#block(
  width: 100%,
  inset: 6.5pt,
  radius: 2pt,
  fill: white,
  stroke: 0.9pt + palette.text-muted,
)[
  #text(size: 7.5pt, weight: "bold", fill: palette.text-muted, tracking: 0.3pt, font: fonts.sans)[
    #upper[Grenze der eigenen Zuständigkeit]
  ]
  #v(2pt)
  #text(size: 7.3pt)[
    Keine Melanom-Diagnose, keine Exzision, keine destruktiven Maßnahmen. Endgültige DDx (seborrhoische Keratose vs. Melanom) ist *ärztlich*.
  ]
]

== 6. Fall zur Selbstprüfung

#block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#f8fafc"),
  stroke: (left: 3.5pt + palette.primary, rest: 0.45pt + palette.border),
)[
  #set text(size: 7.8pt)
  #text(weight: "bold", fill: palette.primary)[Situation: ]
  52 J. nach Diskektomie. Schulterblatt: asymmetrisch, unregelmäßig, mehrfarbig ~8 mm, „schon ewig, juckt manchmal.“ Keine B-Symptome. Will mobilisiert werden.
]

#v(3pt)
#block(breakable: false)[
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 5pt,
    soft-card([(1) Maßgeblich], [ABCDE-suspekt → gleichtags–zeitnah zuweisen, nicht bagatellisieren.], fill: rgb("#fef2f2"), bar: palette.danger),
    soft-card([(2) Kontraindiziert], [Destruktive Maßnahmen; Eigenetikettierung „alter Fleck“.], fill: rgb("#fff7ed"), bar: palette.warning.darken(10%)),
    soft-card([(3) Sicherer Schritt], [Schriftlich HA/Derm; MSK mit Sicherheitsnetz; Läsion unberührt.], fill: rgb("#ecfdf5"), bar: rgb("#0f766e")),
  )
]

#v(5pt)
#align(center)[
  #text(size: 7.3pt, fill: palette.text-muted, font: fonts.sans)[
    Merksatz: Screen ≠ Notfall · ABCDE quiet · suspekt → zuweisen · Rücken mitinspizieren
  ]
]
