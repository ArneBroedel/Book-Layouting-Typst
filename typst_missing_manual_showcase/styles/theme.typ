// styles/theme.typ
// Zentrale Tokens: Farben, Abstände, Schriftstile.
// Ziel: Du änderst hier 10 Zeilen – und das ganze Buch folgt.

#let palette = (
  // Neutrals
  ink: rgb("#101418"),
  muted: rgb("#5b6770"),
  paper: rgb("#ffffff"),
  border: rgb("#e2e8f0"),
  surface: rgb("#f8fafc"),
  // Didaktik-Farben (Semantic tones)
  info: rgb("#1b6ca8"),
  info-light: rgb("#e0f2fe"),
  good: rgb("#1d7f5a"),
  good-light: rgb("#dcfce7"),
  warn: rgb("#b36b00"),
  warn-light: rgb("#fef9c3"),
  bad: rgb("#b11a2a"),
  bad-light: rgb("#fee2e2"),
  // Akzent für Kapitel (Editorial accents)
  accent: rgb("#4f46e5"),
  accent-light: rgb("#e0e7ff"),
)

// Gradient presets
#let gradients = (
  cover: gradient.linear(palette.accent, palette.info, angle: 45deg),
  heading: gradient.linear(palette.ink, palette.muted, angle: 90deg),
  hero: gradient.linear(palette.surface, palette.paper, angle: 180deg),
)

#let space = (
  xs: 2pt,
  sm: 4pt,
  md: 8pt,
  lg: 14pt,
  xl: 22pt,
  xxl: 36pt,
  xxxl: 48pt,
)

// Typo-Tokens: Basisgrößen
#let type = (
  micro: 7.8pt,
  tiny: 8.5pt,
  small: 9pt,
  body: 10.6pt,
  lead: 12.2pt,
  h3: 13pt,
  h2: 18pt,
  h1: 30pt,
  display: 42pt,
)

// Baseline helper token for rhythm checks
#let baseline-grid = 14.3pt // 10.6pt * 1.35em leading


// Stil für Linien/Boxen
#let stroke-soft = (paint: palette.muted, thickness: 0.7pt, dash: (2pt, 2pt))
#let stroke-strong = (paint: palette.ink, thickness: 1.2pt)
