// ABCDE + Ugly Duckling — structured look (kl-melanom-abcde)
// Form Spec: domains/medical/briefs/kl-melanom-abcde.form-spec.md
// Claim pins only — no invented cut-offs / no form-meta in the graphic.

#import "/packages/bookkit/theme.typ": palette, space, type-scale

/// Letter cascade for PT structured skin look (ABCDE) + Ugly Duckling.
/// Zones: letter spine (loud) · Ugly Duckling (medium-loud) · action micro (medium).
#let abcde-melanom() = {
  set text(size: 8.5pt, fill: palette.text-body)

  // ── Job frame ────────────────────────────────────────────────
  text(size: 9.5pt, weight: "bold", fill: palette.primary-dark)[
    Strukturierter Blick (ABCDE, Ugly Duckling)
  ]
  v(2pt)
  text(size: 7.5pt, fill: palette.text-muted)[
    Früherkennung suspekter Veränderungen · rechtzeitige ärztliche Zuweisung
  ]
  v(6pt)

  // ── Letter spine A–E ─────────────────────────────────────────
  let letter-row(L, criterion, fill) = {
    grid(
      columns: (11mm, 1fr),
      column-gutter: 6pt,
      align(center + horizon)[
        #box(
          width: 10mm,
          height: 10mm,
          radius: 2pt,
          fill: fill,
          stroke: 0.5pt + fill.darken(22%),
          align(center + horizon)[
            #text(size: 15pt, weight: "bold", fill: white)[#L]
          ],
        )
      ],
      align(horizon)[
        #block(
          width: 100%,
          inset: (x: 8pt, y: 6pt),
          radius: 2pt,
          fill: white,
          stroke: (
            left: 2.5pt + fill,
            rest: 0.45pt + palette.border-light,
          ),
        )[
          #set text(size: 8.5pt)
          #criterion
        ]
      ],
    )
  }

  // Teal recognition chrome (not emergency red wall); D slightly accented for mm pin.
  stack(
    spacing: 4pt,
    letter-row("A", [Asymmetrie], palette.primary-dark),
    letter-row("B", [unscharfe/unregelmäßige Begrenzung], palette.primary),
    letter-row("C", [Farbvielfalt (Color)], palette.primary-light),
    letter-row(
      "D",
      [Durchmesser typisch > 5 mm],
      palette.primary.mix(palette.accent),
    ),
    letter-row("E", [Evolution], palette.primary.darken(8%)),
  )

  v(8pt)

  // ── Ugly Duckling (distinct from letter spine, equal job) ────
  block(
    width: 100%,
    inset: 8pt,
    radius: 3pt,
    fill: rgb("#fffbeb"),
    stroke: (
      left: 4pt + palette.accent,
      rest: 0.5pt + palette.accent.lighten(35%),
    ),
  )[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 8pt,
      align(horizon)[
        #box(
          inset: (x: 7pt, y: 3pt),
          radius: 2pt,
          fill: palette.accent,
          text(size: 7.5pt, weight: "bold", fill: white)[Ugly Duckling],
        )
      ],
      align(horizon)[
        #set text(size: 8.5pt)
        eine Läsion unterscheidet sich klar von den übrigen Nävi
      ],
    )
  ]

  v(6pt)

  // ── Action micro (not full TIME stack) ───────────────────────
  block(
    width: 100%,
    inset: (x: 8pt, y: 6pt),
    radius: 2pt,
    fill: rgb("#f0fdfa"),
    stroke: 0.45pt + palette.primary.lighten(40%),
  )[
    #set text(size: 8pt)
    #text(weight: "bold", fill: palette.primary)[→ zuweisen bei Suspekt]
    #h(4pt)
    keine Biopsie, keine Kürettage, keine destruktiven Maßnahmen an suspekten Läsionen
  ]
}

// Standalone preview (compile this file directly)
#set page(width: 120mm, height: auto, margin: 8mm, fill: white)
#set text(font: ("Libertinus Serif",))
#abcde-melanom()
