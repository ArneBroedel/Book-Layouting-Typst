// Form Lab Pass V — Schlaganfall · Vector atomic (many small CeTZ)
// lab: schlaganfall-2026-08-b · pin: chapter-v-4-schlaganfall.md

#import "/packages/bookkit/lib.typ": *
#import "@preview/cetz:0.3.4"
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Schlaganfall — Form Lab Pass V", author: "form-lab/schlaganfall-2026-08-b/V")
#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 14mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Schlaganfall · Form Lab · Pass V (Vector)], [FAST-Atome · TIME-Kette])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(3pt)
    grid(columns: (1fr, auto), [Form Lab · vector atomic], counter(page).display("1"))
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

// ── Vector atoms ───────────────────────────────────────────────

#let face-asym(side: "left") = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  // oval face
  circle((0, 0), radius: (8, 10), fill: rgb("#f0fdfa"), stroke: 0.9pt + palette.primary-dark)
  // eyes
  circle((-3, 2), radius: 1.1, fill: palette.primary-dark, stroke: none)
  circle((3, 2), radius: 1.1, fill: palette.primary-dark, stroke: none)
  // mouth — asymmetric droop
  if side == "left" {
    line((-4, -3.5), (-1, -4.5), (2, -3.2), (4, -3), stroke: 1.3pt + palette.danger)
    // droop mark
    line((-4.2, -3.2), (-5, -5.5), stroke: 1.1pt + palette.danger)
  } else {
    line((-4, -3), (-2, -3.2), (1, -4.5), (4, -3.5), stroke: 1.3pt + palette.danger)
    line((4.2, -3.2), (5, -5.5), stroke: 1.1pt + palette.danger)
  }
})

#let arm-drift() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  // torso hint
  line((0, 8), (0, 0), stroke: 1.2pt + palette.primary-dark)
  // good arm horizontal
  line((0, 6), (12, 6), stroke: 1.4pt + palette.primary, mark: (end: ">", fill: palette.primary))
  // drifting arm
  line((0, 6), (-10, 2), stroke: 1.6pt + palette.danger, mark: (end: ">", fill: palette.danger))
  content((-12, 0), text(size: 6pt, fill: palette.danger, weight: "bold")[↓])
})

#let speech-wave() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  // head
  circle((-6, 0), radius: 5, fill: rgb("#f0fdfa"), stroke: 0.8pt + palette.primary-dark)
  // speech bubbles broken
  for (ox, oy) in ((2, 2), (8, 4), (14, 1)) {
    circle((ox, oy), radius: 2.2, fill: rgb("#fef2f2"), stroke: 0.7pt + palette.danger)
  }
  line((0, 1), (2, 2), stroke: 0.6pt + palette.danger)
  content((8, 4), text(size: 5.5pt, fill: palette.danger, weight: "bold")[?])
})

#let clock-time() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  circle((0, 0), radius: 9, fill: white, stroke: 1.2pt + palette.danger)
  circle((0, 0), radius: 1.2, fill: palette.danger, stroke: none)
  // hands
  line((0, 0), (0, 6), stroke: 1.3pt + palette.danger)
  line((0, 0), (5, -2), stroke: 1.1pt + palette.primary-dark)
  // 112 badge
  content((0, -13), text(size: 6.5pt, weight: "bold", fill: palette.danger, font: fonts.sans)[112])
})

#let time-step(code, col) = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  rect((-12, -6), (12, 6), radius: 2, fill: col, stroke: 0.6pt + col.darken(20%))
  content((0, 0), text(size: 7pt, weight: "bold", fill: white, font: fonts.sans)[#code])
})

#let mimic-x() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  circle((0, 0), radius: 5, stroke: 1.2pt + palette.danger, fill: rgb("#fef2f2"))
  line((-3, -3), (3, 3), stroke: 1.4pt + palette.danger)
  line((-3, 3), (3, -3), stroke: 1.4pt + palette.danger)
})

#let arrow-r(col: palette.danger) = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  line((-6, 0), (4, 0), stroke: 1.4pt + col, mark: (end: ">", fill: col))
})

#let brain-vessel() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  // simple brain outline
  circle((0, 0), radius: 10, fill: rgb("#f0fdfa"), stroke: 0.9pt + palette.primary-dark)
  // vessel blocked
  line((-8, 2), (6, 3), stroke: 1.4pt + palette.primary)
  circle((6, 3), radius: 2.5, fill: palette.danger, stroke: none)
  content((6, 3), text(size: 5pt, fill: white, weight: "bold")[×])
})

// ── Title ─────────────────────────────────────────────────────
= Schlaganfall und TIA — fokal, plötzlich, 112

#text(size: 9pt, fill: palette.text-muted, font: fonts.sans)[
  Pass V: Vektor-Atome · FAST-Glyphs · TIME-Kette · Mimic-Marken
]

#v(5pt)
#grid(
  columns: (auto, 1fr),
  column-gutter: 10pt,
  align(horizon)[#clock-time()],
  [
    #set text(size: 9pt)
    #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang.]
    Verdacht → *112* / Stroke-Unit. Kein MSK-Abwarten. TIA remittiert entwarnt *nicht*.
  ],
)

// ── FAST vector triad ─────────────────────────────────────────
== FAST — vier Vektor-Anker

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 6pt,
  align(center)[
    #face-asym()
    #v(3pt)
    #text(size: 8pt, weight: "bold", font: fonts.sans)[F · Face]
    #v(2pt)
    #text(size: 7.5pt)[Mundwinkel asymmetrisch; Stirn-Check zentral vs. peripher]
  ],
  align(center)[
    #arm-drift()
    #v(3pt)
    #text(size: 8pt, weight: "bold", font: fonts.sans)[A · Arm]
    #v(2pt)
    #text(size: 7.5pt)[Einseitiges Absinken im Armhalteversuch]
  ],
  align(center)[
    #speech-wave()
    #v(3pt)
    #text(size: 8pt, weight: "bold", font: fonts.sans)[S · Speech]
    #v(2pt)
    #text(size: 7.5pt)[Aphasie oder Dysarthrie]
  ],
  align(center)[
    #clock-time()
    #v(3pt)
    #text(size: 8pt, weight: "bold", font: fonts.sans)[T · Time]
    #v(2pt)
    #text(size: 7.5pt)[*112 jetzt* · Last seen normal]
  ],
)

#v(4pt)
#set text(size: 8.5pt)
*BE-FAST:* Balance und Eyes ergänzen — posteriore Infarkte oft FAST-arm. Schwindel *plus* fokal → *112*.

// ── Big Picture ───────────────────────────────────────────────
== Big Picture — Mechanismus-Vektor

#grid(
  columns: (auto, 1fr),
  column-gutter: 12pt,
  align(horizon)[#brain-vessel()],
  text(size: 8.5pt)[
    Arterielle Unterbrechung (Ischämie ~80–85 % / Blutung ~15–20 %) → Penumbra stirbt ohne Reperfusion. TIA = flüchtiges Defizit, bis Ausschluss *Notfall*. HP: Screen · *112* · sichern — nicht diagnostizieren.
  ],
)

// ── Enabling icons ────────────────────────────────────────────
== 1. Wann denken? — Risiko-Piktogramme

#grid(
  columns: (1fr,) * 5,
  column-gutter: 4pt,
  ..(
    ("heart-pulse", "Hypertonie"),
    ("heart", "VHF"),
    ("droplet", "Diabetes"),
    ("smoking", "Rauchen"),
    ("clock", "Last seen"),
  ).map(((ic, lab)) => {
    align(center)[
      #cetz.canvas(length: 1mm, {
        import cetz.draw: *
        circle((0, 0), radius: 7, fill: rgb("#f0fdfa"), stroke: 0.7pt + palette.primary)
        content((0, 0), fa-icon(ic, solid: true, fill: palette.primary-dark, size: 9pt))
      })
      #v(2pt)
      #text(size: 7pt, font: fonts.sans)[#lab]
    ]
  })
)

// ── Clinical channels ─────────────────────────────────────────
== 3. Klinische Hinweise — Vektor-Kanäle

#let channel(icon, title, body) = {
  grid(
    columns: (22mm, 1fr),
    column-gutter: 6pt,
    align(center + horizon)[
      #cetz.canvas(length: 1mm, {
        import cetz.draw: *
        rect((-9, -7), (9, 7), radius: 2, fill: rgb("#f8fafc"), stroke: 0.7pt + palette.primary)
        content((0, 0), fa-icon(icon, solid: true, fill: palette.primary, size: 10pt))
      })
    ],
    [
      #text(weight: "bold", size: 8.5pt, font: fonts.sans)[#title]
      #v(1pt)
      #text(size: 8pt)[#body]
    ],
  )
}

#channel("comments", "Anamnese", [Plötzliche halbseitige Schwäche; Mundwinkel; Sprache; Sehstörung; Schwindel + fokal; *Last seen normal*])
#v(3pt)
#channel("eye", "Beobachtung", [Asymmetrie Gesicht; hängende Extremität; unklare Sprache; Unsicherheit Stand/Gang])
#v(3pt)
#channel("hand", "Untersuchung", [FAST ≥ 1 → Verdacht; BE-FAST grob; *keine* Provokationstests])
#v(3pt)
#channel("clock-rotate-left", "Verlauf", [Perakut; *bereits remittiert* = TIA-Verdacht bis Ausschluss])

// ── Mimic ─────────────────────────────────────────────────────
== 4. Trügerische Erklärungen — frame → danger

#let mimic-row(frame, danger) = {
  grid(
    columns: (1fr, 12mm, 1fr),
    column-gutter: 4pt,
    block(width: 100%, inset: 6pt, radius: 2pt, stroke: 0.5pt + palette.border, fill: white)[
      #set text(size: 8pt)
      #frame
    ],
    align(center + horizon)[#mimic-x()],
    block(width: 100%, inset: 6pt, radius: 2pt, stroke: 0.5pt + palette.danger.lighten(30%), fill: rgb("#fef2f2"))[
      #set text(size: 8pt, fill: palette.danger)
      #text(weight: "bold")[#danger]
    ],
  )
  v(4pt)
}

#mimic-row([„HWS-Blockade / Schwindel“], [Schwindel + fokal → *112*; keine HWS-Mobilisation])
#mimic-row([„Periphere Fazialis“], [Stirn-Check; Begleitdefizite → Stroke-Pfad])
#mimic-row([„Migräne-Aura“ / „Schulter-Arm“], [Apoplektiform + zentral → Notfall bis Ausschluss])

// ── TIME ──────────────────────────────────────────────────────
== 5. TIME — Vektor-Kette

#align(center)[
  #grid(
    columns: (auto, auto, auto, auto, auto),
    column-gutter: 3pt,
    align(horizon)[#time-step("112", palette.danger)],
    align(horizon)[#arrow-r()],
    align(horizon)[#time-step("NA", palette.warning)],
    align(horizon)[#arrow-r(col: palette.primary)],
    align(horizon)[#time-step("Beh.", palette.primary)],
  )
]

#v(5pt)
#set text(size: 8pt)
#table(
  columns: (18mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 3pt, y: 4pt),
  [*112*], [FAST ≥ 1; halbseitige Sensibilitäts-/Sehstörung; Schwindel + fokal; TIA-ähnlich (auch remittiert) → stoppen, *112*, Stroke-Unit],
  [*NA*], [Nur ohne akutes fokal-neurologisches Bild; unklare langsame Progredienz → PT aussetzen; bei Dynamik *112*],
  [*Beh.*], [Gesicherte MSK ohne Red Flags; nach TIA/Stroke erst nach Freigabe Akutphase],
)

#v(3pt)
#text(size: 8pt)[
  #fa-icon("ban", solid: true, fill: palette.danger) *Grenze:* keine HWS-Manipulation / Provokationstests bei Verdacht; ABCD² ersetzt keine Notfallabklärung.
]

// ── Case ──────────────────────────────────────────────────────
== 6. Fall — Vektor-Erinnerung

#grid(
  columns: (auto, auto, 1fr),
  column-gutter: 8pt,
  align(horizon)[#face-asym()],
  align(horizon)[#speech-wave()],
  text(size: 8.5pt)[
    67 J., „steife HWS und Schwindel“. Vor ~40 min linke Hand „weg“, Sprache undeutlich — fast wieder weg. Hypertonie. Wünscht HWS-Mobilisation.
  ],
)
#v(4pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  [#text(weight: "bold", size: 8pt)[(1)] #text(size: 8pt)[TIA bis Ausschluss]],
  [#text(weight: "bold", size: 8pt)[(2)] #text(size: 8pt)[Keine HWS-Mobilisation]],
  [#text(weight: "bold", size: 8pt)[(3)] #text(size: 8pt)[Stopp · *112* · Last seen normal]],
)

#v(6pt)
#align(center)[
  #grid(
    columns: (auto, auto, auto, auto),
    column-gutter: 14pt,
    align(center)[#face-asym() #v(2pt) #text(size: 7pt)[Face]],
    align(center)[#arm-drift() #v(2pt) #text(size: 7pt)[Arm]],
    align(center)[#clock-time() #v(2pt) #text(size: 7pt)[Time]],
    align(center)[#mimic-x() #v(2pt) #text(size: 7pt)[Mimic stop]],
  )
]

#v(6pt)
#align(center)[
  #text(size: 7.5pt, fill: palette.text-muted)[Form Lab Pass V · vector atoms · not production Accept]
]
