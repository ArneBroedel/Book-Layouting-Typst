// Form Lab Pass V (d-wave) — Gicht · many small vector glyphs (CeTZ)
// lab: gicht-2026-08-d · pin: chapter-v-3-gicht.md
// ALLOW: many small vectors · DENY: mega-infographic, raster heroes, caption-rescued doodles

#import "/packages/bookkit/lib.typ": *
#import "@preview/cetz:0.3.4"
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Gicht — Form Lab Pass V (d-wave)", author: "form-lab/gicht-2026-08-d/V")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Gicht · Form Lab d · Pass V · Vector glyphs], [SR on every mark])
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

// ── d-wave vector library (thumbnail-legible anatomy / relation) ─

#let foot-medial-hot(sc: 1) = cetz.canvas(length: 0.9mm * sc, {
  import cetz.draw: *
  // medial foot silhouette (heel left → toes right)
  merge-path(stroke: 1pt + palette.primary-dark, fill: rgb("#ecfeff"), close: true, {
    line((0, 6), (4, 2), (14, 1), (28, 2), (36, 5), (38, 10), (34, 14), (26, 15), (12, 14), (3, 11), (0, 8))
  })
  // toes
  for (cx, cy, r) in ((30, 16.5, 2.0), (33, 17.5, 2.2), (36, 16.8, 2.4), (38.5, 15.2, 2.0)) {
    circle((cx, cy), radius: r, fill: rgb("#ecfeff"), stroke: 0.75pt + palette.primary-dark)
  }
  // hallux larger
  circle((40, 12), radius: 3.4, fill: rgb("#ecfeff"), stroke: 0.9pt + palette.primary-dark)
  // localized MTP-I heat (medial hallux base) — not whole-foot blob
  circle((37, 9.5), radius: 5.5, fill: rgb("#fecaca").transparentize(12%), stroke: 1.2pt + palette.danger)
  circle((37, 9.5), radius: 1.6, fill: palette.danger, stroke: none)
})

#let mono-capsule(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  // two bone ends + swollen capsule
  rect((-12, -2.5), (-3, 2.5), radius: 0.6, fill: rgb("#e7e5e4"), stroke: 0.6pt + palette.text-muted)
  rect((3, -2.5), (12, 2.5), radius: 0.6, fill: rgb("#e7e5e4"), stroke: 0.6pt + palette.text-muted)
  circle((0, 0), radius: 6.5, fill: rgb("#fecaca").transparentize(8%), stroke: 1.1pt + palette.danger)
  circle((0, 0), radius: 2.2, fill: white, stroke: 0.55pt + palette.primary)
  // heat arcs
  arc((0, 0), start: 40deg, stop: 140deg, radius: 8.5, stroke: 0.7pt + palette.danger)
})

#let fever-mark(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  // thermometer + wave
  rect((-2.2, -7), (2.2, 9), radius: 1.2, fill: white, stroke: 0.9pt + palette.primary-dark)
  circle((0, -10), radius: 3.8, fill: palette.danger, stroke: 0.9pt + palette.primary-dark)
  rect((-1.3, -7), (1.3, 5), fill: palette.danger, stroke: none)
  for y in (-4, 0, 4, 7) {
    line((2.2, y), (3.5, y), stroke: 0.5pt + palette.primary-dark)
  }
})

#let unload-foot(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  // plantar oval + ban
  scale(x: 0.65, y: 1)
  circle((0, 0), radius: 8, fill: rgb("#f8fafc"), stroke: 0.9pt + palette.primary-dark)
  scale(x: 1 / 0.65, y: 1)
  circle((0, 10), radius: 3.2, fill: rgb("#f8fafc"), stroke: 0.8pt + palette.primary-dark)
  circle((0, 1), radius: 13, stroke: 1.4pt + palette.danger)
  line((-9, -9), (9, 9), stroke: 1.45pt + palette.danger)
})

#let urate-star(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  circle((0, 0), radius: 11.5, fill: rgb("#0f172a"), stroke: 0.55pt + palette.primary-dark)
  for a in (0, 25, 50, 75, 100, 130, 160, 195, 225, 255, 290, 320) {
    let rad = a * 1deg
    let len = if calc.rem(a, 50) == 0 { 9.5 } else { 7.5 }
    line(
      (calc.cos(rad) * 1.5, calc.sin(rad) * 1.5),
      (calc.cos(rad) * len, calc.sin(rad) * len),
      stroke: 1.05pt + rgb("#facc15"),
    )
  }
})

#let ban-needle(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  // syringe
  rect((-9, -2.2), (5, 2.2), fill: rgb("#e0f2fe"), stroke: 0.8pt + palette.primary-dark)
  rect((5, -1.1), (12, 1.1), fill: rgb("#94a3b8"), stroke: 0.55pt + palette.primary-dark)
  rect((-12, -1.4), (-9, 1.4), fill: rgb("#cbd5e1"), stroke: 0.55pt + palette.primary-dark)
  circle((0, 0), radius: 13.5, stroke: 1.4pt + palette.danger)
  line((-9.5, -9.5), (9.5, 9.5), stroke: 1.45pt + palette.danger)
})

#let knee-focus(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  merge-path(stroke: 0.95pt + palette.primary-dark, fill: rgb("#fafaf9"), close: true, {
    line((-7, -13), (-8, -3), (-5, 5), (-2, 12), (2, 12), (5, 5), (8, -3), (7, -13), (3, -15), (-3, -15))
  })
  // patellar region heat
  circle((0, 2), radius: 5.8, fill: rgb("#fecaca").transparentize(12%), stroke: 1.15pt + palette.danger)
  circle((0, 2), radius: 1.7, fill: palette.danger, stroke: none)
})

#let time-steps(sc: 1) = cetz.canvas(length: 0.95mm * sc, {
  import cetz.draw: *
  let tiers = (
    (0, palette.danger, "112"),
    (1, rgb("#c2410c"), "NA"),
    (2, palette.primary, "Z"),
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
= Gicht — hochakute Monarthritis und das septische Gelenk

#text(size: 7.8pt, fill: palette.text-muted, font: fonts.sans)[
  Pass V (d): viele *kleine* Vektor-Kacheln · thumbnail-legible · kein Mega-Poster · kein free-vision
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
  „Typische Podagra“ kann septische Arthritis maskieren; Kristalle entwarnen *nicht*.
]

== Erkennung — heißes Mono (Vektor)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 5pt,
  glyph-card(foot-medial-hot(sc: 1.05), [MTP-I Hotspot · mediale Fuß-Gestalt]),
  glyph-card(mono-capsule(sc: 1.05), [geschwollene Kapsel · Mono]),
  glyph-card(fever-mark(sc: 1.0), [Fieber / Systemik-Cue]),
  glyph-card(unload-foot(sc: 0.95), [keine Belastung · Schonung]),
)

== Kristall vs. Entwarnung

#grid(
  columns: (0.85fr, 1.15fr),
  column-gutter: 7pt,
  glyph-card(urate-star(sc: 1.1), [Urat-Nadeln · Nachweis ≠ Entwarnung]),
  [
    #set text(size: 8pt)
    *Mechanismus:* Harnsäure ↑ → Urat → neutrophile Entzündung. Bild eindrucksvoll, trennt klinisch oft *nicht* von septischer Arthritis.

    #v(3pt)
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 5pt,
      glyph-card(ban-needle(sc: 0.95), [keine IA-Injektion / Punktion durch HP]),
      glyph-card(knee-focus(sc: 1.0), [Knie-Mono · CPPD & septisch mitdenken]),
    )
  ],
)

== TIME — Stufen-Relation (Vektor + Text)

#grid(
  columns: (1fr,),
  glyph-card(time-steps(sc: 1.15), [112 → NA → Zeitnah → Behandeln]),
)
#v(2pt)
#table(
  columns: (16mm, 1fr),
  stroke: 0.35pt + palette.border,
  inset: 4pt,
  fill: (_, y) => if y == 0 { rgb("#fef2f2") } else if y == 1 { rgb("#fff7ed") } else if y == 2 { rgb("#f0fdfa") } else { rgb("#ecfdf5") },
  text(weight: "bold", size: 7.3pt, fill: palette.danger)[112], text(size: 7.3pt)[Hitze + Fieber/Systemik + AZ↓ / Sepsis → Notruf, keine Manipulation],
  text(weight: "bold", size: 7.3pt, fill: rgb("#c2410c"))[NA], text(size: 7.3pt)[Heißes Mono + Belastungsunfähigkeit (*auch ohne* Fieber) → gleichtags NA],
  text(weight: "bold", size: 7.3pt, fill: palette.primary)[Zeitnah], text(size: 7.3pt)[Nur ärztlich eingeordnetes Muster ohne aktuelles heißes Mono],
  text(weight: "bold", size: 7.3pt, fill: rgb("#0f766e"))[Beh.], text(size: 7.3pt)[Stabil, freigegeben; schmerzarmer Rahmen, Sicherheitsnetz],
)

== Mimic-Peel

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  block(inset: 5pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: (left: 2.5pt + palette.danger))[
    #text(size: 7.4pt, weight: "bold", fill: palette.danger)[„Nur Schub“]
    #v(2pt)
    #text(size: 7.2pt)[Anamnese/Kristalle entwarnen nicht bei Fieber/Systemik.]
  ],
  block(inset: 5pt, radius: 2pt, fill: rgb("#fff7ed"), stroke: (left: 2.5pt + rgb("#c2410c")))[
    #text(size: 7.4pt, weight: "bold", fill: rgb("#c2410c"))[„Distorsion“]
    #v(2pt)
    #text(size: 7.2pt)[Ohne Traumamechanik + Hitze: Gicht *und* Infekt.]
  ],
  block(inset: 5pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: (left: 2.5pt + palette.danger))[
    #text(size: 7.4pt, weight: "bold", fill: palette.danger)[„Knie = Gicht“]
    #v(2pt)
    #text(size: 7.2pt)[Knie: CPPD häufig; septisch bis Ausschluss.]
  ],
)

== Mini-Fall

#grid(
  columns: (auto, 1fr),
  column-gutter: 8pt,
  foot-medial-hot(sc: 0.88),
  [
    #set text(size: 7.9pt)
    *54 J.* · „wieder Podagra“ · MTP-I heiß · unbelastet · 38,3 °C · will Mobilisation. \
    *Vordergrund:* Infekt-Triage. *Kontraindiziert:* Mobilisation/Injektion. *Schritt:* NA/112, septisch bis Ausschluss.
  ],
)

#v(4pt)
#align(center)[
  #text(size: 7pt, fill: palette.text-muted, font: fonts.sans)[
    Vektoren lehren Gestalt/Relation · Foto-Realismus → Pass R · reine Typo → Pass T · wave-d / V
  ]
]
