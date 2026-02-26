// styles/theme.typ
// Zentrale Tokens: Farben, Abstände, Schriftstile.
// Ziel: Du änderst hier 10 Zeilen – und das ganze Buch folgt.

#let palette = (
  ink: rgb("#101418"),
  muted: rgb("#5b6770"),
  paper: rgb("#ffffff"),

  // Didaktik-Farben
  info: rgb("#1b6ca8"),
  good: rgb("#1d7f5a"),
  warn: rgb("#b36b00"),
  bad:  rgb("#b11a2a"),

  // Akzent für Kapitel
  accent: rgb("#4f46e5"),
)

#let space = (
  xs: 2pt,
  sm: 4pt,
  md: 8pt,
  lg: 14pt,
  xl: 22pt,
  xxl: 36pt,
)

// Typo-Tokens: Basisgrößen
#let type = (
  body: 10.6pt,
  small: 9pt,
  micro: 7.8pt,
  h1: 30pt,
  h2: 18pt,
  h3: 13pt,
  lead: 12.2pt,
)

// Stil für Linien/Boxen
#let stroke-soft = (paint: palette.muted, thickness: 0.7pt, dash: (2pt, 2pt))
#let stroke-strong = (paint: palette.ink, thickness: 1.2pt)
