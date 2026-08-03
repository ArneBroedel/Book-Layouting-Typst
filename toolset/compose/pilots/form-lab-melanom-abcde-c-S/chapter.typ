// Form Lab Pass S (c-wave) — Melanom ABCDE · synthesis winners only
// lab: melanom-abcde-2026-08-c
// Winners: C chrome (role/urgency/boundary/mimics/case) + V ABCDE shapes + R kacheln (lesion, ugly, subungual)
// Omit-is-win: no rainbow chips; no redundant glyph stack

#import "/packages/bookkit/lib.typ": *
#import "@preview/cetz:0.3.4"
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Melanom ABCDE — Form Lab Pass S (c-wave)", author: "form-lab/melanom-abcde-2026-08-c/S")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 12mm, top: 10mm, bottom: 11mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Melanom ABCDE · Form Lab c · Pass S (Synthesis)], [winners only · omit-is-win])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [Form Lab · best-of · wave c], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.5pt)
#set par(leading: 0.56em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 14pt, weight: "bold", fill: palette.primary-dark)
  block(below: 3.5pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10pt, weight: "bold", fill: palette.primary)
  block(below: 3.5pt, above: 6pt)[
    #it.body
    #v(1.2pt)
    #line(length: 20mm, stroke: 1pt + palette.primary)
  ]
}

#let base = "/domains/medical/assets/form-lab/melanom-abcde-2026-08-c/R/"

#let danger-band(body) = block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
)[
  #set text(size: 7.8pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  #body
]

#let soft-card(title, body, fill: rgb("#f0fdfa"), bar: palette.primary) = block(
  width: 100%,
  inset: (left: 6pt, rest: 5pt),
  radius: 2pt,
  fill: fill,
  stroke: (left: 2.8pt + bar, rest: 0.35pt + bar.lighten(45%)),
)[
  #text(size: 7.4pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
  #v(1.5pt)
  #set text(size: 7.2pt)
  #body
]

#let aspect(path, w: 36mm, cap: none) = block(
  width: w + 3mm,
  inset: 2pt,
  radius: 2pt,
  stroke: 0.4pt + palette.border,
  fill: white,
)[
  #image(path, width: w)
  #if cap != none {
    v(1.5pt)
    set text(size: 5.8pt, fill: palette.text-muted, font: fonts.sans)
    align(center)[#cap]
  }
]

// ── V winners: schematic ABCDE (compact) ──────────────────────
#let shape-asym(sc: 1) = cetz.canvas(length: 0.72mm * sc, {
  import cetz.draw: *
  circle((0, 0), radius: 11, fill: rgb("#f5e6d3"), stroke: 0.5pt + rgb("#d6c2a8"))
  merge-path(close: true, fill: rgb("#5c3317"), stroke: 0.6pt + rgb("#3f210f"), {
    line((-5.5, 2), (-2.5, 4.5), (0, 2.5), (-0.5, -2), (-5, -3), (-6.5, 0))
  })
  merge-path(close: true, fill: rgb("#4a2810"), stroke: 0.6pt + rgb("#3f210f"), {
    line((0, 3.5), (4, 6.5), (7.5, 4), (8, 0), (6, -3.5), (2, -4), (0.5, 0))
  })
  line((0, -9), (0, 9), stroke: (paint: rgb("#78716c"), thickness: 0.4pt, dash: "dashed"))
})

#let shape-border(sc: 1) = cetz.canvas(length: 0.72mm * sc, {
  import cetz.draw: *
  circle((0, 0), radius: 11, fill: rgb("#f5e6d3"), stroke: 0.5pt + rgb("#d6c2a8"))
  circle((-5, 0), radius: 2.8, fill: rgb("#8b6914"), stroke: 0.6pt + rgb("#5c4a0a"))
  merge-path(close: true, fill: rgb("#6b4423"), stroke: 0.85pt + rgb("#3f210f"), {
    line(
      (2.2, 0), (3, 2.5), (4.8, 3.5), (4, 1.3), (6.2, 2), (7.4, 0.4),
      (5.8, -0.7), (7.5, -2), (5.2, -3.2), (6.4, -4.6), (3.8, -3.8),
      (2.8, -2.2), (1.6, -3.4), (1.4, -1), (2, 0.8),
    )
  })
})

#let shape-color(sc: 1) = cetz.canvas(length: 0.72mm * sc, {
  import cetz.draw: *
  circle((0, 0), radius: 11, fill: rgb("#f5e6d3"), stroke: 0.5pt + rgb("#d6c2a8"))
  merge-path(close: true, fill: rgb("#8b5a2b"), stroke: 0.6pt + rgb("#3f210f"), {
    line((-5.5, 1), (-2.5, 4.5), (2, 5.5), (5.5, 2.5), (4.5, -2.5), (1, -4.5), (-3.5, -3.5), (-5.5, -0.5))
  })
  merge-path(close: true, fill: rgb("#3f210f"), stroke: none, {
    line((-2, 1), (0, 2.8), (2.5, 1.8), (1.8, -1), (-1, -1.8), (-2.5, 0))
  })
  circle((2.2, -1.2), radius: 1.5, fill: rgb("#c4a574"), stroke: none)
  circle((-0.8, 1.2), radius: 1.0, fill: rgb("#1c1917"), stroke: none)
})

#let shape-size(sc: 1) = cetz.canvas(length: 0.72mm * sc, {
  import cetz.draw: *
  circle((0, 0), radius: 11, fill: rgb("#f5e6d3"), stroke: 0.5pt + rgb("#d6c2a8"))
  merge-path(close: true, fill: rgb("#6b4423"), stroke: 0.6pt + rgb("#3f210f"), {
    line((-5, 1.5), (-2.5, 5.5), (2, 6), (5.5, 3.5), (5, -1), (1.5, -3.5), (-2.5, -3), (-5.5, 0))
  })
  line((-6.5, -7), (6.5, -7), stroke: 0.75pt + palette.primary-dark)
  for x in (-6.5, -3.25, 0, 3.25, 6.5) {
    line((x, -7), (x, -5.9), stroke: 0.55pt + palette.primary-dark)
  }
  content((0, -9.2), text(size: 5pt, weight: "bold", fill: palette.primary-dark, font: fonts.sans)[> 5 mm])
})

#let shape-evol(sc: 1) = cetz.canvas(length: 0.72mm * sc, {
  import cetz.draw: *
  circle((0, 0), radius: 11, fill: rgb("#f5e6d3"), stroke: 0.5pt + rgb("#d6c2a8"))
  circle((-5, 0.5), radius: 2.2, fill: rgb("#a8a29e"), stroke: 0.5pt + rgb("#57534e"))
  line((-2, 0.5), (0.6, 0.5), stroke: 1pt + palette.danger, mark: (end: ">", fill: palette.danger))
  merge-path(close: true, fill: rgb("#5c3317"), stroke: 0.6pt + rgb("#3f210f"), {
    line((2.5, 3.5), (5.5, 4.5), (7.5, 1.5), (6.5, -2), (3.5, -2.5), (1.8, -0.5), (1.8, 2))
  })
  circle((4.5, 0.8), radius: 1.1, fill: rgb("#1c1917"), stroke: none)
})

#let gcard(body, cap) = block(
  width: 100%,
  inset: 2pt,
  radius: 1.5pt,
  stroke: 0.35pt + palette.border,
  fill: white,
)[
  #align(center)[#body]
  #v(1pt)
  #align(center)[#text(size: 5.4pt, fill: palette.text-muted, font: fonts.sans)[#cap]]
]

// ── Chapter ───────────────────────────────────────────────────
= Melanom – ABCDE-Hautscreening im Direktzugang

#text(size: 7.8pt, fill: palette.text-muted, font: fonts.sans)[
  Pass S: C-Chrome + V-ABCDE-Formen + R-Gestalt-Kacheln · nur Matrix-Gewinner
]

#v(2.5pt)
#danger-band[Keine Melanom-Diagnose und keine destruktiven Maßnahmen. ABCDE-suspekt → gleichtags–zeitnah zuweisen; 112 nur bei vitaler Begleitlage.]

== Rolle · Big Picture

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 4pt,
  soft-card([HP-Rolle], [Strukturierter Blick (ABCDE + Ugly Duckling) · beschreiben · *zuweisen* — nicht diagnostizieren/exzidieren.], fill: rgb("#f0fdfa")),
  soft-card([Gefahr Fehllabel], [„Alter Fleck“, „seborrhoische Keratose“, „Nagelhämatom“ ohne Evolutionsfrage → verzögerte Diagnostik.], fill: rgb("#fef2f2"), bar: palette.danger),
  soft-card([Dringlichkeit], [Melanom typisch *nicht* 112. Blutend/ulzeriert/ABCDE-suspekt → gleichtags–zeitnah HA/Derm.], fill: rgb("#f8fafc"), bar: palette.primary-dark),
)

== ABCDE — schematische Marken (V-Winner)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  column-gutter: 3pt,
  gcard(shape-asym(), [Asymmetrie]),
  gcard(shape-border(), [Begrenzung]),
  gcard(shape-color(), [Mehrton *in einer* Läsion]),
  gcard(shape-size(), [Durchmesser]),
  gcard(shape-evol(), [Evolution]),
)

== Erkennung — Raster-Gestalt (R-Winner)

#grid(
  columns: (1fr, 1fr, 0.85fr),
  column-gutter: 5pt,
  align(center)[#aspect(base + "kachel-asym-lesion.jpg", w: 30mm, cap: [Kachel · Mehrton-Läsion])],
  align(center)[#aspect(base + "kachel-ugly-duckling.jpg", w: 30mm, cap: [Kachel · Ugly Duckling])],
  align(center)[#aspect(base + "kachel-subungual.jpg", w: 24mm, cap: [Kachel · subungual])],
)

#v(2pt)
#text(size: 7.3pt)[
  *Claims im Typst:* Multiton + Asymmetrie + unregelmäßige Begrenzung → suspekt. Ugly Duckling auch ohne volles ABCDE. Subunguales Längspigment ohne Trauma + Nagelwall → zeitnah Derm.
]

== Mimics · TIME · Grenze (C-Winner)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 4pt,
  row-gutter: 3pt,
  soft-card([„Alter Fleck“], [Ohne Evolutionsfrage Transformation verpasst.], fill: rgb("#fef2f2"), bar: palette.danger),
  soft-card([„Seborrhoische Keratose“], [DDx ärztlich; bei Suspekt zuweisen.], fill: rgb("#fef2f2"), bar: palette.danger),
  soft-card([„Nagelhämatom“], [Ohne Trauma + Nagelwall → Melanom-DDx zeitnah.], fill: rgb("#fef2f2"), bar: palette.danger),
  soft-card([„Rücken nicht Ziel“], [Bei Entkleidung mitinspizieren und zuweisen.], fill: rgb("#fef2f2"), bar: palette.danger),
)

#v(4pt)
// 112 quiet + G-Z solid (C urgency hierarchy)
#block(width: 100%, inset: (left: 7pt, rest: 4.5pt), radius: 2pt, fill: white, stroke: (left: 2.2pt + palette.text-muted, rest: 0.4pt + palette.border))[
  #text(size: 7.2pt, weight: "bold", fill: palette.text-muted, font: fonts.sans)[112 · selten]
  #h(4pt)
  #text(size: 7pt, fill: palette.text-muted)[Nur vitale Begleitlage — Melanom selbst nicht primär reanimationspflichtig.]
]
#v(3pt)
#block(width: 100%, radius: 2pt, clip: true, stroke: 0.55pt + palette.danger)[
  #block(width: 100%, fill: palette.danger, inset: 5.5pt)[
    #set text(fill: white, size: 7.2pt)
    #text(weight: "bold", size: 8pt)[Gleichtags–zeitnah — primäre Stufe]
    #v(1.5pt)
    Blutung/Ulzeration; ABCDE-suspekt/rasch wachsend; B-Symptome + Knoten → Stopp an Läsion; *keine* Destruktion; gleichtags HA/Derm.
  ]
]
#v(3pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 4pt,
  soft-card([Zeitnah Derm], [Subungual + Nagelwall; Ugly Duckling ohne akute Blutung → schriftliche Zuweisung.], fill: rgb("#f0fdfa")),
  soft-card([Behandeln + Netz], [Ohne Suspekt: MSK fortsetzen; neu auffällig → stoppen + zuweisen; Screening-Hinweis ohne Ersatz.], fill: rgb("#ecfdf5"), bar: rgb("#0f766e")),
)

#v(3pt)
#block(width: 100%, inset: 5.5pt, radius: 2pt, fill: white, stroke: 0.85pt + palette.text-muted)[
  #text(size: 7.2pt, weight: "bold", fill: palette.text-muted, font: fonts.sans)[GRENZE DER EIGENEN ZUSTÄNDIGKEIT]
  #v(1.5pt)
  #text(size: 7.2pt)[Keine Melanom-Diagnose, keine Exzision, keine destruktiven Maßnahmen. Endgültige DDx ist *ärztlich*.]
]

== Fall (C-Winner)

#block(breakable: false, width: 100%, inset: 5.5pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: (left: 3pt + palette.primary))[
  #text(size: 7.4pt)[*52 J., Schulterblatt-Läsion beim Entkleiden* — asymmetrisch, unregelmäßig, mehrfarbig ~8 mm, „schon ewig, juckt manchmal.“]
  #v(3pt)
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 4pt,
    soft-card([(1) Maßgeblich], [ABCDE-suspekt → gleichtags–zeitnah zuweisen.], fill: rgb("#fef2f2"), bar: palette.danger),
    soft-card([(2) Kontraindiziert], [Destruktion; Eigenetikettierung „alter Fleck“.], fill: rgb("#fff7ed"), bar: palette.warning.darken(10%)),
    soft-card([(3) Sicherer Schritt], [Schriftlich HA/Derm; MSK mit Netz; Läsion unberührt.], fill: rgb("#ecfdf5"), bar: rgb("#0f766e")),
  )
]

#v(4pt)
#align(center)[
  #text(size: 7pt, fill: palette.text-muted, font: fonts.sans)[
    S = C-Chrome + V-ABCDE-Formen + R-Gestalt · omit-is-win · not production Accept
  ]
]
