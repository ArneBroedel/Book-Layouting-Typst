// Form Lab Pass V (c-wave) — Anaphylaxie · many small vector glyphs (CeTZ)
// lab: anaphylaxie-2026-08-c · pin: chapter-v-12-anaphylaxie.md
// ALLOW: many small vectors · DENY: mega-infographic, raster heroes, caption-rescued doodles
// Motifs: hives, lips/tongue + airway cross-section, heart/shock, GI, action chevrons, ban

#import "/packages/bookkit/lib.typ": *
#import "@preview/cetz:0.3.4"
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Anaphylaxie — Form Lab Pass V (c-wave)", author: "form-lab/anaphylaxie-2026-08-c/V")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Anaphylaxie · Form Lab c · Pass V (Vector)], [viele kleine Vektor-Kacheln])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [Form Lab · vector · wave c], counter(page).display("1"))
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
  set text(font: fonts.sans, size: 10pt, weight: "bold", fill: palette.primary)
  block(below: 3.5pt, above: 6pt)[
    #it.body
    #v(1.2pt)
    #line(length: 18mm, stroke: 1pt + palette.primary)
  ]
}

// ── Vector library (thumbnail-legible, anti-doodle) ───────────

// Skin field with raised wheals (not abstract dots)
#let hives-pattern(sc: 1) = cetz.canvas(length: 0.9mm * sc, {
  import cetz.draw: *
  // skin rectangle
  rect((-14, -10), (14, 10), radius: 1.5, fill: rgb("#fde8d0"), stroke: 0.85pt + rgb("#b45309"))
  // raised pale-pink wheals with darker rims
  for (x, y, rx, ry) in (
    (-7, 3, 4.2, 3.2),
    (1, 4.5, 3.6, 2.8),
    (7, 1, 4.0, 3.0),
    (-3, -4, 3.8, 2.9),
    (5, -5, 3.2, 2.5),
    (-9, -2, 2.8, 2.2),
  ) {
    circle((x, y), radius: (rx, ry), fill: rgb("#fecaca"), stroke: 0.75pt + rgb("#b91c1c"))
    circle((x, y + 0.3), radius: (rx * 0.45, ry * 0.4), fill: rgb("#fee2e2").transparentize(30%), stroke: none)
  }
})

// Face lower third: swollen lips + tongue protrusion cue
#let lips-angio(sc: 1) = cetz.canvas(length: 0.9mm * sc, {
  import cetz.draw: *
  // face oval lower
  merge-path(stroke: 0.9pt + palette.primary-dark, fill: rgb("#fef3c7"), close: true, {
    line((-10, 8), (-11, 0), (-8, -8), (0, -11), (8, -8), (11, 0), (10, 8), (0, 10))
  })
  // swollen upper lip (thick)
  merge-path(stroke: 0.85pt + rgb("#9f1239"), fill: rgb("#f87171"), close: true, {
    line((-6, 1), (-4, 3.5), (0, 4), (4, 3.5), (6, 1), (3, 0.2), (0, 0.6), (-3, 0.2))
  })
  // swollen lower lip
  merge-path(stroke: 0.85pt + rgb("#9f1239"), fill: rgb("#ef4444"), close: true, {
    line((-6, 0.5), (-3, -1.2), (0, -1.8), (3, -1.2), (6, 0.5), (3, 1.2), (0, 1.5), (-3, 1.2))
  })
  // tongue tip protruding / enlarged
  merge-path(stroke: 0.7pt + rgb("#be123c"), fill: rgb("#fb7185"), close: true, {
    line((-2.2, -1.5), (-1.5, -5), (0, -6.2), (1.5, -5), (2.2, -1.5), (0, -2.2))
  })
})

// Airway cross-section: lumen narrowed by mucosal swelling
#let airway-xs(sc: 1) = cetz.canvas(length: 0.95mm * sc, {
  import cetz.draw: *
  // outer wall ring
  circle((0, 0), radius: 11, fill: rgb("#fecaca"), stroke: 1.1pt + rgb("#991b1b"))
  // mucosal swell (thick red ring)
  circle((0, 0), radius: 8.2, fill: rgb("#f87171"), stroke: none)
  // residual lumen (small white hole — reads as narrowing)
  circle((0, 0), radius: 3.2, fill: white, stroke: 0.9pt + palette.primary-dark)
  // annotation ticks (left = wall, center = air)
  line((-11, 0), (-8.5, 0), stroke: 0.55pt + palette.primary-dark)
  line((-3.0, 0), (-1.5, 0), stroke: 0.55pt + palette.primary-dark)
})

// Heart + downward shock mark
#let heart-shock(sc: 1) = cetz.canvas(length: 0.95mm * sc, {
  import cetz.draw: *
  // heart silhouette (clearer lobes)
  circle((-3.0, 4.0), radius: 4.5, fill: rgb("#fecaca"), stroke: 1.05pt + palette.danger)
  circle((3.0, 4.0), radius: 4.5, fill: rgb("#fecaca"), stroke: 1.05pt + palette.danger)
  merge-path(stroke: 1.05pt + palette.danger, fill: rgb("#fecaca"), close: true, {
    line((-7.4, 3.2), (0, -8.5), (7.4, 3.2))
  })
  circle((-3.0, 4.0), radius: 3.9, fill: rgb("#fecaca"), stroke: none)
  circle((3.0, 4.0), radius: 3.9, fill: rgb("#fecaca"), stroke: none)
  // down BP arrow — larger
  line((13, 7), (13, -7), stroke: 1.7pt + palette.danger, mark: (end: ">", fill: palette.danger))
  content((13, 10), text(size: 6pt, weight: "bold", fill: palette.danger, font: fonts.sans)[RR↓])
})

// GI: stomach outline + colic waves
#let gi-mark(sc: 1) = cetz.canvas(length: 0.95mm * sc, {
  import cetz.draw: *
  // stomach body
  merge-path(stroke: 1.0pt + palette.primary-dark, fill: rgb("#ccfbf1"), close: true, {
    line((-8, 4), (-10, 0), (-8, -6), (-2, -8), (4, -7), (8, -3), (9, 2), (6, 6), (0, 7), (-5, 6))
  })
  // fundus notch
  circle((-6, 5.5), radius: 2.2, fill: rgb("#ccfbf1"), stroke: 0.8pt + palette.primary-dark)
  // peristalsis / colic waves inside
  for (y, a) in ((-1, 0.8), (1.5, -0.8), (3.5, 0.6)) {
    line((-5, y), (-2, y + a), (1, y - a), (4, y), stroke: 0.85pt + palette.primary)
  }
})

// Action chevron step
#let chevron-step(lab, col, sc: 1) = cetz.canvas(length: 0.85mm * sc, {
  import cetz.draw: *
  merge-path(stroke: 0.7pt + col.darken(15%), fill: col, close: true, {
    line((-11, -5), (6, -5), (11, 0), (6, 5), (-11, 5), (-7, 0))
  })
  content((0, 0), text(size: 5.8pt, weight: "bold", fill: white, font: fonts.sans)[#lab])
})

// Ban circle (no PT / no own meds)
#let ban-mark(sc: 1) = cetz.canvas(length: 0.95mm * sc, {
  import cetz.draw: *
  // hands/treatment bars
  rect((-6, -2), (6, 2), radius: 0.5, fill: rgb("#e2e8f0"), stroke: 0.7pt + palette.primary-dark)
  rect((-2, -6), (2, 6), radius: 0.5, fill: rgb("#e2e8f0"), stroke: 0.7pt + palette.primary-dark)
  circle((0, 0), radius: 10, stroke: 1.5pt + palette.danger)
  line((-7, -7), (7, 7), stroke: 1.55pt + palette.danger)
})

// Autoinjektor pen (patient-owned cue)
#let epi-pen(sc: 1) = cetz.canvas(length: 0.9mm * sc, {
  import cetz.draw: *
  rect((-3.5, -12), (3.5, 10), radius: 1.8, fill: rgb("#fef2f2"), stroke: 1.0pt + palette.danger)
  rect((-3.5, 5), (3.5, 10), fill: palette.danger, stroke: none)
  circle((0, 10), radius: 1.6, fill: palette.danger, stroke: none)
  // safety cap base
  rect((-4, -14), (4, -11), radius: 0.8, fill: rgb("#94a3b8"), stroke: 0.6pt + palette.primary-dark)
  content((0, -1), text(size: 5.2pt, weight: "bold", fill: palette.danger, font: fonts.sans)[Epi])
})

// Biphasic: two waves, second dashed
#let biphasic-wave(sc: 1) = cetz.canvas(length: 0.9mm * sc, {
  import cetz.draw: *
  // axis
  line((-14, -6), (14, -6), stroke: 0.6pt + palette.text-muted)
  // first peak
  merge-path(stroke: 1.2pt + palette.danger, fill: none, {
    line((-12, -6), (-8, 6), (-4, -4), (0, -5))
  })
  // second delayed peak (dashed feel via segments)
  for (a, b) in (((2, -5), (4, 2)), ((4, 2), (6, 5)), ((6, 5), (8, 1)), ((8, 1), (11, -5))) {
    line(a, b, stroke: (paint: palette.warning.darken(10%), thickness: 1.15pt, dash: "dashed"))
  }
  content((-8, 9), text(size: 5pt, fill: palette.danger, font: fonts.sans)[1.])
  content((6, 9), text(size: 5pt, fill: palette.warning.darken(10%), font: fonts.sans)[2. 6–24h])
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
  #set text(size: 6.2pt, fill: palette.text-muted, font: fonts.sans)
  #align(center)[#cap]
]

// ── Title ─────────────────────────────────────────────────────
= Anaphylaxie — systemische Notfallreaktion

#text(size: 8pt, fill: palette.text-muted, font: fonts.sans)[
  Pass V: viele kleine Vektor-Kacheln · Semantic Read ohne Caption-Rettung
]

#v(3pt)
#grid(
  columns: (auto, 1fr),
  column-gutter: 8pt,
  align(horizon)[#airway-xs(sc: 0.85)],
  [
    #set text(size: 8.2pt)
    #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang.]
    Atemwegsverengung / Kreislauf / Progredienz → *sofort 112*. Keine PT, kein medikamentöses Eigenprotokoll.
  ],
)

== Mehrorgan — vier Vektor-Anker

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 5pt,
  glyph-card(hives-pattern(sc: 0.95), [Kachel · Urtikaria-Muster auf Hautfeld]),
  glyph-card(lips-angio(sc: 0.95), [Kachel · Lippen-/Zungen-Angioödem]),
  glyph-card(heart-shock(sc: 0.9), [Kachel · Herz + RR↓ / Schock]),
  glyph-card(gi-mark(sc: 0.9), [Kachel · GI / Kolik-Magen]),
)

#v(3pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  row-gutter: 2pt,
  glyph-card(airway-xs(sc: 1.0), [Kachel · Atemwegs-Querschnitt: Lumen eng (Schleimhautödem)]),
  glyph-card(biphasic-wave(sc: 1.0), [Kachel · biphasisch: 2. Welle 6–24 h]),
)

== Handlungskette (Chevrons)

#align(center)[
  #grid(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto),
    column-gutter: 1.5pt,
    align(horizon)[#chevron-step([Stopp], palette.danger)],
    align(horizon)[#text(size: 10pt, fill: palette.danger, weight: "bold")[›]],
    align(horizon)[#chevron-step([112], palette.danger)],
    align(horizon)[#text(size: 10pt, fill: palette.danger, weight: "bold")[›]],
    align(horizon)[#chevron-step([Lage], rgb("#c2410c"))],
    align(horizon)[#text(size: 10pt, fill: palette.warning, weight: "bold")[›]],
    align(horizon)[#chevron-step([Epi+], palette.primary)],
    align(horizon)[#text(size: 10pt, fill: palette.primary, weight: "bold")[›]],
    align(horizon)[#chevron-step([Watch], palette.primary-dark)],
  )
]
#v(2pt)
#align(center)[
  #text(size: 7pt, fill: palette.text-muted, font: fonts.sans)[
    Stopp → 112 → Lagerung/BLS → Autoinjektor-Support (patienteneigen) → überwachen
  ]
]

== Boundary · Autoinjektor · Mimics

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  glyph-card(ban-mark(sc: 0.95), [Kachel · Verbot: fortgesetzte PT / Eigenmedikation]),
  glyph-card(epi-pen(sc: 0.95), [Kachel · Adrenalin-Autoinjektor (patienteneigen)]),
  block(
    width: 100%,
    inset: 5pt,
    radius: 2pt,
    stroke: 0.4pt + palette.border,
    fill: rgb("#fef2f2"),
  )[
    #text(size: 7.5pt, weight: "bold", fill: palette.danger, font: fonts.sans)[Mimics entwarnen nicht]
    #v(2pt)
    #set text(size: 7pt)
    • nur Urtikaria \
    • „Panik“ \
    • Asthma-Schub \
    • MSK-Enge / HWS \
    #v(2pt)
    #text(size: 6.8pt)[Erst Atemwege + Kreislauf.]
  ],
)

== Klinische Anker (Text)

#table(
  columns: (26mm, 1fr),
  stroke: 0.35pt + palette.border,
  inset: 4pt,
  table.header(
    text(weight: "bold", size: 7.5pt, font: fonts.sans)[Job],
    text(weight: "bold", size: 7.5pt, font: fonts.sans)[Lehre außerhalb der Kachel],
  ),
  [*Danger*], text(size: 7.3pt)[Atemwegs-Querschnitt / RR↓ lesen als 112-Schwelle — nicht mobilisieren.],
  [*Mehrorgan*], text(size: 7.3pt)[Vier Anker: Hautfeld, Lippen/Zunge, Herz/Schock, GI.],
  [*Aktion*], text(size: 7.3pt)[Chevron-Kette; Epi nur patienteneigen.],
  [*Boundary*], text(size: 7.3pt)[Ban-Kachel = kein Eigenprotokoll, keine fortgesetzte PT.],
  [*Biphasisch*], text(size: 7.3pt)[Zweite Welle 6–24 h — Beobachtung ärztlich.],
)

#block(breakable: false)[
  == Mini-Fall (Transfer)

  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    align(horizon)[#lips-angio(sc: 0.75)],
    [
      #set text(size: 7.5pt)
      34 J., Nussallergie, nach Müsliriegel: Kloß, Heiserkeit, Lippenödem. Will HWS „lösen“. \
      #text(weight: "bold", fill: palette.danger)[→ 112], nicht Nacken mobilisieren. Autoinjektor suchen/supporten.
    ],
  )
]

#v(3pt)
#align(center)[
  #text(size: 6.8pt, fill: palette.text-muted, font: fonts.sans)[
    Nur thumbnail-lesbare Vektoren · wave c · keine a/b-Assets · Caption = Kachel/Gestalt
  ]
]
