// Form Lab Pass V (c-wave) — Melanom ABCDE · many small CeTZ schematic lesions
// lab: melanom-abcde-2026-08-c
// ALLOW: many small vectors · schematic lesion shapes · skin-field ugly duckling
// DENY: rainbow letter chips · mega-infographic · caption-rescued doodles · raster heroes

#import "/packages/bookkit/lib.typ": *
#import "@preview/cetz:0.3.4"
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Melanom ABCDE — Form Lab Pass V (c-wave)", author: "form-lab/melanom-abcde-2026-08-c/V")
#set page(
  paper: "a4",
  margin: (inside: 16mm, outside: 14mm, top: 12mm, bottom: 13mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Melanom ABCDE · Form Lab c · Pass V (Vector)], [schematische Läsionsformen · Ugly Duckling])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [Form Lab · vector · wave c · no rainbow chips], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.6pt)
#set par(leading: 0.58em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 14pt, weight: "bold", fill: palette.primary-dark)
  block(below: 4pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10pt, weight: "bold", fill: palette.primary)
  block(below: 4pt, above: 7pt)[
    #it.body
    #v(1.5pt)
    #line(length: 20mm, stroke: 1pt + palette.primary)
  ]
}

// ── Schematic lesion library (thumbnail-legible, Semantic Read target) ──

// A — asymmetric blot (two halves clearly unequal)
#let shape-asym(sc: 1) = cetz.canvas(length: 1.05mm * sc, {
  import cetz.draw: *
  // skin disc
  circle((0, 0), radius: 12, fill: rgb("#f5e6d3"), stroke: 0.55pt + rgb("#d6c2a8"))
  // asymmetric dark blot: left lobe small, right lobe large + irregular
  merge-path(close: true, fill: rgb("#5c3317"), stroke: 0.7pt + rgb("#3f210f"), {
    line((-6, 2), (-3, 5), (0, 3), (1, 1), (-1, -2), (-5, -3), (-7, 0))
  })
  merge-path(close: true, fill: rgb("#4a2810"), stroke: 0.7pt + rgb("#3f210f"), {
    line((0, 4), (4, 7), (8, 5), (9, 1), (7, -4), (3, -5), (1, -2), (0, 1))
  })
  // dashed midline to cue asymmetry without caption
  line((0, -10), (0, 10), stroke: (paint: rgb("#78716c"), thickness: 0.45pt, dash: "dashed"))
})

// B — irregular border (smooth vs jagged comparison pair)
#let shape-border(sc: 1) = cetz.canvas(length: 1.05mm * sc, {
  import cetz.draw: *
  circle((0, 0), radius: 12, fill: rgb("#f5e6d3"), stroke: 0.55pt + rgb("#d6c2a8"))
  // left: regular round nevus (control)
  circle((-5.5, 0), radius: 3.0, fill: rgb("#8b6914"), stroke: 0.7pt + rgb("#5c4a0a"))
  // right: deeply scalloped / notched border (reads as irregular edge)
  merge-path(close: true, fill: rgb("#6b4423"), stroke: 0.95pt + rgb("#3f210f"), {
    line(
      (2.5, 0), (3.2, 2.8), (5.0, 3.8), (4.2, 1.5), (6.5, 2.2), (7.8, 0.5),
      (6.2, -0.8), (8.0, -2.2), (5.5, -3.5), (6.8, -5.0), (4.0, -4.2),
      (3.0, -2.5), (1.8, -3.8), (1.5, -1.2), (2.2, 1.0),
    )
  })
})

// C — multi-tone browns in ONE shape (clinical Color ≠ UI rainbow)
#let shape-color(sc: 1) = cetz.canvas(length: 1.05mm * sc, {
  import cetz.draw: *
  circle((0, 0), radius: 12, fill: rgb("#f5e6d3"), stroke: 0.55pt + rgb("#d6c2a8"))
  // base irregular lesion
  merge-path(close: true, fill: rgb("#8b5a2b"), stroke: 0.65pt + rgb("#3f210f"), {
    line((-6, 1), (-3, 5), (2, 6), (6, 3), (5, -3), (1, -5), (-4, -4), (-6, -1))
  })
  // nested darker zone
  merge-path(close: true, fill: rgb("#3f210f"), stroke: none, {
    line((-2, 1), (0, 3), (3, 2), (2, -1), (-1, -2), (-3, 0))
  })
  // lighter tan patch
  circle((2.5, -1.5), radius: 1.8, fill: rgb("#c4a574"), stroke: none)
  // near-black focus
  circle((-1, 1.5), radius: 1.2, fill: rgb("#1c1917"), stroke: none)
  // small reddish-brown (not pure UI red chip)
  circle((1, 3), radius: 0.9, fill: rgb("#7f1d1d"), stroke: none)
})

// D — size mark with scale bar on skin
#let shape-size(sc: 1) = cetz.canvas(length: 1.05mm * sc, {
  import cetz.draw: *
  circle((0, 0), radius: 12, fill: rgb("#f5e6d3"), stroke: 0.55pt + rgb("#d6c2a8"))
  // slightly oval/irregular large lesion (size, not perfect circle sticker)
  merge-path(close: true, fill: rgb("#6b4423"), stroke: 0.7pt + rgb("#3f210f"), {
    line((-5.5, 2), (-3, 6), (2, 7), (6, 4), (5.5, -1), (2, -4), (-3, -3.5), (-6, 0))
  })
  // ruler under lesion
  line((-7, -7.5), (7, -7.5), stroke: 0.85pt + palette.primary-dark)
  for x in (-7, -3.5, 0, 3.5, 7) {
    line((x, -7.5), (x, -6.2), stroke: 0.65pt + palette.primary-dark)
  }
  content((0, -10), text(size: 5.5pt, weight: "bold", fill: palette.primary-dark, font: fonts.sans)[> 5 mm])
})

// E — evolution: small uniform → larger multitone with arrow
#let shape-evol(sc: 1) = cetz.canvas(length: 1.05mm * sc, {
  import cetz.draw: *
  circle((0, 0), radius: 12, fill: rgb("#f5e6d3"), stroke: 0.55pt + rgb("#d6c2a8"))
  // before
  circle((-5.5, 0.5), radius: 2.4, fill: rgb("#a8a29e"), stroke: 0.55pt + rgb("#57534e"))
  // arrow
  line((-2.2, 0.5), (0.8, 0.5), stroke: 1.15pt + palette.danger, mark: (end: ">", fill: palette.danger))
  // after larger irregular multitone
  merge-path(close: true, fill: rgb("#5c3317"), stroke: 0.7pt + rgb("#3f210f"), {
    line((3, 4), (6, 5), (8, 2), (7, -2), (4, -3), (2, -1), (2, 2))
  })
  circle((5, 1), radius: 1.3, fill: rgb("#1c1917"), stroke: none)
  circle((6.5, -0.5), radius: 1.0, fill: rgb("#c4a574"), stroke: none)
})

// Ugly duckling — skin field with several similar moles + one odd
#let shape-ugly(sc: 1) = cetz.canvas(length: 1.0mm * sc, {
  import cetz.draw: *
  // skin field rectangle
  rect((-18, -10), (18, 10), radius: 2, fill: rgb("#f5e6d3"), stroke: 0.6pt + rgb("#d6c2a8"))
  // similar small round moles
  for (cx, cy) in ((-12, 3), (-6, -2), (0, 4), (6, -3), (12, 2), (-10, -5), (3, -6)) {
    circle((cx, cy), radius: 1.55, fill: rgb("#8b6914"), stroke: 0.4pt + rgb("#5c4a0a"))
  }
  // the odd one — larger, irregular, darker multitone
  merge-path(close: true, fill: rgb("#3f210f"), stroke: 0.9pt + palette.danger, {
    line((10, 6), (14, 7), (16, 4), (15, 1), (11, 0), (9, 3))
  })
  circle((12.5, 3.5), radius: 1.0, fill: rgb("#7f1d1d"), stroke: none)
})

// Nail longitudinal band + wall pigment (Hutchinson-style schema)
#let shape-nail(sc: 1) = cetz.canvas(length: 1.0mm * sc, {
  import cetz.draw: *
  // finger tip oval
  merge-path(close: true, fill: rgb("#f5e6d3"), stroke: 0.55pt + rgb("#d6c2a8"), {
    line((-8, -2), (-7, 6), (-3, 11), (3, 11), (7, 6), (8, -2), (5, -6), (-5, -6))
  })
  // nail plate
  rect((-5, -1), (5, 9), radius: 0.8, fill: rgb("#fafaf9"), stroke: 0.7pt + palette.primary-dark)
  // longitudinal pigment band
  rect((-1.2, -1), (1.2, 9), fill: rgb("#1c1917"), stroke: none)
  // wall pigment beyond nail (Hutchinson cue)
  circle((0, 10.5), radius: 2.0, fill: rgb("#3f210f"), stroke: 0.75pt + palette.danger)
})

// Ban mark (boundary)
#let shape-ban(sc: 1) = cetz.canvas(length: 1.0mm * sc, {
  import cetz.draw: *
  // scalpel simplified
  line((-6, -4), (6, 4), stroke: 1.3pt + palette.primary-dark)
  rect((-7, -5.5), (-4, -2.5), fill: rgb("#cbd5e1"), stroke: 0.5pt + palette.primary-dark)
  circle((0, 0), radius: 9, stroke: 1.4pt + palette.danger)
  line((-6.2, -6.2), (6.2, 6.2), stroke: 1.45pt + palette.danger)
})

// Refer arrow
#let shape-refer(sc: 1) = cetz.canvas(length: 1.0mm * sc, {
  import cetz.draw: *
  rect((-8, -5), (4, 5), radius: 1, fill: rgb("#f0fdfa"), stroke: 0.7pt + palette.primary)
  content((-2, 0), text(size: 6pt, weight: "bold", fill: palette.primary-dark, font: fonts.sans)[HP])
  line((5, 0), (11, 0), stroke: 1.2pt + palette.danger, mark: (end: ">", fill: palette.danger))
  rect((12, -5), (18, 5), radius: 1, fill: rgb("#fef2f2"), stroke: 0.7pt + palette.danger)
  content((15, 0), text(size: 5.5pt, weight: "bold", fill: palette.danger, font: fonts.sans)[Derm])
})

#let glyph-card(body, cap) = block(
  width: 100%,
  inset: 3.5pt,
  radius: 2pt,
  stroke: 0.4pt + palette.border,
  fill: white,
)[
  #align(center)[#body]
  #v(2pt)
  #align(center)[
    #set text(size: 6.1pt, fill: palette.text-muted, font: fonts.sans)
    #cap
  ]
]

// ── Chapter ───────────────────────────────────────────────────
= Melanom – ABCDE-Hautscreening im Direktzugang

#text(size: 8pt, fill: palette.text-muted, font: fonts.sans)[
  Pass V: schematische Läsionsformen (CeTZ) · Skin-Field Ugly Duckling · Claims im Typst
]

#v(3pt)
#block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger),
)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr: ]
  Strukturierter Blick + Zuweisung — *keine* Exzision, *keine* destruktiven Maßnahmen. ABCDE-suspekt → gleichtags–zeitnah.
]

== ABCDE — schematische Läsionsformen

#text(size: 7.2pt, fill: palette.text-muted)[
  Keine Regenbogen-Buchstaben-Chips. Jede Kachel = *eine* Läsionsgestalt auf Hautfeld.
]

#v(3pt)
#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  glyph-card(shape-asym(sc: 1.02), [Kachel · Asymmetrie (Hälfte ≠ Hälfte)]),
  glyph-card(shape-border(sc: 1.02), [Kachel · unregelmäßige Begrenzung]),
  glyph-card(shape-color(sc: 1.02), [Kachel · Mehrton-Braun *in einer* Läsion]),
  glyph-card(shape-size(sc: 1.02), [Kachel · Durchmesser-Markierung]),
  glyph-card(shape-evol(sc: 1.02), [Kachel · Evolution vorher → nachher]),
)

== Ugly Duckling — Feldvergleich

#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 8pt,
  glyph-card(shape-ugly(sc: 1.15), [Kachel · Hautfeld: mehrere ähnliche Nävi + *eine* abweichende Läsion]),
  [
    #set text(size: 8pt)
    *Ugly Duckling:* die Läsion, die sich klar von den übrigen Nävi des Patienten unterscheidet — auch ohne volles ABCDE.  
    #v(3pt)
    *Rolle:* beschreiben und zuweisen, nicht histologisch einordnen.  
    #v(3pt)
    *Rücken/Nacken:* bei Entkleidung mitinspizieren.
  ],
)

== Subungual · Grenze · Zuweisung

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  glyph-card(shape-nail(sc: 1.05), [Kachel · Längsband + Nagelwall-Pigment]),
  glyph-card(shape-ban(sc: 1.0), [Kachel · keine destruktiven Maßnahmen]),
  glyph-card(shape-refer(sc: 1.0), [Kachel · HP → Derm/HA zuweisen]),
)

#v(3pt)
#text(size: 7.8pt)[
  *Subungual:* Längspigment + Nagelwall ohne nachvollziehbares Trauma → zeitnah Derm (Hutchinson-Verdacht). „Nagelhämatom“ entwarnt nicht ohne Trauma-Anamnese.
]

== 1–3. Wann · Mechanismus · Klinik (Text)

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  [
    #text(weight: "bold", size: 8pt, font: fonts.sans, fill: palette.primary-dark)[Wann denken]
    #v(2pt)
    #text(size: 7.5pt)[UV/Solarium; heller Hauttyp; atypische Nävi; familiäres Melanom; Immunsuppression; schlecht einsehbare Areale.]
  ],
  [
    #text(weight: "bold", size: 8pt, font: fonts.sans, fill: palette.primary-dark)[Mechanismus]
    #v(2pt)
    #text(size: 7.5pt)[UV-DNA-Schäden → unkontrolliertes Melanozytenwachstum. Früh ärztlich exzidiert → bessere Prognose. DA: Blick + Zuweisung.]
  ],
  [
    #text(weight: "bold", size: 8pt, font: fonts.sans, fill: palette.primary-dark)[Klinik]
    #v(2pt)
    #text(size: 7.5pt)[Anamnese Evolution/Blutung; ABCDE + Ugly Duckling beobachten; *keine* Biopsie/Kürettage; Rücken mitinspizieren.]
  ],
)

== 4. Mimics (Text + Gestalt-Hinweis)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  row-gutter: 3pt,
  block(width: 100%, inset: 4pt, radius: 1.5pt, fill: rgb("#fef2f2"), stroke: (left: 2.5pt + palette.danger))[
    #text(size: 7.4pt)[*„Alter Fleck“* — ohne Evolutionsfrage Transformation verpasst.]
  ],
  block(width: 100%, inset: 4pt, radius: 1.5pt, fill: rgb("#fef2f2"), stroke: (left: 2.5pt + palette.danger))[
    #text(size: 7.4pt)[*„Seborrhoische Keratose“* — endgültige DDx ärztlich; bei Suspekt zuweisen.]
  ],
  block(width: 100%, inset: 4pt, radius: 1.5pt, fill: rgb("#fef2f2"), stroke: (left: 2.5pt + palette.danger))[
    #text(size: 7.4pt)[*„Nagelhämatom“* — ohne Trauma + Nagelwall → Melanom-DDx zeitnah.]
  ],
  block(width: 100%, inset: 4pt, radius: 1.5pt, fill: rgb("#fef2f2"), stroke: (left: 2.5pt + palette.danger))[
    #text(size: 7.4pt)[*„Rücken nicht Ziel“* — bei Entkleidung mitinspizieren und zuweisen.]
  ],
)

== 5–6. Dringlichkeit · Fall

#table(
  columns: (26mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 4.5pt,
  text(weight: "bold", size: 7.5pt, fill: palette.text-muted)[112 selten],
  text(size: 7.5pt)[Nur vitale Begleitlage — Melanom selbst nicht primär reanimationspflichtig.],
  text(weight: "bold", size: 8pt, fill: palette.danger)[Gleichtags–zeitnah],
  text(size: 7.5pt)[Blutung/Ulzeration; ABCDE-suspekt; B-Symptome + Knoten → HA/Derm, *keine* Destruktion.],
  text(weight: "bold", size: 7.8pt)[Zeitnah Derm],
  text(size: 7.5pt)[Subungual + Nagelwall; Ugly Duckling ohne akute Blutung.],
  text(weight: "bold", size: 7.8pt)[Behandeln],
  text(size: 7.5pt)[Ohne Suspekt: MSK + Sicherheitsnetz; Screening-Hinweis ohne Ersatz.],
)

#v(4pt)
#block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#f8fafc"),
  stroke: 0.45pt + palette.border,
)[
  #text(size: 7.8pt, weight: "bold", font: fonts.sans, fill: palette.primary-dark)[Fall: 52 J., Schulterblatt-Läsion beim Entkleiden]
  #v(2pt)
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 5pt,
    text(size: 7.4pt)[*Maßgeblich:* ABCDE-suspekt → gleichtags–zeitnah zuweisen.],
    text(size: 7.4pt)[*Kontraindiziert:* Destruktion; „alter Fleck“-Label.],
    text(size: 7.4pt)[*Schritt:* schriftlich HA/Derm; MSK mit Netz; Läsion unberührt.],
  )
]

#v(5pt)
#align(center)[
  #text(size: 7.2pt, fill: palette.text-muted, font: fonts.sans)[
    Merksatz: Läsionsgestalt lesen · Ugly Duckling im Feld · suspekt → zuweisen · keine Destruktion
  ]
]
