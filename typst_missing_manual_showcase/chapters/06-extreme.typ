// chapters/06-extreme.typ
#import "../styles/theme.typ": palette, space, type
#import "../components/admonitions.typ": note
#import "../components/layouts.typ": adaptive-layout
#import "../components/spreads.typ": chapter-opener
#import "../components/blocks.typ": blockquote, callout, card
#import "../components/inline.typ": badge, highlight

#chapter-opener("Grenzen des Moeglichen", number: "06")

Hier kommen Layout-Tricks, die man selten braucht -- aber die zeigen, was Typst als Engine kann.

== 1) Zweiseitige Optik (Pseudo-Spreads)
Typst arbeitet seitenbasiert. Ein echtes Spread-Layout wie in InDesign ist anders.
Du kannst aber ein Spread-Gefuehl erzeugen, indem du konsequent Raster und grosse Flaechen nutzt.

#block(
  fill: palette.ink,
  radius: 12pt,
  inset: 0pt,
  clip: true,
)[
  #grid(
    columns: (1fr, 1fr),
    gutter: 0pt,
    block(fill: palette.accent, inset: 18pt, height: 100pt)[
      #set text(fill: palette.paper)
      #text(size: 22pt, weight: 900, tracking: 1pt)[LINKS]
      #v(8pt)
      #set text(size: type.small)
      Grosse Flaeche, wenig Text, starke Hierarchie.
      Perfekt fuer Kapiteltrenner.
    ],
    block(fill: palette.ink, inset: 18pt, height: 100pt)[
      #set text(fill: palette.paper)
      #text(size: 22pt, weight: 900, tracking: 1pt)[RECHTS]
      #v(8pt)
      #set text(size: type.small, fill: palette.muted)
      Hier koennte eine Tabelle oder ein Algorithmus stehen.
      Kontrast durch Farbwechsel.
    ],
  )
]

== 2) Pinned Elemente (gefuehlte Sticky Notes)
Hier nutzt du `align` im normalen Textfluss fuer einen visuellen Marker.

#align(right)[
  #box(
    fill: palette.good-light,
    radius: 8pt,
    inset: 12pt,
    stroke: (paint: palette.good, thickness: 1.5pt),
    width: 55%,
  )[
    #set text(size: type.small)
    #text(weight: 800, fill: palette.good)[#sym.checkmark.heavy QUICK RULE]
    #v(4pt)
    Erst Hypothesen sortieren:
    #highlight(color: palette.warn-light)[*gefaehrlich*] #sym.arrow.r
    #highlight(color: palette.info-light)[*wahrscheinlich*] #sym.arrow.r
    *harmlos*
  ]
]
#v(space.md)

Der Text fliesst weiter ganz normal; der Marker bleibt als rechts ausgerichteter Block im Fluss.

#blockquote(author: "Sir William Osler")[
  The good physician treats the disease; the great physician treats the patient who has the disease.
]

#pagebreak()
== 3) Bild als Seitenhintergrund (Workbook-Style)
#block(
  width: 100%,
  height: 110mm,
  radius: 0pt,
  clip: true,
  inset: 0pt,
  fill: palette.ink,
)[
  #place(center + horizon)[
    #image("../assets/images/placeholder.svg", width: 100%)
  ]

  #place(bottom + left, dx: 14pt, dy: -14pt)[
    #block(
      width: 65%,
      fill: palette.ink.transparentize(20%),
      radius: 8pt,
      inset: 16pt,
    )[
      #text(size: 22pt, weight: 900, fill: palette.paper)[Hintergrundseite]
      #v(6pt)
      #set text(size: type.lead, fill: palette.paper.transparentize(30%))
      Diese Technik ist fuer Kapiteltrenner, Uebungen oder Case Cards nuetzlich.
    ]
  ]
]

#v(space.lg)

#note[
  Wenn du solche Seiten nutzt, denke an Druck: Hintergrundflaechen erhoehen den Tintenauftrag.
  Fuer Offsetdruck ist TAC/Profil relevant (Prepress).
]

== 4) Adaptives Layout
Mit `layout(size => ...)` kannst du auf die verfuegbare Breite reagieren.

#adaptive-layout(
  [
    #set text(size: type.small)
    *Sidebar-Inhalt*

    Diese Sidebar passt sich an.
    Bei genug Platz: neben dem Text.
    Sonst: darueber.

    #v(space.sm)
    #badge(color: palette.good)[Responsive]
    #badge(color: palette.info)[Adaptiv]
  ],
  [
    *Hauptinhalt*

    Wenn genug Platz ist, wird die Sidebar neben dem Text angezeigt.
    Wenn nicht, wird sie darueber platziert.

    Das ist besonders nuetzlich fuer Materialien, die sowohl am Bildschirm
    als auch gedruckt funktionieren sollen.
  ],
)

== 5) Mehrstufige Hervorhebung

Manchmal brauchst du verschiedene Stufen der Aufmerksamkeit:

#callout(title: "Stufe 1: Information", color: palette.info)[
  Normaler Hinweis -- wichtig, aber nicht dringend.
]

#callout(title: "Stufe 2: Warnung", color: palette.warn)[
  Erhoehte Aufmerksamkeit -- klinisch relevant.
]

#callout(title: "Stufe 3: Kritisch", color: palette.bad)[
  Sofortige Beachtung notwendig -- Red Flag!
]

== 6) Optional: externe Packages (CeTZ)
In Typst kannst du Packages verwenden. Das ist maechtig, aber macht dich abhaengig von Universe/Versionen.
Wenn du es nutzt, pinne Versionen und baue reproduzierbar.

// #import "@preview/cetz:0.4.1": canvas, draw


