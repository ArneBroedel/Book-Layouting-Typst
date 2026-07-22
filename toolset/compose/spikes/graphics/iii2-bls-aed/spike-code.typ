// graphics spike — A (code) v4.1 — clean edges + 4a loop
// Flow: 1→2→3; ja→4a (↻ stabil | ↘ Verschlechterung→4b); nein→4b→5→6

#import "/packages/bookkit/theme.typ": palette
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#set page(width: 175mm, height: auto, margin: (x: 9mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 8.5pt, fill: palette.text-body)
#set par(leading: 0.35em)

#align(center)[
  #text(size: 11pt, weight: "bold", fill: palette.primary-dark)[
    Primär-Algorithmus: Bewusstseinsstörung / Kollaps
  ]
  #v(1.5mm)
  #text(size: 8pt, fill: palette.text-muted)[
    Code-Spike v4.1 (Fletcher) · 4a-Überwachungsschleife · Eskalation → 4b · S4
  ]
]

#v(3mm)

#align(center)[
  #diagram(
    spacing: (14mm, 9mm),
    node-stroke: 0.75pt + palette.text-muted,
    node-inset: 5pt,
    label-size: 7pt,

    node(
      (0, 0),
      align(center)[*1* · Szene sichern\ Handschuhe wenn verfügbar],
      shape: fletcher.shapes.rect,
      fill: palette.bg-subtle,
      corner-radius: 3pt,
    ),
    edge((0, 0), (0, 1), "-|>"),

    node(
      (0, 1),
      align(center)[*2* · Ansprechen + Schmerzreiz\ Atemwege freimachen],
      shape: fletcher.shapes.rect,
      fill: palette.bg-subtle,
      corner-radius: 3pt,
    ),
    edge((0, 1), (0, 2), "-|>"),

    node(
      (0, 2),
      align(center)[*3* · Atmung normal?\ max. *10 s*],
      shape: fletcher.shapes.diamond,
      fill: palette.warning.lighten(82%),
      inset: 6pt,
    ),

    // 4a / 4b nodes before edges that target them
    node(
      (-1.4, 3.5),
      align(center)[*4a* · *Seitenlage* · *112*\ überwachen],
      shape: fletcher.shapes.pill,
      fill: palette.success.lighten(78%),
    ),
    node(
      (1.5, 3.5),
      align(center)[*4b* · *112* · *CPR*\ AED holen lassen],
      shape: fletcher.shapes.pill,
      fill: palette.danger.lighten(78%),
    ),

    // exactly two exits from 3 (colored)
    edge(
      (0, 2), (-1.4, 3.5), "-|>",
      stroke: 1pt + palette.success.darken(5%),
      label: text(fill: palette.success.darken(25%))[*ja*],
      label-side: left,
    ),
    edge(
      (0, 2), (1.5, 3.5), "-|>",
      stroke: 1pt + palette.danger.darken(5%),
      label: text(fill: palette.danger.darken(5%))[*nein / unsicher*],
      label-side: right,
    ),

    // monitoring self-loop on 4a
    edge(
      (-1.4, 3.5), (-1.4, 3.5), "-->",
      bend: 125deg,
      stroke: 0.9pt + palette.success.darken(10%),
      label: text(size: 6.5pt, fill: palette.success.darken(25%))[↻ stabil · weiter überwachen],
      label-side: left,
    ),

    // escalate 4a → 4b only (straight mid-height; bend 0 avoids 5)
    edge(
      (-1.4, 3.5), (1.5, 3.5), "-|>",
      stroke: 1.2pt + palette.danger,
      label: text(size: 6.8pt, fill: palette.danger.darken(5%))[*Verschlechterung*],
      label-side: left,
      label-pos: 0.5,
      label-sep: 2pt,
    ),

    edge((1.5, 3.5), (1.5, 4.6), "-|>", stroke: palette.danger.darken(5%)),

    // 5 / 6 only under 4b
    node(
      (1.5, 4.6),
      align(center)[*5* · CPR *30:2* (Kurs) bzw.\ nur Kompressionen · AED folgen],
      shape: fletcher.shapes.rect,
      fill: palette.danger.lighten(88%),
      corner-radius: 3pt,
    ),
    edge((1.5, 4.6), (1.5, 5.6), "-|>"),

    node(
      (1.5, 5.6),
      align(center)[*6* · Bis *Übergabe RD*\ minimale Pausen],
      shape: fletcher.shapes.rect,
      fill: palette.primary.lighten(85%),
      corner-radius: 3pt,
    ),
  )
]

#v(4mm)
#block(
  width: 100%,
  inset: 6pt,
  fill: palette.bg-subtle,
  radius: 3pt,
  stroke: 0.5pt + palette.border-light,
)[
  #text(size: 7.5pt, fill: palette.text-muted)[
    *Flow (v4.1):* *3* hat genau zwei Ausgänge. *4a* = Überwachen mit
    *↻ stabil · weiter überwachen* und *Verschlechterung → 4b*. *5/6* nur nach *4b*.
  ]
]
