// Unified book chrome intensity ladder (print body default)
// Human 2026-08-01: dezent left-bar + pale fill is the house style.
// Full-bleed solid fill is reserved for exceptional must-not-miss shouts —
// rarer than ordinary red-flags (which already use `flag`).
//
// Levels:
//   quiet  — neutral info / OS / secondary (primary or grey bar)
//   flag   — usual danger / warning / RF ranking (pale fill + strong left bar)
//   shout  — exceptional attention only (solid accent + white text)
//            Use when content is easy to skip *and* worse than ordinary RF
//            (e.g. Default-to-Danger when findings are *unclear*, not just RF+).

#import "/packages/bookkit/theme.typ": palette

/// Pale surface from accent (danger/warning/primary).
#let chrome-pale(accent, amount: 93%) = accent.lighten(amount)

/// Left-bar + pale (or white) band — default house chrome.
/// `level`: "quiet" | "flag" | "shout"
#let chrome-band(
  body,
  accent: palette.primary,
  level: "quiet",
  inset: (x: 7pt, y: 5pt),
  radius: 2pt,
  bar-width: 3pt,
) = {
  if level == "shout" {
    // Exceptional: solid fill. Use sparingly — max ~1 per page section.
    block(
      width: 100%,
      inset: inset,
      radius: radius,
      fill: accent,
      breakable: false,
    )[
      #set text(fill: white)
      #body
    ]
  } else if level == "flag" {
    block(
      width: 100%,
      inset: inset,
      radius: radius,
      fill: chrome-pale(accent, amount: 92%),
      stroke: (
        left: bar-width + accent,
        rest: 0.4pt + accent.lighten(45%),
      ),
      breakable: false,
    )[
      #set text(fill: palette.text-body)
      #body
    ]
  } else {
    // quiet
    block(
      width: 100%,
      inset: inset,
      radius: radius,
      fill: if accent == palette.primary or accent == palette.primary-dark {
        chrome-pale(palette.primary, amount: 94%)
      } else {
        rgb("#f8fafc")
      },
      stroke: (
        left: (bar-width - 0.25pt) + accent,
        rest: 0.4pt + palette.border,
      ),
      breakable: false,
    )[
      #set text(fill: palette.text-body)
      #body
    ]
  }
}

/// Section title strip for nested protocol modules (not a shout).
#let chrome-module-title(title, subtitle: none) = block(
  width: 100%,
  inset: (x: 8pt, y: 5pt),
  radius: (top: 2pt, bottom: 0pt),
  fill: chrome-pale(palette.primary, amount: 90%),
  stroke: (
    left: 3pt + palette.primary,
    rest: 0.45pt + palette.primary.lighten(40%),
  ),
)[
  #set text(size: 8.5pt, weight: "bold", fill: palette.primary-dark)
  #title
  #if subtitle != none {
    linebreak()
    text(size: 7pt, weight: "regular", fill: palette.text-muted)[#subtitle]
  }
]

/// Exceptional must-not-miss line (Default-to-Danger class).
/// Prefer embedding *inside* a quiet/flag parent rather than stacking solid pages.
#let chrome-shout-line(body, accent: palette.danger) = block(
  width: 100%,
  inset: (x: 7pt, y: 5pt),
  radius: 2pt,
  fill: accent,
  breakable: false,
)[
  #set text(size: 7.4pt, fill: white)
  #body
]

/// Chapter-level lead banner: **flag** by default (ordinary RF / gatekeeper summary).
/// Pass `level: "shout"` only for true chapter-unique absolute stop that is easy to miss.
#let chrome-lead(
  body,
  accent: palette.danger,
  level: "flag",
) = chrome-band(
  body,
  accent: accent,
  level: level,
  inset: 8pt,
  bar-width: 3.5pt,
)
