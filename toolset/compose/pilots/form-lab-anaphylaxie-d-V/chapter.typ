// Form Lab Pass V (d-wave) — Anaphylaxie · many small vector glyphs (CeTZ)
// lab: anaphylaxie-2026-08-d · pin: chapter-v-12-anaphylaxie.md
// ALLOW: many small vectors · DENY: mega-infographic, raster heroes, caption-rescued doodles
// HARD: airway must not be arc-only doodle (use XS lumen narrowing)

#import "/packages/bookkit/lib.typ": *
#import "@preview/cetz:0.3.4"
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Anaphylaxie — Form Lab Pass V (d-wave)", author: "form-lab/anaphylaxie-2026-08-d/V")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Anaphylaxie · Form Lab d · Pass V · Vector glyphs], [SR on every mark])
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

// ── d-wave vector library (thumbnail-legible multi-system) ────

// Skin field with raised wheals
#let hives-pattern(sc: 1) = cetz.canvas(length: 0.9mm * sc, {
  import cetz.draw: *
  rect((-14, -10), (14, 10), radius: 1.5, fill: rgb("#fde8d0"), stroke: 0.85pt + rgb("#b45309"))
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

// Swollen lips + tongue (angioedema face lower third)
#let lips-angio(sc: 1) = cetz.canvas(length: 0.9mm * sc, {
  import cetz.draw: *
  merge-path(stroke: 0.9pt + palette.primary-dark, fill: rgb("#fef3c7"), close: true, {
    line((-10, 8), (-11, 0), (-8, -8), (0, -11), (8, -8), (11, 0), (10, 8), (0, 10))
  })
  merge-path(stroke: 0.85pt + rgb("#9f1239"), fill: rgb("#f87171"), close: true, {
    line((-6, 1), (-4, 3.5), (0, 4), (4, 3.5), (6, 1), (3, 0.2), (0, 0.6), (-3, 0.2))
  })
  merge-path(stroke: 0.85pt + rgb("#9f1239"), fill: rgb("#ef4444"), close: true, {
    line((-6, 0.5), (-3, -1.2), (0, -1.8), (3, -1.2), (6, 0.5), (3, 1.2), (0, 1.5), (-3, 1.2))
  })
  merge-path(stroke: 0.7pt + rgb("#be123c"), fill: rgb("#fb7185"), close: true, {
    line((-2.2, -1.5), (-1.5, -5), (0, -6.2), (1.5, -5), (2.2, -1.5), (0, -2.2))
  })
})

// Airway cross-section: lumen narrowed by mucosal swelling (NOT arc-only)
#let airway-xs(sc: 1) = cetz.canvas(length: 0.95mm * sc, {
  import cetz.draw: *
  // outer tracheal/bronchial wall
  circle((0, 0), radius: 11.5, fill: rgb("#fecaca"), stroke: 1.15pt + rgb("#991b1b"))
  // thick mucosa (swelling)
  circle((0, 0), radius: 8.5, fill: rgb("#f87171"), stroke: none)
  // residual lumen — small white hole
  circle((0, 0), radius: 2.8, fill: white, stroke: 1.0pt + palette.primary-dark)
  // wall thickness ticks for read as "narrowed lumen"
  line((-11.5, 0), (-8.8, 0), stroke: 0.6pt + palette.primary-dark)
  line((-2.6, 0), (-0.8, 0), stroke: 0.6pt + palette.primary-dark)
  // cartilage hint (not decoration alone)
  for a in (40, 100, 160, 220, 280, 340) {
    let rad = a * 1deg
    line(
      (calc.cos(rad) * 11.0, calc.sin(rad) * 11.0),
      (calc.cos(rad) * 12.2, calc.sin(rad) * 12.2),
      stroke: 1.1pt + rgb("#7f1d1d"),
    )
  }
})

// Heart + RR down
#let heart-shock(sc: 1) = cetz.canvas(length: 0.95mm * sc, {
  import cetz.draw: *
  circle((-3.0, 4.0), radius: 4.5, fill: rgb("#fecaca"), stroke: 1.05pt + palette.danger)
  circle((3.0, 4.0), radius: 4.5, fill: rgb("#fecaca"), stroke: 1.05pt + palette.danger)
  merge-path(stroke: 1.05pt + palette.danger, fill: rgb("#fecaca"), close: true, {
    line((-7.4, 3.2), (0, -8.5), (7.4, 3.2))
  })
  circle((-3.0, 4.0), radius: 3.9, fill: rgb("#fecaca"), stroke: none)
  circle((3.0, 4.0), radius: 3.9, fill: rgb("#fecaca"), stroke: none)
  line((13, 7), (13, -7), stroke: 1.7pt + palette.danger, mark: (end: ">", fill: palette.danger))
  content((13, 10), text(size: 6pt, weight: "bold", fill: palette.danger, font: fonts.sans)[RR↓])
})

// GI stomach + colic waves
#let gi-mark(sc: 1) = cetz.canvas(length: 0.95mm * sc, {
  import cetz.draw: *
  merge-path(stroke: 1.0pt + palette.primary-dark, fill: rgb("#ccfbf1"), close: true, {
    line((-8, 4), (-10, 0), (-8, -6), (-2, -8), (4, -7), (8, -3), (9, 2), (6, 6), (0, 7), (-5, 6))
  })
  circle((-6, 5.5), radius: 2.2, fill: rgb("#ccfbf1"), stroke: 0.8pt + palette.primary-dark)
  for (y, a) in ((-1, 0.8), (1.5, -0.8), (3.5, 0.6)) {
    line((-5, y), (-2, y + a), (1, y - a), (4, y), stroke: 0.85pt + palette.primary)
  }
})

// Action: four labeled steps as chevrons
#let action-chain(sc: 1) = cetz.canvas(length: 0.72mm * sc, {
  import cetz.draw: *
  let steps = (
    (0, palette.danger, "STOP"),
    (1, rgb("#b91c1c"), "112"),
    (2, rgb("#c2410c"), "LAG"),
    (3, rgb("#0f766e"), "Epi"),
  )
  for (i, col, lab) in steps {
    let x = i * 18
    merge-path(stroke: 0.65pt + col.darken(12%), fill: col, close: true, {
      line((x - 7, -4.5), (x + 5, -4.5), (x + 9, 0), (x + 5, 4.5), (x - 7, 4.5), (x - 3.5, 0))
    })
    content((x + 0.5, 0), text(size: 5.2pt, weight: "bold", fill: white, font: fonts.sans)[#lab])
  }
})

// Ban: hands/treatment + no
#let ban-mark(sc: 1) = cetz.canvas(length: 0.95mm * sc, {
  import cetz.draw: *
  // neck/manual bars (forbidden manipulation cue)
  rect((-7, -1.8), (7, 1.8), radius: 0.5, fill: rgb("#e2e8f0"), stroke: 0.7pt + palette.primary-dark)
  rect((-1.8, -7), (1.8, 7), radius: 0.5, fill: rgb("#e2e8f0"), stroke: 0.7pt + palette.primary-dark)
  circle((0, 0), radius: 11, stroke: 1.5pt + palette.danger)
  line((-7.5, -7.5), (7.5, 7.5), stroke: 1.55pt + palette.danger)
})

// Autoinjector pen (support cue — device form, not injection demo)
#let epi-pen(sc: 1) = cetz.canvas(length: 0.9mm * sc, {
  import cetz.draw: *
  rect((-3.5, -12), (3.5, 10), radius: 1.8, fill: rgb("#fef2f2"), stroke: 1.0pt + palette.danger)
  rect((-3.5, 5), (3.5, 10), fill: palette.danger, stroke: none)
  circle((0, 10), radius: 1.6, fill: palette.danger, stroke: none)
  rect((-4, -14), (4, -11), radius: 0.8, fill: rgb("#94a3b8"), stroke: 0.6pt + palette.primary-dark)
  content((0, -1), text(size: 5.2pt, weight: "bold", fill: palette.danger, font: fonts.sans)[Epi])
})

// Biphasic two peaks
#let biphasic-wave(sc: 1) = cetz.canvas(length: 0.9mm * sc, {
  import cetz.draw: *
  line((-14, -6), (14, -6), stroke: 0.6pt + palette.text-muted)
  merge-path(stroke: 1.2pt + palette.danger, fill: none, {
    line((-12, -6), (-8, 6), (-4, -4), (0, -5))
  })
  for (a, b) in (((2, -5), (4, 2)), ((4, 2), (6, 5)), ((6, 5), (8, 1)), ((8, 1), (11, -5))) {
    line(a, b, stroke: (paint: rgb("#c2410c"), thickness: 1.15pt, dash: "dashed"))
  }
  content((-8, 9), text(size: 5pt, fill: palette.danger, font: fonts.sans)[1.])
  content((6, 9), text(size: 5pt, fill: rgb("#c2410c"), font: fonts.sans)[2. 6–24h])
})

// Multi-system four-tile mark (compact relation)
#let multi-sys(sc: 1) = cetz.canvas(length: 0.7mm * sc, {
  import cetz.draw: *
  let cells = (
    (-8, 8, rgb("#fecaca"), "H"),
    (8, 8, rgb("#fed7aa"), "A"),
    (-8, -8, rgb("#fecaca"), "K"),
    (8, -8, rgb("#ccfbf1"), "G"),
  )
  for (x, y, col, lab) in cells {
    rect((x - 6, y - 6), (x + 6, y + 6), radius: 1.2, fill: col, stroke: 0.85pt + palette.primary-dark)
    content((x, y), text(size: 7pt, weight: "bold", fill: palette.primary-dark, font: fonts.sans)[#lab])
  }
  // center hub
  circle((0, 0), radius: 3.2, fill: white, stroke: 0.9pt + palette.danger)
  content((0, 0), text(size: 4.5pt, weight: "bold", fill: palette.danger, font: fonts.sans)[112])
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
= Anaphylaxie und schwere allergische Reaktion

#text(size: 7.8pt, fill: palette.text-muted, font: fonts.sans)[
  Pass V (d): viele *kleine* Vektor-Kacheln · thumbnail-legible · Airway = XS-Lumen · kein Mega-Poster
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
  Atemweg / Kreislauf / Progredienz / Mehrorgan → *sofort 112*. Keine manuelle Enge-Abklärung.
]

== Mehrorgan-Kaskade (Vektor)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 5pt,
  glyph-card(hives-pattern(sc: 1.0), [Haut · Quaddeln / Flush-Feld]),
  glyph-card(airway-xs(sc: 1.05), [Atemweg · Lumen-Engstelle (XS)]),
  glyph-card(heart-shock(sc: 1.0), [Kreislauf · RR↓ / Schock]),
  glyph-card(gi-mark(sc: 1.0), [GI · Kolik / Übelkeit]),
)

#v(2pt)
#grid(
  columns: (0.7fr, 1.3fr),
  column-gutter: 6pt,
  glyph-card(multi-sys(sc: 1.1), [Vier Systeme · 112-Hub]),
  [
    #set text(size: 7.8pt)
    *Mechanismus (kurz):* Mediatoren → Leck, Ödem, Bronchokonstriktion, relative Hypovolämie. \
    *Nicht entwarnen:* fehlende Hautzeichen und initial unauffällige Vitalwerte schließen schwere Reaktion *nicht* aus.
  ],
)

== Atemweg & Angioödem

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  glyph-card(lips-angio(sc: 1.05), [Lippen/Zunge · Angioödem-Gestalt]),
  glyph-card(airway-xs(sc: 1.0), [Obstruktion · Restlumen klein]),
  glyph-card(ban-mark(sc: 1.0), [Keine manuelle Enge-Abklärung]),
)

== Action-Kette (Vektor + Text)

#grid(
  columns: (1fr,),
  glyph-card(action-chain(sc: 1.2), [STOP → 112 → Lagerung/BLS → Autoinjektor-Support]),
)
#v(2pt)
#table(
  columns: (16mm, 1fr),
  stroke: 0.35pt + palette.border,
  inset: 4pt,
  fill: (_, y) => if y == 0 { rgb("#fef2f2") } else if y == 1 { rgb("#fee2e2") } else if y == 2 { rgb("#fff7ed") } else { rgb("#ecfdf5") },
  text(weight: "bold", size: 7.3pt, fill: palette.danger)[STOP], text(size: 7.3pt)[Sitzung beenden · keine Belastung · keine manuelle Enge-Abklärung],
  text(weight: "bold", size: 7.3pt, fill: rgb("#b91c1c"))[112], text(size: 7.3pt)[Atemweg · Kreislauf · Progredienz · Mehrorgan · Allergie+Exposition+Dynamik],
  text(weight: "bold", size: 7.3pt, fill: rgb("#c2410c"))[LAG], text(size: 7.3pt)[Notfalllagerung · BLS bei Bedarf · Überwachen bis RD],
  text(weight: "bold", size: 7.3pt, fill: rgb("#0f766e"))[Epi+], text(size: 7.3pt)[Nur patienteneigener Autoinjektor · Anwendung bekannt · kein Eigenprotokoll],
)

== Grenze · Biphasisch · Mimic

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 5pt,
  glyph-card(epi-pen(sc: 1.05), [Autoinjektor · Gerät · Support]),
  glyph-card(biphasic-wave(sc: 1.05), [Biphasisch · 2. Welle 6–24h]),
  glyph-card(ban-mark(sc: 0.95), [Kein med. Eigenprotokoll]),
  block(inset: 5pt, radius: 2pt, fill: rgb("#fff7ed"), stroke: (left: 2.5pt + rgb("#c2410c")))[
    #text(size: 7.2pt, weight: "bold", fill: rgb("#c2410c"))[Mimics]
    #v(2pt)
    #text(size: 6.9pt)[„Nur Quaddeln“ · „Panik“ · „Asthma“ · „MSK-Enge“ entwarnen *nicht* ohne Atemweg/Kreislauf-Screen.]
  ],
)

== Mini-Fall

#grid(
  columns: (0.35fr, 0.65fr),
  column-gutter: 6pt,
  glyph-card(lips-angio(sc: 0.95), [Fall · Lippen + Kloß]),
  block(
    width: 100%,
    inset: 6pt,
    radius: 2pt,
    fill: rgb("#f8fafc"),
    stroke: 0.4pt + palette.border,
  )[
    #set text(size: 7.6pt)
    *34 J.* · Nussallergie · Müsliriegel · Kloßgefühl · Heiserkeit · Lippenschwellung · will Nacken lösen. \
    *Vordergrund:* Atemwegs-Triage. *Stop:* manuelle Enge-Abklärung. *Schritt:* 112 · Lagerung · Autoinjektor-Support.
  ],
)

#v(3pt)
#align(center)[
  #text(size: 6.8pt, fill: palette.text-muted, font: fonts.sans)[
    V-glyphs · Airway = XS (not arcs) · wave-d / V · new draws only
  ]
]
