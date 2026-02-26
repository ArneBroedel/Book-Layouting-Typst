// chapters/04-graphics.typ
#import "../styles/theme.typ": palette, space, type
#import "../components/admonitions.typ": tip

= Grafiken & Visuals: Icons, Overlays, kleine Infografiken

== Bild + Overlay (Label, Pfeile, Fokus)
Du kannst Elemente „layern“, indem du Boxen übereinander legst.
Das ist super für klinische Algorithmen oder „Highlight“-Grafiken.

#let overlay-demo() = {
  let img = image("../assets/images/placeholder.svg", width: 100%)

  box(
    width: 100%,
    height: 72mm,
    clip: true,
    fill: palette.paper.mix(palette.muted),
    radius: 8pt,
    inset: 10pt,
  )[
    #stack(dir: ttb, spacing: 8pt)[
      #align(left)[
        #box(
          fill: palette.ink.mix(palette.paper),
          radius: 8pt,
          inset: (x: 10pt, y: 6pt),
        )[
          #set text(size: type.small, fill: palette.paper, weight: 700)
          Algorithmus-Fokus
        ]
      ]
      #align(center)[#img]
    ]
  ]
}

#overlay-demo()

== Kleine, codierte Diagramme (ohne externes Package)
Typst hat grundlegende Zeichenprimitive. Für viele Buchgrafiken reicht das.

#let mini-bar(value, max: 10, label: none, color: palette.accent) = [
  #let w = 80pt
  #let filled = w * (value / max)
  #grid(columns: (auto, 1fr), gutter: 8pt)[
    [
    #set text(size: type.small, fill: palette.muted)
    #label
    ],
    [
    #box(fill: palette.paper.mix(palette.muted), radius: 99pt, inset: 0pt)[
      #box(width: filled, height: 8pt, fill: color, radius: 99pt)[]
    ]
    ],
  ]
]

#mini-bar(8, label: [Sensitivität])
#mini-bar(4, label: [Spezifität], color: palette.warn)
#mini-bar(6, label: [Prätest-Relevanz], color: palette.good)

#tip[
  Für komplexe Diagramme (Flowcharts, Netzwerke) lohnt sich ein spezialisiertes Package.
  Wenn du offline bleiben willst: Zeichne als SVG (Inkscape/Figma) und importiere.
]

