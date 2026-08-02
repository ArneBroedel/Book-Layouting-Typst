// Form Lab Pass S — Gicht synthesis from matrix winners only
// Winners: C danger/TIME/mimic/case · R+V hot joint · T body tables
// lab: gicht-2026-08 · see comparison/matrix.md

#import "/packages/bookkit/lib.typ": *
#import "@preview/cetz:0.3.4"
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Gicht — Form Lab Pass S", author: "form-lab/gicht-2026-08/S")
#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 14mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Gicht · Form Lab · Pass S (Synthesis)], [C+T+V+R winners only])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(3pt)
    grid(columns: (1fr, auto), [Form Lab · synthesis], counter(page).display("1"))
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

#let foot-mtp() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  line((0, 8), (4, 4), (18, 2), (32, 3), (40, 6), (42, 10), (38, 12), (28, 11), (18, 12), (8, 14), (2, 12), close: true, stroke: 0.8pt + palette.primary-dark, fill: rgb("#f0fdfa"))
  circle((34, 5), radius: 4.2, fill: rgb("#fecaca").transparentize(30%), stroke: 1.2pt + palette.danger)
  circle((34, 5), radius: 1.6, fill: palette.danger, stroke: none)
})

#let time-tier(code, title, bar, fill, action, triggers, solid: false) = {
  block(
    width: 100%,
    radius: 2pt,
    clip: true,
    breakable: false,
    stroke: 0.45pt + bar.lighten(20%),
    fill: fill,
  )[
    #if solid {
      block(width: 100%, inset: (x: 7pt, y: 4pt), fill: bar)[
        #set text(size: 8.2pt, weight: "bold", fill: white, font: fonts.sans)
        #code — #title
      ]
    } else {
      block(width: 100%, inset: (x: 7pt, y: 4pt), fill: fill, stroke: (left: 3.2pt + bar))[
        #text(size: 8.2pt, weight: "bold", fill: bar.darken(10%), font: fonts.sans)[#code — #title]
      ]
    }
    #block(inset: (x: 8pt, y: 4pt))[
      #set text(size: 7.5pt)
      #text(weight: "bold")[Handlung: ] #action
      #v(2pt)
      #for t in triggers [• #t #linebreak()]
    ]
  ]
}

// ── Title + C danger band ─────────────────────────────────────
= Gicht — hochakute Monarthritis und das septische Gelenk

#text(size: 8.5pt, fill: palette.text-muted, font: fonts.sans)[
  Synthesis · Matrix winners: C (chrome) · R/V (recognition) · T (type body)
]

#v(4pt)
#block(
  width: 100%,
  inset: 8pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 4pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
)[
  #set text(size: 9pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  Eine „typische Podagra“ kann eine septische Arthritis maskieren; Kristallnachweis und Gichtanamnese entwarnen _nicht_.
]

// ── Recognition: R atom + V glyph (proven) ────────────────────
== Erkennung — Hot Joint (R + V)

#grid(
  columns: (48mm, 28mm, 1fr),
  column-gutter: 8pt,
  image("/domains/medical/assets/form-lab/gicht-2026-08/R/atom-hot-joint.jpg", width: 46mm),
  align(center + horizon)[#foot-mtp()],
  [
    #set text(size: 8.5pt)
    *Raster-Atom (Pass R):* MTP-I Gestalt — Rötung/Schwellung als Erkennungsanker. \
    *Vektor (Pass V):* Hotspot-Markierung am Fußschema. \
    *Claim-Grenze:* Bilder lehren Gestalt, nicht die Abgrenzung Gicht vs. septisch.
  ],
)

// ── Big Picture type (T) ──────────────────────────────────────
== Big Picture

#set text(size: 8.5pt)
Die Gicht ist klinische Manifestation einer Hyperurikämie mit Natriumuratkristallen. Im Direktzugang dominiert der hochakute Monoarthritis-Anfall — klassisch MTP-I, Stunden-Tempo. HP screent Infekt-/Systemzeichen, triagiert, weist zu; Diagnosesicherung und Anfallstherapie sind ärztlich.

#v(3pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  block(inset: 6pt, fill: rgb("#f0fdfa"), radius: 2pt, stroke: 0.4pt + palette.primary.lighten(30%))[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Risiken]
    #v(2pt)
    #text(size: 7.5pt)[Hyperurikämie; Purine; Alkohol; Diuretika; Adipositas; Niere]
  ],
  block(inset: 6pt, fill: rgb("#fef2f2"), radius: 2pt, stroke: 0.4pt + palette.danger.lighten(40%))[
    #text(size: 8pt, weight: "bold", fill: palette.danger)[Fehllabel]
    #v(2pt)
    #text(size: 7.5pt)[„Nur Gicht“ bei Fieber/Systemik — septisch bis Ausschluss]
  ],
  block(inset: 6pt, fill: rgb("#f8fafc"), radius: 2pt, stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary-dark)[HP-Rolle]
    #v(2pt)
    #text(size: 7.5pt)[Screen · triage · zuweisen — nicht punktieren]
  ],
)

// ── Cues type table (T) ───────────────────────────────────────
== Klinische Hinweise

#table(
  columns: (26mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 0pt, y: 4pt),
  [*Anamnese*], [Hochakuter Mono binnen Stunden; oft MTP-I; Trigger; Fieber? Hautverletzung?],
  [*Beobachtung*], [Rötung, Überwärmung, Schwellung; Systemik-Eindruck],
  [*Untersuchung*], [Schmerz, Belastungsunfähigkeit; keine forcierte Manipulation],
  [*Verlauf*], [Stunden–Tage; polyartikulärer Sturm mit Systemik ≠ gewöhnlicher Schub],
)

// ── Mimic chrome (C) ──────────────────────────────────────────
== Trügerische Erklärungen (C)

#let mrow(a, b) = block(
  width: 100%,
  inset: 5.5pt,
  radius: 2pt,
  stroke: 0.45pt + palette.border,
)[
  #grid(
    columns: (1fr, 12pt, 1.1fr),
    text(size: 7.8pt)[#a],
    align(center)[#text(fill: palette.danger, weight: "bold")[→]],
    text(size: 7.8pt, weight: "bold", fill: palette.danger)[#b],
  )
]
#stack(
  spacing: 3.5pt,
  mrow([„Umgeknickt / Distorsion“], [ohne adäquate Mechanik → Gicht *und* Infekt mitdenken]),
  mrow([„Bekannte Gicht – nur Schub“], [Kristalle entwarnen septisch *nicht*]),
  mrow([„Knie = immer Gicht“], [CPPD häufig; septische Arthritis Must-not-miss]),
)

// ── TIME chrome (C) ───────────────────────────────────────────
== Handeln und Dringlichkeit (C)

#stack(
  spacing: 4pt,
  time-tier(
    "112", "Sofort — Notfalltransport", palette.danger, rgb("#fef2f2"),
    [Abbrechen; Vitalzeichen; *112*; keine Manipulation/Injektion.],
    ([Heißes Gelenk + Fieber/Systemik + AZ↓ / Sepsis-Zeichen], [Polyartikulärer Sturm mit schwerer Systembedrohung]),
    solid: true,
  ),
  time-tier(
    "NA", "Notaufnahme / gleichtags", palette.warning, rgb("#fff7ed"),
    [PT abbrechen; *noch heute* NA; septisch bis Ausschluss; Übergabe dokumentieren.],
    ([Heißes Mono + Belastungsunfähigkeit / stärkster Ruheschmerz (*auch ohne* Fieber)], [Fieber/Systemik auch bei bekannter Gicht], [Nach i.a. Injektion/OP/Trauma; Hochrisiko; Tophi-Infekt]),
  ),
  time-tier(
    "T3", "Zeitnah Arzt", palette.primary-light, rgb("#f8fafc"),
    [Keine endgültige Gichtdiagnose im HP-Setting; Sicherheitsnetz.],
    ([Nur ärztlich eingeordnetes rezidivierendes Muster ohne aktuelles heißes Mono/Systemik],),
  ),
  time-tier(
    "T4", "Behandeln + Sicherheitsnetz", palette.primary, rgb("#f0fdfa"),
    [Schmerzarmer Rahmen; Rückkehrgründe: Fieber, Hitze, polyartikulär.],
    ([Stabil, ärztlich eingeordnet, ohne Red Flags],),
  ),
)

#v(4pt)
#block(
  width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger),
)[
  #set text(size: 7.5pt)
  #text(weight: "bold", fill: palette.danger)[Grenze / Absolute KI: ]
  keine Punktion/i.a. Injektion/Antibiose durch HP; keine forcierte Manipulation am unklaren heißen Gelenk; kein Probebehandeln bei Fieber/Systemik.
]

// ── Case C cards ──────────────────────────────────────────────
== Fall zur Selbstprüfung

#block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: (left: 3pt + palette.primary))[
  #set text(size: 8.3pt)
  *Situation:* 54 J., „wieder Podagra“, MTP-I heiß/rot, unbelastbar, Bier+Thiazid, 38,3 °C, will Mobilisation „wie letzter Schub“.
]

#v(4pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  block(inset: 6pt, fill: rgb("#fef2f2"), radius: 2pt, stroke: 0.4pt + palette.danger.lighten(40%))[
    #text(size: 8pt, weight: "bold", fill: palette.danger)[(1) Vordergrund]
    #v(2pt)
    #text(size: 7.5pt)[Septisch bis Ausschluss; Infekt-Triage]
  ],
  block(inset: 6pt, fill: rgb("#fff7ed"), radius: 2pt, stroke: 0.4pt + palette.warning.lighten(30%))[
    #text(size: 8pt, weight: "bold", fill: palette.warning.darken(10%))[(2) KI]
    #v(2pt)
    #text(size: 7.5pt)[Forcierte Mobilisation; „wie letzter Schub“]
  ],
  block(inset: 6pt, fill: rgb("#f0fdfa"), radius: 2pt, stroke: 0.4pt + palette.primary.lighten(30%))[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[(3) Schritt]
    #v(2pt)
    #text(size: 7.5pt)[Stopp · NA/112 · Übergabe]
  ],
)

#v(6pt)

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

// Density fill — prevent orphan last page (Form Lab craft gate)
#block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.45pt + palette.border)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.primary)[Scan-Recap (Medium-Ende): ]
  Learner jobs der Pins noch einmal im Raster/Typografie-Gefüge: Danger → Erkennung → Mimic → Handlung → Grenze. Keine neuen Claims.
]
#v(4pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: (left: 3pt + palette.danger))[
    #set text(size: 7.8pt)
    #text(weight: "bold", fill: palette.danger)[Grenze]
    #v(2pt)
    Keine Claim-Erfindung im Bild; Safety-Text außerhalb Raster/Vektor.
  ],
  block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#f0fdfa"), stroke: (left: 3pt + palette.primary))[
    #set text(size: 7.8pt)
    #text(weight: "bold", fill: palette.primary)[Transfer]
    #v(2pt)
    Mini-Fall beantwortet: Vordergrund · KI · sicherer Schritt.
  ],
)
#v(4pt)
#align(center)[
  #text(size: 7.5pt, fill: palette.text-muted)[
    Form Lab Pass S · winners only from T/C/V/R matrix · not production Accept
  ]
]
