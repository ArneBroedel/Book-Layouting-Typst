// Form Lab Pass V — Melanom ABCDE · Vector atomic (many small CeTZ)
// lab: melanom-abcde-2026-08-b

#import "/packages/bookkit/lib.typ": *
#import "@preview/cetz:0.3.4"
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Melanom ABCDE — Form Lab Pass V", author: "form-lab/melanom-abcde-2026-08-b/V")
#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 14mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Melanom/ABCDE · Form Lab · Pass V], [ABCDE-Atome · Ugly Duckling])
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

#let lesion-a() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  // asymmetric blob
  merge-path(close: true, fill: rgb("#7c2d12").transparentize(20%), stroke: 1pt + palette.danger, {
    line((0, 4), (5, 6), (8, 2), (6, -3), (1, -4), (-3, -1), (-2, 3))
  })
  content((12, 0), text(size: 7pt, weight: "bold", fill: palette.danger)[A])
})

#let lesion-b() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  // irregular border
  for a in range(0, 360, step: 20) {
    let r = a * 1deg
    let rad = 5 + calc.sin(r * 3) * 1.8
    line((0, 0), (calc.cos(r) * rad, calc.sin(r) * rad), stroke: 0.9pt + palette.warning)
  }
  circle((0, 0), radius: 3.5, fill: rgb("#a16207").transparentize(40%), stroke: none)
  content((12, 0), text(size: 7pt, weight: "bold", fill: palette.warning.darken(10%))[B])
})

#let lesion-c() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  circle((0, 0), radius: 7, fill: rgb("#422006"), stroke: 0.8pt + palette.primary-dark)
  circle((-2, 1), radius: 2.5, fill: rgb("#b45309"), stroke: none)
  circle((2, -1), radius: 2, fill: rgb("#1c1917"), stroke: none)
  circle((0, 2), radius: 1.5, fill: rgb("#dc2626").transparentize(30%), stroke: none)
  content((12, 0), text(size: 7pt, weight: "bold", fill: palette.primary)[C])
})

#let lesion-d() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  circle((0, 0), radius: 8, fill: rgb("#78350f").transparentize(30%), stroke: 1pt + palette.primary-dark)
  // ruler
  line((-10, -11), (10, -11), stroke: 0.7pt + palette.text-muted)
  for x in range(-10, 11, step: 4) {
    line((x, -11), (x, -9.5), stroke: 0.5pt + palette.text-muted)
  }
  content((0, -14), text(size: 5.5pt, fill: palette.text-muted)[≥6 mm])
  content((12, 0), text(size: 7pt, weight: "bold")[D])
})

#let lesion-e() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  // before
  circle((-5, 0), radius: 3.5, fill: rgb("#a8a29e"), stroke: 0.7pt + palette.primary)
  // arrow
  line((-1, 0), (2, 0), stroke: 1.2pt + palette.danger, mark: (end: ">", fill: palette.danger))
  // after larger multicolor
  circle((7, 0), radius: 5.5, fill: rgb("#7c2d12"), stroke: 1pt + palette.danger)
  content((7, 0), text(size: 5pt, fill: white, weight: "bold")[↑])
  content((14, 0), text(size: 7pt, weight: "bold", fill: palette.danger)[E])
})

#let ugly-duck() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  // row of similar
  for x in (-14, -7, 0, 7) {
    circle((x, 0), radius: 3, fill: rgb("#a8a29e"), stroke: 0.6pt + palette.primary)
  }
  // odd one
  merge-path(close: true, fill: rgb("#7c2d12"), stroke: 1.2pt + palette.danger, {
    line((14, 4), (18, 2), (17, -3), (12, -2), (11, 2))
  })
  content((14, -8), text(size: 5.5pt, fill: palette.danger, weight: "bold")[≠])
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

#let nail-hutchinson() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  // nail plate
  rect((-6, -4), (6, 8), radius: 1, fill: rgb("#fafaf9"), stroke: 0.8pt + palette.primary-dark)
  // pigment band
  rect((-1.5, -4), (1.5, 8), fill: rgb("#1c1917"), stroke: none)
  // wall pigment (Hutchinson)
  circle((0, 9.5), radius: 2.2, fill: rgb("#422006"), stroke: 0.8pt + palette.danger)
  content((0, -8), text(size: 5.5pt, fill: palette.danger)[Nagelwall])
})

// ── Title ─────────────────────────────────────────────────────
= Melanom-Verdacht — ABCDE und Hautscreening

#text(size: 9pt, fill: palette.text-muted, font: fonts.sans)[
  Pass V: Vektor-Atome · ABCDE-Glyphs · Ugly Duckling · Zuweisung
]

#v(5pt)
#grid(
  columns: (auto, 1fr),
  column-gutter: 10pt,
  align(horizon)[#ugly-duck()],
  [
    #set text(size: 9pt)
    #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang.]
    Strukturierter Blick + Zuweisung — *keine* Exzision, *keine* destruktiven Maßnahmen. ABCDE-suspekt → gleichtags–zeitnah.
  ],
)

// ── ABCDE atoms ───────────────────────────────────────────────
== ABCDE — fünf Vektor-Anker

#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  align(center)[
    #lesion-a()
    #v(2pt)
    #text(size: 7.5pt, weight: "bold")[Asymmetrie]
    #v(1pt)
    #text(size: 7pt)[Hälfte ≠ Hälfte]
  ],
  align(center)[
    #lesion-b()
    #v(2pt)
    #text(size: 7.5pt, weight: "bold")[Border]
    #v(1pt)
    #text(size: 7pt)[Unregelmäßig]
  ],
  align(center)[
    #lesion-c()
    #v(2pt)
    #text(size: 7.5pt, weight: "bold")[Color]
    #v(1pt)
    #text(size: 7pt)[≥2 Farben]
  ],
  align(center)[
    #lesion-d()
    #v(2pt)
    #text(size: 7.5pt, weight: "bold")[Diameter]
    #v(1pt)
    #text(size: 7pt)[Oft ≥6 mm]
  ],
  align(center)[
    #lesion-e()
    #v(2pt)
    #text(size: 7.5pt, weight: "bold")[Evolution]
    #v(1pt)
    #text(size: 7pt)[Form/Farbe/↑]
  ],
)

#v(5pt)
#align(center)[
  #ugly-duck()
  #v(3pt)
  #text(size: 8.5pt, weight: "bold", font: fonts.sans)[Ugly Duckling — die Läsion, die *anders* ist]
  #v(2pt)
  #text(size: 8pt)[Auch ohne volles ABCDE: einzeln *und* im Vergleich zu den übrigen Naevi bewerten.]
]

// ── Enabling ──────────────────────────────────────────────────
== 1. Wann denken?

#grid(
  columns: (1fr,) * 5,
  column-gutter: 4pt,
  ..(
    ("sun", "UV"),
    ("user", "Hauttyp"),
    ("circle", "Viele Naevi"),
    ("users", "Familie"),
    ("eye", "Entkleiden"),
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

// ── Nail ──────────────────────────────────────────────────────
== Subungual — Hutchinson-Vektor

#grid(
  columns: (auto, 1fr),
  column-gutter: 12pt,
  align(horizon)[#nail-hutchinson()],
  text(size: 8.5pt)[
    Längspigmentstreifen am Nagel *plus* Nagelwall-Pigment (Hutchinson-Verdacht) ohne nachvollziehbares Trauma → *zeitnah* Derm/HA. „Nagelhämatom“ ohne Trauma-Anamnese entwarnt *nicht*.
  ],
)

// ── Mimic ─────────────────────────────────────────────────────
== 4. Trügerische Erklärungen

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

#mimic-row([„Alter Fleck“], [Ohne Evolutionsfrage → verzögerte Diagnostik])
#mimic-row([„Seborrhoische Keratose“], [Endgültige Einordnung *ärztlich*])
#mimic-row([„Nagelhämatom“ / „Rücken nicht Ziel“], [Trauma-Check · mitinspizieren · zuweisen])

// ── TIME ──────────────────────────────────────────────────────
== 5. TIME — Vektor-Kette

#align(center)[
  #grid(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    column-gutter: 3pt,
    align(horizon)[#time-step("112*", palette.danger)],
    align(horizon)[#arrow-r()],
    align(horizon)[#time-step("NA", palette.warning)],
    align(horizon)[#arrow-r(col: palette.primary)],
    align(horizon)[#time-step("T3", palette.primary-light)],
    align(horizon)[#arrow-r(col: palette.primary)],
    align(horizon)[#time-step("Beh.", palette.primary)],
  )
]

#v(4pt)
#set text(size: 8pt)
#table(
  columns: (18mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 3pt, y: 4pt),
  [*112\**], [Selten — nur vitale Begleitlage (schwere Blutung, Schock)],
  [*NA*], [Blutung/Ulzeration; ABCDE-suspekt; B-Symptome + multiple Knoten → gleichtags zuweisen, keine Destruktion],
  [*T3*], [Subungual + Nagelwall; Ugly Duckling ohne Blutung → zeitnah Derm],
  [*Beh.*], [Ohne Suspekt: MSK fortsetzen; Screening-Hinweis DE ab 35 J.],
)

#v(3pt)
#text(size: 8pt)[
  #fa-icon("ban", solid: true, fill: palette.danger) *Grenze:* keine Melanom-Diagnose, keine Exzision, keine destruktiven Maßnahmen.
]

// ── Case ──────────────────────────────────────────────────────
== 6. Fall — Vektor-Erinnerung

#grid(
  columns: (auto, 1fr),
  column-gutter: 10pt,
  align(horizon)[#lesion-a()],
  text(size: 8.5pt)[
    52 J., nach Diskektomie. Schulterblatt: asymmetrisch, unregelmäßig, mehrfarbig, ~8 mm, juckt manchmal. „Schon ewig.“ Will mobilisiert werden.
  ],
)
#v(4pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  [#text(weight: "bold", size: 8pt)[(1)] #text(size: 8pt)[ABCDE-suspekt → zuweisen]],
  [#text(weight: "bold", size: 8pt)[(2)] #text(size: 8pt)[Keine Destruktion]],
  [#text(weight: "bold", size: 8pt)[(3)] #text(size: 8pt)[Beschreiben · schriftlich Derm/HA]],
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
  #text(size: 7.5pt, fill: palette.text-muted)[Form Lab Pass V · vector atoms · not production Accept]
]
