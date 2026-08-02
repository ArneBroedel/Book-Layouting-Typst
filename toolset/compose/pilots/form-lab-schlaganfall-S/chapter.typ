// Form Lab Pass S — Schlaganfall synthesis from matrix winners only
// Winners: C danger/TIME/mimic/case · V+R FAST atoms · T body tables
// lab: schlaganfall-2026-08 · see comparison/matrix.md

#import "/packages/bookkit/lib.typ": *
#import "@preview/cetz:0.3.4"
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Schlaganfall — Form Lab Pass S", author: "form-lab/schlaganfall-2026-08/S")
#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 14mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Schlaganfall · Form Lab · Pass S (Synthesis)], [C+T+V+R winners only])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(3pt)
    grid(columns: (1fr, auto), [Form Lab · synthesis], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 9pt)
#set par(leading: 0.62em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 15pt, weight: "bold", fill: palette.primary-dark)
  block(below: 5pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 11pt, weight: "bold", fill: palette.primary)
  block(below: 5pt, above: 10pt)[
    #it.body
    #v(2pt)
    #line(length: 24mm, stroke: 1pt + palette.primary)
  ]
}

#let face-asym() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  circle((0, 0), radius: (7, 9), fill: rgb("#f0fdfa"), stroke: 0.9pt + palette.primary-dark)
  circle((-2.5, 2), radius: 1, fill: palette.primary-dark, stroke: none)
  circle((2.5, 2), radius: 1, fill: palette.primary-dark, stroke: none)
  line((-3.5, -3), (-1, -4), (2, -3), (3.5, -2.8), stroke: 1.2pt + palette.danger)
  line((-3.8, -2.8), (-4.5, -5), stroke: 1pt + palette.danger)
})

#let time-tier(code, title, bar, fill, action, triggers, solid: false) = {
  block(
    width: 100%,
    radius: 2pt,
    clip: true,
    breakable: false,
    stroke: 0.45pt + bar.lighten(20%),
    fill: fill,
  )[
    #if solid {
      block(width: 100%, inset: (x: 7pt, y: 4pt), fill: bar)[
        #set text(size: 8.2pt, weight: "bold", fill: white, font: fonts.sans)
        #code — #title
      ]
    } else {
      block(width: 100%, inset: (x: 7pt, y: 4pt), fill: fill, stroke: (left: 3.2pt + bar))[
        #text(size: 8.2pt, weight: "bold", fill: bar.darken(10%), font: fonts.sans)[#code — #title]
      ]
    }
    #block(inset: (x: 8pt, y: 4pt))[
      #set text(size: 7.5pt)
      #text(weight: "bold")[Handlung: ] #action
      #v(2pt)
      #for t in triggers [• #t #linebreak()]
    ]
  ]
}

#let A = "/domains/medical/assets/form-lab/schlaganfall-2026-08/R"

// ── Title + C danger band ─────────────────────────────────────
= Schlaganfall und TIA — fokal, plötzlich, 112

#text(size: 8.5pt, fill: palette.text-muted, font: fonts.sans)[
  Synthesis · Matrix winners: C (chrome) · R/V (FAST recognition) · T (type body)
]

#v(4pt)
#block(
  width: 100%, inset: 8pt, radius: 2pt, fill: rgb("#fef2f2"),
  stroke: (left: 4pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
)[
  #set text(size: 9pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  Verdacht → *112* / Stroke-Unit; kein MSK-Abwarten, keine HWS-Manipulation. Remission entwarnt _nicht_ (TIA = Notfall).
]

// ── Recognition: R atoms + V glyph ────────────────────────────
== Erkennung — FAST (R + V)

#grid(
  columns: (1fr, 1fr, 1fr, 28mm),
  column-gutter: 5pt,
  image(A + "/atom-face-droop.jpg", width: 100%),
  image(A + "/atom-arm-drift.jpg", width: 100%),
  image(A + "/atom-speech.jpg", width: 100%),
  align(center + horizon)[#face-asym()],
)

#v(3pt)
#set text(size: 8pt)
*Raster (Pass R):* Face / Arm / Speech-Gestalt. *Vektor (Pass V):* Asymmetrie-Glyph. *Claim-Grenze:* Bilder lehren Gestalt, nicht die Diagnose. FAST ≥ 1 + plötzlicher Beginn → *112*. BE-FAST für Posterior.

// ── Big Picture type (T) ──────────────────────────────────────
== Big Picture

#set text(size: 8.5pt)
Schlaganfall: plötzlicher Hirnfunktionsausfall (Ischämie ~80–85 % / Blutung ~15–20 %). TIA: flüchtiges fokal-neurologisches Defizit — bis Ausschluss *Notfall*. *Last seen normal* dokumentieren; Lyse typisch < 4,5 h.

#v(3pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  block(inset: 6pt, fill: rgb("#f0fdfa"), radius: 2pt, stroke: 0.4pt + palette.primary.lighten(30%))[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Risiken]
    #v(2pt)
    #text(size: 7.5pt)[Hypertonie; VHF; Diabetes; Rauchen — oft initial unbekannt]
  ],
  block(inset: 6pt, fill: rgb("#fef2f2"), radius: 2pt, stroke: 0.4pt + palette.danger.lighten(40%))[
    #text(size: 8pt, weight: "bold", fill: palette.danger)[Fehllabel]
    #v(2pt)
    #text(size: 7.5pt)[„HWS-Blockade“, periphere Fazialis, Migräne-Aura, Schulter-Arm]
  ],
  block(inset: 6pt, fill: rgb("#f8fafc"), radius: 2pt, stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary-dark)[HP-Rolle]
    #v(2pt)
    #text(size: 7.5pt)[Screen · *112* · sichern — keine Provokationstests]
  ],
)

// ── Cues type table (T) ───────────────────────────────────────
== Klinische Hinweise

#table(
  columns: (26mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 0pt, y: 4pt),
  [*Anamnese*], [Plötzliche halbseitige Schwäche; Mundwinkel; Sprache; Sehstörung; Schwindel + fokal; *Last seen normal*],
  [*Beobachtung*], [Gesichtsasymmetrie; hängende Extremität; unklare Sprache; Unsicherheit Stand/Gang],
  [*Untersuchung*], [FAST ≥ 1 → Verdacht; BE-FAST grob; *keine* Provokationstests],
  [*Verlauf*], [Perakut; *bereits remittiert* = TIA-Verdacht bis Ausschluss],
)

// ── Mimic chrome (C) ──────────────────────────────────────────
== Trügerische Erklärungen (C)

#let mrow(a, b) = block(
  width: 100%, inset: 5.5pt, radius: 2pt, stroke: 0.45pt + palette.border,
)[
  #grid(
    columns: (1fr, 12pt, 1.1fr),
    text(size: 7.8pt)[#a],
    align(center)[#text(fill: palette.danger, weight: "bold")[→]],
    text(size: 7.8pt, weight: "bold", fill: palette.danger)[#b],
  )
]
#stack(
  spacing: 3.5pt,
  mrow([„HWS-Blockade / Schwindel“], [Schwindel + fokal → *112*; keine HWS-Mobilisation]),
  mrow([„Periphere Fazialis“], [Stirn-Check; Begleitdefizite → Stroke-Pfad]),
  mrow([„Migräne-Aura“ / „Schulter-Arm“], [Apoplektiform + zentral → Notfall bis Ausschluss]),
)

// ── TIME chrome (C) ───────────────────────────────────────────
== Handeln und Dringlichkeit (C)

#stack(
  spacing: 4pt,
  time-tier(
    "112", "Sofort — Notruf / Stroke-Unit", palette.danger, rgb("#fef2f2"),
    [Sitzung stoppen · *112* · sichern · keine weiteren Tests · Stroke-Unit-Pfad.],
    ([FAST ≥ 1 mit plötzlichem Beginn], [Halbseitige Sensibilitäts-/Sehstörung], [Schwindel *plus* fokal], [TIA-ähnlich — *auch remittiert*, bes. 48 h]),
    solid: true,
  ),
  time-tier(
    "NA", "Gleichtags Arzt (ohne 112-Kriterien)", palette.warning, rgb("#fff7ed"),
    [PT aussetzen · gleichtags ärztlich · bei Dynamik *sofort 112*.],
    ([Nur ohne akutes fokal-neurologisches Bild], [Unklare langsame Progredienz (Tage/Wochen)]),
  ),
  time-tier(
    "Beh.", "Behandeln + Sicherheitsnetz", palette.primary, rgb("#f0fdfa"),
    [PT möglich · Vigilanz · Abbruchkriterien.],
    ([Gesicherte MSK ohne Red Flags], [Nach TIA/Stroke erst nach Freigabe Akutphase]),
  ),
)

#v(4pt)
#block(
  width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger),
)[
  #set text(size: 7.5pt)
  #text(weight: "bold", fill: palette.danger)[Grenze / Absolute KI: ]
  keine HWS-Manipulation / Provokationstests bei Verdacht; ABCD² ersetzt keine Notfallabklärung; kein Abwarten bei ungeklärtem fokal-neurologischem Defizit.
]

// ── Case C cards ──────────────────────────────────────────────
== Fall zur Selbstprüfung

#block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: (left: 3pt + palette.primary))[
  #set text(size: 8.3pt)
  *Situation:* 67 J., „steife HWS und Schwindel“. Vor ~40 min linke Hand „weg“, Sprache undeutlich — fast wieder weg. Hypertonie. Wünscht HWS-Mobilisation.
]

#v(4pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  block(inset: 6pt, fill: rgb("#fef2f2"), radius: 2pt, stroke: 0.4pt + palette.danger.lighten(40%))[
    #text(size: 8pt, weight: "bold", fill: palette.danger)[(1) Vordergrund]
    #v(2pt)
    #text(size: 7.5pt)[TIA bis Ausschluss — remittiert entwarnt nicht]
  ],
  block(inset: 6pt, fill: rgb("#fff7ed"), radius: 2pt, stroke: 0.4pt + palette.warning.lighten(30%))[
    #text(size: 8pt, weight: "bold", fill: palette.warning.darken(10%))[(2) KI]
    #v(2pt)
    #text(size: 7.5pt)[HWS-Mobilisation, Abwarten, MSK-Tests]
  ],
  block(inset: 6pt, fill: rgb("#f0fdfa"), radius: 2pt, stroke: 0.4pt + palette.primary.lighten(30%))[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[(3) Schritt]
    #v(2pt)
    #text(size: 7.5pt)[Stopp · *112* · Last seen normal]
  ],
)

#v(6pt)

#v(6pt)

#v(5pt)
#set text(size: 8pt)
#table(
  columns: (28mm, 1fr, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else { white },
  [*Job*], [*Medium-Beitrag*], [*Grenze*],
  [Danger], [Lead/Safety sichtbar], [Keine Claim-Erfindung],
  [Erkennung], [Atoms/Schema/Text], [Gestalt ≠ Diagnose],
  [Handlung], [TIME/Sequenz lesbar], [HP-Grenze genannt],
  [Transfer], [Mini-Fall beantwortet], [KI explizit],
)
#v(4pt)
#text(size: 8.2pt)[
  *Residual (dieses Medium):* Was hier noch schwach bleibt, motiviert die anderen Form-Lab-Pässe — dokumentiert in `comparison/matrix.md`, nicht durch leere Seiten kaschiert.
]

// Density fill — prevent orphan last page (Form Lab craft gate)
#block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.45pt + palette.border)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.primary)[Scan-Recap (Medium-Ende): ]
  Learner jobs der Pins noch einmal im Raster/Typografie-Gefüge: Danger → Erkennung → Mimic → Handlung → Grenze. Keine neuen Claims.
]
#v(4pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: (left: 3pt + palette.danger))[
    #set text(size: 7.8pt)
    #text(weight: "bold", fill: palette.danger)[Grenze]
    #v(2pt)
    Keine Claim-Erfindung im Bild; Safety-Text außerhalb Raster/Vektor.
  ],
  block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#f0fdfa"), stroke: (left: 3pt + palette.primary))[
    #set text(size: 7.8pt)
    #text(weight: "bold", fill: palette.primary)[Transfer]
    #v(2pt)
    Mini-Fall beantwortet: Vordergrund · KI · sicherer Schritt.
  ],
)
#v(4pt)
#align(center)[
  #text(size: 7.5pt, fill: palette.text-muted)[
    Form Lab Pass S · winners only from T/C/V/R matrix · not production Accept
  ]
]
