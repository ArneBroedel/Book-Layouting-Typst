// chapters/06-extreme.typ
#import "../styles/theme.typ": palette, space, type
#import "../components/admonitions.typ": note

= Extrem: „Grenzen des Möglichen“ (ohne InDesign)

Hier kommen Layout-Tricks, die man selten braucht – aber die zeigen, was Typst als Engine kann.

== 1) Zweiseitige Optik (Pseudo-Spreads)
Typst arbeitet seitenbasiert. Ein echtes „Spread-Layout“ wie in InDesign ist anders.
Du kannst aber „Spread-Gefühl“ erzeugen, indem du konsequent Raster und große Flächen nutzt.

#block(
  fill: palette.ink.mix(palette.paper),
  radius: 18pt,
  inset: 18pt,
)[
  #grid(columns: (1fr, 1fr), gutter: 14pt)[
    #block(fill: palette.paper, radius: 10pt, inset: 10pt)[
      #set text(size: 16pt, weight: 900, fill: palette.accent)
      SPREAD LEFT
      #v(8pt)
      #set text(size: type.small, fill: palette.muted)
      Große Fläche, wenig Text, starke Hierarchie.
    ],
    #block(fill: palette.paper, radius: 10pt, inset: 10pt)[
      #set text(size: 16pt, weight: 900, fill: palette.accent)
      SPREAD RIGHT
      #v(8pt)
      #set text(size: type.small, fill: palette.muted)
      Hier könnte eine Tabelle oder ein Algorithmus stehen.
    ],
  ]
]

== 2) „Pinned“ Elemente (gefühlte Sticky Notes)
Hier nutzt du `align` im normalen Textfluss für einen visuellen Marker.
Für echte seiten-/elternrelative Platzierung gibt es `place` (standardmäßig out-of-flow, optional mit `float: true`).

#align(right)[
  #box(fill: palette.good.mix(palette.paper), radius: 10pt, inset: 10pt, stroke: (paint: palette.good, thickness: 1pt))[
    #set text(size: type.small, weight: 700, fill: palette.good)
    QUICK RULE
    #v(4pt)
    #set text(size: type.small, fill: palette.ink)
    Erst Hypothesen sortieren:
    *gefährlich* → *wahrscheinlich* → *harmlos*
  ]
]
#v(space.md)

Der Text fließt weiter ganz normal; der Marker bleibt als rechts ausgerichteter Block im Fluss.

== 3) Bild als Seitenhintergrund (Workbook-Style)
#pagebreak()
#block(
  width: 100%,
  height: 95mm,
  radius: 14pt,
  clip: true,
  inset: 14pt,
  fill: palette.ink.mix(palette.paper),
)[
  #align(center)[
    #image("../assets/images/placeholder.svg", width: 100%)
  ]

  #align(top + left)[
    #box(
      width: 68%,
      fill: palette.ink.mix(palette.paper),
      radius: 12pt,
      inset: 14pt,
      stroke: (paint: palette.paper.mix(palette.muted), thickness: 0.8pt),
    )[
      #set text(fill: palette.paper)
      #text(size: 22pt, weight: 900)[Hintergrundseite]
      #v(6pt)
      #set text(size: type.lead, fill: palette.paper.mix(palette.muted))
      Diese Technik ist für Kapiteltrenner, Übungen oder „Case Cards“ nützlich.
    ]
  ]
]

#v(space.md)
#note[
  Wenn du solche Seiten nutzt, denke an Druck: Hintergrundflächen erhöhen Tintenauftrag.
  Für Offsetdruck ist TAC/Profil relevant (Prepress).
]

== 4) Optional: externe Packages (CeTZ) – wenn du willst
In Typst kannst du Packages verwenden. Das ist mächtig, aber macht dich abhängig von Universe/Versionen.
Wenn du es nutzt, pinne Versionen und baue reproduzierbar.

(Beispiel-Block als Kommentar – aktivieren, wenn du CeTZ nutzt.)

// #import "@preview/cetz:0.4.1": canvas, draw
// #canvas(width: 100%, height: 150pt, {
//   draw.rect((0pt, 0pt), (240pt, 120pt), fill: palette.paper.mix(palette.info))
//   draw.text((16pt, 18pt), "Flowchart-Knoten", size: 12pt)
// })


