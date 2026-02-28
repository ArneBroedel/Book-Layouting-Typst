// chapters/18-pinit-showcase.typ — Pinit Showcase

#import "../styles/theme.typ": fonts, palette, space, type-scale
#import "../components/spreads.typ": chapter-opener, section-break
#import "../components/blocks.typ": callout, card, code-block, key-concept, pull-quote, side-note
#import "../components/inline.typ": badge, icon-text, tag
#import "../components/grids.typ": feature-grid, gallery-grid
#import "../components/layouts.typ": comparison-layout
#import "../components/tables.typ": styled-table

#import "@preview/pinit:0.2.2": *

#chapter-opener(
  title: [Pinit Showcase: Absolute Annotationen],
  lead: [
    Dieses Kapitel demonstriert die volle Leistungsfähigkeit des `@preview/pinit` Pakets. Es zeigt Best Practices für das "Anpinnen" von Positionen im Textfluss und deren anschließende absolute Annotation, ohne das Seitenlayout zu sprengen.
  ],
)

== Phase 1: Foundation and Basics

#card(title: [Einfache Highlights und Boxen])[
  #v(2em)

  Ein normaler Textblock mit einem #pin(1)Wort#pin(2) und einem weiteren #pin(3)Begriff#pin(4).

  // 1. ZWINGEND: Eine leere Zeile vor dem Pinit-Aufruf!
  #pinit-highlight(1, 2, fill: rgb(255, 0, 0, 40), radius: 3pt)
  #pinit-rect(3, 4, stroke: 1pt + rgb(0, 0, 255))

  // 2. ZWINGEND: Eine leere Box nach dem Aufruf!
  #box()

  #v(2em)
]

== Phase 2: Complex Vector Pointers

#card(title: [Komplexe Vektoren und Arrays])[
  #v(2em)

  Wir betrachten die Unterschiede zwischen #pin(5)body-dx/dy#pin(6) und #pin(7)offset-dx/dy#pin(8) an einem Array von Pins.

  #pinit-highlight(5, 6, fill: rgb(0, 255, 0, 40), radius: 3pt)
  #pinit-highlight(7, 8, fill: rgb(0, 255, 0, 40), radius: 3pt)

  #pinit-point-from(
    (5, 6, 7, 8),
    pin-dx: 0pt,
    pin-dy: 12pt,
    body-dx: 0pt,
    body-dy: -8pt,
    offset-dx: 20pt,
    offset-dy: 40pt,
    fill: palette.primary,
  )[
    #block(inset: (left: 10pt), width: 140pt)[
      #text(fill: palette.primary, weight: "bold")[
        Koordinaten-Erklärung
      ] \
      body-dx/dy bestimmt den Pfeilvektor. offset-dx/dy verschiebt den Text samt Pfeilanker.
    ]
  ]
  #box()

  #v(6em)
]

== Phase 3: Advanced Integrations

#card(title: [Pinit in Code und Formeln])[
  #v(4em) // Mehr Platz für die Annotationen oberhalb

  Wir können Pinit auch in Formeln anwenden:

  $ #pin(11) x^2 #pin(12) + #pin(13) y^2 #pin(14) = r^2 $

  #pinit-highlight(11, 12, fill: rgb(255, 0, 0, 40))
  #pinit-highlight(13, 14, fill: rgb(0, 0, 255, 40))

  #pinit-point-from(
    (11, 12),
    pin-dx: 0pt,
    pin-dy: 8pt, // Point to bottom
    body-dx: -15pt,
    body-dy: 10pt, // Tail at bottom-left
    offset-dx: -30pt, // Bring it closer to the x^2
    offset-dy: 20pt,
    fill: rgb(255, 0, 0),
  )[
    #text(fill: rgb(255, 0, 0))[x-Koor.]
  ]
  #box()

  #pinit-point-from(
    (13, 14),
    pin-dx: 0pt,
    pin-dy: -12pt,
    body-dx: 15pt,
    body-dy: -10pt, // Tail up-right
    offset-dx: 30pt, // Closer to y^2
    offset-dy: -20pt,
    fill: rgb(0, 0, 255),
  )[
    #text(fill: rgb(0, 0, 255))[y-Koor.]
  ]
  #box()

  #v(4em)

  Pinit in Raw Code Blöcken (via Regex):

  #show raw: it => {
    show regex("pin\d+"): name => pin(int(name.text.slice(3)))
    it
  }

  ```typst
  let x = pin15 10 pin16
  let y = pin17 20 pin18
  ```

  #pinit-highlight(15, 16, fill: rgb(255, 0, 0, 40))
  #pinit-point-from(
    (15, 16),
    pin-dx: 0pt, pin-dy: 5pt,
    body-dx: 40pt, body-dy: 8pt, // Pfeil zieht lang nach rechts-unten
    offset-dx: 90pt, offset-dy: 15pt, // Leicht unter die Code-Box
    fill: rgb(255, 0, 0),
  )[
    #block(inset: (left: 0pt))[Zuweisung 1]
  ]
  #box()

  #v(3em)

  Integration mit Fletcher (Diagramm-Kanten):

  #import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
  #v(1em)

  In einem Diagramm können wir Pins nutzen, um externe Erklärungen anzubinden:
  #v(4em)

  #diagram(
    spacing: 15mm,
    node((0,0), [#pin(20)Diagnose#pin(21)], stroke: 1pt, fill: palette.primary.lighten(90%)),
    node((1,0), [Therapie], stroke: 1pt),
    edge((0,0), (1,0), "-|>"),
  )

  #pinit-point-from(
    (20, 21),
    pin-dy: -5pt, // Spitze zeigt auf Diagnose von oben
    body-dx: 20pt, // Kurzer schwung nach oben rechts
    body-dy: -15pt,
    offset-dx: 40pt, // Text rechts oberhalb der Node platzieren
    offset-dy: -25pt,
    fill: palette.primary,
  )[
    #block(inset: (left: 0pt))[Zentraler Einstiegspunkt]
  ]
  #box()

  #v(2em)
]

#callout(tone: "warning", title: [Troubleshooting & Best Practices])[
  Pinit Elemente werden absolut positioniert und entfliehen dem Standardfluss. Wenn ein Pfeil an einer verwirrten Stelle auftaucht oder Elemente überlappen, prüfen Sie folgende Punkte:
  - *Boilerplate*: Fehlt die Leerzeile vor dem `#pinit-` Aufruf oder das `#box()` danach?
  - *Text-Überlappung*: Nutzen Sie `#block(inset: ...)` um den Text, damit der Pfeil nicht in die Buchstaben schneidet.
  - *Pfeilwinkel falsch*: Setzen Sie `body-dx/dy` auf kleine Werte für den Vektor und nutzen Sie `offset-dx/dy` zum Verschieben des Textblocks.
  - *Platzbedarf*: Pinit verbraucht keinen Platz im normalen Layout. Nutzen Sie `#v(em)` um ausreichend Abstand für nachfolgenden Text zu schaffen.

  Weitere Details im Dokument `Guides/Pinit-Best-Practices.md`.
]
