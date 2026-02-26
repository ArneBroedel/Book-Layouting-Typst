// chapters/06-extreme.typ
#import "../styles/theme.typ": palette, space, type
#import "../components/admonitions.typ": note, tip, warn, redflag
#import "../components/figures.typ": fig

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
    [
      #set text(size: 16pt, weight: 900, fill: palette.accent)
      SPREAD LEFT
      #v(8pt)
      #set text(size: type.small, fill: palette.muted)
      Große Fläche, wenig Text, starke Hierarchie.
    ],
    [
      #set text(size: 16pt, weight: 900, fill: palette.accent)
      SPREAD RIGHT
      #v(8pt)
      #set text(size: type.small, fill: palette.muted)
      Hier könnte eine Tabelle oder ein Algorithmus stehen.
    ]
  ]
]

== 2) „Pinned“ Elemente (gefühlte Sticky Notes)
Du platzierst Elemente relativ zur Seite (nicht zum Textfluss) via `place`.
Das ist nützlich für Marker, Kapitel-Icons, oder permanente Reminder.

#place(top + right, dx: -10mm, dy: 6mm)[
  #box(fill: palette.good.mix(palette.paper), radius: 10pt, inset: 10pt, stroke: (paint: palette.good, thickness: 1pt))[
    #set text(size: type.small, weight: 700, fill: palette.good)
    QUICK RULE
    #v(4pt)
    #set text(size: type.small, fill: palette.ink)
    Erst Hypothesen sortieren:  
    *gefährlich* → *wahrscheinlich* → *harmlos*
  ]
]

Der Text fließt weiter ganz normal. Das Overlay bleibt dort.

== 3) Bild als Seitenhintergrund (Workbook-Style)
#pagebreak()
#set page(
  background: image("../assets/images/placeholder.svg", width: 100%, height: 100%),
)

#block(
  fill: palette.paper.mix(palette.ink),
  radius: 14pt,
  inset: 18pt,
)[
  #set text(fill: palette.paper)
  #text(size: 24pt, weight: 900)[Hintergrundseite]
  #v(8pt)
  #set text(size: type.lead, fill: palette.paper.mix(palette.muted))
  Diese Technik ist für Kapiteltrenner, Übungen oder „Case Cards“ nützlich.
]

#note[
Wenn du solche Seiten nutzt, denke an Druck: Hintergrundflächen erhöhen Tintenauftrag.
Für Offsetdruck ist TAC/Profil relevant (Prepress).
]

#pagebreak()
// Hintergrund wieder zurücksetzen:
#set page(background: none)

== 4) Optional: externe Packages (CeTZ) – wenn du willst
In Typst kannst du Packages verwenden. Das ist mächtig, aber macht dich abhängig von Universe/Versionen.
Wenn du es nutzt, pinne Versionen und baue reproduzierbar.

(Beispiel-Block als Kommentar – aktivieren, wenn du CeTZ nutzt.)

// #import "@preview/cetz:0.2.2": canvas, draw
// #canvas(width: 100%, height: 150pt, {
//   draw.rect((0pt, 0pt), (240pt, 120pt), fill: palette.paper.mix(palette.info))
//   draw.text((16pt, 18pt), "Flowchart-Knoten", size: 12pt)
// })


