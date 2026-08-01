// Recreate (Phase B1/B1+) of Nano Banana free vision for III-2 S4
// Claim-safe German labels; bookkit palette; FA6 icons (iconography polish).
// Flow: 1→2→3; ja→4a (↻ stabil | → Verschlechterung 4b); nein→4b→5→6

#import "/packages/bookkit/theme.typ": palette
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")

#let _badge(n, fill: palette.primary) = box(
  width: 1.4em,
  height: 1.4em,
  radius: 100%,
  fill: fill,
  baseline: 18%,
  align(center + horizon)[
    #set text(fill: white, weight: "bold", size: 8.5pt)
    #n
  ],
)

#let _ico(body, fill: palette.text-muted) = {
  set text(fill: fill, size: 9pt)
  body
}

#let _step-card(
  num,
  title,
  subtitle: none,
  icon: none,
  fill: palette.bg-subtle,
  stroke: palette.border,
  badge-fill: palette.primary,
) = block(
  width: 100%,
  inset: (x: 10pt, y: 8pt),
  radius: 7pt,
  fill: fill,
  stroke: 0.75pt + stroke,
  breakable: false,
)[
  #set text(size: 9pt, fill: palette.text-body)
  #set par(leading: 0.35em)
  #grid(
    columns: (auto, 1fr) + if icon != none { (auto,) } else { () },
    column-gutter: 8pt,
    align: horizon,
    _badge(num, fill: badge-fill),
    [
      #text(weight: "bold", size: 9.5pt)[#title]
      #if subtitle != none [
        #linebreak()
        #text(size: 8pt, fill: palette.text-muted)[#subtitle]
      ]
    ],
    ..if icon != none { (icon,) } else { () },
  )
]

#let _arrow-down(fill: palette.primary) = align(center)[
  #text(size: 11pt, fill: fill)[#fa-arrow-down()]
]

#let _bullet-row(icon, body) = grid(
  columns: (1.1em, 1fr),
  column-gutter: 5pt,
  align: (horizon, top),
  text(size: 8.5pt, fill: palette.text-muted)[#icon],
  {
    set text(size: 8pt)
    set par(leading: 0.36em)
    body
  },
)

/// Full Primär-Algorithmus graphic (recreate + icon polish toward free vision).
#let primar-algorithmus-bewusstlosigkeit(
  title: [NOTFALLALGORITHMUS: BEWUSSTLOSIGKEIT],
  subtitle: [Primär-Algorithmus Bewusstseinsstörung / Kollaps],
  show-footer: true,
) = block(
  width: 100%,
  breakable: false,
  inset: 0pt,
)[
  // Header banner (Nano Banana free inspired)
  #block(
    width: 100%,
    inset: (x: 12pt, y: 8pt),
    fill: palette.primary,
    radius: (top: 5pt, bottom: 0pt),
  )[
    #set text(fill: white, weight: "bold", size: 9.5pt)
    #align(center)[
      #title
      #linebreak()
      #text(size: 7.5pt, weight: "regular", fill: white.transparentize(15%))[#subtitle]
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
    #set par(leading: 0.4em)

    // Trunk 1–2
    #_step-card(
      "1",
      [Szene sichern],
      subtitle: [Handschuhe wenn verfügbar],
      icon: _ico(fa-shield-halved(), fill: palette.primary),
    )
    #_arrow-down()
    #_step-card(
      "2",
      [Ansprechen + Schmerzreiz],
      subtitle: [Atemwege freimachen — *nicht* bei HWS-Trauma-Verdacht erzwingen],
      icon: _ico(fa-comment-medical(), fill: palette.primary),
    )
    #_arrow-down()

    // Decision 3 — diamond-ish emphasis
    #block(
      width: 100%,
      inset: (x: 10pt, y: 9pt),
      radius: 8pt,
      fill: gradient.linear(
        palette.warning.lighten(90%),
        palette.bg,
        angle: 90deg,
      ),
      stroke: 1.1pt + palette.warning,
    )[
      #grid(
        columns: (auto, 1fr, auto),
        column-gutter: 8pt,
        align: horizon,
        _badge("3", fill: palette.warning.darken(8%)),
        [
          #text(weight: "bold", size: 10pt)[Atmung normal?]
          #text(size: 8pt, fill: palette.text-muted)[ · max. *10 s*]
        ],
        _ico(fa-clock(), fill: palette.warning.darken(10%)),
      )
    ]

    #v(5pt)
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 8pt,
      align(center)[
        #text(weight: "bold", size: 8.5pt, fill: palette.success.darken(12%))[JA]
        #linebreak()
        #text(size: 10pt, fill: palette.success)[#fa-arrow-down()]
      ],
      align(center)[
        #text(weight: "bold", size: 8.5pt, fill: palette.danger)[NEIN / UNSICHER]
        #linebreak()
        #text(size: 10pt, fill: palette.danger)[#fa-arrow-down()]
      ],
    )

    #v(3pt)

    // Dual paths
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 10pt,
      // LEFT — 4a monitoring
      block(
        width: 100%,
        inset: 9pt,
        radius: 8pt,
        fill: palette.success.lighten(93%),
        stroke: 1.1pt + palette.success,
      )[
        #grid(
          columns: (auto, 1fr, auto),
          column-gutter: 6pt,
          align: horizon,
          _badge("4a", fill: palette.success.darken(5%)),
          text(weight: "bold", size: 9pt)[Seitenlage · überwachen],
          _ico(fa-phone(), fill: palette.success.darken(10%)),
        )
        #v(5pt)
        #_bullet-row(fa-person(), [*Stabile Seitenlage*])
        #v(2pt)
        #_bullet-row(fa-phone(), [*Notruf 112*])
        #v(2pt)
        #_bullet-row(fa-eye(), [Patient *überwachen*])
        #v(7pt)
        // Loop card
        #block(
          width: 100%,
          inset: 7pt,
          radius: 5pt,
          fill: white,
          stroke: (paint: palette.success, thickness: 0.9pt, dash: "dashed"),
        )[
          #grid(
            columns: (auto, 1fr),
            column-gutter: 6pt,
            align: horizon,
            text(size: 11pt, fill: palette.success.darken(15%))[#fa-arrows-rotate()],
            {
              set text(size: 7.5pt)
              text(weight: "bold", fill: palette.success.darken(20%))[Solange stabil:]
              linebreak()
              [Weiter überwachen *(bleibt bei 4a)*]
            },
          )
        ]
        #v(7pt)
        #align(center)[
          #block(
            width: 100%,
            inset: (x: 6pt, y: 5pt),
            radius: 4pt,
            fill: palette.danger.lighten(90%),
            stroke: 0.85pt + palette.danger,
          )[
            #set text(size: 7.5pt, weight: "bold", fill: palette.danger.darken(5%))
            #fa-arrow-right() Bei Verschlechterung → *4b* (CPR)
          ]
        ]
      ],
      // RIGHT — 4b → 5 → 6
      block(width: 100%, inset: 0pt)[
        #block(
          width: 100%,
          inset: 9pt,
          radius: 8pt,
          fill: palette.danger,
        )[
          #set text(fill: white)
          #grid(
            columns: (auto, 1fr, auto),
            column-gutter: 6pt,
            align: horizon,
            _badge("4b", fill: white.transparentize(70%)),
            text(weight: "bold", size: 9pt)[Keine normale Atmung / unsicher],
            _ico(fa-heart-pulse(), fill: white),
          )
          #v(5pt)
          #set text(size: 8pt, fill: white)
          #_bullet-row(fa-phone(), text(fill: white)[*Notruf 112*])
          #v(2pt)
          #_bullet-row(fa-heart-pulse(), text(fill: white)[*CPR beginnen*])
          #v(2pt)
          #_bullet-row(fa-bolt(), text(fill: white)[*AED holen lassen*])
        ]
        #align(center)[#text(fill: palette.danger, size: 11pt)[#fa-arrow-down()]]
        #block(
          width: 100%,
          inset: 8pt,
          radius: 7pt,
          fill: white,
          stroke: 0.9pt + palette.danger.lighten(35%),
        )[
          #grid(
            columns: (auto, 1fr, auto),
            column-gutter: 6pt,
            align: horizon,
            _badge("5", fill: palette.danger.darken(5%)),
            text(weight: "bold", size: 8.5pt)[Reanimation (CPR) · AED],
            _ico(fa-heart-pulse(), fill: palette.danger),
          )
          #v(4pt)
          #set text(size: 7.5pt)
          CPR *30:2* (Erwachsene, Kurs) bzw. *nur Kompressionen*, wenn ungeschult/unwillig; *AED-Anweisungen folgen*.
        ]
        #align(center)[#text(fill: palette.primary, size: 11pt)[#fa-arrow-down()]]
        #block(
          width: 100%,
          inset: 8pt,
          radius: 7pt,
          fill: palette.primary.lighten(92%),
          stroke: 0.9pt + palette.primary,
        )[
          #grid(
            columns: (auto, 1fr, auto),
            column-gutter: 6pt,
            align: horizon,
            _badge("6", fill: palette.primary),
            text(weight: "bold", size: 8.5pt)[Bis Übergabe RD],
            _ico(fa-truck-medical(), fill: palette.primary),
          )
          #v(3pt)
          #set text(size: 7.5pt)
          Fortsetzen — *minimale Pausen* — bis Übergabe Rettungsdienst.
        ]
      ],
    )

    #if show-footer [
      #v(8pt)
      #block(
        width: 100%,
        inset: 6pt,
        radius: 3pt,
        fill: palette.bg-subtle,
      )[
        #set text(size: 7pt, fill: palette.text-muted)
        *Kompressions-Rahmen (Erwachsene, ERC/GRC):* ausreichend tief/schnell, volle Entlastung,
        minimale Pausen. Exakte Zielzahlen im aktuellen BLS/AED-Kurs.
      ]
    ]
  ]
]
