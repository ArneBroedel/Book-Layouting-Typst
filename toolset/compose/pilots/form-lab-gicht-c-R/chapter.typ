// Form Lab Pass R (c-wave) — Gicht · many small rasters
// lab: gicht-2026-08-c · assets under domains/medical/assets/form-lab/gicht-2026-08-c/R/
// only Semantic Read PASS kacheln mounted

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Gicht — Form Lab Pass R (c-wave)", author: "form-lab/gicht-2026-08-c/R")
#set page(
  paper: "a4",
  margin: (inside: 18mm, outside: 15mm, top: 13mm, bottom: 15mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Gicht · Form Lab c · Pass R (Raster)], [viele kleine Kacheln · Text außerhalb])
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
#set text(size: 9pt)
#set par(leading: 0.62em, justify: true)
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
    #line(length: 22mm, stroke: 1pt + palette.primary)
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
      set text(size: 6.3pt, fill: palette.text-muted, font: fonts.sans)
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
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.danger)[Safety (Text außerhalb Raster): ]
  #body
]

#let base = "/domains/medical/assets/form-lab/gicht-2026-08-c/R/"

= Gicht — hochakute Monarthritis und das septische Gelenk

#text(size: 8.5pt, fill: palette.text-muted, font: fonts.sans)[
  Pass R: viele *kleine* Raster-Kacheln · Claims im Typst · keine Mega-Infografik
]

#v(4pt)
#safety[„Typische Podagra“ kann septische Arthritis maskieren; Kristallnachweis und Gichtanamnese entwarnen *nicht*.]

== Erkennung — Gestalt-Kacheln

#grid(
  columns: (1fr, 1fr),
  column-gutter: 8pt,
  row-gutter: 6pt,
  align(center)[
    #aspect(base + "kachel-hot-mtp.jpg", w: 52mm, cap: [Kachel · heißes MTP-I / Podagra-Gestalt])
  ],
  align(center)[
    #aspect(base + "kachel-hot-knee.jpg", w: 52mm, cap: [Kachel · heißes Knie-Mono (CPPD/septisch mitdenken)])
  ],
)

#v(4pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 8pt,
  align(center)[
    #aspect(base + "kachel-urate-needles.jpg", w: 48mm, cap: [Kachel · Urat-Nadeln (Polarisation) — Nachweis entwarnt nicht])
  ],
  align(center)[
    #aspect(base + "kachel-fever-cue.jpg", w: 48mm, cap: [Kachel · Fieber-/Systemik-Cue am Patienten])
  ],
)

== Klinische Anker (Text)

#table(
  columns: (28mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  table.header(
    text(weight: "bold", size: 8pt, font: fonts.sans)[Job],
    text(weight: "bold", size: 8pt, font: fonts.sans)[Lehre außerhalb des Bildes],
  ),
  [*Hot joint*], text(size: 8pt)[MTP-I-Gestalt erkennen; jedes heiße Mono bleibt bis Ausschluss infektpflichtig.],
  [*Kristall*], text(size: 8pt)[Nadelkristalle erklären das Gichtbild — sie *schließen septisch nicht aus*.],
  [*Knie*], text(size: 8pt)[Knie-Mono: CPPD häufig; septische Arthritis Must-not-miss.],
  [*Systemik*], text(size: 8pt)[Fieber/AZ-Verschlechterung → Triage-Hochstufung, nicht Mobilisation.],
)

== TIME + Grenze

#grid(
  columns: (1fr, 1fr),
  column-gutter: 7pt,
  block(inset: 6pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: (left: 3pt + palette.danger))[
    #text(size: 8pt, weight: "bold", fill: palette.danger)[112 / NA]
    #v(2pt)
    #text(size: 7.8pt)[Hitze + Systemik/Sepsis → 112. Heißes Mono + Belastungsunfähigkeit (*auch ohne* Fieber) → gleichtags NA. Septisch bis Ausschluss.]
  ],
  block(inset: 6pt, radius: 2pt, fill: rgb("#fff7ed"), stroke: (left: 3pt + rgb("#c2410c")))[
    #text(size: 8pt, weight: "bold", fill: rgb("#c2410c"))[Boundary]
    #v(2pt)
    #text(size: 7.8pt)[Keine Punktion/IA-Injektion durch HP; keine forcierte Manipulation am unklar heißen Gelenk; kein Probebehandeln bei Fieber.]
  ],
)

== Mimic + Mini-Fall

#set text(size: 8.2pt)
*„Nur Schub“ / Distorsion / Knie=Gicht:* Anamnese und Kristalle entwarnen nicht. Ohne Traumamechanik + entzündliches Bild: Infekt mitdenken.

#v(4pt)
#block(inset: 6pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
  #text(weight: "bold", font: fonts.sans, size: 8.5pt)[Mini-Fall]
  #v(2pt)
  54 J., „wieder Podagra“, MTP-I heiß, unbelastet, 38,3 °C, will Mobilisation. \
  *Vordergrund:* Infekt-Triage. *Stop:* Mobilisation/Injektion. *Schritt:* NA/112; septisch bis Ausschluss.
]

#v(6pt)
#align(center)[
  #text(size: 7.2pt, fill: palette.text-muted, font: fonts.sans)[
    Nur Semantic-Read-PASS-Kacheln montiert · wave c · keine a/b-wave-Assets
  ]
]
