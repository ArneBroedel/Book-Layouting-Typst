// Form Lab Pass V (c-wave) — Gicht · many small vector glyphs (CeTZ)
// lab: gicht-2026-08-c · pin: chapter-v-3-gicht.md
// ALLOW: many small vectors · DENY: mega-infographic, raster heroes, caption-rescued doodles

#import "/packages/bookkit/lib.typ": *
#import "@preview/cetz:0.3.4"
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Gicht — Form Lab Pass V (c-wave)", author: "form-lab/gicht-2026-08-c/V")
#set page(
  paper: "a4",
  margin: (inside: 16mm, outside: 14mm, top: 12mm, bottom: 13mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Gicht · Form Lab c · Pass V (Vector)], [viele kleine Vektor-Kacheln])
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

// ── Vector library (small, thumbnail-legible) ─────────────────

#let foot-mtp(highlight: true, sc: 1) = cetz.canvas(length: 0.95mm * sc, {
  import cetz.draw: *
  // dorsal foot outline
  merge-path(stroke: 0.95pt + palette.primary-dark, fill: rgb("#f0fdfa"), close: true, {
    line((0, 5), (3, 1), (10, 0), (24, 1.5), (32, 4), (34, 9), (31, 15), (22, 17), (9, 16), (2, 12), (0, 8))
  })
  for (cx, r) in ((11, 1.9), (16, 2.0), (21, 2.1), (26, 2.2)) {
    circle((cx, 20), radius: r, fill: rgb("#f0fdfa"), stroke: 0.7pt + palette.primary-dark)
  }
  circle((33, 19), radius: 3.1, fill: rgb("#f0fdfa"), stroke: 0.85pt + palette.primary-dark)
  if highlight {
    // localized MTP-I heat zone (medial hallux base) — not whole-foot blob
    circle((31, 12.5), radius: 5.2, fill: rgb("#fecaca").transparentize(15%), stroke: 1.15pt + palette.danger)
    circle((31, 12.5), radius: 1.7, fill: palette.danger, stroke: none)
  }
})

#let crystal-needles(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  circle((0, 0), radius: 11, fill: rgb("#0f172a"), stroke: 0.5pt + palette.primary-dark)
  for (a, len) in ((15, 9), (40, 8), (70, 10), (110, 7), (150, 9), (190, 8), (230, 10), (280, 7), (320, 9)) {
    let rad = a * 1deg
    line(
      (calc.cos(rad) * 1.2, calc.sin(rad) * 1.2),
      (calc.cos(rad) * len, calc.sin(rad) * len),
      stroke: 1.1pt + rgb("#fde047"),
    )
  }
})

#let thermo(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  rect((-2.4, -8), (2.4, 8), radius: 1.3, fill: white, stroke: 0.9pt + palette.primary-dark)
  circle((0, -10.5), radius: 4.0, fill: palette.danger, stroke: 0.9pt + palette.primary-dark)
  rect((-1.4, -8), (1.4, 4), fill: palette.danger, stroke: none)
  for y in (-5, -1, 3, 6) {
    line((2.4, y), (3.6, y), stroke: 0.5pt + palette.primary-dark)
  }
})

#let swell-joint(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  rect((-10, -2.2), (-1.5, 2.2), fill: rgb("#e7e5e4"), stroke: 0.55pt + palette.text-muted)
  rect((1.5, -2.2), (10, 2.2), fill: rgb("#e7e5e4"), stroke: 0.55pt + palette.text-muted)
  circle((0, 0), radius: 6.0, fill: rgb("#fecaca").transparentize(10%), stroke: 1.05pt + palette.danger)
  circle((0, 0), radius: 2.4, fill: white, stroke: 0.5pt + palette.primary)
})

#let no-weight(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  // footprint (oval via scaled circle approx + toe)
  scale(x: 0.7, y: 1.0)
  circle((0, 0), radius: 7.5, fill: rgb("#f8fafc"), stroke: 0.85pt + palette.primary-dark)
  scale(x: 1 / 0.7, y: 1.0)
  circle((0, 9.5), radius: 3.0, fill: rgb("#f8fafc"), stroke: 0.75pt + palette.primary-dark)
  circle((0, 1), radius: 12, stroke: 1.35pt + palette.danger)
  line((-8.2, -8.2), (8.2, 8.2), stroke: 1.4pt + palette.danger)
})

#let ban-syringe(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  // simple syringe body
  rect((-8, -2), (6, 2), fill: rgb("#e0f2fe"), stroke: 0.8pt + palette.primary-dark)
  rect((6, -1), (11, 1), fill: rgb("#94a3b8"), stroke: 0.6pt + palette.primary-dark)
  rect((-11, -1.2), (-8, 1.2), fill: rgb("#cbd5e1"), stroke: 0.6pt + palette.primary-dark)
  circle((0, 0), radius: 13, stroke: 1.35pt + palette.danger)
  line((-9, -9), (9, 9), stroke: 1.4pt + palette.danger)
})

#let knee-hot(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  // simplified knee contour
  merge-path(stroke: 0.9pt + palette.primary-dark, fill: rgb("#fafaf9"), close: true, {
    line((-6, -12), (-7, -2), (-5, 6), (-2, 12), (2, 12), (5, 6), (7, -2), (6, -12), (3, -14), (-3, -14))
  })
  circle((0, 1), radius: 5.5, fill: rgb("#fecaca").transparentize(15%), stroke: 1.1pt + palette.danger)
  circle((0, 1), radius: 1.8, fill: palette.danger, stroke: none)
})

#let time-ladder(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  let tiers = (
    (0, palette.danger, "112"),
    (1, rgb("#c2410c"), "NA"),
    (2, palette.primary, "Z"),
    (3, rgb("#0f766e"), "B"),
  )
  for (i, col, lab) in tiers {
    let y = 12 - i * 8
    rect((-14, y - 3), (14, y + 3), radius: 1, fill: col.lighten(78%), stroke: 0.9pt + col)
    content((-8, y), text(size: 5.5pt, weight: "bold", fill: col, font: fonts.sans)[#lab])
    if i < 3 {
      line((0, y - 3.5), (0, y - 4.5), stroke: 0.7pt + palette.text-muted)
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
    #set text(size: 6.2pt, fill: palette.text-muted, font: fonts.sans)
    #cap
  ]
]

// ── Chapter ───────────────────────────────────────────────────
= Gicht — hochakute Monarthritis und das septische Gelenk

#text(size: 8pt, fill: palette.text-muted, font: fonts.sans)[
  Pass V: viele *kleine* Vektor-Kacheln · Claims im Typst · kein Mega-Poster
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
  glyph-card(foot-mtp(sc: 1.05), [MTP-I Hotspot · Podagra-Gestalt]),
  glyph-card(swell-joint(sc: 1.05), [geschwollene Kapsel · Mono]),
  glyph-card(thermo(sc: 1.0), [Fieber / Systemik-Cue]),
  glyph-card(no-weight(sc: 0.95), [keine Belastung · Schonung]),
)

== Kristall vs. Entwarnung

#grid(
  columns: (0.9fr, 1.1fr),
  column-gutter: 8pt,
  glyph-card(crystal-needles(sc: 1.15), [Urat-Nadeln · Nachweis ≠ Entwarnung]),
  [
    #set text(size: 8.2pt)
    *Mechanismus:* Harnsäure ↑ → Urat → neutrophile Entzündung. Bild ist eindrucksvoll, trennt klinisch oft *nicht* von septischer Arthritis.

    #v(4pt)
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 5pt,
      glyph-card(ban-syringe(sc: 0.95), [keine IA-Injektion / Punktion durch HP]),
      glyph-card(knee-hot(sc: 1.0), [Knie-Mono · CPPD & septisch mitdenken]),
    )
  ],
)

== TIME als Stufen-Schema (Vektor + Text)

#grid(
  columns: (28mm, 1fr),
  column-gutter: 8pt,
  align(horizon)[#time-ladder(sc: 1.05)],
  table(
    columns: (18mm, 1fr),
    stroke: 0.4pt + palette.border,
    inset: 4.5pt,
    fill: (_, y) => if y == 0 { rgb("#fef2f2") } else if y == 1 { rgb("#fff7ed") } else if y == 2 { rgb("#f0fdfa") } else { rgb("#ecfdf5") },
    text(weight: "bold", size: 7.5pt, fill: palette.danger)[112], text(size: 7.5pt)[Hitze + Fieber/Systemik + AZ↓ / Sepsis → Notruf, keine Manipulation],
    text(weight: "bold", size: 7.5pt, fill: rgb("#c2410c"))[NA], text(size: 7.5pt)[Heißes Mono + Belastungsunfähigkeit (*auch ohne* Fieber) → gleichtags NA],
    text(weight: "bold", size: 7.5pt, fill: palette.primary)[Zeitnah], text(size: 7.5pt)[Nur ärztlich eingeordnetes Muster ohne aktuelles heißes Mono],
    text(weight: "bold", size: 7.5pt, fill: rgb("#0f766e"))[Beh.], text(size: 7.5pt)[Stabil, freigegeben; schmerzarmer Rahmen, Sicherheitsnetz],
  ),
)

== Mimic-Peel (Text + Marker)

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  block(inset: 5pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: (left: 2.5pt + palette.danger))[
    #text(size: 7.5pt, weight: "bold", fill: palette.danger)[„Nur Schub“]
    #v(2pt)
    #text(size: 7.3pt)[Anamnese/Kristalle entwarnen nicht bei Fieber/Systemik.]
  ],
  block(inset: 5pt, radius: 2pt, fill: rgb("#fff7ed"), stroke: (left: 2.5pt + rgb("#c2410c")))[
    #text(size: 7.5pt, weight: "bold", fill: rgb("#c2410c"))[„Distorsion“]
    #v(2pt)
    #text(size: 7.3pt)[Ohne Traumamechanik + Hitze: Gicht *und* Infekt.]
  ],
  block(inset: 5pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: (left: 2.5pt + palette.danger))[
    #text(size: 7.5pt, weight: "bold", fill: palette.danger)[„Knie = Gicht“]
    #v(2pt)
    #text(size: 7.3pt)[Knie: CPPD häufig; septisch bis Ausschluss.]
  ],
)

== Mini-Fall

#grid(
  columns: (auto, 1fr),
  column-gutter: 8pt,
  foot-mtp(sc: 0.85),
  [
    #set text(size: 8pt)
    *54 J.* · „wieder Podagra“ · MTP-I heiß · unbelastet · 38,3 °C · will Mobilisation. \
    *Vordergrund:* Infekt-Triage. *Kontraindiziert:* Mobilisation/Injektion. *Schritt:* NA/112, septisch bis Ausschluss.
  ],
)

#v(5pt)
#align(center)[
  #text(size: 7pt, fill: palette.text-muted, font: fonts.sans)[
    Vektoren lehren Gestalt/Relation · Foto-Realismus → Pass R · reine Typo → Pass T
  ]
]
