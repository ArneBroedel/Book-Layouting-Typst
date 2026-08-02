// Form Lab Pass V — Gicht · Vector atomic (many small CeTZ pictograms)
// lab: gicht-2026-08 · pin: chapter-v-3-gicht.md
// ALLOW: many small SVG/CeTZ atoms, hybrid labels · DENY: mega-infographic, raster hero

#import "/packages/bookkit/lib.typ": *
#import "@preview/cetz:0.3.4"
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Gicht — Form Lab Pass V", author: "form-lab/gicht-2026-08/V")
#set page(
  paper: "a4",
  margin: (inside: 18mm, outside: 15mm, top: 13mm, bottom: 14mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Gicht · Form Lab · Pass V (Vector)], [viele kleine Vektor-Atome])
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
#set text(size: 8.8pt)
#set par(leading: 0.6em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 14.5pt, weight: "bold", fill: palette.primary-dark)
  block(below: 4pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10.5pt, weight: "bold", fill: palette.primary)
  block(below: 4pt, above: 8pt)[
    #it.body
    #v(1.5pt)
    #line(length: 22mm, stroke: 1.1pt + palette.primary)
  ]
}

// ── Vector atom library ───────────────────────────────────────

/// Dorsal right foot, MTP-I hotspot (teaching glyph — schematic, not atlas)
#let foot-mtp(highlight: true, scale: 1) = cetz.canvas(length: 1mm * scale, {
  import cetz.draw: *
  // heel + midfoot body
  merge-path(stroke: 0.9pt + palette.primary-dark, fill: rgb("#f0fdfa"), close: true, {
    line((0, 6), (2, 2), (8, 0), (22, 1), (30, 3), (32, 8), (30, 14), (22, 16), (8, 15), (2, 12), (0, 9))
  })
  // five toes (hallux largest, right side = medial for right foot schematic)
  // digiti 5..2
  for (cx, r) in ((10, 2.0), (15, 2.1), (20, 2.2), (25, 2.3)) {
    circle((cx, 19), radius: r, fill: rgb("#f0fdfa"), stroke: 0.75pt + palette.primary-dark)
  }
  // hallux
  circle((32, 18.5), radius: 3.2, fill: rgb("#f0fdfa"), stroke: 0.85pt + palette.primary-dark)
  // arch hint
  line((8, 6), (26, 8), stroke: 0.4pt + palette.primary.lighten(15%))
  if highlight {
    circle((31, 12), radius: 4.8, fill: rgb("#fecaca").transparentize(20%), stroke: 1.2pt + palette.danger)
    circle((31, 12), radius: 1.6, fill: palette.danger, stroke: none)
    content((31, 26), text(size: 5.5pt, weight: "bold", fill: palette.danger, font: fonts.sans)[MTP-I])
  }
})

#let crystal-burst(r: 1) = cetz.canvas(length: 1mm * r, {
  import cetz.draw: *
  circle((0, 0), radius: 9, fill: rgb("#fef2f2"), stroke: 0.55pt + palette.danger.lighten(35%))
  for a in range(0, 360, step: 30) {
    let rad = a * 1deg
    line((0, 0), (calc.cos(rad) * 8, calc.sin(rad) * 8), stroke: 0.85pt + palette.danger)
  }
  // needle-like crystal core
  line((-2.5, -1.5), (2.5, 1.5), stroke: 1.6pt + palette.warning)
  line((-1.5, 2.5), (1.5, -2.5), stroke: 1.2pt + palette.warning)
  circle((0, 0), radius: 1.4, fill: palette.warning, stroke: none)
})

#let thermo() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  rect((-2.2, -7), (2.2, 7), radius: 1.2, fill: white, stroke: 0.85pt + palette.primary-dark)
  circle((0, -9.5), radius: 3.8, fill: palette.danger, stroke: 0.85pt + palette.primary-dark)
  rect((-1.3, -7), (1.3, 3), fill: palette.danger, stroke: none)
  // ticks
  for y in (-4, -1, 2, 5) {
    line((2.2, y), (3.4, y), stroke: 0.45pt + palette.primary-dark)
  }
})

#let heat-waves() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  for x in (-4, 0, 4) {
    // single control-point S-curve
    bezier((x, -6), (x + 2.5, 0), (x - 2.5, 6), stroke: 1.15pt + palette.danger)
  }
})

#let swell-joint() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  // bone stubs
  rect((-8, -2), (-1, 2), fill: rgb("#e8e8e3"), stroke: 0.5pt + palette.text-muted)
  rect((1, -2), (8, 2), fill: rgb("#e8e8e3"), stroke: 0.5pt + palette.text-muted)
  // swollen capsule
  circle((0, 0), radius: 5.5, fill: rgb("#fecaca").transparentize(20%), stroke: 1pt + palette.danger)
  circle((0, 0), radius: 2.2, fill: white, stroke: 0.5pt + palette.primary)
})

#let no-weight() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  // footprint + ban (no weight-bearing)
  circle((0, 1), radius: 6.5, fill: rgb("#f8fafc"), stroke: 0.8pt + palette.primary-dark)
  circle((0, 8), radius: 2.8, fill: rgb("#f8fafc"), stroke: 0.7pt + palette.primary-dark)
  circle((0, 0), radius: 11, stroke: 1.3pt + palette.danger)
  line((-7.5, -7.5), (7.5, 7.5), stroke: 1.4pt + palette.danger)
})

#let ban-mark() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  circle((0, 0), radius: 6, stroke: 1.3pt + palette.danger, fill: rgb("#fef2f2"))
  line((-3.5, -3.5), (3.5, 3.5), stroke: 1.5pt + palette.danger)
  line((-3.5, 3.5), (3.5, -3.5), stroke: 1.5pt + palette.danger)
})

#let time-chip(code, col) = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  rect((-14, -7), (14, 7), radius: 2.5, fill: col, stroke: 0.55pt + col.darken(15%))
  content((0, 0), text(size: 8pt, weight: "bold", fill: white, font: fonts.sans)[#code])
})

#let arrow-r(col: palette.danger) = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  line((-5, 0), (5, 0), stroke: 1.5pt + col, mark: (end: "stealth", fill: col))
})

#let pathway-mech() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  // three nodes: urate → crystal needles → inflammation
  circle((0, 0), radius: 7.5, fill: rgb("#f0fdfa"), stroke: 0.85pt + palette.primary)
  content((0, 0), text(size: 5.5pt, weight: "bold", fill: palette.primary-dark)[Urat↑])
  line((8.5, 0), (17, 0), stroke: 1.15pt + palette.primary, mark: (end: "stealth", fill: palette.primary))
  // crystal node — needle cluster (not X)
  circle((26, 0), radius: 7.5, fill: rgb("#fff7ed"), stroke: 0.85pt + palette.warning)
  for a in (20, 50, 90, 130, 160) {
    let rad = a * 1deg
    line(
      (26 + calc.cos(rad) * 1.2, calc.sin(rad) * 1.2),
      (26 + calc.cos(rad) * 5.5, calc.sin(rad) * 5.5),
      stroke: 1.15pt + palette.warning.darken(5%),
    )
  }
  content((26, -12), text(size: 5pt, fill: palette.warning.darken(10%))[Kristall])
  line((34.5, 0), (43, 0), stroke: 1.15pt + palette.danger, mark: (end: "stealth", fill: palette.danger))
  circle((52, 0), radius: 7.5, fill: rgb("#fef2f2"), stroke: 0.85pt + palette.danger)
  content((52, 0), text(size: 5.5pt, weight: "bold", fill: palette.danger)[PMN])
  content((52, -12), text(size: 5pt, fill: palette.danger)[Entzündung])
})

#let knee-glyph() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  // simplified knee side view
  line((0, 12), (2, 0), (0, -12), stroke: 1.2pt + palette.primary-dark)
  line((8, 12), (6, 0), (8, -12), stroke: 1.2pt + palette.primary-dark)
  circle((4, 0), radius: 4.5, fill: rgb("#fecaca").transparentize(30%), stroke: 1pt + palette.warning)
  content((4, -16), text(size: 5pt, fill: palette.warning.darken(10%))[Knie/CPPD])
})

#let atom-label(body) = text(size: 7.2pt, font: fonts.sans, weight: "bold")[#body]
#let atom-cap(body) = text(size: 7pt)[#body]

// ── Title ─────────────────────────────────────────────────────
= Gicht — hochakute Monarthritis und das septische Gelenk

#text(size: 8.5pt, fill: palette.text-muted, font: fonts.sans)[
  Pass V: Vektor-Atome · Fuß/MTP-I · Kristallpfad · TIME-Kette · Mimic-Marken
]

#v(4pt)
#block(
  width: 100%,
  inset: 7pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
)[
  #grid(
    columns: (auto, 1fr, auto),
    column-gutter: 10pt,
    align(horizon)[#foot-mtp(scale: 0.9)],
    align(horizon)[
      #set text(size: 8.5pt)
      #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
      Eine „typische Podagra“ (MTP-I-Hotspot) kann eine *septische Arthritis* maskieren; Kristallnachweis und Gichtanamnese entwarnen *nicht*.
    ],
    align(horizon)[#ban-mark()],
  )
]

// ── Big Picture triad ─────────────────────────────────────────
== Big Picture — drei Vektor-Anker

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  align(center)[
    #foot-mtp(highlight: true, scale: 0.92)
    #v(2pt)
    #atom-label[Hotspot MTP-I]
    #v(1.5pt)
    #atom-cap[Hochakuter Mono-Anfall, oft Großzehe — *jedes* heiße Mono zählt.]
  ],
  align(center)[
    #v(4pt)
    #crystal-burst(r: 0.95)
    #v(3pt)
    #atom-label[Kristall ≠ Entwarnung]
    #v(1.5pt)
    #atom-cap[Uratkristalle erklären Entzündung — schließen Bakterien *nicht* aus.]
  ],
  align(center)[
    #v(3pt)
    #thermo()
    #v(3pt)
    #atom-label[Fieber / Systemik]
    #v(1.5pt)
    #atom-cap[Systemzeichen → Infekt-Triage, nie „nur Gichtschub“.]
  ],
)

#v(4pt)
#set text(size: 8.2pt)
HP Physio screent auf Infekt-/Systemzeichen, triagiert und belässt Diagnosesicherung sowie Anfallstherapie in ärztlicher Hand; bei Systembedrohung *112*, bei heißem Gelenk mit Infektverdacht gleichtags *Notaufnahme*.

// ── Enabling ──────────────────────────────────────────────────
== 1. Wann denken? — Auslöser-Piktogramme

#grid(
  columns: (1fr,) * 6,
  column-gutter: 3pt,
  ..(
    ("wine-glass", "Alkohol"),
    ("pills", "Diuretika"),
    ("utensils", "Purine"),
    ("weight-scale", "Adipositas"),
    ("droplet", "Niere"),
    ("clock", "Stunden"),
  ).map(((ic, lab)) => {
    align(center)[
      #cetz.canvas(length: 1mm, {
        import cetz.draw: *
        circle((0, 0), radius: 7.5, fill: rgb("#f0fdfa"), stroke: 0.75pt + palette.primary)
        content((0, 0), fa-icon(ic, solid: true, fill: palette.primary-dark, size: 9pt))
      })
      #v(2pt)
      #text(size: 6.8pt, font: fonts.sans)[#lab]
    ]
  })
)

#v(2pt)
#text(size: 7.8pt)[Kontext: frühere Attacken, Tophi, metabolisches Syndrom. Trigger stützen Verdacht — entwarnen Systemik *nicht*.]

// ── Mechanism pathway ─────────────────────────────────────────
== 2. Mechanismus — Kristallpfad (Vektor)

#align(center)[#pathway-mech()]
#v(3pt)
#text(size: 8pt)[
  Erhöhte Harnsäurespiegel → Natriumuratkristalle in Synovia/periartikulär → rasche neutrophile Entzündung (Schmerz, Rötung, Schwellung). Chronisch: Tophi. *Direktzugang:* Bild eindrucksvoll, aber klinisch oft *nicht sicher* von bakterieller Arthritis zu trennen.
]

// ── Hot joint gestalt ─────────────────────────────────────────
== 3. Heißes Gelenk — Gestalt-Atome

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 5pt,
  align(center)[
    #heat-waves()
    #v(3pt)
    #atom-label[Hitze / Rötung]
    #v(1pt)
    #atom-cap[Überwärmung · Erythem am Mono-Gelenk]
  ],
  align(center)[
    #swell-joint()
    #v(3pt)
    #atom-label[Schwellung]
    #v(1pt)
    #atom-cap[Kapselspannung · Druckschmerz]
  ],
  align(center)[
    #no-weight()
    #v(3pt)
    #atom-label[Unbelastbar]
    #v(1pt)
    #atom-cap[Belastungsunfähigkeit / stärkster Ruheschmerz]
  ],
  align(center)[
    #foot-mtp(scale: 0.85)
    #v(2pt)
    #atom-label[Ort klassisch]
    #v(1pt)
    #atom-cap[MTP-I / Podagra — jedes Mono zählt]
  ],
)

#v(5pt)
#text(size: 8pt, weight: "bold", fill: palette.primary)[Vier Kanäle]
#v(3pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 4pt,
  ..(
    ("comments", "Anamnese", [Hochakuter Mono binnen Stunden; oft MTP-I; Trigger; *Fieber?* *Hautverletzung?*]),
    ("eye", "Beobachtung", [Rötung, Überwärmung, Schwellung; Schonhaltung; Tophi; Systemik-Eindruck]),
    ("hand", "Untersuchung", [Druck-/Bewegungsschmerz; unbelastbar; *keine* forcierte Manipulation]),
    ("clock-rotate-left", "Verlauf", [Stunden–Tage; rezidivierend; polyartikulärer Sturm ≠ gewöhnlicher Schub]),
  ).map(((ic, t, b)) => {
    grid(
      columns: (18mm, 1fr),
      column-gutter: 5pt,
      align(center + horizon)[
        #cetz.canvas(length: 1mm, {
          import cetz.draw: *
          rect((-8, -6.5), (8, 6.5), radius: 2, fill: rgb("#f8fafc"), stroke: 0.7pt + palette.primary)
          content((0, 0), fa-icon(ic, solid: true, fill: palette.primary, size: 9pt))
        })
      ],
      [
        #text(weight: "bold", size: 8pt, font: fonts.sans)[#t]
        #v(1pt)
        #text(size: 7.5pt)[#b]
      ],
    )
  })
)

// ── Mimic ─────────────────────────────────────────────────────
== 4. Trügerische Erklärungen — frame → danger

#let ban-sm() = scale(70%)[#ban-mark()]

#let mimic-row(frame, danger, extra: none) = {
  block(width: 100%, breakable: false)[
    #grid(
      columns: (1fr, 10mm, 1fr, 18mm),
      column-gutter: 3pt,
      align: horizon,
      block(width: 100%, inset: 4.5pt, radius: 2pt, stroke: 0.5pt + palette.border, fill: white)[
        #set text(size: 7.4pt)
        #frame
      ],
      align(center + horizon)[#ban-sm()],
      block(width: 100%, inset: 4.5pt, radius: 2pt, stroke: 0.5pt + palette.danger.lighten(30%), fill: rgb("#fef2f2"))[
        #set text(size: 7.4pt, fill: palette.danger)
        #text(weight: "bold")[#danger]
      ],
      align(center + horizon, if extra != none { extra } else { [] }),
    )
  ]
  v(2.5pt)
}

#mimic-row([„Umgeknickt / Distorsion“ ohne adäquate Mechanik], [Gicht *und* Infekt weiter mitdenken], extra: foot-mtp(scale: 0.4))
#mimic-row([„Bekannte Gicht – nur Schub“], [Kristalle entwarnen septisch *nicht*; Fieber → Infekt-Triage], extra: crystal-burst(r: 0.42))
#mimic-row([„Knie-Schub = immer Gicht“], [CPPD häufig; septische Arthritis Must-not-miss], extra: scale(70%)[#knee-glyph()])

// ── TIME ──────────────────────────────────────────────────────
== 5. TIME — Vektor-Kette + Stufen

#align(center)[
  #grid(
    columns: 7,
    column-gutter: 2pt,
    align(horizon)[#time-chip("112", palette.danger)],
    align(horizon)[#arrow-r()],
    align(horizon)[#time-chip("NA", palette.warning)],
    align(horizon)[#arrow-r(col: palette.primary)],
    align(horizon)[#time-chip("T3", palette.primary-light)],
    align(horizon)[#arrow-r(col: palette.primary)],
    align(horizon)[#time-chip("Beh.", palette.primary)],
  )
]

#v(4pt)
#set text(size: 7.6pt)
#table(
  columns: (16mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 3pt, y: 3.5pt),
  [*112*], [Heißes Gelenk + Fieber/Systemik + AZ↓ / Sepsis; polyartikulärer Sturm mit schwerer Systembedrohung → abbrechen, *112*, keine Manipulation],
  [*NA*], [Heißes Mono mit Belastungsunfähigkeit oder stärkstem Ruheschmerz (*auch ohne* Fieber); Fieber; nach Injektion/OP/Trauma; Hochrisiko; Tophi-Infekt → *noch heute* NA, septisch bis Ausschluss],
  [*T3*], [Nur ärztlich eingeordnetes rezidivierendes Muster ohne aktuelles heißes Mono/Systemik],
  [*Beh.*], [Stabil ohne Red Flags; schmerzarmer Rahmen; Rückkehrgründe: Fieber, Systemik, neue Hitze],
)

#v(3pt)
#grid(
  columns: (auto, 1fr),
  column-gutter: 8pt,
  align(horizon)[#ban-mark()],
  text(size: 7.8pt)[
    *Grenze der Zuständigkeit:* keine Punktion, i.a. Injektion, Antibiose, harnsäuresenkende Therapie, endgültige Abgrenzung septisch vs. kristallin durch HP. Absolute KI: forcierte Manipulation am unklar heißen Gelenk; Probebehandeln bei Fieber/Systemik.
  ],
)

// ── Case ──────────────────────────────────────────────────────
== 6. Fall — Vektor-Erinnerung

#grid(
  columns: (auto, 1fr, auto),
  column-gutter: 8pt,
  align(horizon)[#foot-mtp(scale: 0.7)],
  text(size: 7.8pt)[
    54 J., „wieder Podagra“, MTP-I heiß/rot, unbelastbar, Bier+Thiazid, 38,3 °C, abgeschlagen, will Mobilisation „wie letzter Schub“.
  ],
  align(horizon)[#thermo()],
)

#v(3pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 4pt,
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: 0.4pt + palette.danger.lighten(40%))[
    #text(weight: "bold", size: 7.5pt, fill: palette.danger)[(1) Vordergrund]
    #v(1.5pt)
    #text(size: 7.2pt)[Septisch bis Ausschluss — Infekt-Triage]
  ],
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#fff7ed"), stroke: 0.4pt + palette.warning.lighten(30%))[
    #text(weight: "bold", size: 7.5pt, fill: palette.warning.darken(10%))[(2) Kontraindiziert]
    #v(1.5pt)
    #text(size: 7.2pt)[Forcierte Mobilisation / „wie letzter Schub“]
  ],
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#f0fdfa"), stroke: 0.4pt + palette.primary.lighten(30%))[
    #text(weight: "bold", size: 7.5pt, fill: palette.primary)[(3) Sicherer Schritt]
    #v(1.5pt)
    #text(size: 7.2pt)[Stopp · NA/112 je AZ · Übergabe]
  ],
)

// ── DDx ───────────────────────────────────────────────────────
== DDx-Minimal — Vektor-Kontrast

#let ddx-cell(title, body, accent: palette.primary, glyph: none) = block(
  width: 100%,
  inset: 5pt,
  radius: 2pt,
  stroke: (left: 2.5pt + accent, rest: 0.4pt + palette.border),
  fill: white,
)[
  #grid(
    columns: if glyph != none { (auto, 1fr) } else { (1fr,) },
    column-gutter: 5pt,
    if glyph != none { align(horizon)[#glyph] } else { [] },
    [
      #text(size: 7.6pt, weight: "bold", fill: accent, font: fonts.sans)[#title]
      #v(1.5pt)
      #text(size: 7pt)[#body]
    ],
  )
]

#grid(
  columns: (1fr, 1fr),
  column-gutter: 4pt,
  row-gutter: 3.5pt,
  ddx-cell([Gicht], [Hochakut Stunden, oft MTP-I, Trigger — ohne schwere Systembedrohung], glyph: foot-mtp(scale: 0.4)),
  ddx-cell([Septische Arthritis], [Heißes Gelenk + Fieber/Systemik/Belastungsunfähigkeit; *auch bei Gichtanamnese*], accent: palette.danger, glyph: scale(72%)[#thermo()]),
  ddx-cell([CPPD], [Oft größere Gelenke (Knie); im Erstkontakt oft untrennbar], accent: palette.warning, glyph: scale(80%)[#knee-glyph()]),
  ddx-cell([Trauma / Erysipel], [Klare Mechanik bzw. primär kutan — im Zweifel nicht herabstufen], accent: palette.primary-dark, glyph: ban-sm()),
)

#v(5pt)
#align(center)[
  #text(size: 7.2pt, fill: palette.text-muted)[
    Form Lab Pass V · vector atoms (Fuß · Kristall · TIME · Mimic) · claims pinned · not production Accept
  ]
]
