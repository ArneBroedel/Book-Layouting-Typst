// bookkit 0.1.0 — public foundation API
// Import: #import "/packages/bookkit/lib.typ": *
// Or:     #import "@local/bookkit:0.1.0": *  (with --package-path wired)

#import "theme.typ": (
  didactics,
  evidence,
  fonts,
  gradients,
  legal,
  palette,
  part-colors,
  space,
  type-scale,
)
#import "typography.typ": setup-typography
#import "page.typ": setup-pages
#import "print.typ": (
  crop-marks,
  page-bleed,
  prepress-bleed,
  print-foreground,
  print-mode,
  print-page-args,
)

#import "components/blocks.typ": (
  blockquote,
  callout,
  card,
  code-block,
  key-concept,
  protocol-steps,
  pull-quote,
  side-note,
)
#import "components/inline.typ": (
  badge,
  evidence-badge,
  highlight-text,
  icon-text,
  kbd,
  loe-badge,
  qty,
  qty-range,
  tag,
)
#import "components/tables.typ": (
  comparison-table,
  cspan,
  long-table,
  reference-table,
  rspan,
  score-table,
  styled-table,
)
#import "components/grids.typ": (
  comparison-grid,
  feature-grid,
  gallery-grid,
  stats-grid,
)
#import "components/layouts.typ": (
  adaptive-layout,
  breakout,
  comparison-layout,
  magazine-layout,
  margin-note,
  margin-setup,
  scientific-paper,
  sidebar-layout,
)
#import "components/spreads.typ": (
  book-cover,
  chapter-opener,
  feature-spread,
  part-page,
  section-break,
  spread-start,
)

// Genre preset token hints (v0 — documentation + light helpers)
#let genre-presets = (
  plain-book: (label: "Plain book", didactics: false),
  medical-textbook: (label: "Medical textbook", didactics: true),
  scientific-report: (label: "Scientific report", didactics: false),
  technical-manual: (label: "Technical manual", didactics: false),
)
