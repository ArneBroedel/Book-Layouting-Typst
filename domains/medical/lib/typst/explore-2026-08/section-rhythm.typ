// Pilot / short-chapter section rhythm (harvest 2026-08-01 · d-risc-batch)
// Problem: weak v() above H2 collapses after dense cards → “cramped headings”;
// bookkit list/enum indent makes “1. Section” look nested under a list.
//
// Use after `#show: setup-typography()` in pilot chapter.typ:
//   #import ".../section-rhythm.typ": setup-pilot-sections
//   #show: setup-pilot-sections()
//
// Does NOT replace bookkit setup-typography for full books — pilots only
// (manual H2 titles with optional “1. …” in the string, numbering: none).

#import "/packages/bookkit/theme.typ": palette

/// Apply section rhythm + flush list indent for exploration pilots.
/// Returns a document wrapper for `#show: setup-pilot-sections()`.
#let setup-pilot-sections(
  /// Space *before* each level-2 section head (must be non-weak / block.above)
  h2-above: 13pt,
  /// Space *after* H2 into body/cards
  h2-below: 5.5pt,
  h2-size: 10.5pt,
  h2-fill: palette.primary,
) = body => {
  set heading(numbering: none)

  // Fixed air above section heads — never v(..., weak: true) alone
  show heading.where(level: 2): it => {
    block(
      width: 100%,
      above: h2-above,
      below: h2-below,
      breakable: false,
    )[
      #set align(left)
      #set par(first-line-indent: 0pt, hanging-indent: 0pt, justify: false)
      #set text(size: h2-size, weight: "bold", fill: h2-fill)
      #it.body
    ]
  }

  // Card / trigger lists: bullets near text — not bookkit space.md nest
  set list(indent: 0pt, body-indent: 0.55em, marker: [•])
  set enum(indent: 0pt, body-indent: 0.55em)

  body
}

/// Recommended gap under chapter title + subtitle before first content band
#let pilot-title-stack(title, subtitle: none, title-size: 13pt, subtitle-size: 9pt) = {
  text(size: title-size, weight: "bold", fill: palette.primary)[#title]
  if subtitle != none {
    v(3pt)
    text(size: subtitle-size)[#subtitle]
  }
  v(6pt) // clear air under title block before lead / danger banner
}
