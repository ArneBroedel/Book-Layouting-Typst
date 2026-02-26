// chapters/03-layout.typ
#import "../styles/theme.typ": palette, space, type
#import "../components/spreads.typ": chapter-opener
#import "../components/layouts.typ": magazine-layout, sidebar-layout
#import "../components/blocks.typ": card, pull-quote, side-note
#import "../components/inline.typ": badge

#chapter-opener("Layout-Techniken", number: "03")

Hier geht es um Seiten mit Buchcharakter, die trotzdem modern wirken:
klare Raster, wiederkehrende Muster, und Layout, das Denken unterstützt.

== Marginalspalte (Randnotizen)
Eine Marginalspalte ist didaktisch Gold wert: Definitionen, Merksätze, Testgüte -- ohne den Fliesstext zu zerhacken.

#side-note(
  [
    *Fliesstext-Spalte*

    Stell dir vor, du erklaerst die Idee eines #badge[Rule-out Tests].
    Du willst den Gedankengang ruhig und linear halten.

    Dann kommt eine Marginalie, die in 2 Zeilen die Essenz sagt,
    ohne den Lesefluss zu unterbrechen.

    Das Prinzip: Haupttext bleibt frei von Details,
    die nur Fortgeschrittene brauchen. Aber sie sind _da_.
  ],
  [
    *Rule-out*: Hohe Sensitivitaet.
    Negatives Ergebnis macht die Diagnose unwahrscheinlich.

    #v(space.sm)
    *Rule-in*: Hohe Spezifitaet.
    Positives Ergebnis macht die Diagnose wahrscheinlich.
  ],
)

== Full-bleed Optik
Innerhalb des Satzspiegels kannst du starke Abschnittsflaechen setzen.
Fuer echten Beschnitt brauchst du ein passendes Seiten-Setup und ggf. Prepress.

#block(
  width: 100%,
  fill: palette.accent,
  inset: space.xl,
  radius: 4pt,
)[
  #align(center)[
    #set text(size: 16pt, fill: palette.paper, weight: 800, tracking: 2pt)
    VISUELLE PAUSENSEITE
    #v(space.sm)
    #set text(size: type.small, weight: 400, tracking: 0pt)
    Solche Marker trennen Abschnitte und geben dem Auge Rhythmus.
  ]
]

== Kartenlayout fuer Differentialdiagnosen

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  card(title: "Spondyloarthritis", accent: palette.info)[
    Muster: entzuendlich, Morgensteifigkeit, Besserung durch Bewegung.
    Red Flags? Systemisch?
    Frage nach Psoriasis, Uveitis, IBD.
  ],
  card(title: "Mechanischer Rueckenschmerz", accent: palette.warn)[
    Muster: belastungsabhaengig, Besserung in Ruhe.
    Keine systemischen Zeichen.
  ],
)

#v(space.md)

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  card(title: "Viszeraler Uebertragungsschmerz", accent: palette.bad)[
    Unabhaengig von Bewegung oder Haltung.
    Vegetative Begleitsymptome moeglich.
    Immer: Red-Flag-Screening.
  ],
  card(title: "Neurogener Schmerz", accent: palette.good)[
    Dermatomal oder peripher-neural.
    Provokation durch mechanische Nerventests.
    DD: zentral vs. peripher.
  ],
)

== Sidebar-Layout

Das klassische Sidebar-Layout eignet sich fuer Definitionen neben dem Haupttext:

#sidebar-layout(
  [
    #set text(size: type.small)
    *Glossar*

    #badge(color: palette.info)[LR+] Likelihood Ratio positiv

    #v(space.sm)
    #badge(color: palette.warn)[LR--] Likelihood Ratio negativ

    #v(space.sm)
    #badge(color: palette.good)[PPV] Positiver praediktiver Wert
  ],
  [
    *Klinische Entscheidungsfindung*

    Die Likelihood Ratios sind ein zentrales Werkzeug,
    um die diagnostische Wertigkeit eines Tests einzuordnen.

    Ein LR+ von > 10 verschiebt die Posttestwahrscheinlichkeit stark nach oben.
    Ein LR- von < 0.1 schliesst eine Diagnose mit hoher Sicherheit aus.

    In der Praxis sind solche klaren Werte selten --
    meistens bewegt man sich in Grauzonen.
  ],
)

== Magazin-Layout

#magazine-layout("Die Kunst der Diagnose", subtitle: "Ein Blick auf diagnostische Prozesse")[
  Die Diagnosefindung ist ein komplexer Prozess, der sowohl analytisches Denken als auch Intuition erfordert.

  #pull-quote(color: palette.info)[
    Die Diagnose ist der erste Schritt zur Heilung.
  ]

  Oftmals sind die Symptome nicht eindeutig und erfordern eine sorgfaeltige Abwaegung verschiedener Moeglichkeiten.
  Hierbei spielen Differentialdiagnosen eine entscheidende Rolle.

  #colbreak()

  Durch den systematischen Ausschluss von Erkrankungen naehert man sich der wahren Ursache an.
  Dies erfordert nicht nur medizinisches Wissen, sondern auch Erfahrung und Empathie im Umgang mit dem Patienten.
]

