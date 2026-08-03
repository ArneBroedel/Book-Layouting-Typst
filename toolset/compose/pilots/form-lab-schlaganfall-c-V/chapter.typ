// Form Lab Pass V (c-wave) — Schlaganfall · many small vector glyphs (CeTZ)
// lab: schlaganfall-2026-08-c · pin: chapter-v-4-schlaganfall.md
// ALLOW: many small vectors · DENY: mega-infographic, raster heroes, caption-rescued doodles

#import "/packages/bookkit/lib.typ": *
#import "@preview/cetz:0.3.4"
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Schlaganfall — Form Lab Pass V (c-wave)", author: "form-lab/schlaganfall-2026-08-c/V")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Schlaganfall · Form Lab c · Pass V (Vector)], [viele kleine Vektor-Kacheln])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [Form Lab · vector · wave c], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.4pt)
#set par(leading: 0.56em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 14pt, weight: "bold", fill: palette.primary-dark)
  block(below: 4pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10pt, weight: "bold", fill: palette.primary)
  block(below: 4pt, above: 7pt)[
    #it.body
    #v(1.5pt)
    #line(length: 20mm, stroke: 1pt + palette.primary)
  ]
}

// ── Vector library (thumbnail-legible, many small glyphs) ─────

// Face with clear unilateral left mouth droop (reader sees asymmetry)
#let face-droop(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  // head oval
  circle((0, 1), radius: (9.8, 11.8), fill: rgb("#fef3c7"), stroke: 1.1pt + palette.primary-dark)
  // eyes (level)
  circle((-3.4, 4.4), radius: 1.2, fill: white, stroke: 0.75pt + palette.primary-dark)
  circle((3.4, 4.4), radius: 1.2, fill: white, stroke: 0.75pt + palette.primary-dark)
  circle((-3.4, 4.4), radius: 0.48, fill: palette.primary-dark, stroke: none)
  circle((3.4, 4.4), radius: 0.48, fill: palette.primary-dark, stroke: none)
  // brows level
  line((-5.2, 6.5), (-1.5, 6.2), stroke: 0.9pt + palette.primary-dark)
  line((1.5, 6.2), (5.2, 6.5), stroke: 0.9pt + palette.primary-dark)
  // nose
  line((0, 3.0), (0, 0.4), stroke: 0.6pt + palette.text-muted)
  // mouth: continuous curve — right half near horizontal, left half drops hard (classic droop)
  // right intact corner
  line((0.3, -2.1), (4.6, -1.6), stroke: 1.45pt + palette.primary-dark)
  // left drooping corner (longer, steeper, red)
  line((0.3, -2.1), (-2.2, -3.0), (-5.2, -5.6), stroke: 1.7pt + palette.danger)
  // lower lip sag (left)
  line((-1.0, -2.8), (-4.8, -5.0), stroke: 1.0pt + palette.danger.lighten(15%))
  // left nasolabial flatten cue
  line((-2.8, 0.2), (-5.5, -3.8), stroke: 0.85pt + palette.danger)
  // laterality cue
  content((-12.2, 9.5), text(size: 7pt, weight: "bold", fill: palette.danger, font: fonts.sans)[↓])
})

// Arm drift: two outstretched arms, left arm lower
#let arm-drift(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  // torso
  rect((-3.5, -4), (3.5, 6), radius: 1.2, fill: rgb("#e0f2fe"), stroke: 0.85pt + palette.primary-dark)
  // head
  circle((0, 9), radius: 3.0, fill: rgb("#fef3c7"), stroke: 0.85pt + palette.primary-dark)
  // right arm horizontal (intact)
  line((3.5, 4.5), (14, 5.0), stroke: 2.1pt + palette.primary-dark)
  circle((14.5, 5.0), radius: 1.3, fill: rgb("#fef3c7"), stroke: 0.7pt + palette.primary-dark)
  // left arm drifting down
  line((-3.5, 4.5), (-13, -1.5), stroke: 2.2pt + palette.danger)
  circle((-13.6, -2.0), radius: 1.3, fill: rgb("#fecaca"), stroke: 0.75pt + palette.danger)
  // drift arrow
  line((-10, 3.5), (-12.5, -0.5), mark: (end: ">", fill: palette.danger), stroke: 1.0pt + palette.danger)
})

// Speech mark: face + broken speech output (not just abstract zigzags)
#let speech-mark(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  // face front (speech job: mouth + output)
  circle((-6.5, 1), radius: 7.2, fill: rgb("#fef3c7"), stroke: 1.0pt + palette.primary-dark)
  circle((-8.8, 3.2), radius: 0.9, fill: palette.primary-dark, stroke: none)
  circle((-4.2, 3.2), radius: 0.9, fill: palette.primary-dark, stroke: none)
  // open mouth trying to speak
  circle((-6.5, -2.2), radius: (2.4, 1.55), fill: rgb("#fecaca"), stroke: 0.9pt + palette.danger)
  // speech rays that fragment (broken language)
  line((-1.5, 2), (4, 5), stroke: 1.15pt + palette.primary-dark)
  line((-1.2, 0.5), (5.5, 1.2), stroke: 1.15pt + palette.danger)
  line((-1.5, -1.2), (4.5, -3.5), stroke: 1.15pt + palette.danger)
  // X on third ray = failed articulation
  line((3.2, -2.2), (5.8, -4.8), stroke: 1.3pt + palette.danger)
  line((3.2, -4.8), (5.8, -2.2), stroke: 1.3pt + palette.danger)
})

// Clock / last-seen: clock face with highlighted window
#let clock-lyse(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  circle((0, 0), radius: 11, fill: white, stroke: 1.15pt + palette.primary-dark)
  // 4.5h window arc (danger sector ~135deg)
  arc((0, 0), start: 90deg, stop: -45deg, radius: 9.2, stroke: 3.2pt + palette.danger.transparentize(25%))
  // ticks
  for a in range(0, 12) {
    let rad = (90deg - a * 30deg)
    let x0 = calc.cos(rad) * 8.5
    let y0 = calc.sin(rad) * 8.5
    let x1 = calc.cos(rad) * 10.2
    let y1 = calc.sin(rad) * 10.2
    line((x0, y0), (x1, y1), stroke: 0.7pt + palette.primary-dark)
  }
  // hands near "late"
  line((0, 0), (0, 6.5), stroke: 1.4pt + palette.primary-dark)
  line((0, 0), (5.5, -3.2), stroke: 1.2pt + palette.danger)
  circle((0, 0), radius: 0.9, fill: palette.danger, stroke: none)
  content((0, -14), text(size: 5.5pt, weight: "bold", fill: palette.danger, font: fonts.sans)[< 4,5 h])
})

// Phone 112
#let phone-112(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  rect((-6, -10), (6, 10), radius: 1.6, fill: rgb("#0f172a"), stroke: 0.9pt + palette.primary-dark)
  rect((-4.5, -6), (4.5, 7.5), radius: 0.6, fill: rgb("#fef2f2"), stroke: none)
  content((0, 1.5), text(size: 9pt, weight: "bold", fill: palette.danger, font: fonts.sans)[112])
  circle((0, -8), radius: 1.1, fill: rgb("#94a3b8"), stroke: none)
})

// Ban HWS manip: cervical spine simple + ban
#let ban-hws(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  // neck / cervical blocks
  for (i, y) in ((0, 6), (1, 2), (2, -2), (3, -6)) {
    rect((-4.5, y - 1.6), (4.5, y + 1.6), radius: 0.5, fill: rgb("#e0f2fe"), stroke: 0.75pt + palette.primary-dark)
  }
  // head on top
  circle((0, 11), radius: 3.4, fill: rgb("#fef3c7"), stroke: 0.8pt + palette.primary-dark)
  // ban circle
  circle((0, 1), radius: 13.5, stroke: 1.55pt + palette.danger)
  line((-9.5, -9.0), (9.5, 11.0), stroke: 1.6pt + palette.danger)
})

// TIA remitted: solid deficit → dashed/faded
#let tia-fade(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  // solid figure (onset)
  circle((-8, 6), radius: 2.4, fill: rgb("#fef3c7"), stroke: 0.75pt + palette.primary-dark)
  rect((-10, -2), (-6, 4), radius: 0.6, fill: rgb("#e0f2fe"), stroke: 0.7pt + palette.primary-dark)
  line((-10, 2), (-14, -1), stroke: 1.5pt + palette.danger)
  // arrow time
  line((-3, 2), (2, 2), mark: (end: ">"), stroke: 1.0pt + palette.text-muted)
  // faded figure (remitted) still danger ring
  circle((9, 6), radius: 2.4, fill: rgb("#fef3c7").transparentize(40%), stroke: (paint: palette.primary-dark, dash: "dashed", thickness: 0.75pt))
  rect((7, -2), (11, 4), radius: 0.6, fill: rgb("#e0f2fe").transparentize(40%), stroke: (paint: palette.primary-dark, dash: "dashed", thickness: 0.7pt))
  line((7, 2), (3.5, -1), stroke: (paint: palette.danger, dash: "dashed", thickness: 1.3pt))
  circle((9, 1), radius: 10, stroke: 1.2pt + palette.danger)
  content((9, -12), text(size: 5pt, weight: "bold", fill: palette.danger, font: fonts.sans)[≠ Entwarnung])
})

// Balance / eyes (BE-FAST)
#let be-fast-cue(sc: 1) = cetz.canvas(length: 1mm * sc, {
  import cetz.draw: *
  // figure leaning (balance)
  circle((0, 10), radius: 2.6, fill: rgb("#fef3c7"), stroke: 0.75pt + palette.primary-dark)
  line((0, 7.2), (-2, -2), stroke: 1.5pt + palette.primary-dark)
  line((-2, -2), (-5, -9), stroke: 1.3pt + palette.primary-dark)
  line((-2, -2), (2, -9), stroke: 1.3pt + palette.primary-dark)
  line((-1, 3), (-6, 6), stroke: 1.2pt + palette.primary-dark)
  line((-1, 3), (4, 1), stroke: 1.2pt + palette.primary-dark)
  // sway arc
  arc((0, -2), start: 200deg, stop: 340deg, radius: 8, stroke: (paint: palette.warning, dash: "dashed", thickness: 1.0pt))
  // eye pair inset
  circle((9, 8), radius: 3.2, fill: white, stroke: 0.8pt + palette.info)
  circle((9, 8), radius: 1.1, fill: palette.info, stroke: none)
  content((9, 3.5), text(size: 5pt, weight: "bold", fill: palette.info, font: fonts.sans)[Eyes])
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
    #set text(size: 6.2pt, fill: palette.text-muted, font: fonts.sans)
    #cap
  ]
]

// ── Chapter ───────────────────────────────────────────────────
= Schlaganfall und TIA — Vektor-Kacheln

#text(size: 8pt, fill: palette.text-muted, font: fonts.sans)[
  Pass V: viele *kleine* CeTZ-Kacheln · Claims im Typst · kein Mega-Poster · Kachel-Captions (keine „Atom“-Labels)
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
  Verdacht → *112* / Stroke-Unit. Kein MSK-Abwarten · keine HWS-Manipulation · TIA auch remittiert = Notfall.
]

== FAST — Erkennung (Vektor)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 5pt,
  glyph-card(face-droop(sc: 1.08), [Face · einseitiger Mundwinkel-Hang]),
  glyph-card(arm-drift(sc: 1.02), [Arm · Drift im Halteversuch]),
  glyph-card(speech-mark(sc: 1.05), [Speech · Sprechen gestört / abgebrochen]),
  glyph-card(clock-lyse(sc: 1.02), [Time · Last seen · Lysefenster]),
)

== Dringlichkeit · Grenze

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 5pt,
  glyph-card(phone-112(sc: 1.0), [112 · Notruf · Stroke-Unit]),
  glyph-card(ban-hws(sc: 0.95), [Ban · keine HWS-Manipulation]),
  glyph-card(tia-fade(sc: 0.95), [TIA · Remission ≠ Entwarnung]),
  glyph-card(be-fast-cue(sc: 0.95), [BE-FAST · Balance + Eyes]),
)

== Handlung · Typ + Vektor-Bezug

#grid(
  columns: (1.2fr, 1fr),
  column-gutter: 8pt,
  table(
    columns: (18mm, 1fr),
    stroke: 0.4pt + palette.border,
    inset: 4.5pt,
    fill: (_, y) => if y == 0 { rgb("#fef2f2") } else if y == 1 { rgb("#fff7ed") } else { rgb("#ecfdf5") },
    text(weight: "bold", size: 7.5pt, fill: palette.danger)[112], text(size: 7.4pt)[FAST ≥ 1 plötzlich; Schwindel+fokal; TIA auch remittiert → Sitzung beenden, Patient sichern, Notruf],
    text(weight: "bold", size: 7.5pt, fill: rgb("#c2410c"))[NA], text(size: 7.4pt)[Nur ohne Akut-Dynamik / ohne 112-Kriterien, langsam progredient → PT aussetzen bis Klärung],
    text(weight: "bold", size: 7.5pt, fill: rgb("#0f766e"))[PT], text(size: 7.4pt)[Nur gesicherte MSK-Ursache ohne Red Flags; nach Freigabe aus Akutphase],
  ),
  block(inset: 6pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 7.6pt, weight: "bold", font: fonts.sans, fill: palette.primary-dark)[Mimics (Text, nicht Vektor-Held)]
    #v(2pt)
    #set text(size: 7.3pt)
    *Fazialis:* Stirn-Check. *HWS-Schwindel:* zentral zuerst. *Migräne-Aura:* Unsicherheit = Notfallpfad. *Schulter-Arm:* apoplektiform + fokal = Hemiparese bis Ausschluss.
  ],
)

== Mini-Fall · Transfer

#grid(
  columns: (auto, auto, auto, 1fr),
  column-gutter: 6pt,
  align(horizon)[#face-droop(sc: 0.72)],
  align(horizon)[#arm-drift(sc: 0.68)],
  align(horizon)[#ban-hws(sc: 0.68)],
  [
    #set text(size: 7.8pt)
    *67 J.* · „steife HWS + Schwindel“ · vor ~40 min linke Hand „weg“ + undeutliche Sprache — fast remittiert · Hypertonie · wünscht HWS-Mobilisation. \
    *Vordergrund:* TIA-Verdacht (Remission entwarnt nicht). *Kontraindiziert:* HWS-Manipulation. *Schritt:* *112* / Stroke-Unit; Last seen normal übergeben.
  ],
)

#v(5pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  block(inset: 5pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: (left: 2.5pt + palette.danger))[
    #text(size: 7.4pt, weight: "bold", fill: palette.danger)[Last seen normal]
    #v(2pt)
    #text(size: 7.2pt)[Zuletzt völlig beschwerdefrei. Uhr für Lysefenster (< 4,5 h).]
  ],
  block(inset: 5pt, radius: 2pt, fill: rgb("#fff7ed"), stroke: (left: 2.5pt + palette.warning))[
    #text(size: 7.4pt, weight: "bold", fill: rgb("#c2410c"))[Posterior]
    #v(2pt)
    #text(size: 7.2pt)[Schwindel/Ataxie/Sehstörung: BE-FAST sensibilisiert; FAST allein unempfindlich.]
  ],
  block(inset: 5pt, radius: 2pt, fill: rgb("#f0fdfa"), stroke: (left: 2.5pt + palette.primary))[
    #text(size: 7.4pt, weight: "bold", fill: palette.primary)[Screening ≠ Ausschluss]
    #v(2pt)
    #text(size: 7.2pt)[FAST positiv → Notruf. Negativ schließt Posterior-Infarkt nicht aus.]
  ],
)

#v(5pt)
#align(center)[
  #text(size: 7pt, fill: palette.text-muted, font: fonts.sans)[
    Vektoren lehren Gestalt/Relation · Foto-Realismus → Pass R · reine Typo → Pass T
  ]
]
