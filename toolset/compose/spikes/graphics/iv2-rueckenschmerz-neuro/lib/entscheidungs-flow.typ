// Recreate (Phase B1) of Nano Banana free vision for IV-2 S4
// Claim-safe German labels; bookkit palette; FA6 icons (iconography polish).
// Flow: 1 First-Look → 2 RF-Box → 3 R/I/S → 4 Ergebnis C + Default-to-Danger

#import "/packages/bookkit/theme.typ": palette
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")

#let _badge(n, fill: palette.primary, fg: white) = box(
  width: 1.45em,
  height: 1.45em,
  radius: 100%,
  fill: fill,
  baseline: 18%,
  align(center + horizon)[
    #set text(fill: fg, weight: "bold", size: 8.5pt)
    #n
  ],
)

#let _ico(body, fill: white) = {
  set text(fill: fill, size: 10pt)
  body
}

#let _arrow-down(fill: palette.primary-dark) = align(center)[
  #v(2pt)
  #text(size: 12pt, fill: fill)[#fa-arrow-down()]
  #v(2pt)
]

/// Full IV-2 S4 Entscheidungs-Flow (recreate of free vision).
#let entscheidungs-flow-rueckenschmerz(
  title: [IV-2 S4  ENTSCHEIDUNGS-FLOW: RÜCKENSCHMERZ NEURO],
  show-footer: true,
) = block(
  width: 100%,
  breakable: false,
  inset: 0pt,
)[
  // Header banner (free vision: dark teal bar)
  #block(
    width: 100%,
    inset: (x: 12pt, y: 9pt),
    fill: palette.primary-dark,
    radius: (top: 5pt, bottom: 0pt),
  )[
    #set text(fill: white, weight: "bold", size: 9.5pt)
    #align(center)[#title]
  ]

  #block(
    width: 100%,
    inset: (x: 10pt, y: 10pt),
    stroke: 0.85pt + palette.border,
    radius: (top: 0pt, bottom: 5pt),
    fill: white,
  )[
    #set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)
    #set par(leading: 0.38em)

    // ── 1 First-Look / vital? (solid danger — free vision red card) ──
    #block(
      width: 100%,
      inset: 10pt,
      radius: 8pt,
      fill: palette.danger,
    )[
      #set text(fill: white)
      #grid(
        columns: (auto, 1fr, auto),
        column-gutter: 8pt,
        align: horizon,
        _badge("1", fill: white.transparentize(75%)),
        text(weight: "bold", size: 10.5pt)[1. First-Look / vital?],
        _ico(fa-heart-pulse(), fill: white),
      )
      #v(6pt)
      #set text(size: 8.2pt, fill: white)
      Schock, Kollaps, reißender Schmerz (AAA-Muster),
      schwere bilaterale Parese mit Gehunfähigkeit
      #linebreak()
      #text(weight: "bold")[
        #fa-phone() → Notruf *112*, Patient *NICHT* gehen lassen.
      ]
      #v(6pt)
      // Cross-ref pill (free vision white chip + dark type)
      #block(
        width: 100%,
        inset: (x: 8pt, y: 5pt),
        radius: 4pt,
        fill: white,
      )[
        #set text(size: 7.2pt, fill: palette.danger.darken(12%), weight: "bold")
        #fa-circle-xmark() CES-Detail: → III-5 · BLS: → III-2 · Illness Script: → V-Cauda
      ]
    ]

    #_arrow-down(fill: palette.danger.darken(10%))

    // ── 2 Red-Flag-Box positiv? ──
    #block(
      width: 100%,
      inset: 10pt,
      radius: 8pt,
      fill: palette.danger.darken(6%),
    )[
      #set text(fill: white)
      #grid(
        columns: (auto, 1fr, auto),
        column-gutter: 8pt,
        align: horizon,
        _badge("2", fill: white.transparentize(75%)),
        text(weight: "bold", size: 10.5pt)[2. Red-Flag-Box positiv?],
        _ico(fa-flag(), fill: white),
      )
      #v(6pt)
      #set text(size: 8.5pt, fill: white, weight: "bold")
      Aktion 1:1 (*112* vs. *ED/Arzt gleichtags*)
      #v(6pt)
      #block(
        width: 100%,
        inset: (x: 8pt, y: 5pt),
        radius: 4pt,
        fill: white,
      )[
        #set text(size: 7.5pt, fill: palette.danger.darken(12%), weight: "bold")
        #fa-triangle-exclamation() *Keine* HVT, Traktion, forcierte Mobilisation „zur Abklärung“
      ]
    ]

    #_arrow-down()

    // ── 3 R / I / S Check (dark navy trio — free vision) ──
    #block(
      width: 100%,
      inset: 10pt,
      radius: 8pt,
      fill: palette.primary-dark,
    )[
      #set text(fill: white)
      #grid(
        columns: (auto, 1fr, auto),
        column-gutter: 8pt,
        align: horizon,
        _badge("3", fill: white.transparentize(75%)),
        text(weight: "bold", size: 10.5pt)[3. R / I / S Check],
        _ico(fa-list-check(), fill: white),
      )
      #v(8pt)
      #grid(
        columns: (1fr, 1fr, 1fr),
        column-gutter: 6pt,
        // R
        block(
          width: 100%,
          inset: 7pt,
          radius: 5pt,
          fill: palette.primary,
          stroke: 0.65pt + white.transparentize(45%),
        )[
          #align(center)[
            #text(size: 12pt, fill: white)[#fa-stethoscope()]
            #v(3pt)
            #text(weight: "bold", size: 8.5pt, fill: white)[R-Check]
            #linebreak()
            #text(size: 7pt, fill: white.transparentize(12%))[(Matrix R4→R1)]
          ]
        ],
        // I
        block(
          width: 100%,
          inset: 7pt,
          radius: 5pt,
          fill: palette.primary,
          stroke: 0.65pt + white.transparentize(45%),
        )[
          #align(center)[
            #text(size: 12pt, fill: white)[#fa-user-doctor()]
            #v(3pt)
            #text(weight: "bold", size: 8.5pt, fill: white)[I-Check]
            #linebreak()
            #text(size: 7pt, fill: white.transparentize(12%))[(PT-Nutzen jetzt?)]
          ]
        ],
        // S
        block(
          width: 100%,
          inset: 7pt,
          radius: 5pt,
          fill: palette.primary,
          stroke: 0.65pt + white.transparentize(45%),
        )[
          #align(center)[
            #text(size: 12pt, fill: white)[#fa-shield-halved()]
            #v(3pt)
            #text(weight: "bold", size: 8.5pt, fill: white)[S-Check]
            #linebreak()
            #text(size: 7pt, fill: white.transparentize(12%))[(LWS-Maßnahme jetzt sicher?)]
          ]
        ],
      )
    ]

    #_arrow-down()

    // ── 4 Ergebnis C + Default-to-Danger loud ──
    #block(
      width: 100%,
      inset: 10pt,
      radius: 8pt,
      fill: palette.primary-dark.darken(8%),
    )[
      #set text(fill: white)
      #grid(
        columns: (auto, 1fr, auto),
        column-gutter: 8pt,
        align: horizon,
        _badge("4", fill: white.transparentize(75%)),
        text(weight: "bold", size: 10.5pt)[4. Ergebnis C],
        _ico(fa-clipboard-check(), fill: white),
      )
      #v(4pt)
      #align(center)[
        #text(size: 8pt, fill: white.transparentize(15%))[siehe R+I+S→C]
      ]
      #v(7pt)
      // Default-to-Danger banner (free vision red sub-card)
      #block(
        width: 100%,
        inset: 9pt,
        radius: 6pt,
        fill: palette.danger,
      )[
        #set text(fill: white)
        #grid(
          columns: (auto, 1fr),
          column-gutter: 8pt,
          align: (horizon, top),
          text(size: 14pt)[#fa-triangle-exclamation()],
          {
            set text(size: 8pt)
            text(weight: "bold", size: 9pt, fill: palette.accent-light)[
              Unklar + red-flag-nah
            ]
            text(size: 7.5pt)[
               (vage perineale Taubheit, unklare Blase)
            ]
            linebreak()
            v(3pt)
            text(weight: "bold", size: 9pt)[
              → Default-to-Danger
            ]
            text(size: 7.5pt)[
               (lieber 112/ED als „noch testen“)
            ]
          },
        )
      ]
    ]

    #if show-footer [
      #v(8pt)
      #block(
        width: 100%,
        inset: 6pt,
        radius: 3pt,
        fill: palette.bg-subtle,
      )[
        #set text(size: 7pt, fill: palette.text-muted)
        *Scan-Pfad:* First-Look → RF-Box → R/I/S → C.
        Absolute KI bei CES-/Infekt-/Fraktur-/Tumorverdacht: *keine* HVT, Traktion,
        forcierte LWS-Mobilisation. Detail CES: `→ III-5` / `→ V-Cauda`.
      ]
    ]
  ]
]
