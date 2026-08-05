// Form Lab Pass V (d-wave) — Melanom ABCDE · many small vector glyphs (CeTZ)
// lab: melanom-abcde-2026-08-d · pin: chapter-v-10-melanom-abcde-hautscreening.md
// ALLOW: many small vectors on skin-like fields · DENY: mega-infographic, rainbow chips, abstract dots-on-white ugly duckling

#import "/packages/bookkit/lib.typ": *
#import "@preview/cetz:0.3.4"

#set document(title: "Melanom ABCDE — Form Lab Pass V (d-wave)", author: "form-lab/melanom-abcde-2026-08-d/V")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Melanom · Form Lab d · Pass V · Vector glyphs], [SR on every mark])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [wave-d · vector extreme · skin-field glyphs], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.4pt)
#set par(leading: 0.55em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 13.5pt, weight: "bold", fill: palette.primary-dark)
  block(below: 3pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 9.6pt, weight: "bold", fill: palette.primary)
  block(below: 3pt, above: 6pt)[
    #it.body
    #v(1pt)
    #line(length: 18mm, stroke: 1pt + palette.primary)
  ]
}

// Skin field helper
#let skin-rect(w, h) = {
  import cetz.draw: *
  rect((-w / 2, -h / 2), (w / 2, h / 2), fill: rgb("#f5d6b8"), stroke: 0.55pt + rgb("#c4a484"), radius: 1.2)
}

// A — asymmetric blotch on skin
#let g-asym(sc: 1) = cetz.canvas(length: 0.95mm * sc, {
  import cetz.draw: *
  skin-rect(34, 26)
  // irregular asymmetric lesion (left heavy)
  merge-path(stroke: 0.85pt + rgb("#3f2a1e"), fill: rgb("#5c3a24"), close: true, {
    line((-6, 2), (-2, 7), (4, 5), (7, 1), (5, -4), (0, -6), (-5, -3), (-8, 0))
  })
  // lighter right lobe (asymmetry)
  merge-path(stroke: 0.7pt + rgb("#3f2a1e"), fill: rgb("#8b5a2b"), close: true, {
    line((2, 1), (6, 3), (9, 0), (7, -3), (3, -2))
  })
})

// B — irregular border (spiky margin)
#let g-border(sc: 1) = cetz.canvas(length: 0.95mm * sc, {
  import cetz.draw: *
  skin-rect(34, 26)
  merge-path(stroke: 1.05pt + rgb("#2d1b12"), fill: rgb("#4a3220"), close: true, {
    line((-5, 0), (-3, 5), (0, 3), (3, 7), (6, 2), (8, 5), (7, 0), (9, -3), (5, -6), (2, -4), (-1, -7), (-4, -3), (-7, -4), (-6, 1))
  })
})

// C — color variegation (multi-tone patches in one lesion)
#let g-color(sc: 1) = cetz.canvas(length: 0.95mm * sc, {
  import cetz.draw: *
  skin-rect(34, 26)
  // base dark brown
  circle((0, 0), radius: 8.5, fill: rgb("#4a3220"), stroke: 0.7pt + rgb("#2d1b12"))
  // black patch
  circle((-3, 2), radius: 3.2, fill: rgb("#1a120c"), stroke: none)
  // reddish
  circle((3, 1), radius: 2.8, fill: rgb("#8b3a2a"), stroke: none)
  // blue-gray
  circle((1, -3.5), radius: 2.4, fill: rgb("#5a6a78"), stroke: none)
  // pale
  circle((-2, -2), radius: 1.8, fill: rgb("#d4c4a8"), stroke: 0.4pt + rgb("#8a7a60"))
})

// D — large diameter with scale bar
#let g-diam(sc: 1) = cetz.canvas(length: 0.95mm * sc, {
  import cetz.draw: *
  skin-rect(34, 26)
  circle((0, 1), radius: 9, fill: rgb("#5c4030"), stroke: 0.85pt + rgb("#2d1b12"))
  // scale bar ~5mm cue
  line((-10, -10), (0, -10), stroke: 1.1pt + palette.primary-dark)
  line((-10, -11), (-10, -9), stroke: 0.8pt + palette.primary-dark)
  line((0, -11), (0, -9), stroke: 0.8pt + palette.primary-dark)
  content((-5, -12.5), text(size: 5.5pt, weight: "bold", fill: palette.primary-dark, font: fonts.sans)[>5 mm])
})

// E — evolution: small → large (two stages)
#let g-evol(sc: 1) = cetz.canvas(length: 0.9mm * sc, {
  import cetz.draw: *
  // left earlier
  rect((-16, -11), (-2, 11), fill: rgb("#f5d6b8"), stroke: 0.5pt + rgb("#c4a484"), radius: 1)
  circle((-9, 0), radius: 3.2, fill: rgb("#6b4a32"), stroke: 0.65pt + rgb("#2d1b12"))
  content((-9, -13.5), text(size: 5pt, fill: palette.text-muted, font: fonts.sans)[früher])
  // arrow
  line((-1, 0), (2, 0), mark: (end: ">", fill: palette.primary-dark), stroke: 1pt + palette.primary-dark)
  // right later larger irregular
  rect((3, -11), (17, 11), fill: rgb("#f5d6b8"), stroke: 0.5pt + rgb("#c4a484"), radius: 1)
  merge-path(stroke: 0.7pt + rgb("#2d1b12"), fill: rgb("#3f2a1e"), close: true, {
    line((7, 1), (10, 6), (14, 3), (15, -2), (12, -6), (8, -4), (6, 0))
  })
  content((10, -13.5), text(size: 5pt, fill: palette.text-muted, font: fonts.sans)[später])
})

// Ugly duckling — field of moles + one different ON skin field
#let g-ugly(sc: 1) = cetz.canvas(length: 0.95mm * sc, {
  import cetz.draw: *
  // large skin field
  rect((-18, -13), (18, 13), fill: rgb("#f0c9a0"), stroke: 0.65pt + rgb("#c4a484"), radius: 1.5)
  // common moles (similar)
  for (cx, cy, r) in (
    (-12, 6, 1.8), (-6, 7, 1.6), (2, 6.5, 1.7), (10, 5, 1.5),
    (-10, 0, 1.9), (-3, -1, 1.6), (5, 1, 1.7), (12, -2, 1.5),
    (-12, -7, 1.6), (-5, -8, 1.8), (3, -7, 1.5), (11, -8, 1.6),
  ) {
    circle((cx, cy), radius: r, fill: rgb("#6b4a32"), stroke: 0.45pt + rgb("#3f2a1e"))
  }
  // ugly duckling — larger, darker, irregular
  merge-path(stroke: 0.9pt + rgb("#1a120c"), fill: rgb("#2a1810"), close: true, {
    line((0, 3), (3, 5), (5, 2), (4, -1), (1, -2), (-2, 0), (-1, 3))
  })
  // subtle ring cue (not caption-dependent if form differs)
  circle((1.5, 1.5), radius: 5.2, stroke: (paint: palette.danger, thickness: 0.85pt, dash: "dashed"))
})

// Subungual pigment stripe + wall
#let g-nail(sc: 1) = cetz.canvas(length: 0.95mm * sc, {
  import cetz.draw: *
  // finger tip
  merge-path(stroke: 0.7pt + rgb("#8a6a50"), fill: rgb("#f5d6b8"), close: true, {
    line((-8, -12), (-9, 2), (-6, 10), (0, 12), (6, 10), (9, 2), (8, -12), (4, -14), (-4, -14))
  })
  // nail plate
  rect((-5.5, -8), (5.5, 8), fill: rgb("#e8e4dc"), stroke: 0.7pt + rgb("#8a8a80"), radius: 0.8)
  // longitudinal pigment band
  rect((-1.2, -7), (1.2, 7), fill: rgb("#2a1810"), stroke: none)
  // nail-wall pigment (Hutchinson cue)
  circle((-5.2, 6), radius: 1.6, fill: rgb("#3f2a1e"), stroke: 0.4pt + rgb("#1a120c"))
  circle((5.2, 5.5), radius: 1.3, fill: rgb("#4a3220"), stroke: 0.35pt + rgb("#1a120c"))
})

// Role: eye + arrow to doctor (assign, not cut)
#let g-role(sc: 1) = cetz.canvas(length: 0.95mm * sc, {
  import cetz.draw: *
  // eye
  circle((-8, 0), radius: 5.5, fill: white, stroke: 1pt + palette.primary-dark)
  circle((-8, 0), radius: 2.4, fill: palette.primary-dark, stroke: none)
  // arrow
  line((-1.5, 0), (4, 0), mark: (end: ">", fill: palette.primary), stroke: 1.15pt + palette.primary)
  // person/doc
  circle((9, 4), radius: 2.4, fill: rgb("#ecfeff"), stroke: 0.85pt + palette.primary-dark)
  merge-path(stroke: 0.85pt + palette.primary-dark, fill: rgb("#ecfeff"), close: true, {
    line((5.5, -6), (5.5, -1), (12.5, -1), (12.5, -6), (9, -8))
  })
})

// Ban destructive (scalpel with ban)
#let g-ban(sc: 1) = cetz.canvas(length: 0.95mm * sc, {
  import cetz.draw: *
  // scalpel
  rect((-8, -1.5), (4, 1.5), fill: rgb("#cbd5e1"), stroke: 0.7pt + palette.primary-dark)
  merge-path(stroke: 0.7pt + palette.primary-dark, fill: rgb("#94a3b8"), close: true, {
    line((4, -1.5), (11, 0), (4, 1.5))
  })
  circle((0, 0), radius: 12, stroke: 1.45pt + palette.danger)
  line((-8.5, -8.5), (8.5, 8.5), stroke: 1.5pt + palette.danger)
})

// Back inspection silhouette
#let g-back(sc: 1) = cetz.canvas(length: 0.9mm * sc, {
  import cetz.draw: *
  // torso back
  merge-path(stroke: 0.9pt + rgb("#8a6a50"), fill: rgb("#f5d6b8"), close: true, {
    line((-8, -14), (-9, 4), (-5, 12), (0, 14), (5, 12), (9, 4), (8, -14), (4, -16), (-4, -16))
  })
  // scapular lesion (right of viewer = patient's left... keep right scapula area)
  merge-path(stroke: 0.75pt + rgb("#2d1b12"), fill: rgb("#3f2a1e"), close: true, {
    line((3, 4), (5.5, 6), (7, 3), (6, 0.5), (3.5, 1.5))
  })
  // eye mark
  content((-11, 10), text(size: 7pt, fill: palette.primary-dark)[◎])
})

#let glyph-card(body, cap) = block(
  width: 100%,
  inset: 4pt,
  radius: 2pt,
  stroke: 0.4pt + palette.border,
  fill: white,
)[
  #align(center)[#body]
  #v(2pt)
  #align(center)[
    #set text(size: 6pt, fill: palette.text-muted, font: fonts.sans)
    #cap
  ]
]

// ── Chapter ───────────────────────────────────────────────────
= Melanom — ABCDE-Hautscreening im Direktzugang

#text(size: 7.6pt, fill: palette.text-muted, font: fonts.sans)[
  Pass V (d): viele *kleine* Vektor-Kacheln · Läsionen *auf Hautfeld* · Ugly Duckling als Feld · kein Mega-Poster
]

#v(2pt)
#block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger),
)[
  #set text(size: 7.9pt)
  #text(weight: "bold", fill: palette.danger)[Rolle: ]
  Strukturierter Blick + Zuweisung — keine Exzision, keine physiotherapeutische Hautdiagnose.
]

== ABCDE — Läsionsmerkmale (Vektor)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  glyph-card(g-asym(sc: 1.0), [A · Asymmetrie]),
  glyph-card(g-border(sc: 1.0), [B · unregelmäßige Begrenzung]),
  glyph-card(g-color(sc: 1.0), [C · Farbvielfalt in der Läsion]),
  glyph-card(g-diam(sc: 1.0), [D · Durchmesser > 5 mm]),
  glyph-card(g-evol(sc: 0.95), [E · Evolution]),
)

== Ugly Duckling · Subungual · Rolle

#grid(
  columns: (1.15fr, 0.95fr, 0.9fr),
  column-gutter: 5pt,
  glyph-card(g-ugly(sc: 1.05), [Ugly Duckling · eine andere auf Hautfeld]),
  glyph-card(g-nail(sc: 1.0), [Subungual · Band + Nagelwall]),
  glyph-card(g-role(sc: 1.0), [Blick → Zuweisung (nicht schneiden)]),
)

== Mimics · Grenze · Rücken-Fall

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 5pt,
  glyph-card(g-ban(sc: 0.95), [Keine destruktiven Maßnahmen]),
  glyph-card(g-back(sc: 1.0), [Rücken mitinspizieren]),
  block(
    width: 100%,
    inset: 5pt,
    radius: 2pt,
    fill: rgb("#fff7ed"),
    stroke: (left: 2.5pt + rgb("#c2410c")),
  )[
    #text(size: 7.2pt, weight: "bold", fill: rgb("#c2410c"))[„Alter Fleck“]
    #v(2pt)
    #text(size: 7pt)[Ohne Evolutionsfrage Transformation verpasst.]
  ],
  block(
    width: 100%,
    inset: 5pt,
    radius: 2pt,
    fill: rgb("#fef2f2"),
    stroke: (left: 2.5pt + palette.danger),
  )[
    #text(size: 7.2pt, weight: "bold", fill: palette.danger)[112 selten]
    #v(2pt)
    #text(size: 7pt)[Primär gleichtags/zeitnah Derm; 112 nur bei vitaler Begleitlage.]
  ],
)

== TIME (Text trägt Claims)

#table(
  columns: (18mm, 1fr),
  stroke: 0.35pt + palette.border,
  inset: 4pt,
  fill: (_, y) => if y == 0 { rgb("#fef2f2") } else if y == 1 { rgb("#fff7ed") } else if y == 2 { rgb("#f0fdfa") } else { rgb("#ecfdf5") },
  text(weight: "bold", size: 7.2pt, fill: palette.danger)[112], text(size: 7.2pt)[Selten · nur vitale Begleitlage (schwere Blutung, Schock)],
  text(weight: "bold", size: 7.2pt, fill: rgb("#c2410c"))[Gleichtags], text(size: 7.2pt)[Blutung/Ulzeration; ABCDE-suspekt/rasch; B-Symptome + multiple Knoten],
  text(weight: "bold", size: 7.2pt, fill: palette.primary)[Zeitnah], text(size: 7.2pt)[Subungual + Nagelwall; Ugly Duckling ohne Blutung → Dermatologie],
  text(weight: "bold", size: 7.2pt, fill: rgb("#0f766e"))[Beh.], text(size: 7.2pt)[Ohne Suspekt: MSK fortsetzen; neu auffällig → stop + zuweisen],
)

== Mini-Fall

#grid(
  columns: (auto, 1fr),
  column-gutter: 8pt,
  g-back(sc: 0.85),
  [
    #set text(size: 7.8pt)
    *52 J.* · post Diskektomie · beim Entkleiden: rechte Schulterblatt-Läsion 8 mm, asymmetrisch, unregelmäßig, mehrfarbig · „schon ewig, juckt manchmal“. \
    *Vordergrund:* ABCDE+ am Rücken → *zuweisen*. *Kontraindiziert:* Destruktion, Bagatellisieren. *Schritt:* gleichtags/zeitnah Derm/HA; MSK ohne Läsionsmanipulation.
  ],
)

#v(3pt)
#align(center)[
  #text(size: 7pt, fill: palette.text-muted, font: fonts.sans)[
    Parent V-10 · vector lesions on skin field · SR PASS required · wave-d / V
  ]
]
