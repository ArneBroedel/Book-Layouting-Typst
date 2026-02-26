// components/figures.typ — Figure wrappers

#import "../styles/theme.typ": fonts, palette, space, type-scale

// ── Consistent figure wrapper ──────────────────────────────────
// Show rule for figures — apply via show rule in typography or chapter scope.
#let setup-figures() = body => {
  show figure: it => block(
    breakable: false,
    width: 100%,
    above: space.lg,
    below: space.lg,
    it,
  )
  body
}
