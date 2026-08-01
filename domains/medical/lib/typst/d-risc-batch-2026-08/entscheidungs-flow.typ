// IV-2 batch Entscheidungs-Flow — dual must-not-miss (CES + Infect)
// Scan: First-Look → CES-cluster → Infect-cluster → R → I → S → C
// Order pin: R→I→S (not R→S→I); I and S never omit.
// Chrome: explore-2026-08 flag ladder (no full-bleed shout for ordinary RF).

#import "/packages/bookkit/theme.typ": palette
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")
#import "/domains/medical/lib/typst/explore-2026-08/chrome.typ": (
  chrome-band,
  chrome-module-title,
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

#let _step(
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
    #v(2pt)
    #set text(size: 7.3pt, fill: palette.text-body)
    #set par(leading: 0.32em)
    #body
    #if pill != none {
      v(2.5pt)
      block(
        width: 100%,
        inset: (x: 5.5pt, y: 3pt),
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
  inset: (x: 7pt, y: 5.5pt),
)

// Dual R4 masters side-by-side (CES | Infect) — both must-not-miss, neither optional
#let _dual-cluster-row() = grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  _step(
    "2",
    [2. CES-Cluster positiv?],
    [
      Neue *Reithosenanästhesie* · akute *Blasen-/Darmstörung* ·
      *bilaterale rasch progrediente* Beinschwäche
    ],
    accent: palette.danger,
    level: "flag",
    icon: fa-person-falling(),
    pill: [#fa-phone() *112 / Notaufnahme* · absolute PT-Stop · → V-3-cauda-equina],
  ),
  _step(
    "3",
    [3. Infekt-/Sepsis-Cluster?],
    [
      Rücken + *Fieber/Infekt* + *Klopfschmerz* · Neuro bei Infektverdacht ·
      *Sepsis*-Instabilität
    ],
    accent: palette.danger,
    level: "flag",
    icon: fa-virus(),
    pill: [#fa-phone() *112 / Notaufnahme* · → V-3-spondylodiszitis],
  ),
)

// Explicit R → I → S order labels (D-RISC acronym; not R→S→I)
#let _ris-row() = chrome-band(
  [
    #grid(
      columns: (auto, 1fr, auto),
      column-gutter: 6pt,
      align: horizon,
      _badge("4", fill: palette.primary),
      text(weight: "bold", size: 8.5pt, fill: palette.primary-dark)[
        4. R → I → S  #text(size: 7pt, weight: "regular", fill: palette.text-muted)[(Reihenfolge = D-RISC-Akronym · *I* und *S* nie weglassen)]
      ],
      _ico(fa-list-check(), fill: palette.primary, size: 9pt),
    )
    #v(2.5pt)
    #grid(
      columns: (1fr, 1fr, 1fr),
      column-gutter: 3.5pt,
      block(
        width: 100%, inset: (x: 4pt, y: 3pt), radius: 2pt,
        fill: white,
        stroke: 0.4pt + palette.primary.lighten(30%),
      )[
        #align(center)[
          #set text(size: 6.8pt, fill: palette.primary-dark)
          #fa-stethoscope() #h(2pt) *R*
          #linebreak()
          #text(size: 6.3pt, fill: palette.text-muted)[Abklärungsbedarf · R4→R1]
        ]
      ],
      block(
        width: 100%, inset: (x: 4pt, y: 3pt), radius: 2pt,
        fill: white,
        stroke: 0.4pt + palette.primary.lighten(30%),
      )[
        #align(center)[
          #set text(size: 6.8pt, fill: palette.primary-dark)
          #fa-user-doctor() #h(2pt) *I*
          #linebreak()
          #text(size: 6.3pt, fill: palette.text-muted)[PT-Nutzen *jetzt*?]
        ]
      ],
      block(
        width: 100%, inset: (x: 4pt, y: 3pt), radius: 2pt,
        fill: white,
        stroke: 0.4pt + palette.primary.lighten(30%),
      )[
        #align(center)[
          #set text(size: 6.8pt, fill: palette.primary-dark)
          #fa-shield-halved() #h(2pt) *S*
          #linebreak()
          #text(size: 6.3pt, fill: palette.text-muted)[Maßnahme *jetzt* sicher?]
        ]
      ],
    )
  ],
  accent: palette.primary,
  level: "quiet",
  inset: (x: 6pt, y: 3.5pt),
)

#let _c-row() = chrome-band(
  [
    #grid(
      columns: (auto, 1fr, auto),
      column-gutter: 6pt,
      align: horizon,
      _badge("5", fill: palette.primary-dark),
      text(weight: "bold", size: 8.5pt, fill: palette.primary-dark)[
        5. C · Handlungsplan  #text(size: 7pt, weight: "regular", fill: palette.text-muted)[`R… · I… · S… → C: …`]
      ],
      _ico(fa-clipboard-check(), fill: palette.primary-dark, size: 9pt),
    )
    #v(2.5pt)
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 3.5pt,
      block(
        width: 100%, inset: (x: 4.5pt, y: 2.5pt), radius: 2pt,
        fill: white,
        stroke: 0.35pt + palette.danger.lighten(45%),
      )[
        #set text(size: 6.5pt)
        #text(weight: "bold", fill: palette.danger)[Dual R4 masters]
        #linebreak()
        CES · Spondylodiszitis — beide sichtbar, nie CES-only
      ],
      block(
        width: 100%, inset: (x: 4.5pt, y: 2.5pt), radius: 2pt,
        fill: white,
        stroke: 0.35pt + palette.primary.lighten(35%),
      )[
        #set text(size: 6.5pt)
        #text(weight: "bold", fill: palette.primary-dark)[Flags negativ]
        #linebreak()
        Treat + *Sicherheitsnetz* (wann zurück / Notfall?)
      ],
    )
    #v(2.5pt)
    // Default-to-Danger when unclear — flag chrome (outline), not solid-red shout wall
    #chrome-band(
      [
        #set text(size: 6.9pt, fill: palette.text-body)
        #fa-triangle-exclamation() #h(3pt)
        #text(weight: "bold", fill: palette.danger)[Unklar + red-flag-nah]
        #text(size: 6.5pt)[ (vage Reithosen-Taubheit, unklare Blase, Fieberfreiheit bei Hochrisiko)]
        #linebreak()
        #text(weight: "bold", fill: palette.danger)[→ Default-to-Danger]
        #text(size: 6.5pt)[ — lieber 112/ED als „noch testen“ · Fieberfreiheit ≠ Infekt-Ausschluss]
      ],
      accent: palette.danger,
      level: "flag",
      inset: (x: 6pt, y: 3.5pt),
      bar-width: 3pt,
    )
  ],
  accent: palette.primary,
  level: "quiet",
  inset: (x: 6pt, y: 3.5pt),
)

#let _body(show-footer) = {
  grid(
    columns: 1fr,
    row-gutter: 4.5pt,
    _step(
      "1",
      [1. First-Look / vital?],
      [
        Kreislaufinstabilität · Bewusstseinsstörung · akuter Vernichtungsschmerz mit Schockzeichen ·
        #text(weight: "bold", fill: palette.danger.darken(8%))[
          #fa-phone() → *112*  #text(weight: "regular", size: 6.8pt)[(→ III-1 Notfallmanagement, geplant)]
        ]
      ],
      accent: palette.danger,
      level: "flag",
      icon: fa-heart-pulse(),
    ),
    _dual-cluster-row(),
    _ris-row(),
    _c-row(),
  )
  if show-footer {
    v(2pt)
    block(
      width: 100%,
      inset: (x: 5pt, y: 2.5pt),
      radius: 2pt,
      fill: rgb("#f8fafc"),
      stroke: 0.35pt + palette.border,
    )[
      #set text(size: 6.3pt, fill: palette.text-muted)
      *Scan-Pfad:* First-Look → *CES* → *Infekt* → *R → I → S* → C.
      Dual must-not-miss: Cauda *und* Spondylodiszitis.
      *Nicht* R→S→I. IVDU/Immunsupp. + Ruhe/Nacht ohne Fieber → *gleichtags–ED*.
    ]
  }
}

/// IV-2 batch Entscheidungs-Flow (dual cluster + R→I→S order).
#let entscheidungs-flow-ruecken-batch(
  title: [IV-2  ENTSCHEIDUNGS-FLOW: RÜCKENSCHMERZ + NEURO],
  show-footer: true,
) = block(
  width: 100%,
  breakable: true,
  inset: 0pt,
)[
  #chrome-module-title(
    title,
    subtitle: [First-Look → CES · Infekt (dual R4) → R→I→S → C · flag chrome],
  )

  #block(
    width: 100%,
    inset: (x: 7pt, y: 7pt),
    stroke: 0.6pt + palette.border,
    radius: (top: 0pt, bottom: 2pt),
    fill: white,
  )[
    #set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)
    #set par(leading: 0.36em)
    #_body(show-footer)
  ]
]
