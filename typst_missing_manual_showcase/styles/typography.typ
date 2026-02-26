// styles/typography.typ
#import "theme.typ": palette, space, type

// Globale Text- und Absatzregeln.
// Tipp: Nutze Schriftfamilien, die du rechtlich sauber einbetten darfst.
// Für den Showcase wählen wir robuste Default-Fonts (plattformspezifisch).
// In echten Projekten: Libertinus / EB Garamond / Source Sans / Inter etc.

#let setup-typography() = {
  // Sprache beeinflusst Trennung/Anführungszeichen
  set text(lang: "de")

  // Grundschrift
  set text(size: type.body, fill: palette.ink)

  // Absatz: moderner Buchsatz – ruhiger Zeilenabstand + Blocksatz
  set par(justify: true, leading: 1.35em)

  // Listen etwas kompakter
  set list(indent: 1.0em, body-indent: 0.2em)

  // Überschriften-Design: klare Hierarchie, wenig „Word-Standard“
  show heading.where(level: 1): it => [
    #v(space.xl)
    #text(size: type.h1, weight: 800, fill: palette.ink, it.body)
    #v(space.sm)
    #line(length: 100%, stroke: (paint: palette.accent, thickness: 1.2pt))
    #v(space.lg)
  ]

  show heading.where(level: 2): it => [
    #v(space.lg)
    #text(size: type.h2, weight: 750, fill: palette.ink, it.body)
    #v(space.sm)
  ]

  show heading.where(level: 3): it => [
    #v(space.md)
    #text(size: type.h3, weight: 700, fill: palette.ink, it.body)
    #v(space.xs)
  ]
}
