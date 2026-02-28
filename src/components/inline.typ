// components/inline.typ — Inline elements

#import "../styles/theme.typ": fonts, palette, space, type-scale

// ── Badge ──────────────────────────────────────────────────────
// Small colored label, inline with text.
#let badge(content, color: palette.primary) = {
  box(
    fill: color,
    inset: (x: 4pt, y: 2pt),
    radius: 3pt,
    baseline: 20%,
    text(size: type-scale.tiny, fill: white, weight: "bold", content),
  )
}

// ── Tag ────────────────────────────────────────────────────────
// Outlined tag / category marker.
#let tag(content, color: palette.primary) = {
  box(
    stroke: 0.5pt + color,
    inset: (x: 4pt, y: 2pt),
    radius: 3pt,
    baseline: 20%,
    text(size: type-scale.tiny, fill: color, content),
  )
}

// ── Highlight-text ─────────────────────────────────────────────
// Background-highlighted text span.
#let highlight-text(content, color: palette.accent-light) = {
  box(
    fill: color.lighten(60%),
    inset: (x: 2pt, y: 0pt),
    outset: (y: 2pt),
    radius: 2pt,
    content,
  )
}

// ── Kbd ────────────────────────────────────────────────────────
// Keyboard shortcut display.
#let kbd(key) = {
  box(
    inset: (x: 4pt, y: 2pt),
    radius: 3pt,
    baseline: 20%,
    stroke: 0.5pt + palette.border,
    fill: palette.bg-subtle,
    text(font: fonts.mono, size: type-scale.small, key),
  )
}

// ── Icon-text ──────────────────────────────────────────────────
// Symbol + text pair, baseline-aligned.
#let icon-text(icon, content) = {
  box(baseline: 20%)[#icon]
  h(space.xs)
  content
}
