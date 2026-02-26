// chapters/03-layout.typ
#import "../styles/theme.typ": palette, space, type

= Layout: Raster, Kapitel-Opener, Marginalien, „magazinige“ Seiten

== Kapitel-Opener (typisch: große Zahl + ruhige Fläche)
#let chapter-opener(n, title, subtitle: none) = [
  #pagebreak()
  #block(
    fill: palette.muted.lighten(88%),
    radius: 16pt,
    inset: 22pt,
  )[
    #align(left)[
      #text(size: 60pt, weight: 900, fill: palette.accent)[#n]
      #v(6pt)
      #text(size: 26pt, weight: 900)[#title]
      #v(6pt)
      #set text(size: type.lead, fill: palette.ink)
      #subtitle
    ]
  ]
  #v(space.xl)
]

#chapter-opener("03", "Layout-Techniken", subtitle: [
  Hier geht es um „buchige“ Seiten, die trotzdem modern wirken:
  klare Raster, wiederkehrende Muster, und Layout, das Denken unterstützt.
])

== Marginalspalte (Randnotizen)
Eine Marginalspalte ist didaktisch Gold: Definitionen, Merksätze, Testgüte – ohne den Fließtext zu zerhacken.

#let margin-note(body) = [
  #box(
    fill: palette.paper.mix(palette.info),
    stroke: (paint: palette.info, thickness: 0.7pt),
    radius: 6pt,
    inset: 8pt,
  )[
    #set text(size: type.small, fill: palette.ink)
    #body
  ]
]

#grid(
  columns: (3fr, 1.2fr),
  gutter: 14pt,
)[
  [
  *Fließtext-Spalte*
  Stell dir vor, du erklärst die Idee „Rule-out Test“.
  Du willst den Gedankengang ruhig und linear halten.

  Dann kommt eine Marginalie, die in 2 Zeilen die Essenz sagt,
  ohne den Lesefluss zu unterbrechen.
  ],
  [
  #margin-note[
    *Rule-out*: Hohe Sensitivität.
    Negatives Ergebnis macht die Diagnose unwahrscheinlich.
  ]
  ],
]

== Full-bleed Optik (ohne echte Beschnittlogik)
Innerhalb des Satzspiegels kannst du starke Abschnittsflächen setzen.
Für echten Beschnitt/Anschnitt brauchst du ein passendes Seiten-Setup und ggf. Prepress.

#block(
  fill: palette.accent.mix(palette.paper),
  inset: 0pt,
  radius: 0pt,
)[
  #align(center)[
    #set text(size: 16pt, fill: palette.paper, weight: 800)
    VISUELLE PAUSENSEITE – Abschnittsmarker
  ]
]

== „Kartenlayout“ für Differentialdiagnosen
#let card(title, body, color: palette.ink) = [
  #block(
    fill: palette.paper,
    radius: 12pt,
    stroke: (paint: color.mix(palette.paper), thickness: 0.8pt),
    inset: 12pt,
  )[
    #text(weight: 800, fill: color)[#title]
    #v(6pt)
    #set text(size: type.small, fill: palette.muted)
    #body
  ]
]

#grid(columns: (1fr, 1fr), gutter: 12pt)[
  #card("Spondyloarthritis", [
    Muster: entzündlich, Morgensteifigkeit, Besserung durch Bewegung.
    Red Flags? Systemisch?
    Frage nach Psoriasis, Uveitis, IBD.
  ], color: palette.bad),
  #card("Facettsyndrom", [
    Muster: mechanisch, Extension/Rotation provoziert.
    Besserung in Flexion, lokal, kein systemischer Kontext.
  ], color: palette.good),
]

