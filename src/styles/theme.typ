// styles/theme.typ — Design token system (pure data, no set/show rules)

// ── Color Palette ──────────────────────────────────────────────
#let palette = (
  // Primary
  primary: rgb("#0d7377"),
  primary-light: rgb("#14a3a8"),
  primary-dark: rgb("#094f52"),
  // Accent
  accent: rgb("#d4a039"),
  accent-light: rgb("#e8c468"),
  accent-dark: rgb("#a67c2e"),
  // Neutrals
  bg: rgb("#ffffff"),
  bg-subtle: rgb("#f5f5f0"),
  bg-muted: rgb("#e8e8e3"),
  text-body: rgb("#1a1a1a"),
  text-muted: rgb("#555555"),
  text-light: rgb("#888888"),
  border: rgb("#cccccc"),
  border-light: rgb("#e0e0e0"),
  // Semantic
  info: rgb("#2563eb"),
  success: rgb("#16a34a"),
  warning: rgb("#d97706"),
  danger: rgb("#dc2626"),
)

// ── Gradient Presets ───────────────────────────────────────────
#let gradients = (
  cover: gradient.linear(palette.primary-dark, palette.primary, angle: 135deg),
  chapter: gradient.linear(palette.primary, palette.primary-light, angle: 0deg),
  accent: gradient.linear(palette.accent-dark, palette.accent, angle: 90deg),
  subtle: gradient.linear(palette.bg-subtle, palette.bg, angle: 180deg),
)

// ── Type Scale ─────────────────────────────────────────────────
#let type-scale = (
  micro: 7.5pt,
  tiny: 8.5pt,
  small: 9.5pt,
  body: 10.5pt,
  lead: 12pt,
  h4: 13pt,
  h3: 15pt,
  h2: 18pt,
  h1: 24pt,
  display: 36pt,
)

// ── Spacing Scale ──────────────────────────────────────────────
#let space = (
  xs: 4pt,
  sm: 8pt,
  md: 12pt,
  lg: 16pt,
  xl: 24pt,
  xxl: 32pt,
  xxxl: 48pt,
)

// ── Font Families ──────────────────────────────────────────────
// Only fonts available under --ignore-system-fonts (confirmed via
// `typst fonts --ignore-system-fonts --font-path fonts`):
//   Libertinus Serif · New Computer Modern · DejaVu Sans Mono
// To use system fonts (Calibri, Arial etc.) on Windows, remove
// --ignore-system-fonts from scripts/build.ps1 and restore the
// original fallback chains.
#let fonts = (
  serif: ("Libertinus Serif",),
  sans: ("Libertinus Serif",), // no sans font embedded; bold/size provide hierarchy
  mono: ("DejaVu Sans Mono",),
)
