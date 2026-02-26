// chapters/04-graphics.typ
#import "../styles/theme.typ": palette, space, type
#import "../components/admonitions.typ": tip
#import "../components/grids.typ": gallery-grid
#import "../components/spreads.typ": chapter-opener
#import "../components/blocks.typ": callout
#import "../components/inline.typ": badge

#chapter-opener("Grafiken & Visuals", number: "04")

== Bild + Overlay (Label, Pfeile, Fokus)
Du kannst Elemente layern, indem du Boxen uebereinander legst.
Das ist ideal fuer klinische Algorithmen oder Highlight-Grafiken.

#let overlay-demo() = {
  let img = image("../assets/images/placeholder.svg", width: 100%)

  box(
    width: 100%,
    height: 72mm,
    clip: true,
    fill: palette.surface,
    radius: 8pt,
    stroke: (paint: palette.border, thickness: 1pt),
  )[
    #place(top + left, dx: 10pt, dy: 10pt)[
      #box(
        fill: palette.accent,
        radius: 6pt,
        inset: (x: 10pt, y: 6pt),
      )[
        #set text(size: type.small, fill: palette.paper, weight: 700)
        Algorithmus-Fokus
      ]
    ]
    #place(center + horizon)[
      #img
    ]
    #place(bottom + right, dx: -10pt, dy: -10pt)[
      #box(
        fill: palette.good,
        radius: 6pt,
        inset: (x: 8pt, y: 4pt),
      )[
        #set text(size: type.micro, fill: palette.paper, weight: 600)
        Abb. 4.1
      ]
    ]
  ]
}

#overlay-demo()

== Kleine, codierte Diagramme (ohne externes Package)
Typst hat grundlegende Zeichenprimitive. Fuer viele Buchgrafiken reicht das voellig.

#let mini-bar(value, max: 10, label: none, color: palette.accent) = {
  let w = 120pt
  let filled = w * (value / max)
  grid(
    columns: (80pt, 1fr),
    gutter: 8pt,
    align(right)[
      #set text(size: type.small, fill: palette.muted)
      #label
    ],
    stack(
      dir: ltr,
      box(width: filled, height: 12pt, fill: color, radius: (left: 99pt, right: if value == max { 99pt } else { 0pt })),
      box(width: w - filled, height: 12pt, fill: color.lighten(85%), radius: (
        right: 99pt,
        left: if value == 0 { 99pt } else { 0pt },
      )),
    ),
  )
}

#block(fill: palette.surface, inset: space.lg, radius: 8pt, stroke: (paint: palette.border, thickness: 0.5pt))[
  #text(weight: "bold", size: type.lead)[Testguete-Vergleich]
  #v(space.md)
  #mini-bar(8, label: [Sensitivitaet])
  #v(space.sm)
  #mini-bar(4, label: [Spezifitaet], color: palette.warn)
  #v(space.sm)
  #mini-bar(6, label: [Praetest-Relevanz], color: palette.good)
  #v(space.sm)
  #mini-bar(9, label: [Klinischer Nutzen], color: palette.info)
]

#tip[
  Fuer komplexe Diagramme (Flowcharts, Netzwerke) lohnt sich ein spezialisiertes Package.
  Wenn du offline bleiben willst: Zeichne als SVG (Inkscape/Figma) und importiere.
]

== Dynamisches Galerie-Raster

#gallery-grid(
  (
    [Roentgen Thorax],
    [MRT LWS sagittal],
    [Sonografie Schulter],
    [CT Abdomen],
    [Dermatom-Schema],
    [Ganganalyse],
  ),
  columns: 3,
)

#v(space.lg)

#callout(title: "Bildformate im Vergleich", color: palette.info)[
  #grid(
    columns: (1fr, 1fr, 1fr),
    gutter: space.md,
    [
      #badge(color: palette.good)[SVG]
      Vektorgrafik, ideal fuer Schemata. Skaliert verlustfrei.
    ],
    [
      #badge(color: palette.info)[PNG]
      Rastergrafik mit Transparenz. Gut fuer Screenshots.
    ],
    [
      #badge(color: palette.warn)[JPEG]
      Komprimiert, fuer Fotos. Keine Transparenz.
    ],
  )
]


