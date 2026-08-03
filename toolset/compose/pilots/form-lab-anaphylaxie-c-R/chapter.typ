// Form Lab Pass R (c-wave) — Anaphylaxie · many small rasters
// lab: anaphylaxie-2026-08-c · assets under domains/medical/assets/form-lab/anaphylaxie-2026-08-c/R/
// only Semantic Read PASS kacheln mounted · captions = Kachel/Gestalt not Atom

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Anaphylaxie — Form Lab Pass R (c-wave)", author: "form-lab/anaphylaxie-2026-08-c/R")
#set page(
  paper: "a4",
  margin: (inside: 17mm, outside: 14mm, top: 12mm, bottom: 13mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Anaphylaxie · Form Lab c · Pass R (Raster)], [viele kleine Kacheln · Text außerhalb])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [Form Lab · raster aspects · wave c], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.8pt)
#set par(leading: 0.58em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 14pt, weight: "bold", fill: palette.primary-dark)
  block(below: 4pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10.5pt, weight: "bold", fill: palette.primary)
  block(below: 4pt, above: 7pt)[
    #it.body
    #v(1.5pt)
    #line(length: 20mm, stroke: 1pt + palette.primary)
  ]
}

#let aspect(path, w: 40mm, cap: none) = {
  block(
    width: w + 4mm,
    inset: 2.5pt,
    radius: 2pt,
    stroke: 0.4pt + palette.border,
    fill: white,
  )[
    #image(path, width: w)
    #if cap != none {
      v(2pt)
      set text(size: 6.2pt, fill: palette.text-muted, font: fonts.sans)
      align(center)[#cap]
    }
  ]
}

#let safety(body) = block(
  width: 100%,
  inset: 6.5pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger),
)[
  #set text(size: 7.8pt)
  #text(weight: "bold", fill: palette.danger)[Safety (Text außerhalb Raster): ]
  #body
]

#let base = "/domains/medical/assets/form-lab/anaphylaxie-2026-08-c/R/"

= Anaphylaxie und schwere allergische Reaktion

#text(size: 8.2pt, fill: palette.text-muted, font: fonts.sans)[
  Pass R: viele *kleine* Raster-Kacheln · Claims im Typst · keine Mega-Infografik
]

#v(3pt)
#safety[Atemwegs- oder Kreislaufzeichen, progredientes Angioödem oder Mehrorgan + Dynamik → *sofort 112*. Kein medikamentöses Eigenprotokoll; Autoinjektor nur *patienteneigen*.]

== Erkennung — Gestalt-Kacheln

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  align(center + top)[
    #aspect(base + "kachel-urticaria.jpg", w: 50mm, cap: [Kachel · Urtikaria / Quaddeln auf Hautfeld])
  ],
  align(center + top)[
    #aspect(base + "kachel-angioedema-lips.jpg", w: 50mm, cap: [Kachel · Angioödem Lippen/Zunge])
  ],
  align(center + top)[
    #aspect(base + "kachel-autoinjector.jpg", w: 50mm, cap: [Kachel · Adrenalin-Autoinjektor (patienteneigen)])
  ],
)

== Klinische Anker (Text außerhalb)

#table(
  columns: (28mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 4.5pt,
  table.header(
    text(weight: "bold", size: 7.8pt, font: fonts.sans)[Job],
    text(weight: "bold", size: 7.8pt, font: fonts.sans)[Lehre außerhalb des Bildes],
  ),
  [*Urtikaria*], text(size: 7.8pt)[Quaddeln erkennen — *entwarnen nicht* ohne Atem-/Kreislauf-Screen; generalisiert + Dynamik → 112-Pfad.],
  [*Angioödem*], text(size: 7.8pt)[Lippen/Zunge/Kloß/Heiserkeit = Atemwegsbedrohung → *sofort 112*, keine HWS-Mobilisation.],
  [*Autoinjektor*], text(size: 7.8pt)[Nur *patienteneigen*, verordnet, Anwendung bekannt — Support, kein Eigenprotokoll.],
  [*Mehrorgan*], text(size: 7.8pt)[Haut + Atem + Kreislauf + GI kombiniert handlungsleitend.],
  [*Mimics*], text(size: 7.8pt)[„Nur Haut“, „Panik“, „Asthma“, „MSK-Enge“ erst nach Ausschluss von Atem/Kreislauf.],
  [*Biphasisch*], text(size: 7.8pt)[6–24 h zweite Welle möglich — Beobachtung ärztlich, nicht „weiter PT und nach Hause“.],
)

== TIME + Grenze

#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  block(inset: 6pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: (left: 3pt + palette.danger))[
    #text(size: 8pt, weight: "bold", fill: palette.danger, font: fonts.sans)[112]
    #v(2pt)
    #text(size: 7.5pt)[Atemnot, Stridor, Zunge/Kloß/Heiserkeit; Kollaps/Schock; Urtikaria + GI *und* Atem; schwere Allergie + Exposition + Progredienz. \
    *Handlung:* Stopp · 112 · Lagerung · Autoinjektor-Support · überwachen · BLS.]
  ],
  block(inset: 6pt, radius: 2pt, fill: rgb("#fff7ed"), stroke: (left: 3pt + rgb("#c2410c")))[
    #text(size: 8pt, weight: "bold", fill: rgb("#c2410c"), font: fonts.sans)[Boundary]
    #v(2pt)
    #text(size: 7.5pt)[Kein medikamentöses Eskalationsprotokoll; keine i.m./i.v. aus eigener Kompetenz; keine fortgesetzte Belastung/Mobilisation bei vermuteter Anaphylaxie.]
  ],
)

#v(4pt)
#block(inset: 6pt, radius: 2pt, fill: rgb("#f0fdfa"), stroke: (left: 3pt + palette.primary))[
  #text(size: 8pt, weight: "bold", fill: palette.primary, font: fonts.sans)[Handlungskette]
  #v(2pt)
  #text(size: 7.6pt)[*Erkennen → Stopp → 112 → Lagerung/BLS → Autoinjektor-Support (patienteneigen) → überwachen.*]
]

#block(breakable: false)[
  == Mini-Fall (Transfer)

  #block(inset: 6pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(weight: "bold", font: fonts.sans, size: 8pt)[Situation]
    #v(2pt)
    #text(size: 7.6pt)[
      34 J., Nussallergie, nach Müsliriegel: Juckreiz, Flush, „Kloßgefühl“, Heiserkeit, leichte Lippenschwellung. Will HWS „lösen“. Autoinjektor „in der Tasche“.
    ]
    #v(3pt)
    #grid(
      columns: (1fr, 1fr, 1fr),
      column-gutter: 5pt,
      text(size: 7.4pt)[*Vordergrund:* Allergen + Atemwegshinweise → *112*.],
      text(size: 7.4pt)[*Stop:* Nacken mobilisieren, fortgesetzte PT.],
      text(size: 7.4pt)[*Schritt:* 112 · Lagerung · Autoinjektor-Support.],
    )
  ]
]

#v(4pt)
#align(center)[
  #text(size: 6.8pt, fill: palette.text-muted, font: fonts.sans)[
    Nur Semantic-Read-PASS-Kacheln · wave c · keine a/b-wave-Assets · Caption = Kachel/Gestalt
  ]
]
