// Form Lab Pass V — Anaphylaxie · Vector atomic (many small CeTZ)
// lab: anaphylaxie-2026-08-b

#import "/packages/bookkit/lib.typ": *
#import "@preview/cetz:0.3.4"
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Anaphylaxie — Form Lab Pass V", author: "form-lab/anaphylaxie-2026-08-b/V")
#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 14mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Anaphylaxie · Form Lab · Pass V], [Mehrorgan-Atome · 112-Kette])
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

#let skin-hive() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  rect((-10, -8), (10, 8), radius: 2, fill: rgb("#fef3c7"), stroke: 0.6pt + palette.warning)
  for (x, y, r) in ((-4, 2, 2.5), (2, -1, 3), (5, 3, 2), (-2, -4, 2.2), (0, 4, 1.8)) {
    circle((x, y), radius: r, fill: rgb("#fca5a5").transparentize(20%), stroke: 0.6pt + palette.danger)
  }
})

#let airway-swell() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  // neck/airway tube narrowed
  line((-2, 10), (-2, -8), stroke: 1.2pt + palette.primary-dark)
  line((2, 10), (2, -8), stroke: 1.2pt + palette.primary-dark)
  // swelling bulges
  arc((0, 2), start: 90deg, stop: 270deg, radius: 5, fill: rgb("#fecaca"), stroke: 1pt + palette.danger)
  arc((0, 2), start: -90deg, stop: 90deg, radius: 5, fill: rgb("#fecaca"), stroke: 1pt + palette.danger)
  // stridor mark
  content((0, -12), text(size: 6pt, fill: palette.danger, weight: "bold")[Stridor])
})

#let shock-bp() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  // heart
  circle((-2, 2), radius: 3.5, fill: rgb("#fef2f2"), stroke: 1pt + palette.danger)
  circle((2, 2), radius: 3.5, fill: rgb("#fef2f2"), stroke: 1pt + palette.danger)
  line((-5, 1), (0, -6), (5, 1), stroke: 1pt + palette.danger)
  // down arrow BP
  line((10, 6), (10, -4), stroke: 1.6pt + palette.danger, mark: (end: ">", fill: palette.danger))
  content((10, 9), text(size: 6pt, weight: "bold", fill: palette.danger)[RR])
})

#let gi-wave() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  // stomach-ish oval
  circle((0, 0), radius: (8, 6), fill: rgb("#f0fdfa"), stroke: 0.9pt + palette.primary)
  // wave lines
  for y in (-2, 0, 2) {
    line((-5, y), (-2, y + 1), (1, y - 1), (5, y), stroke: 0.8pt + palette.primary-dark)
  }
})

#let autoinjector() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  rect((-3, -10), (3, 10), radius: 1.5, fill: rgb("#fef2f2"), stroke: 1pt + palette.danger)
  rect((-3, 6), (3, 10), fill: palette.danger, stroke: none)
  content((0, 0), text(size: 5.5pt, weight: "bold", fill: palette.danger, font: fonts.sans)[Epi])
  content((0, -14), text(size: 5.5pt, fill: palette.text-muted)[patienteneigen])
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

#let cascade() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  let nodes = (
    (0, 12, "Allergen"),
    (0, 4, "Mediator"),
    (0, -4, "Ödem"),
    (0, -12, "Schock"),
  )
  for (i, (x, y, lab)) in nodes.enumerate() {
    circle((x, y), radius: 4.5, fill: if i >= 2 { rgb("#fef2f2") } else { rgb("#f0fdfa") },
      stroke: 0.8pt + if i >= 2 { palette.danger } else { palette.primary })
    content((x, y), text(size: 5pt, weight: "bold", font: fonts.sans)[#lab])
    if i < 3 {
      line((0, y - 4.5), (0, nodes.at(i + 1).at(1) + 4.5), stroke: 1pt + palette.danger, mark: (end: ">", fill: palette.danger))
    }
  }
})

// ── Title ─────────────────────────────────────────────────────
= Anaphylaxie — systemische Notfallreaktion

#text(size: 9pt, fill: palette.text-muted, font: fonts.sans)[
  Pass V: Vektor-Atome · Mehrorgan · Handlungskette · Autoinjektor
]

#v(5pt)
#grid(
  columns: (auto, 1fr),
  column-gutter: 10pt,
  align(horizon)[#airway-swell()],
  [
    #set text(size: 9pt)
    #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang.]
    Atemweg/Kreislauf/Progredienz → *sofort 112*. Keine PT, kein medikamentöses Eigenprotokoll.
  ],
)

// ── Multi-system atoms ────────────────────────────────────────
== Mehrorgan — vier Vektor-Anker

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 6pt,
  align(center)[
    #skin-hive()
    #v(3pt)
    #text(size: 8pt, weight: "bold", font: fonts.sans)[Haut]
    #v(2pt)
    #text(size: 7.5pt)[Urtikaria, Flush, Angioödem — Fehlen schließt schwere Reaktion *nicht* aus]
  ],
  align(center)[
    #airway-swell()
    #v(3pt)
    #text(size: 8pt, weight: "bold", font: fonts.sans)[Atemwege]
    #v(2pt)
    #text(size: 7.5pt)[Stridor, Zunge, Kloß, Heiserkeit → *112*]
  ],
  align(center)[
    #shock-bp()
    #v(3pt)
    #text(size: 8pt, weight: "bold", font: fonts.sans)[Kreislauf]
    #v(2pt)
    #text(size: 7.5pt)[Hypotonie, Kollaps, Schock]
  ],
  align(center)[
    #gi-wave()
    #v(3pt)
    #text(size: 8pt, weight: "bold", font: fonts.sans)[GI]
    #v(2pt)
    #text(size: 7.5pt)[Koliken, Erbrechen — im Verbund mit Haut/Atem]
  ],
)

// ── Cascade + action ──────────────────────────────────────────
== Mechanismus + Handlungskette

#grid(
  columns: (auto, 1fr, auto),
  column-gutter: 10pt,
  align(center)[
    #cascade()
    #v(2pt)
    #text(size: 7.5pt, weight: "bold")[Kaskade]
  ],
  [
    #set text(size: 8.5pt)
    Allergen → Mediator → Vasodilatation/Kapillarleck → Atemwegsödem + relatives Volumenproblem. Minuten bis Stunden. *Biphasisch* ca. 6–24 h möglich.
    #v(4pt)
    #text(weight: "bold", fill: palette.danger)[Kette:] Stopp → *112* → Lagerung/BLS → Autoinjektor-Support → überwachen.
  ],
  align(center)[
    #autoinjector()
    #v(2pt)
    #text(size: 7.5pt, weight: "bold")[Support]
  ],
)

// ── Enabling ──────────────────────────────────────────────────
== 1. Wann denken? — Trigger-Piktogramme

#grid(
  columns: (1fr,) * 5,
  column-gutter: 4pt,
  ..(
    ("utensils", "Nahrung"),
    ("bug", "Insekt"),
    ("pills", "Medikament"),
    ("hand", "Latex"),
    ("person-running", "Belastung"),
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

#mimic-row([„Nur Quaddeln“], [Atemwege/Kreislauf screenen — Unter-Triage-Gefahr])
#mimic-row([„Panik / Asthma / HWS-Enge“], [Allergen + Mehrorgan → *112*, keine manuelle Abklärung])

// ── TIME ──────────────────────────────────────────────────────
== 5. TIME — Vektor-Kette

#align(center)[
  #grid(
    columns: (auto, auto, auto, auto, auto),
    column-gutter: 3pt,
    align(horizon)[#time-step("112", palette.danger)],
    align(horizon)[#arrow-r()],
    align(horizon)[#time-step("NA", palette.warning)],
    align(horizon)[#arrow-r(col: palette.primary)],
    align(horizon)[#time-step("Beh.", palette.primary)],
  )
]

#v(5pt)
#set text(size: 8pt)
#table(
  columns: (18mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 3pt, y: 4pt),
  [*112*], [Atemwegs- oder Kreislaufzeichen; Mehrorgan + Dynamik; schwere Allergie + Exposition + Progredienz → Stopp, *112*, Autoinjektor-Support, BLS],
  [*NA*], [Milde nicht-progressive / isolierte stabile Haut ohne 112-Kriterien → gleichtags Arzt; bei Verschlechterung *112*],
  [*Beh.*], [Keine akute Allergie als PT-Primärindikation — erst nach ärztlicher Klärung],
)

#v(3pt)
#text(size: 8pt)[
  #fa-icon("ban", solid: true, fill: palette.danger) *Grenze:* kein i.m./i.v. Eigenprotokoll; Autoinjektor nur patienteneigen.
]

// ── Case ──────────────────────────────────────────────────────
== 6. Fall — Vektor-Erinnerung

#grid(
  columns: (auto, auto, 1fr),
  column-gutter: 8pt,
  align(horizon)[#skin-hive()],
  align(horizon)[#airway-swell()],
  text(size: 8.5pt)[
    34 J., HWS-Fortsetzung. Vor 20 min Nahrung; seit 10 min Juckreiz, Flush, Kloß, Heiserkeit, Lippenödem. Nussallergie, Autoinjektor „in der Tasche“. Will Nacken lösen.
  ],
)
#v(4pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  [#text(weight: "bold", size: 8pt)[(1)] #text(size: 8pt)[Beginnende Anaphylaxie → *112*]],
  [#text(weight: "bold", size: 8pt)[(2)] #text(size: 8pt)[Keine HWS-Mobilisation]],
  [#text(weight: "bold", size: 8pt)[(3)] #text(size: 8pt)[Stopp · 112 · Autoinjektor-Support]],
)

#v(6pt)
#align(center)[
  #grid(
    columns: (auto, auto, auto, auto),
    column-gutter: 14pt,
    align(center)[#airway-swell() #v(2pt) #text(size: 7pt)[Atem]],
    align(center)[#shock-bp() #v(2pt) #text(size: 7pt)[Kreislauf]],
    align(center)[#autoinjector() #v(2pt) #text(size: 7pt)[Epi]],
    align(center)[#mimic-x() #v(2pt) #text(size: 7pt)[Mimic stop]],
  )
]

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
#align(center)[
  #text(size: 7.5pt, fill: palette.text-muted)[Form Lab Pass V · vector atoms · not production Accept]
]
