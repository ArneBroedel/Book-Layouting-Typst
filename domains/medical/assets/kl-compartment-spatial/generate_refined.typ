#import "/packages/bookkit/theme.typ": palette

#set page(
  width: 240mm,
  height: 175mm,
  margin: (x: 6mm, y: 6mm),
  fill: rgb("#f5f5f0"),
)

#set text(
  font: "Libertinus Serif",
  size: 9.5pt,
  fill: palette.text-body,
)

#set par(justify: false, leading: 0.5em)

// ═══════════════════════════════════════════════════════════════
// HEADER BANNER (Teil/Illness-Script Palette)
// ═══════════════════════════════════════════════════════════════
#block(
  width: 100%,
  fill: palette.primary,
  radius: 4pt,
  inset: (x: 12pt, y: 8pt),
)[
  #grid(
    columns: (1fr, auto),
    align: (left + horizon, right + horizon),
    [
      #text(size: 16pt, weight: "bold", fill: white)[AKUTES KOMPARTMENTSYNDROM]
      #h(8pt)
      #text(size: 10.5pt, weight: "medium", fill: rgb("#e0f2f1"))[(Unterschenkel)]
    ],
    [
      #rect(
        fill: palette.danger,
        radius: 3pt,
        inset: (x: 9pt, y: 5pt),
      )[
        #text(size: 9.5pt, weight: "bold", fill: white)[STUNDENKRITISCHE ISCHÄMIE]
      ]
    ]
  )
]

#v(4pt)

// ═══════════════════════════════════════════════════════════════
// MAIN CONTENT GRID (2 COLUMNS)
// ═══════════════════════════════════════════════════════════════
#grid(
  columns: (1.18fr, 1fr),
  column-gutter: 6pt,

  // ─────────────────────────────────────────────────────────────
  // LEFT COLUMN: Spatial Cross-Section & Core Criteria
  // ─────────────────────────────────────────────────────────────
  block(
    width: 100%,
    fill: white,
    stroke: 0.8pt + palette.primary,
    radius: 4pt,
    inset: 8pt,
  )[
    #text(size: 10.5pt, weight: "bold", fill: palette.primary-dark)[Anatomie & Kernkriterien]
    #v(4pt)

    // Spatial Cross-Section Container
    #align(center)[
      #block(
        width: 100%,
        fill: rgb("#fafafa"),
        stroke: 0.5pt + palette.border-light,
        radius: 3pt,
        inset: 6pt,
      )[
        #text(size: 8.5pt, weight: "bold", fill: palette.text-muted)[
          Querschnitt Unterschenkel — Anteriores Kompartment
        ]
        #v(3pt)

        // Anatomical diagram
        #rect(
          width: 100%,
          height: 56mm,
          fill: rgb("#f0f4f4"),
          stroke: 1pt + rgb("#b2dfdb"),
          radius: 3pt,
        )[
          // Outer Leg Boundaries & Fascia (Poly shape)
          #place(center + horizon, dy: 3mm)[
            #polygon(
              fill: rgb("#e8f5e9"),
              stroke: 1.5pt + rgb("#004d40"),
              (0mm, -18mm),
              (34mm, -10mm),
              (38mm, 9mm),
              (18mm, 18mm),
              (-18mm, 18mm),
              (-38mm, 9mm),
              (-34mm, -10mm),
            )
          ]

          // Posterior Compartment (tief / oberflächlich)
          #place(center + horizon, dx: 0mm, dy: 11mm)[
            #polygon(
              fill: rgb("#e0e0e0"),
              stroke: 0.8pt + rgb("#9e9e9e"),
              (-25mm, -2mm),
              (25mm, -2mm),
              (13mm, 8mm),
              (-13mm, 8mm),
            )
            #place(center + horizon, dy: 0.5mm)[
              #text(size: 7pt, fill: rgb("#424242"))[Posteriores Kompartment (tief / oberflächlich)]
            ]
          ]

          // Lateral Compartment
          #place(center + horizon, dx: 29mm, dy: -2mm)[
            #polygon(
              fill: rgb("#eceff1"),
              stroke: 0.8pt + rgb("#b0bec5"),
              (0mm, -5mm),
              (7mm, -1mm),
              (5mm, 5mm),
              (-2mm, 2mm),
            )
            #place(center + horizon, dx: 1mm, dy: -0.5mm)[
              #text(size: 6.5pt, fill: rgb("#455a64"))[Laterales K.]
            ]
          ]

          // Bones: Tibia (shin, anteromedial) & Fibula (lateral)
          #place(center + horizon, dx: -20mm, dy: 0mm)[
            #polygon(
              fill: rgb("#cfd8dc"),
              stroke: 1.5pt + rgb("#37474f"),
              (-5mm, -5mm),
              (4mm, -5mm),
              (-1mm, 7mm),
            )
            #place(center + horizon, dx: -0.5mm, dy: -0.5mm)[
              #text(size: 7pt, weight: "bold", fill: rgb("#263238"))[Tibia]
            ]
          ]

          #place(center + horizon, dx: 18mm, dy: 0mm)[
            #circle(
              radius: 4.5mm,
              fill: rgb("#cfd8dc"),
              stroke: 1.5pt + rgb("#37474f"),
            )
            #place(center + horizon)[
              #text(size: 6.5pt, weight: "bold", fill: rgb("#263238"))[Fibula]
            ]
          ]

          // Swollen Anterior Compartment (Red High Pressure Zone)
          #place(center + horizon, dx: -1mm, dy: -10mm)[
            #rect(
              width: 28mm,
              height: 13mm,
              fill: rgb("#ffcdd2"),
              stroke: 1.8pt + palette.danger,
              radius: 3pt,
            )[
              #align(center + horizon)[
                #text(size: 8pt, weight: "bold", fill: palette.danger)[HOCHDRUCK ISCHÄMIE]
              ]
            ]
          ]

          // Tension Callout Banner
          #place(center + horizon, dx: -1mm, dy: -19mm)[
            #rect(
              fill: rgb("#263238"),
              radius: 2.5pt,
              inset: (x: 5pt, y: 2pt),
            )[
              #text(size: 7pt, weight: "bold", fill: white)[Faszienhülle unnachgiebig!]
            ]
          ]

          // Tension Arrows
          #place(center + horizon, dx: -18mm, dy: -10mm)[
            #text(size: 10pt, fill: palette.danger)[←]
          ]
          #place(center + horizon, dx: 15mm, dy: -10mm)[
            #text(size: 10pt, fill: palette.danger)[→]
          ]
        ]
      ]
    ]

    #v(4pt)

    // 3 Criteria Cards
    #block(
      width: 100%,
      fill: rgb("#fff5f5"),
      stroke: 0.8pt + palette.danger,
      radius: 3pt,
      inset: (x: 7pt, y: 5pt),
    )[
      #text(weight: "bold", fill: palette.danger, size: 9pt)[disproportionaler Schmerz]
      #v(1.5pt)
      #text(size: 8pt)[Starker, adäquat nicht durch Trauma erklärbarer Ruheschmerz]
    ]

    #v(3pt)

    #block(
      width: 100%,
      fill: rgb("#fffbe6"),
      stroke: 0.8pt + palette.warning,
      radius: 3pt,
      inset: (x: 7pt, y: 5pt),
    )[
      #text(weight: "bold", fill: palette.warning, size: 9pt)[passiver Dehnungsschmerz]
      #v(1.5pt)
      #text(size: 8pt)[Massiv verstärkt bei passiver Dehnung der Zehen / Fußmuskeln]
    ]

    #v(3pt)

    #block(
      width: 100%,
      fill: rgb("#f0fdfa"),
      stroke: 0.8pt + palette.primary,
      radius: 3pt,
      inset: (x: 7pt, y: 5pt),
    )[
      #text(weight: "bold", fill: palette.primary-dark, size: 9pt)[brettharte Loge]
      #v(1.5pt)
      #text(size: 8pt)[Prall gespannte, hart palpierbare Muskelloge]
    ]
  ],

  // ─────────────────────────────────────────────────────────────
  // RIGHT COLUMN: Diagnostic Trap & Action Protocol
  // ─────────────────────────────────────────────────────────────
  grid(
    rows: (auto, auto),
    row-gutter: 6pt,

    // Top Card: Diagnostic Trap (Pulse Warning)
    block(
      width: 100%,
      fill: rgb("#fff5f5"),
      stroke: 1.2pt + palette.danger,
      radius: 4pt,
      inset: 8pt,
    )[
      #grid(
        columns: (auto, 1fr),
        gutter: 5pt,
        align: (left + horizon, left + horizon),
        [
          #circle(radius: 8pt, fill: palette.danger)[
            #align(center + horizon)[#text(fill: white, size: 8.5pt, weight: "bold")[!]]
          ]
        ],
        [
          #text(size: 9.5pt, weight: "bold", fill: palette.danger)[
            DIAGNOSTISCHE FALLE: PULSKONTROLLE
          ]
        ]
      )
      #v(4pt)

      #rect(
        width: 100%,
        fill: white,
        stroke: 0.5pt + palette.danger,
        radius: 3pt,
        inset: 5pt,
      )[
        #text(size: 10pt, weight: "bold", fill: rgb("#991b1b"))[
          Erhaltene Pulse schließen ACS nicht aus
        ]
      ]

      #v(4pt)
      #text(size: 8pt)[
        Der Gewebedruck schädigt Kapillaren & Nerven lange bevor der arterielle Hauptpuls erlischt. Tastbare Pulse dürfen den Verdacht *NIEMALS* ausräumen!
      ]

      #v(4pt)
      #rect(
        fill: rgb("#fee2e2"),
        stroke: 0.5pt + palette.danger,
        radius: 3pt,
        inset: (x: 5pt, y: 3.5pt),
      )[
        #text(size: 7.5pt, weight: "bold", fill: palette.danger)[
          ⚠️ Kein grüner Haken bei tastbarem Puls! (Puls OK ≠ Entwarnung)
        ]
      ]
    ],

    // Bottom Card: Action Protocol & Restrictions
    block(
      width: 100%,
      fill: white,
      stroke: 0.8pt + palette.primary,
      radius: 4pt,
      inset: 8pt,
    )[
      #text(size: 10pt, weight: "bold", fill: palette.primary-dark)[
        Sofortmaßnahmen & Verbot
      ]
      #v(4pt)

      // PROHIBITION BOX (Verbot)
      #block(
        width: 100%,
        fill: rgb("#fff5f5"),
        stroke: 1pt + palette.danger,
        radius: 3pt,
        inset: 5pt,
      )[
        #text(size: 9pt, weight: "bold", fill: palette.danger)[
          🚫 VERBOT: nicht über Herzhöhe lagern
        ]
        #v(2pt)
        #text(size: 7.5pt)[
          Hochlagerung senkt den Perfusionsdruck im ischämischen Gewebe weiter ab!
        ]
      ]

      #v(5pt)
      #text(size: 8.5pt, weight: "bold", fill: palette.primary-dark)[
        ZWINGENDE SOFORTMASSNAHMEN:
      ]
      #v(3pt)

      #block(
        width: 100%,
        fill: rgb("#f0fdfa"),
        stroke: 0.4pt + palette.primary-light,
        radius: 2.5pt,
        inset: 4.5pt,
      )[
        #text(weight: "bold", fill: palette.primary-dark, size: 8.5pt)[✓ PT abbrechen]
        #h(3pt)
        #text(size: 7.5pt, fill: palette.text-muted)[(Keine manuelle Dehnung / Deep Release)]
      ]

      #v(2.5pt)
      #block(
        width: 100%,
        fill: rgb("#f0fdfa"),
        stroke: 0.4pt + palette.primary-light,
        radius: 2.5pt,
        inset: 4.5pt,
      )[
        #text(weight: "bold", fill: palette.primary-dark, size: 8.5pt)[✓ Verband lockern / öffnen]
        #h(3pt)
        #text(size: 7.5pt, fill: palette.text-muted)[(Einschnürenden Gips/Verband spalten)]
      ]

      #v(2.5pt)
      #block(
        width: 100%,
        fill: palette.primary-dark,
        radius: 2.5pt,
        inset: 4.5pt,
      )[
        #text(weight: "bold", fill: white, size: 8.5pt)[🚨 Notaufnahme / Unfallchirurgie]
        #h(3pt)
        #text(size: 7.5pt, fill: rgb("#e0f2f1"))[(Sofortige Fasziotomie veranlassen)]
      ]
    ]
  )
)

#v(4pt)

// ═══════════════════════════════════════════════════════════════
// BOTTOM BANNER: Differential Diagnosis Warning
// ═══════════════════════════════════════════════════════════════
#block(
  width: 100%,
  fill: rgb("#fffbe6"),
  stroke: 1pt + palette.accent,
  radius: 3pt,
  inset: (x: 8pt, y: 5pt),
)[
  #grid(
    columns: (auto, 1fr),
    gutter: 6pt,
    align: (left + horizon, left + horizon),
    [
      #rect(
        fill: palette.accent-dark,
        radius: 2pt,
        inset: (x: 5pt, y: 2.5pt),
      )[
        #text(size: 8pt, weight: "bold", fill: white)[ACHTUNG]
      ]
    ],
    [
      #text(size: 9pt, weight: "bold", fill: palette.text-body)[
        nicht nur Muskelkater / enger Gips bagatellisieren!
      ]
      #h(4pt)
      #text(size: 8pt, fill: palette.text-muted)[
        Symptome sind kein harmloser Muskelkater, sondern ein chirurgischer Notfall.
      ]
    ]
  )
]
