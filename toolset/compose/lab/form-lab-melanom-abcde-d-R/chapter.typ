// Form Lab Pass R (d-wave) — Melanom ABCDE · many small raster Kacheln
// lab: melanom-abcde-2026-08-d · pin: chapter-v-10-melanom-abcde-hautscreening.md
// ALLOW: multiple free-vision aspects · DENY: mega-infographic · mount only SR PASS

#import "/packages/bookkit/lib.typ": *

#set document(title: "Melanom ABCDE — Form Lab Pass R (d-wave)", author: "form-lab/melanom-abcde-2026-08-d/R")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Melanom · Form Lab d · Pass R · Raster-Kacheln], [SR PASS only])
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
#set text(size: 8.3pt)
#set par(leading: 0.54em, justify: true)
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

#let asset(name) = "/domains/medical/assets/form-lab/melanom-abcde-2026-08-d/R/" + name

#let kachel(file, cap) = block(
  width: 100%,
  inset: 3pt,
  radius: 2pt,
  stroke: 0.4pt + palette.border,
  fill: white,
)[
  #align(center)[
    #image(asset(file), width: 100%, height: 30mm, fit: "cover")
  ]
  #v(2pt)
  #align(center)[
    #set text(size: 5.9pt, fill: palette.text-muted, font: fonts.sans)
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
  #set text(size: 7.7pt)
  #text(weight: "bold", fill: palette.danger)[Rolle: ]
  #body
]

= Melanom — ABCDE-Hautscreening im Direktzugang

#text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)[
  Pass R (d): viele *kleine* Raster-Kacheln · ein Aspekt pro Job · Claims im Typst · kein Mega-Poster
]

#v(2pt)
#danger-band[
  Strukturierter Blick (ABCDE, Ugly Duckling) + Dringlichkeit + *ärztliche Zuweisung* — keine Exzision, keine destruktiven Maßnahmen.
]

== ABCDE — Erkennung (Kacheln)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  kachel("kachel-asym.jpg", [A · Asymmetrie]),
  kachel("kachel-border.jpg", [B · unregelmäßige Begrenzung]),
  kachel("kachel-color.jpg", [C · Farbvielfalt]),
  kachel("kachel-diam.jpg", [D · Durchmesser > 5 mm]),
  kachel("kachel-evol.jpg", [E · Evolution]),
)

== Ugly Duckling · Mimics · Subungual

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  kachel("kachel-ugly.jpg", [Ugly Duckling · Feld + eine andere]),
  kachel("kachel-seb.jpg", [Mimic · seborrhoische Keratose-Gestalt]),
  kachel("kachel-nail.jpg", [Subungual · Band + Nagelwall]),
)

== Klinik & TIME (Text trägt Claims)

#grid(
  columns: (1.05fr, 0.95fr),
  column-gutter: 7pt,
  [
    #set text(size: 7.6pt)
    *Wann denken:* UV/Solarium; Hauttyp I–II; viele/atypische Nävi; familiäres Melanom; blinde Zonen Rücken/Nacken. \
    *Mechanismus:* UV-DNA → Melanozytenwachstum; früh ärztlich exzidiert günstiger — HP-Beitrag: Blick + Zuweisung. \
    *Trügerisch:* „alter Fleck“ · „nur Seborrhoika/Nävus“ · „Hämatom nach Trauma“ · „Rücken nicht Behandlungsziel“.
  ],
  block(
    width: 100%,
    radius: 2pt,
    stroke: 0.4pt + palette.border,
    inset: 0pt,
    clip: true,
  )[
    #table(
      columns: (18mm, 1fr),
      stroke: (x: none, y: 0.35pt + palette.border),
      inset: 4pt,
      fill: (_, y) => if y == 0 { rgb("#fef2f2") } else if y == 1 { rgb("#fff7ed") } else if y == 2 { rgb("#f0fdfa") } else { rgb("#ecfdf5") },
      text(weight: "bold", size: 7pt, fill: palette.danger)[112], text(size: 7pt)[Selten · nur vitale Begleitlage],
      text(weight: "bold", size: 7pt, fill: rgb("#c2410c"))[Gleichtags], text(size: 7pt)[Blutung/Ulzeration; ABCDE-suspekt/rasch],
      text(weight: "bold", size: 7pt, fill: palette.primary)[Zeitnah], text(size: 7pt)[Subungual + Wall; Ugly Duckling],
      text(weight: "bold", size: 7pt, fill: rgb("#0f766e"))[Beh.], text(size: 7pt)[Ohne Suspekt · MSK + Sicherheitsnetz],
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
  #text(size: 7.4pt, weight: "bold", fill: palette.danger)[Grenze]
  #v(1pt)
  #text(size: 7.3pt)[Keine Melanom-Diagnose, keine Exzision, keine destruktiven Maßnahmen an suspekten Läsionen. Endgültige DDx ist ärztlich.]
]

== Mini-Fall — Rückenläsion

#grid(
  columns: (0.42fr, 0.58fr),
  column-gutter: 6pt,
  kachel("kachel-back-case.jpg", [Schulterblatt-Läsion · mitinspizieren]),
  block(
    width: 100%,
    inset: 6pt,
    radius: 2pt,
    fill: rgb("#f8fafc"),
    stroke: 0.4pt + palette.border,
  )[
    #text(size: 7.5pt, weight: "bold", font: fonts.sans, fill: palette.primary-dark)[52 J. · post Diskektomie · Entkleiden]
    #v(2pt)
    #set text(size: 7.4pt)
    Rechte Schulterblatt-Läsion ~8 mm, asymmetrisch, unregelmäßig, mehrfarbig; „schon ewig, juckt manchmal“. \
    *Vordergrund:* ABCDE+ am Rücken → *zuweisen*. \
    *Kontraindiziert:* Destruktion, Bagatellisieren, nur abwarten. \
    *Schritt:* gleichtags/zeitnah Derm/HA; MSK ohne Läsionsmanipulation; 112 nicht bei stabilem AZ.
  ],
)

#v(4pt)
#align(center)[
  #text(size: 7pt, fill: palette.text-muted, font: fonts.sans)[
    Parent V-10 · 9 Kacheln SR PASS · wave-d / R
  ]
]
