// Form Lab Pass S (c-wave) — Schlaganfall · Synthesis from matrix winners only
// lab: schlaganfall-2026-08-c · winners: C danger/TIME/mimics/case · V glyphs F/A/S/T/ban/TIA · R face+arm · T Lyse type
// DENY: FAIL mounts, redundant face stack, untested media, layout quotas

#import "/packages/bookkit/lib.typ": *
#import "@preview/cetz:0.3.4"
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Schlaganfall — Form Lab Pass S (c-wave)", author: "form-lab/schlaganfall-2026-08-c/S")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Schlaganfall · Form Lab c · Pass S (Synthesis)], [winners only · matrix])
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
#set text(size: 8.3pt)
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
    #line(length: 18mm, stroke: 1pt + palette.primary)
  ]
}

#let asset-root = "/domains/medical/assets/form-lab/schlaganfall-2026-08-c/R/"

#let soft(title, body, bar: palette.primary, fill: rgb("#f0fdfa")) = block(
  width: 100%,
  inset: (left: 6pt, rest: 4pt),
  radius: 2pt,
  fill: fill,
  stroke: (left: 3pt + bar, rest: 0.35pt + bar.lighten(45%)),
)[
  #text(size: 7.4pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
  #v(1pt)
  #set text(size: 7.1pt)
  #body
]

#let time-tier(code, title, bar, fill, body) = block(
  width: 100%,
  inset: 0pt,
  radius: 2pt,
  clip: true,
  stroke: 0.4pt + bar.lighten(30%),
)[
  #grid(
    columns: (16mm, 1fr),
    block(width: 100%, fill: bar, inset: (x: 2pt, y: 6pt))[
      #align(center)[#text(size: 8pt, weight: "bold", fill: white, font: fonts.sans)[#code]]
    ],
    block(width: 100%, fill: fill, inset: 5pt)[
      #text(size: 7.4pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
      #v(1pt)
      #set text(size: 7pt)
      #body
    ],
  )
]

// Winner V glyphs (subset — no redundant face vs R photo)
#let speech-mark(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  circle((-6.5, 1), radius: 6.5, fill: rgb("#fef3c7"), stroke: 0.95pt + palette.primary-dark)
  circle((-8.5, 3.0), radius: 0.85, fill: palette.primary-dark, stroke: none)
  circle((-4.5, 3.0), radius: 0.85, fill: palette.primary-dark, stroke: none)
  circle((-6.5, -2.0), radius: (2.2, 1.4), fill: rgb("#fecaca"), stroke: 0.85pt + palette.danger)
  line((-1.2, 2), (3.5, 4.5), stroke: 1.05pt + palette.primary-dark)
  line((-1.0, 0.4), (4.5, 1.0), stroke: 1.05pt + palette.danger)
  line((-1.2, -1.0), (3.8, -3.0), stroke: 1.05pt + palette.danger)
  line((2.6, -1.8), (4.8, -4.0), stroke: 1.2pt + palette.danger)
  line((2.6, -4.0), (4.8, -1.8), stroke: 1.2pt + palette.danger)
})

#let clock-lyse(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  circle((0, 0), radius: 9.5, fill: white, stroke: 1.05pt + palette.primary-dark)
  arc((0, 0), start: 90deg, stop: -45deg, radius: 7.8, stroke: 2.8pt + palette.danger.transparentize(25%))
  for a in range(0, 12) {
    let rad = (90deg - a * 30deg)
    line((calc.cos(rad) * 7.2, calc.sin(rad) * 7.2), (calc.cos(rad) * 8.8, calc.sin(rad) * 8.8), stroke: 0.65pt + palette.primary-dark)
  }
  line((0, 0), (0, 5.5), stroke: 1.25pt + palette.primary-dark)
  line((0, 0), (4.5, -2.6), stroke: 1.1pt + palette.danger)
  circle((0, 0), radius: 0.75, fill: palette.danger, stroke: none)
  content((0, -12), text(size: 5pt, weight: "bold", fill: palette.danger, font: fonts.sans)[< 4,5 h])
})

#let ban-hws(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  for y in (5, 1.5, -2, -5.5) {
    rect((-3.8, y - 1.35), (3.8, y + 1.35), radius: 0.4, fill: rgb("#e0f2fe"), stroke: 0.7pt + palette.primary-dark)
  }
  circle((0, 9.2), radius: 2.9, fill: rgb("#fef3c7"), stroke: 0.75pt + palette.primary-dark)
  circle((0, 0.5), radius: 11.5, stroke: 1.4pt + palette.danger)
  line((-8.0, -7.5), (8.0, 9.0), stroke: 1.45pt + palette.danger)
})

#let tia-fade(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  circle((-7, 5), radius: 2.1, fill: rgb("#fef3c7"), stroke: 0.7pt + palette.primary-dark)
  rect((-8.8, -1.5), (-5.2, 3.2), radius: 0.5, fill: rgb("#e0f2fe"), stroke: 0.65pt + palette.primary-dark)
  line((-8.8, 1.5), (-12, -1), stroke: 1.35pt + palette.danger)
  line((-2.5, 1.5), (1.5, 1.5), mark: (end: ">"), stroke: 0.9pt + palette.text-muted)
  circle((8, 5), radius: 2.1, fill: rgb("#fef3c7").transparentize(40%), stroke: (paint: palette.primary-dark, dash: "dashed", thickness: 0.7pt))
  rect((6.2, -1.5), (9.8, 3.2), radius: 0.5, fill: rgb("#e0f2fe").transparentize(40%), stroke: (paint: palette.primary-dark, dash: "dashed", thickness: 0.65pt))
  circle((8, 1), radius: 8.5, stroke: 1.1pt + palette.danger)
  content((8, -10), text(size: 4.5pt, weight: "bold", fill: palette.danger, font: fonts.sans)[≠ Entwarnung])
})

#let phone-112(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  rect((-5, -8.5), (5, 8.5), radius: 1.4, fill: rgb("#0f172a"), stroke: 0.8pt + palette.primary-dark)
  rect((-3.8, -5), (3.8, 6.2), radius: 0.5, fill: rgb("#fef2f2"), stroke: none)
  content((0, 1.2), text(size: 8pt, weight: "bold", fill: palette.danger, font: fonts.sans)[112])
  circle((0, -6.8), radius: 0.95, fill: rgb("#94a3b8"), stroke: none)
})

#let gcard(body, cap) = block(
  width: 100%,
  inset: 3pt,
  radius: 2pt,
  stroke: 0.35pt + palette.border,
  fill: white,
)[
  #align(center)[#body]
  #v(1.5pt)
  #align(center)[#text(size: 5.8pt, fill: palette.text-muted, font: fonts.sans)[#cap]]
]

// ── Title ─────────────────────────────────────────────────────
= Schlaganfall und TIA — Synthesis (winners)

#text(size: 7.6pt, fill: palette.text-muted, font: fonts.sans)[
  Pass S: C-Chrome · V-Vektor (Speech/Time/Ban/TIA) · R-Foto (Face/Arm) · T-Claims · kein FAIL-Speech-Raster
]

#v(2pt)
#block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  Jeder plausible Verdacht → *sofort 112* und Stroke-Unit-Pfad. Kein MSK-Abwarten, keine HWS-Manipulation, kein „erstmal mobilisieren“. TIA auch remittiert = Notfall.
]

== FAST — Erkennung (R Foto + V Speech/Time)

#grid(
  columns: (1fr, 1fr, 0.85fr, 0.85fr),
  column-gutter: 5pt,
  block(width: 100%, inset: 2pt, radius: 2pt, stroke: 0.35pt + palette.border)[
    #image(asset-root + "kachel-face-droop.jpg", width: 100%)
    #v(1pt)
    #align(center)[#text(size: 5.8pt, fill: palette.text-muted, font: fonts.sans)[Face · R-Gestalt]]
  ],
  block(width: 100%, inset: 2pt, radius: 2pt, stroke: 0.35pt + palette.border)[
    #image(asset-root + "kachel-arm-drift.jpg", width: 100%)
    #v(1pt)
    #align(center)[#text(size: 5.8pt, fill: palette.text-muted, font: fonts.sans)[Arm · R-Gestalt]]
  ],
  gcard(speech-mark(sc: 0.95), [Speech · V-Vektor]),
  gcard(clock-lyse(sc: 0.95), [Time · Last seen · Lyse]),
)

#v(2pt)
#text(size: 7.2pt)[
  *BE-FAST:* Balance + Eyes sensibilisieren den posterioren Kreislauf — ersetzen die *112-Logik* nicht. FAST ≥ 1 mit plötzlichem Beginn → Notruf.
]

== Dringlichkeit · Grenze (C TIME + V glyphs)

#grid(
  columns: (1.25fr, 0.55fr, 0.55fr),
  column-gutter: 5pt,
  [
    #time-tier("112", "Sofort · Stroke-Unit", palette.danger, rgb("#fef2f2"), [FAST-positiv plötzlich · halbseitige Sensibilitäts-/Sehstörung · Schwindel + fokal · TIA-ähnlich (auch remittiert, bes. 48 h). Sitzung beenden; Patient sichern; *112*.])
    #v(2pt)
    #time-tier("NA", "Ohne 112-Kriterien", palette.warning, rgb("#fffbeb"), [Nur ohne Akut-Dynamik; langsam progredient → PT aussetzen bis Klärung. Verschlechterung → *112*.])
    #v(2pt)
    #time-tier("PT", "Behandeln", palette.success, rgb("#f0fdf4"), [Nur gesicherte MSK-Ursache ohne Red Flags; nach Freigabe aus Akutphase.])
  ],
  gcard(phone-112(sc: 0.9), [112]),
  gcard(ban-hws(sc: 0.85), [keine HWS]),
)

== TIA · Mimics (V + C)

#grid(
  columns: (0.7fr, 1.3fr),
  column-gutter: 6pt,
  gcard(tia-fade(sc: 0.95), [TIA · Remission ≠ Entwarnung]),
  grid(
    columns: (1fr, 1fr),
    column-gutter: 4pt,
    row-gutter: 3pt,
    soft("„Periphere Fazialis“", [Stirn-Check. Zentral: Stirn oft erhalten + Begleitdefizite → Schlaganfallpfad.], bar: palette.warning, fill: rgb("#fffbeb")),
    soft("„HWS-Blockade“", [Schwindel + fokal/Ataxie → zentral zuerst. *Keine* Mobilisation.], bar: palette.warning, fill: rgb("#fffbeb")),
    soft("„Migräne-Aura“", [Unsicherheit = Notfallpfad; keine Selbst-Entwarnung.], bar: palette.warning, fill: rgb("#fffbeb")),
    soft("„Schulter-Arm“", [Apoplektiform + fokal = Hemiparese bis Ausschluss.], bar: palette.warning, fill: rgb("#fffbeb")),
  ),
)

== Mini-Fall · Transfer

#grid(
  columns: (0.32fr, 1fr),
  column-gutter: 7pt,
  block(width: 100%, inset: 2pt, radius: 2pt, stroke: 0.35pt + palette.border)[
    #image(asset-root + "kachel-face-droop.jpg", width: 100%)
  ],
  [
    #set text(size: 7.6pt)
    *67 J.* · „steife HWS + Schwindel“ · vor ~40 min linke Hand „weg“ + undeutliche Sprache — fast remittiert · Hypertonie · wünscht HWS-Mobilisation.
    #v(3pt)
    #grid(
      columns: (1fr, 1fr, 1fr),
      column-gutter: 4pt,
      soft("Vordergrund", [TIA-Verdacht. Remission entwarnt *nicht*.], bar: palette.danger, fill: rgb("#fef2f2")),
      soft("Kontraindiziert", [HWS-Mobilisation, Provokationstests.], bar: palette.warning, fill: rgb("#fffbeb")),
      soft("Schritt", [*Sofort 112* / Stroke-Unit. Last seen normal übergeben.], bar: palette.primary, fill: rgb("#f0fdfa")),
    )
  ],
)

#v(4pt)
#align(center)[
  #text(size: 6.6pt, fill: palette.text-muted, font: fonts.sans)[
    Matrix winners only · Parent V-4 · FAST ≥ 1 → 112 · TIA = Notfall · keine HWS-Manipulation
  ]
]
