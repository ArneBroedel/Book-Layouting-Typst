// IV-2 S4 Entscheidungs-Flow — print body uses unified chrome ladder
// (quiet / flag / shout). Solid red only for Default-to-Danger shout.
// density: "compact" (default) | "airy" (legacy free-vision — not print default)

#import "/packages/bookkit/theme.typ": palette
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")
#import "/domains/medical/lib/typst/explore-2026-08/chrome.typ": (
  chrome-band,
  chrome-module-title,
  chrome-shout-line,
)

#let _badge(n, fill: palette.primary, fg: white, size: 1.15em, tsize: 7pt) = box(
  width: size,
  height: size,
  radius: 100%,
  fill: fill,
  baseline: 15%,
  align(center + horizon)[
    #set text(fill: fg, weight: "bold", size: tsize)
    #n
  ],
)

#let _ico(body, fill: palette.primary, size: 9pt) = {
  set text(fill: fill, size: size)
  body
}

// ── Compact step: flag (danger) or quiet (OS) — never solid by default ─

#let _step-compact(
  num,
  title,
  body,
  accent: palette.danger,
  level: "flag",
  icon: none,
  pill: none,
) = chrome-band(
  [
    #grid(
      columns: (auto, 1fr) + if icon != none { (auto,) } else { () },
      column-gutter: 6pt,
      align: horizon,
      _badge(num, fill: accent, size: 1.15em, tsize: 7pt),
      text(weight: "bold", size: 8.5pt, fill: accent.darken(12%))[#title],
      ..if icon != none {
        (_ico(icon, fill: accent, size: 9pt),)
      } else { () },
    )
    #v(2.5pt)
    #set text(size: 7.3pt, fill: palette.text-body)
    #set par(leading: 0.32em)
    #body
    #if pill != none {
      v(3pt)
      block(
        width: 100%,
        inset: (x: 6pt, y: 3pt),
        radius: 2pt,
        fill: white,
        stroke: 0.35pt + accent.lighten(40%),
      )[
        #set text(size: 6.8pt, weight: "bold", fill: accent.darken(10%))
        #pill
      ]
    }
  ],
  accent: accent,
  level: level,
  inset: (x: 7pt, y: 5pt),
)

#let _ris-row-compact() = chrome-band(
  [
    #grid(
      columns: (auto, 1fr, auto),
      column-gutter: 6pt,
      align: horizon,
      _badge("3", fill: palette.primary),
      text(weight: "bold", size: 8.5pt, fill: palette.primary-dark)[3. R / I / S Check],
      _ico(fa-list-check(), fill: palette.primary, size: 9pt),
    )
    #v(3.5pt)
    #grid(
      columns: (1fr, 1fr, 1fr),
      column-gutter: 4pt,
      block(
        width: 100%, inset: (x: 5pt, y: 4pt), radius: 2pt,
        fill: white,
        stroke: 0.4pt + palette.primary.lighten(30%),
      )[
        #align(center)[
          #set text(size: 7pt, fill: palette.primary-dark)
          #fa-stethoscope() #h(3pt) *R-Check*
          #linebreak()
          #text(size: 6.5pt, fill: palette.text-muted)[Matrix R4→R1]
        ]
      ],
      block(
        width: 100%, inset: (x: 5pt, y: 4pt), radius: 2pt,
        fill: white,
        stroke: 0.4pt + palette.primary.lighten(30%),
      )[
        #align(center)[
          #set text(size: 7pt, fill: palette.primary-dark)
          #fa-user-doctor() #h(3pt) *I-Check*
          #linebreak()
          #text(size: 6.5pt, fill: palette.text-muted)[PT-Nutzen jetzt?]
        ]
      ],
      block(
        width: 100%, inset: (x: 5pt, y: 4pt), radius: 2pt,
        fill: white,
        stroke: 0.4pt + palette.primary.lighten(30%),
      )[
        #align(center)[
          #set text(size: 7pt, fill: palette.primary-dark)
          #fa-shield-halved() #h(3pt) *S-Check*
          #linebreak()
          #text(size: 6.5pt, fill: palette.text-muted)[LWS jetzt sicher?]
        ]
      ],
    )
  ],
  accent: palette.primary,
  level: "quiet",
  inset: (x: 7pt, y: 5pt),
)

#let _ergebnis-compact() = chrome-band(
  [
    #grid(
      columns: (auto, 1fr, auto),
      column-gutter: 6pt,
      align: horizon,
      _badge("4", fill: palette.primary-dark),
      text(weight: "bold", size: 8.5pt, fill: palette.primary-dark)[
        4. Ergebnis C · siehe R+I+S→C
      ],
      _ico(fa-clipboard-check(), fill: palette.primary-dark, size: 9pt),
    )
    #v(4pt)
    // ONLY solid shout: unclear RF → Default-to-Danger
    // (easy to under-call; more miss risk than ordinary listed RF)
    #chrome-shout-line[
      #fa-triangle-exclamation() #h(3pt)
      #text(weight: "bold")[Unklar + red-flag-nah]
      #text(size: 6.8pt)[ (vage perineale Taubheit, unklare Blase)]
      #linebreak()
      #text(weight: "bold")[→ Default-to-Danger]
      #text(size: 6.8pt)[ (lieber 112/ED als „noch testen“)]
    ]
  ],
  accent: palette.primary,
  level: "quiet",
  inset: (x: 7pt, y: 5pt),
)

#let _compact-body(show-footer) = {
  grid(
    columns: 1fr,
    row-gutter: 3.5pt,
    _step-compact(
      "1",
      [1. First-Look / vital?],
      [
        Schock, Kollaps, reißender Schmerz (AAA), schwere bilaterale Parese mit Gehunfähigkeit ·
        #text(weight: "bold", fill: palette.danger.darken(8%))[
          #fa-phone() → *112*, Patient *NICHT* gehen lassen.
        ]
      ],
      accent: palette.danger,
      level: "flag",
      icon: fa-heart-pulse(),
      pill: [#fa-circle-xmark() CES: → III-5 · BLS: → III-2 · Script: → V-Cauda],
    ),
    _step-compact(
      "2",
      [2. Red-Flag-Box positiv?],
      [
        Aktion 1:1 (*112* vs. *ED/Arzt gleichtags*)
      ],
      accent: palette.danger,
      level: "flag",
      icon: fa-flag(),
      pill: [#fa-triangle-exclamation() *Keine* HVT, Traktion, forcierte Mobilisation „zur Abklärung“],
    ),
    _ris-row-compact(),
    _ergebnis-compact(),
  )
  if show-footer {
    v(3pt)
    block(
      width: 100%,
      inset: (x: 5pt, y: 3.5pt),
      radius: 2pt,
      fill: rgb("#f8fafc"),
      stroke: 0.4pt + palette.border,
    )[
      #set text(size: 6.5pt, fill: palette.text-muted)
      *Scan-Pfad:* First-Look → RF-Box → R/I/S → C. Absolute KI bei CES/Infekt/Fraktur/Tumor:
      *keine* HVT/Traktion/forcierte LWS-Mobilisation. CES-Detail: `→ III-5` / `→ V-Cauda`.
    ]
  }
}

// ── Airy legacy (free-vision comparison only) ─────────────────

#let _arrow-down-airy(fill: palette.primary-dark) = align(center)[
  #v(2pt)
  #text(size: 15pt, weight: "bold", fill: fill)[#fa-arrow-down()]
  #v(2pt)
]

#let _badge-airy(n, fill: palette.primary) = _badge(n, fill: fill, size: 1.45em, tsize: 8.5pt)

#let _airy-body(show-footer) = {
  block(width: 100%, inset: 10pt, radius: 8pt, fill: palette.danger)[
    #set text(fill: white)
    #grid(
      columns: (auto, 1fr, auto), column-gutter: 8pt, align: horizon,
      _badge-airy("1", fill: white.transparentize(75%)),
      text(weight: "bold", size: 10.5pt)[1. First-Look / vital?],
      _ico(fa-heart-pulse(), fill: white, size: 10pt),
    )
    #v(6pt)
    #set text(size: 8.2pt)
    Schock, Kollaps, reißender Schmerz (AAA-Muster), schwere bilaterale Parese mit Gehunfähigkeit
    #linebreak()
    #text(weight: "bold")[#fa-phone() → Notruf *112*, Patient *NICHT* gehen lassen.]
  ]
  _arrow-down-airy(fill: palette.danger.darken(10%))
  block(width: 100%, inset: 10pt, radius: 8pt, fill: palette.danger.darken(6%))[
    #set text(fill: white)
    #grid(
      columns: (auto, 1fr, auto), column-gutter: 8pt, align: horizon,
      _badge-airy("2", fill: white.transparentize(75%)),
      text(weight: "bold", size: 10.5pt)[2. Red-Flag-Box positiv?],
      _ico(fa-flag(), fill: white, size: 10pt),
    )
    #v(6pt)
    #set text(size: 8.5pt, weight: "bold")
    Aktion 1:1 (*112* vs. *ED/Arzt gleichtags*)
  ]
  _arrow-down-airy()
  block(width: 100%, inset: 10pt, radius: 8pt, fill: palette.primary-dark)[
    #set text(fill: white)
    #grid(
      columns: (auto, 1fr, auto), column-gutter: 8pt, align: horizon,
      _badge-airy("3", fill: white.transparentize(75%)),
      text(weight: "bold", size: 10.5pt)[3. R / I / S Check],
      _ico(fa-list-check(), fill: white, size: 10pt),
    )
  ]
  _arrow-down-airy()
  block(width: 100%, inset: 10pt, radius: 8pt, fill: palette.primary-dark.darken(8%))[
    #set text(fill: white)
    #grid(
      columns: (auto, 1fr, auto), column-gutter: 8pt, align: horizon,
      _badge-airy("4", fill: white.transparentize(75%)),
      text(weight: "bold", size: 10.5pt)[4. Ergebnis C],
      _ico(fa-clipboard-check(), fill: white, size: 10pt),
    )
    #v(7pt)
    #chrome-shout-line[
      #text(weight: "bold")[→ Default-to-Danger] (unklar + red-flag-nah)
    ]
  ]
  if show-footer {
    v(8pt)
    block(width: 100%, inset: 6pt, radius: 3pt, fill: palette.bg-subtle)[
      #set text(size: 7pt, fill: palette.text-muted)
      *Scan-Pfad:* First-Look → RF-Box → R/I/S → C. Layout: *airy* (nicht Print-Default).
    ]
  }
}

/// Full IV-2 S4 Entscheidungs-Flow.
#let entscheidungs-flow-rueckenschmerz(
  title: [IV-2 S4  ENTSCHEIDUNGS-FLOW: RÜCKENSCHMERZ NEURO],
  show-footer: true,
  density: "compact",
) = block(
  width: 100%,
  breakable: density == "compact",
  inset: 0pt,
)[
  #if density == "compact" {
    chrome-module-title(title, subtitle: [kompakt · Chrome: flag + 1× shout])
  } else {
    block(
      width: 100%,
      inset: (x: 10pt, y: 9pt),
      fill: palette.primary-dark,
      radius: (top: 3pt, bottom: 0pt),
    )[
      #set text(fill: white, weight: "bold", size: 9.5pt)
      #align(center)[#title]
    ]
  }

  #block(
    width: 100%,
    inset: (x: if density == "compact" { 7pt } else { 10pt }, y: if density == "compact" { 6pt } else { 10pt }),
    stroke: 0.7pt + palette.border,
    radius: (top: 0pt, bottom: 3pt),
    fill: white,
  )[
    #set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)
    #set par(leading: 0.36em)
    #if density == "airy" {
      _airy-body(show-footer)
    } else {
      _compact-body(show-footer)
    }
  ]
]
