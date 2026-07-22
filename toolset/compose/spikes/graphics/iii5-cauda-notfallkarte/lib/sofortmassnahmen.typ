// Recreate (Phase B1) of free vision for III-5 S4 Sofortmaßnahmen
// Claim-safe German labels; bookkit palette; FA6 icons.
// Hard-stop protocol: 1 Abbrechen → 2 Lagern → 3 Alarm → 4 Prüfung; Escape BLS; Verbote banner

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

#let _step-card(
  num,
  title,
  body,
  icon: none,
  fill: palette.bg-subtle,
  stroke: palette.border,
  badge-fill: palette.primary,
  title-fill: palette.text-body,
  body-fill: palette.text-body,
  solid: false,
) = block(
  width: 100%,
  inset: 10pt,
  radius: 8pt,
  fill: fill,
  stroke: if solid { none } else { 0.85pt + stroke },
  breakable: false,
)[
  #set text(fill: if solid { white } else { body-fill })
  #grid(
    columns: (auto, 1fr) + if icon != none { (auto,) } else { () },
    column-gutter: 8pt,
    align: horizon,
    _badge(num, fill: if solid { white.transparentize(75%) } else { badge-fill }),
    text(weight: "bold", size: 10pt, fill: if solid { white } else { title-fill })[#title],
    ..if icon != none { (icon,) } else { () },
  )
  #v(5pt)
  #set text(size: 8.2pt, fill: if solid { white } else { body-fill })
  #set par(leading: 0.38em)
  #body
]

/// Full III-5 S4 Sofortmaßnahmen graphic (hard-stop protocol recreate).
#let sofortmassnahmen-ces(
  title: [III-5 S4  SOFORTMASSNAHMEN · CES],
  show-footer: true,
) = block(
  width: 100%,
  breakable: false,
  inset: 0pt,
)[
  // Header — dark teal (not emergency-only chrome on header)
  #block(
    width: 100%,
    inset: (x: 12pt, y: 9pt),
    fill: palette.primary-dark,
    radius: (top: 5pt, bottom: 0pt),
  )[
    #set text(fill: white, weight: "bold", size: 9.5pt)
    #align(center)[
      #fa-triangle-exclamation() #h(4pt) #title
    ]
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

    // ── 1 Therapie abbrechen (solid danger) ──
    #_step-card(
      "1",
      [Therapie *sofort abbrechen*],
      [
        *Keine* HVT/Manipulation · *keine* Traktion · *keine* mobilisierende LWS-Technik
      ],
      icon: _ico(fa-ban(), fill: white),
      fill: palette.danger,
      solid: true,
    )

    #_arrow-down(fill: palette.danger.darken(10%))

    // ── 2 Lagern ──
    #_step-card(
      "2",
      [Patient *nicht* aufstehen / gehen lassen],
      [
        Bei Schwäche oder Blasennot: *ruhig lagern*, überwachen — kein Gehen „zur Abklärung“.
      ],
      icon: _ico(fa-bed(), fill: palette.primary),
      fill: palette.primary.lighten(92%),
      stroke: palette.primary,
      badge-fill: palette.primary,
    )

    #_arrow-down()

    // ── 3 Alarm / Übergabe ──
    #_step-card(
      "3",
      [*112* / ED-Transport],
      [
        Organisierter Transport. *Übergabe:* Sattel / Blase / Darm / Beinkraft · Zeitverlauf ·
        Antikoagulation / OP / Trauma
      ],
      icon: _ico(fa-phone(), fill: palette.primary),
      fill: palette.primary.lighten(92%),
      stroke: palette.primary,
      badge-fill: palette.primary,
    )

    #_arrow-down()

    // ── 4 Nicht-invasive Prüfung ──
    #_step-card(
      "4",
      [Orientierende *nicht-invasive* Prüfung],
      [
        Nur soweit Transport *nicht* verzögert (Sensibilität inkl. S3–S5-Frage, grobe Kraft, MER).
        #v(3pt)
        #text(weight: "bold", fill: palette.danger.darken(5%))[
          #fa-circle-xmark() *Keine* invasive Restharnmessung / Sphinkterprüfung als PT-Pflicht
        ]
      ],
      icon: _ico(fa-stethoscope(), fill: palette.primary-dark),
      fill: palette.bg-subtle,
      stroke: palette.border,
      badge-fill: palette.primary-dark,
    )

    #v(8pt)

    // ── Escape: BLS (short, not main trunk) ──
    #block(
      width: 100%,
      inset: (x: 9pt, y: 7pt),
      radius: 6pt,
      fill: palette.bg-subtle,
      stroke: (paint: palette.text-muted, thickness: 0.85pt, dash: "dashed"),
    )[
      #grid(
        columns: (auto, 1fr),
        column-gutter: 8pt,
        align: horizon,
        text(size: 11pt, fill: palette.text-muted)[#fa-heart-pulse()],
        {
          set text(size: 7.8pt, fill: palette.text-muted)
          text(weight: "bold")[Escape (kurz):]
          [ Bei Kollaps / Bewusstseinsstörung → BLS-Pfad ]
          text(weight: "bold")[→ III-2]
          [ — *nicht* Hauptstrang dieser Karte]
        },
      )
    ]

    #v(8pt)

    // ── Verbote banner (solid danger) ──
    #block(
      width: 100%,
      inset: 10pt,
      radius: 8pt,
      fill: palette.danger,
    )[
      #set text(fill: white)
      #grid(
        columns: (auto, 1fr),
        column-gutter: 8pt,
        align: (horizon, top),
        text(size: 14pt)[#fa-ban()],
        {
          set text(size: 8.2pt)
          text(weight: "bold", size: 9.5pt)[Verbote bei Sattel-/Sphinkter-Flag]
          v(4pt)
          [*Keine* Eigen-Medikation]
          linebreak()
          [*Kein* „Schmerz wegmassieren“]
          linebreak()
          [*Kein* Termin „morgen früh …“]
        },
      )
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
        *Hard-stop:* abbrechen → lagern → 112/ED → Prüfung ohne Transportverzögerung.
        CES-Detail / Illness Script: `→ V-Cauda`. BLS: `→ III-2`.
      ]
    ]
  ]
]
