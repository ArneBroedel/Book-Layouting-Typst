// Form Lab Pass V (d-wave) — Schlaganfall · many small vector glyphs (CeTZ)
// lab: schlaganfall-2026-08-d · pin: chapter-v-4-schlaganfall.md
// ALLOW: many small vectors · DENY: mega-infographic, raster heroes, caption-rescued doodles
// Glyphs: face droop unilateral · arm drift · clock last-seen · ban HWS · FAST quiet marks · balance

#import "/packages/bookkit/lib.typ": *
#import "@preview/cetz:0.3.4"
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Schlaganfall — Form Lab Pass V (d-wave)", author: "form-lab/schlaganfall-2026-08-d/V")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Schlaganfall · Form Lab d · Pass V · Vector glyphs], [SR on every mark])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [wave-d · vector extreme · lab-learning], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.5pt)
#set par(leading: 0.56em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 14pt, weight: "bold", fill: palette.primary-dark)
  block(below: 3pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 9.8pt, weight: "bold", fill: palette.primary)
  block(below: 3pt, above: 6pt)[
    #it.body
    #v(1pt)
    #line(length: 18mm, stroke: 1pt + palette.primary)
  ]
}

// ── d-wave vector library ─────────────────────────────────────

// Unilateral face droop (left mouth corner down) — not smiley
#let face-droop(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  // head oval
  circle((0, 1), radius: 11, fill: rgb("#f8fafc"), stroke: 1.05pt + palette.primary-dark)
  // eyes
  circle((-3.8, 3.5), radius: 1.15, fill: palette.primary-dark, stroke: none)
  circle((3.8, 3.5), radius: 1.15, fill: palette.primary-dark, stroke: none)
  // brows quiet
  line((-5.5, 5.8), (-2.2, 5.5), stroke: 0.7pt + palette.primary-dark)
  line((2.2, 5.5), (5.5, 5.8), stroke: 0.7pt + palette.primary-dark)
  // mouth: right side near neutral, left corner droops (viewer's left = patient's right? clinical: unilateral droop)
  // show clear left-corner droop from center
  line((-1.2, -2.2), (4.2, -1.6), stroke: 1.15pt + palette.primary-dark)
  // drooped left oral commissure as danger mark
  line((-1.2, -2.2), (-5.5, -5.2), stroke: 1.35pt + palette.danger)
  circle((-5.5, -5.2), radius: 1.1, fill: palette.danger, stroke: none)
  // subtle asymmetry cue on left cheek
  arc((-2, 0), start: 200deg, stop: 280deg, radius: 7.5, stroke: 0.55pt + palette.danger.lighten(20%))
})

// Arm drift: one arm horizontal, other drooping
#let arm-drift(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  // torso
  rect((-3.5, -6), (3.5, 4), radius: 1.2, fill: rgb("#ecfeff"), stroke: 0.9pt + palette.primary-dark)
  // head
  circle((0, 7), radius: 3.2, fill: rgb("#f8fafc"), stroke: 0.85pt + palette.primary-dark)
  // right arm held (viewer's right)
  line((3.5, 2), (12, 3.2), stroke: 1.35pt + palette.primary-dark)
  circle((12, 3.2), radius: 1.3, fill: palette.primary-dark, stroke: none)
  // left arm drifting down
  line((-3.5, 2), (-11, -4.5), stroke: 1.45pt + palette.danger)
  circle((-11, -4.5), radius: 1.4, fill: palette.danger, stroke: none)
  // drift arrow
  line((-8, 0), (-10, -3), mark: (end: ">", fill: palette.danger), stroke: 0.85pt + palette.danger)
})

// Clock / last seen normal
#let clock-last-seen(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  circle((0, 0), radius: 11, fill: white, stroke: 1.15pt + palette.primary-dark)
  // ticks
  for a in range(0, 12) {
    let rad = (a * 30 - 90) * 1deg
    line(
      (calc.cos(rad) * 8.2, calc.sin(rad) * 8.2),
      (calc.cos(rad) * 10, calc.sin(rad) * 10),
      stroke: 0.7pt + palette.primary-dark,
    )
  }
  // hands past ~10:10 feeling urgent
  line((0, 0), (0, 6.5), stroke: 1.2pt + palette.primary-dark)
  line((0, 0), (5.5, -2.5), stroke: 1.35pt + palette.danger)
  circle((0, 0), radius: 1.1, fill: palette.danger, stroke: none)
  // danger ring segment (time pressure)
  arc((0, 0), start: -20deg, stop: 100deg, radius: 12.8, stroke: 1.5pt + palette.danger)
})

// Ban HWS manipulation: cervical silhouette + ban
#let ban-hws(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  // simplified neck/head side profile
  merge-path(stroke: 0.95pt + palette.primary-dark, fill: rgb("#f8fafc"), close: true, {
    line((-2, -10), (-3, -2), (-1, 6), (2, 10), (5, 9), (4, 4), (3, -2), (2, -10))
  })
  // C-spine segments
  for y in (-7, -4, -1, 2) {
    rect((-1.2, y - 0.9), (2.2, y + 0.9), radius: 0.3, fill: rgb("#e2e8f0"), stroke: 0.55pt + palette.primary-dark)
  }
  // hands / force mark (small chevrons on neck)
  line((-6, 0), (-3.2, 0), mark: (end: ">"), stroke: 1pt + palette.text-muted)
  line((6.5, 0), (3.5, 0), mark: (end: ">"), stroke: 1pt + palette.text-muted)
  // ban
  circle((0, 0), radius: 13.5, stroke: 1.5pt + palette.danger)
  line((-9.5, -9.5), (9.5, 9.5), stroke: 1.5pt + palette.danger)
})

// Balance / unsteady stance
#let balance-wobble(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  // figure
  circle((0, 10), radius: 2.6, fill: rgb("#f8fafc"), stroke: 0.8pt + palette.primary-dark)
  line((0, 7.5), (0, 0), stroke: 1.1pt + palette.primary-dark)
  // legs splayed unstable
  line((0, 0), (-5, -9), stroke: 1.1pt + palette.primary-dark)
  line((0, 0), (4, -9), stroke: 1.1pt + palette.primary-dark)
  // arms out
  line((0, 5), (-7, 2), stroke: 1pt + palette.primary-dark)
  line((0, 5), (7, 1), stroke: 1pt + palette.danger)
  // wobble arcs
  arc((0, -2), start: 200deg, stop: 340deg, radius: 8, stroke: 0.85pt + palette.danger)
  // ground
  line((-10, -10), (10, -10), stroke: 0.7pt + palette.text-muted)
})

// Eyes / vision field loss cue (half field hatched) — no "?" doodle
#let eye-field(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  // two eyes
  circle((-5, 0), radius: 4.2, fill: white, stroke: 0.95pt + palette.primary-dark)
  circle((5, 0), radius: 4.2, fill: white, stroke: 0.95pt + palette.primary-dark)
  circle((-5, 0), radius: 1.4, fill: palette.primary-dark, stroke: none)
  circle((5, 0), radius: 1.4, fill: palette.primary-dark, stroke: none)
  // right hemifield blocked (danger overlay on right halves)
  rect((0.2, -4.5), (9.5, 4.5), fill: rgb("#fecaca").transparentize(18%), stroke: none)
  // opaque hatch marks on blocked field
  for y in (-3.5, -1.5, 0.5, 2.5) {
    line((1.5, y), (8.5, y + 1.2), stroke: 0.55pt + palette.danger)
  }
  line((0, -6.5), (0, 6.5), stroke: 0.85pt + palette.danger)
})

// Quiet FAST letter marks as small badges
#let fast-letter(ch, col) = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  circle((0, 0), radius: 7.5, fill: col.lighten(78%), stroke: 1.1pt + col)
  content((0, 0), text(size: 9pt, weight: "bold", fill: col, font: fonts.sans)[#ch])
})

#let time-steps(sc: 1) = cetz.canvas(length: 0.95mm * sc, {
  import cetz.draw: *
  let tiers = (
    (0, palette.danger, "112"),
    (1, rgb("#c2410c"), "TIA"),
    (2, palette.primary, "NA"),
    (3, rgb("#0f766e"), "B"),
  )
  for (i, col, lab) in tiers {
    let x = i * 16
    rect((x - 6, -4), (x + 6, 4), radius: 1.2, fill: col.lighten(75%), stroke: 0.95pt + col)
    content((x, 0), text(size: 6pt, weight: "bold", fill: col, font: fonts.sans)[#lab])
    if i < 3 {
      line((x + 6.5, 0), (x + 9.5, 0), mark: (end: ">", fill: palette.text-muted), stroke: 0.7pt + palette.text-muted)
    }
  }
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
    #set text(size: 6.1pt, fill: palette.text-muted, font: fonts.sans)
    #cap
  ]
]

// ── Chapter ───────────────────────────────────────────────────
= Schlaganfall und TIA

#text(size: 7.8pt, fill: palette.text-muted, font: fonts.sans)[
  Pass V (d): viele *kleine* Vektor-Kacheln · thumbnail-legible · Semantic Read ohne Caption · kein free-vision
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
  Verdacht → *112* / Stroke-Unit. TIA auch remittiert = Notfall. Keine HWS-Manipulation.
]

== Erkennung — FAST-Gestalt (Vektor)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 5pt,
  glyph-card(face-droop(sc: 1.05), [Face · einseitiger Mundwinkel-Häng]),
  glyph-card(arm-drift(sc: 1.0), [Arms · Armdrift / Absinken]),
  glyph-card(clock-last-seen(sc: 1.0), [Time · Last seen normal / Uhr]),
  glyph-card(ban-hws(sc: 0.95), [Grenze · keine HWS-Manipulation]),
)

== BE-FAST + quiet letter marks

#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  glyph-card(balance-wobble(sc: 0.95), [Balance · Unsicherheit]),
  glyph-card(eye-field(sc: 1.0), [Eyes · Gesichtsfeld?]),
  glyph-card(fast-letter("F", palette.danger), [F · Face]),
  glyph-card(fast-letter("A", rgb("#c2410c")), [A · Arms]),
  glyph-card(fast-letter("S", palette.primary-dark), [S · Speech (Text)]),
  glyph-card(fast-letter("T", palette.danger), [T · Time → 112]),
)

#v(2pt)
#text(size: 7.5pt, fill: palette.text-muted)[
  *Speech* als Raster/Grimasse bewusst *nicht* als doodle — Claim im Text: unklare/verwaschene Sprache. Letter-S ist nur Index, nicht Klinikfoto.
]

== TIME-Relation + Claims

#grid(
  columns: (1fr,),
  glyph-card(time-steps(sc: 1.15), [112 → TIA-Pfad → NA → Behandeln + Netz]),
)
#v(2pt)
#table(
  columns: (16mm, 1fr),
  stroke: 0.35pt + palette.border,
  inset: 4pt,
  fill: (_, y) => if y == 0 { rgb("#fef2f2") } else if y == 1 { rgb("#fff7ed") } else if y == 2 { rgb("#f0fdfa") } else { rgb("#ecfdf5") },
  text(weight: "bold", size: 7.3pt, fill: palette.danger)[112], text(size: 7.3pt)[FAST ≥ 1 plötzlich; Hemisens/Sehen; Schwindel + fokal → Notruf, keine Mobilisation],
  text(weight: "bold", size: 7.3pt, fill: rgb("#c2410c"))[TIA], text(size: 7.3pt)[Flüchtige Symptome *auch remittiert* → 112/NA; Remission entwarnt *nicht*],
  text(weight: "bold", size: 7.3pt, fill: palette.primary)[NA], text(size: 7.3pt)[Nur ohne Akut-Fokal, langsam progredient → PT aus; bei Neu-Fokal 112],
  text(weight: "bold", size: 7.3pt, fill: rgb("#0f766e"))[Beh.], text(size: 7.3pt)[Gesicherte MSK, keine Red Flags; nach Freigabe; Vigilanz],
)

== Mimic-Peel (Type + danger edge)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  block(inset: 5pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: (left: 2.5pt + palette.danger))[
    #text(size: 7.2pt, weight: "bold", fill: palette.danger)[„Bell“]
    #v(2pt)
    #text(size: 7pt)[Stirn-Check; Begleitdefizit → 112.]
  ],
  block(inset: 5pt, radius: 2pt, fill: rgb("#fff7ed"), stroke: (left: 2.5pt + rgb("#c2410c")))[
    #text(size: 7.2pt, weight: "bold", fill: rgb("#c2410c"))[„HWS“]
    #v(2pt)
    #text(size: 7pt)[Schwindel + fokal: *keine* Mobilisation.]
  ],
  block(inset: 5pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: (left: 2.5pt + palette.danger))[
    #text(size: 7.2pt, weight: "bold", fill: palette.danger)[„Migräne“]
    #v(2pt)
    #text(size: 7pt)[Unsicherheit = Notfallpfad.]
  ],
  block(inset: 5pt, radius: 2pt, fill: rgb("#fff7ed"), stroke: (left: 2.5pt + rgb("#c2410c")))[
    #text(size: 7.2pt, weight: "bold", fill: rgb("#c2410c"))[„Schulter-Arm“]
    #v(2pt)
    #text(size: 7pt)[Apoplektiform = Hemiparese bis Ausschluss.]
  ],
)

== Mini-Fall

#grid(
  columns: (0.28fr, 0.72fr),
  column-gutter: 6pt,
  glyph-card(clock-last-seen(sc: 0.9), [40 min · flüchtig]),
  block(
    width: 100%,
    inset: 6pt,
    radius: 2pt,
    fill: rgb("#f8fafc"),
    stroke: 0.4pt + palette.border,
  )[
    #set text(size: 7.6pt)
    *67 J.* · steife HWS + Schwindel · vor 40 min Hand „weg“ + undeutliche Sprache — fast weg · Hypertonie · will HWS-Mobilisation. \
    *Vordergrund:* TIA bis Ausschluss. *Kontraindiziert:* HWS-Manip. *Schritt:* *112* · Last seen normal.
  ],
)

#v(3pt)
#align(center)[
  #text(size: 6.8pt, fill: palette.text-muted, font: fonts.sans)[
    Vector glyphs SR without caption · no speech grimace doodle · wave-d / V
  ]
]
