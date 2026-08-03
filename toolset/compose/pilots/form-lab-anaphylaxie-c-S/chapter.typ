// Form Lab Pass S (c-wave) — Anaphylaxie · Synthesis / best-of
// lab: anaphylaxie-2026-08-c · winners only from comparison/matrix.md
// omit-is-win · Semantic Read PASS only · captions = Kachel/Gestalt

#import "/packages/bookkit/lib.typ": *
#import "@preview/cetz:0.3.4"
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Anaphylaxie — Form Lab Pass S (c-wave)", author: "form-lab/anaphylaxie-2026-08-c/S")
#set page(
  paper: "a4",
  margin: (inside: 16mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Anaphylaxie · Form Lab c · Pass S (Synthesis)], [winners only · omit-is-win])
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
#set text(size: 8.2pt)
#set par(leading: 0.52em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 14pt, weight: "bold", fill: palette.primary-dark)
  block(below: 3.5pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10pt, weight: "bold", fill: palette.primary)
  block(below: 3pt, above: 5pt)[
    #it.body
    #v(1pt)
    #line(length: 18mm, stroke: 0.95pt + palette.primary)
  ]
}

#let base = "/domains/medical/assets/form-lab/anaphylaxie-2026-08-c/R/"

#let danger-band(body) = block(
  width: 100%,
  inset: 6.5pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  #body
]

#let soft-card(title, body, fill: rgb("#f8fafc"), stroke-c: none, title-fill: none) = {
  let sc = if stroke-c == none { palette.border } else { stroke-c }
  let tf = if title-fill == none { palette.primary } else { title-fill }
  block(width: 100%, inset: 5pt, radius: 2pt, fill: fill, stroke: 0.35pt + sc)[
    #text(size: 7.5pt, weight: "bold", fill: tf, font: fonts.sans)[#title]
    #v(1.5pt)
    #set text(size: 7.1pt)
    #body
  ]
}

#let time-tier(code, title, bar, fill, body) = block(
  width: 100%,
  radius: 2pt,
  clip: true,
  stroke: 0.4pt + bar.lighten(30%),
)[
  #grid(
    columns: (18mm, 1fr),
    block(width: 100%, fill: bar, inset: (x: 3pt, y: 6pt))[
      #align(center)[#text(size: 8pt, weight: "bold", fill: white, font: fonts.sans)[#code]]
    ],
    block(width: 100%, fill: fill, inset: 5.5pt)[
      #text(size: 7.5pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
      #v(1.2pt)
      #set text(size: 7pt)
      #body
    ],
  )
]

#let mimic-row(frame, danger) = block(
  width: 100%,
  inset: 4.5pt,
  radius: 2pt,
  stroke: 0.35pt + palette.border,
)[
  #grid(
    columns: (40mm, 7mm, 1fr),
    align(horizon)[#text(size: 7pt)[#frame]],
    align(center + horizon)[#text(size: 10pt, fill: palette.danger, weight: "bold")[→]],
    align(horizon)[#text(size: 7pt, weight: "bold", fill: palette.danger)[#danger]],
  )
]

#let aspect(path, w: 42mm, cap: none) = block(
  width: w + 3mm,
  inset: 2pt,
  radius: 2pt,
  stroke: 0.35pt + palette.border,
)[
  #image(path, width: w)
  #if cap != none {
    v(1.5pt)
    set text(size: 6pt, fill: palette.text-muted, font: fonts.sans)
    align(center)[#cap]
  }
]

// V winners: chevrons + biphasic + ban (small)
#let chevron-step(lab, col) = cetz.canvas(length: 0.78mm, {
  import cetz.draw: *
  merge-path(stroke: 0.65pt + col.darken(15%), fill: col, close: true, {
    line((-10, -4.5), (5.5, -4.5), (10, 0), (5.5, 4.5), (-10, 4.5), (-6.5, 0))
  })
  content((0, 0), text(size: 5.4pt, weight: "bold", fill: white, font: fonts.sans)[#lab])
})

#let biphasic-wave() = cetz.canvas(length: 0.75mm, {
  import cetz.draw: *
  line((-12, -5), (12, -5), stroke: 0.5pt + palette.text-muted)
  merge-path(stroke: 1.1pt + palette.danger, fill: none, {
    line((-10, -5), (-7, 5), (-4, -3.5), (0, -4.5))
  })
  for (a, b) in (((1.5, -4.5), (3.5, 1.5)), ((3.5, 1.5), (5.5, 4.5)), ((5.5, 4.5), (7.5, 0.5)), ((7.5, 0.5), (10, -4.5))) {
    line(a, b, stroke: (paint: palette.warning.darken(10%), thickness: 1.05pt, dash: "dashed"))
  }
  content((-7, 7.5), text(size: 4.5pt, fill: palette.danger, font: fonts.sans)[1.])
  content((5.5, 7.5), text(size: 4.5pt, fill: palette.warning.darken(10%), font: fonts.sans)[2. 6–24h])
})

#let ban-mark() = cetz.canvas(length: 0.7mm, {
  import cetz.draw: *
  rect((-5, -1.6), (5, 1.6), radius: 0.4, fill: rgb("#e2e8f0"), stroke: 0.55pt + palette.primary-dark)
  rect((-1.6, -5), (1.6, 5), radius: 0.4, fill: rgb("#e2e8f0"), stroke: 0.55pt + palette.primary-dark)
  circle((0, 0), radius: 8.5, stroke: 1.3pt + palette.danger)
  line((-6, -6), (6, 6), stroke: 1.35pt + palette.danger)
})

// ── Title ─────────────────────────────────────────────────────
= Anaphylaxie und schwere allergische Reaktion

#text(size: 8pt, fill: palette.text-muted, font: fonts.sans)[
  Pass S: Matrix-Gewinner · R-Erkennung · C-Chrome · V-Chevrons/Biphasisch · T-Grenzen
]

#v(2.5pt)
#danger-band[Atemwegs- oder Kreislaufzeichen, progredientes Angioödem oder rapider Mehrorgan-Verlauf → *sofort 112*. Keine PT, keine manuelle „Enge-Abklärung“, kein medikamentöses Eigenprotokoll.]

== Erkennung (R-Gewinner) + Mehrorgan (C)

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 4pt,
  align(center + top)[
    #aspect(base + "kachel-angioedema-lips.jpg", w: 32mm, cap: [Kachel · Angioödem → 112])
  ],
  align(center + top)[
    #aspect(base + "kachel-urticaria.jpg", w: 32mm, cap: [Kachel · Urtikaria — entwarnt nicht])
  ],
  align(center + top)[
    #aspect(base + "kachel-autoinjector.jpg", w: 32mm, cap: [Kachel · Autoinjektor patienteneigen])
  ],
)

#v(2pt)
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 3.5pt,
  soft-card([#fa-icon("hand-dots", solid: true, size: 7pt)  Haut], [Urtikaria, Flush, Angioödem. Fehlen kutaner Zeichen schließt schwere Reaktion *nicht* aus.], fill: rgb("#fff7ed"), stroke-c: palette.warning.lighten(30%), title-fill: palette.warning.darken(10%)),
  soft-card([#fa-icon("lungs", solid: true, size: 7pt)  Atem], [Stridor, Kloß, Heiserkeit, Zunge → *112*.], fill: rgb("#fef2f2"), stroke-c: palette.danger.lighten(40%), title-fill: palette.danger),
  soft-card([#fa-icon("heart-pulse", solid: true, size: 7pt)  Kreislauf], [Hypotonie, Kollaps, Schock.], fill: rgb("#fef2f2"), stroke-c: palette.danger.lighten(40%), title-fill: palette.danger),
  soft-card([#fa-icon("notes-medical", solid: true, size: 7pt)  GI], [Koliken, Erbrechen im Verbund.], fill: rgb("#f0fdfa"), stroke-c: palette.primary.lighten(30%)),
)

== Handlungskette (V) + TIME (C)

#align(center)[
  #grid(
    columns: 9,
    column-gutter: 1.2pt,
    align(horizon)[#chevron-step([Stopp], palette.danger)],
    align(horizon)[#text(size: 9pt, fill: palette.danger, weight: "bold")[›]],
    align(horizon)[#chevron-step([112], palette.danger)],
    align(horizon)[#text(size: 9pt, fill: palette.danger, weight: "bold")[›]],
    align(horizon)[#chevron-step([Lage], rgb("#c2410c"))],
    align(horizon)[#text(size: 9pt, fill: palette.warning, weight: "bold")[›]],
    align(horizon)[#chevron-step([Epi+], palette.primary)],
    align(horizon)[#text(size: 9pt, fill: palette.primary, weight: "bold")[›]],
    align(horizon)[#chevron-step([Watch], palette.primary-dark)],
  )
]
#v(1.5pt)
#align(center)[
  #text(size: 6.8pt, fill: palette.text-muted, font: fonts.sans)[
    Stopp → 112 → Lagerung/BLS → Autoinjektor-Support (patienteneigen) → überwachen
  ]
]

#v(2pt)
#time-tier(
  [112],
  [Atemweg · Kreislauf · Progredienz · Mehrorgan],
  palette.danger,
  rgb("#fef2f2"),
  [Atemnot, Stridor, Zunge/Kloß/Heiserkeit; Kollaps/Schock; Urtikaria + GI *und* Atem; schwere Allergie + Exposition + Progredienz. *Handlung:* Stopp · *112* · Lagerung · Autoinjektor-Support · überwachen · BLS.],
)
#v(2pt)
#time-tier(
  [NA],
  [Gleichtags — *ohne* 112-Kriterien],
  rgb("#c2410c"),
  rgb("#fff7ed"),
  [Milde *nicht* progressive Beschwerden; isolierte stabile Haut. Keine PT als Abwarten. Bei Verschlechterung *sofort 112*.],
)

== Mimics (C) + Boundary + Biphasisch

#mimic-row([„Nur Quaddeln / Haut“], [Atemwege + Kreislauf screenen])
#v(1.5pt)
#mimic-row([„Panik / Hyperventilation“], [Erst Schwellung, Stridor, Kreislauf])
#v(1.5pt)
#mimic-row([„Asthma-Schub“], [Allergen + Mehrorgan → Anaphylaxie-*112*])
#v(1.5pt)
#mimic-row([„HWS-/BWS-Blockade“], [Enge nach Exposition ≠ manuelle Freigabe])

#v(2pt)
#grid(
  columns: (auto, 1fr, auto),
  column-gutter: 7pt,
  align(horizon)[#ban-mark()],
  [
    #set text(size: 7.2pt)
    #text(weight: "bold", fill: palette.danger)[Grenze:]
    Kein medikamentöses Eskalationsprotokoll; keine i.m./i.v. aus eigener Kompetenz; Autoinjektor nur *patienteneigen*.
  ],
  align(horizon)[
    #biphasic-wave()
    #v(1pt)
    #align(center)[#text(size: 5.8pt, fill: palette.text-muted, font: fonts.sans)[Biphasisch 6–24 h]]
  ],
)

#block(breakable: false)[
  == Mini-Fall (T-Struktur)

  #block(inset: 5pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.35pt + palette.border)[
    #text(size: 7.3pt, weight: "bold", font: fonts.sans)[Situation]
    #v(1.2pt)
    #text(size: 7pt)[
      34 J., Nussallergie, nach Müsliriegel: Juckreiz, Flush, „Kloßgefühl“, Heiserkeit, leichte Lippenschwellung. Will HWS „lösen“. Autoinjektor „in der Tasche“.
    ]
    #v(2.5pt)
    #grid(
      columns: (1fr, 1fr, 1fr),
      column-gutter: 3.5pt,
      soft-card([Vordergrund], [Allergen + Kloß/Heiserkeit/Lippenödem → *112*, nicht Nacken lösen.], fill: rgb("#fef2f2"), stroke-c: palette.danger.lighten(40%), title-fill: palette.danger),
      soft-card([Kontraindiziert], [HWS-Mobilisation, fortgesetzte PT, Belastung, Eigenmedikation.], fill: rgb("#fff7ed"), stroke-c: palette.warning.lighten(30%), title-fill: palette.warning.darken(10%)),
      soft-card([Nächster Schritt], [Stopp · *112* · Lagerung · Autoinjektor-Support · überwachen.], fill: rgb("#f0fdfa"), stroke-c: palette.primary.lighten(30%)),
    )
    #v(3pt)
    #align(center)[
      #text(size: 6.2pt, fill: palette.text-muted, font: fonts.sans)[
        S = matrix winners · R + C + V · wave c · not production Accept
      ]
    ]
  ]
]
