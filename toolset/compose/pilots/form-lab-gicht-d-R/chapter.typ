// Form Lab Pass R (d-wave) — Gicht · many small raster Kacheln
// lab: gicht-2026-08-d · pin: chapter-v-3-gicht.md
// ALLOW: multiple free-vision aspects · DENY: mega-infographic · mount only SR PASS

#import "/packages/bookkit/lib.typ": *

#set document(title: "Gicht — Form Lab Pass R (d-wave)", author: "form-lab/gicht-2026-08-d/R")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Gicht · Form Lab d · Pass R · Raster-Kacheln], [SR PASS only])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [wave-d · raster extreme · lab-learning], counter(page).display("1"))
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
  set text(font: fonts.sans, size: 9.5pt, weight: "bold", fill: palette.primary)
  block(below: 3pt, above: 6pt)[
    #it.body
    #v(1pt)
    #line(length: 16mm, stroke: 1pt + palette.primary)
  ]
}

#let asset(name) = "/domains/medical/assets/form-lab/gicht-2026-08-d/R/" + name

#let kachel(file, cap) = block(
  width: 100%,
  inset: 3pt,
  radius: 2pt,
  stroke: 0.4pt + palette.border,
  fill: white,
)[
  #align(center)[
    #image(asset(file), width: 100%, height: 32mm, fit: "cover")
  ]
  #v(2pt)
  #align(center)[
    #set text(size: 6pt, fill: palette.text-muted, font: fonts.sans)
    #cap
  ]
]

#let danger-band(body) = block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger),
)[
  #set text(size: 7.8pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr: ]
  #body
]

= Gicht — hochakute Monarthritis und das septische Gelenk

#text(size: 7.6pt, fill: palette.text-muted, font: fonts.sans)[
  Pass R (d): viele *kleine* Raster-Kacheln · ein Aspekt pro Job · Claims im Typst · kein Mega-Poster
]

#v(2pt)
#danger-band[
  „Typische Podagra“ kann septische Arthritis maskieren; Kristallnachweis und Gichtanamnese entwarnen *nicht*.
]

== Erkennung — heißes Mono (Kacheln)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 5pt,
  kachel("kachel-hot-mtp.jpg", [MTP-I Hotspot · Podagra-Gestalt]),
  kachel("kachel-plantar-exam.jpg", [Plantar · Druckschmerz / Schonung]),
  kachel("kachel-hot-knee.jpg", [Knie-Mono · CPPD & septisch mitdenken]),
  kachel("kachel-fever-cue.jpg", [Fieber / Systemik-Cue · 38+ °C]),
)

== Kristall · Tophus · Grenze

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  kachel("kachel-urate-needles.jpg", [Urat-Nadeln · Nachweis ≠ Entwarnung]),
  kachel("kachel-tophus.jpg", [Tophus-Gestalt · chronisch · Infekt möglich]),
  kachel("kachel-boundary-no-force.jpg", [Keine forcierte Manipulation / Injektion]),
)

== Klinik & TIME (Text trägt Claims)

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 7pt,
  [
    #set text(size: 7.8pt)
    *Wann denken:* Hyperurikämie, Alkohol, Diuretika, purinreich; Anfall binnen *Stunden*; oft MTP-I. \
    *Mechanismus:* Urat → neutrophile Entzündung — klinisch oft *nicht* sicher von septisch trennbar. \
    *Trügerisch:* „nur Schub“ · „Distorsion“ · „Knie = immer Gicht“.
  ],
  block(
    width: 100%,
    radius: 2pt,
    stroke: 0.4pt + palette.border,
    inset: 0pt,
    clip: true,
  )[
    #table(
      columns: (16mm, 1fr),
      stroke: (x: none, y: 0.35pt + palette.border),
      inset: 4pt,
      fill: (_, y) => if y == 0 { rgb("#fef2f2") } else if y == 1 { rgb("#fff7ed") } else if y == 2 { rgb("#f0fdfa") } else { rgb("#ecfdf5") },
      text(weight: "bold", size: 7.2pt, fill: palette.danger)[112], text(size: 7.1pt)[Hitze + Fieber/Systemik + AZ↓ → Notruf],
      text(weight: "bold", size: 7.2pt, fill: rgb("#c2410c"))[NA], text(size: 7.1pt)[Heißes Mono + Belastungsunfähigkeit (*auch ohne* Fieber)],
      text(weight: "bold", size: 7.2pt, fill: palette.primary)[Zeitnah], text(size: 7.1pt)[Nur ärztlich eingeordnetes Muster ohne heißes Mono],
      text(weight: "bold", size: 7.2pt, fill: rgb("#0f766e"))[Beh.], text(size: 7.1pt)[Stabil freigegeben · schmerzarm · Netz],
    )
  ],
)

#v(3pt)
#block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger),
)[
  #text(size: 7.5pt, weight: "bold", fill: palette.danger)[Grenze bis Ausschluss]
  #v(1pt)
  #text(size: 7.4pt)[Keine Punktion/IA-Injektion durch HP · keine forcierte Manipulation am unklar heißen Gelenk · kein Probebehandeln bei Fieber/Systemik.]
]

== Mini-Fall

#grid(
  columns: (0.38fr, 0.62fr),
  column-gutter: 6pt,
  kachel("kachel-hot-mtp.jpg", [Fall · MTP-I heiß]),
  block(
    width: 100%,
    inset: 6pt,
    radius: 2pt,
    fill: rgb("#f8fafc"),
    stroke: 0.4pt + palette.border,
  )[
    #set text(size: 7.6pt)
    *54 J.* · „wieder Podagra“ · MTP-I heiß · unbelastet · 38,3 °C · will Mobilisation. \
    *Vordergrund:* Infekt-Triage. *Kontraindiziert:* Mobilisation/Injektion. *Schritt:* NA/112 · septisch bis Ausschluss.
  ],
)

#v(3pt)
#align(center)[
  #text(size: 6.8pt, fill: palette.text-muted, font: fonts.sans)[
    7 Kacheln · alle SR PASS · wave-d / R · neue Gens only
  ]
]
