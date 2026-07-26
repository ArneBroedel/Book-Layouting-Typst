// kl-abcde-look (candidate) — code-first letter cascade
// Form Spec: domains/medical/briefs/kl-melanom-abcde.form-spec.md
// Recipe: kl-abcde-look · realize_path: code (playbook/04)
// Rule: claim pins only · DE · no form-meta inside figure

#import "/packages/bookkit/theme.typ": palette

/// Strukturierter Blick: ABCDE + Ugly Duckling (V-10 Melanom).
/// Pins copy-through Form Spec / C — no invented cut-offs or EN-only labels.
#let abcde-melanom() = {
  set text(size: 8pt, fill: palette.text-body)

  // Job frame (loud title, recognition chrome — teal, not emergency red wall)
  text(size: 9.5pt, weight: "bold", fill: palette.primary-dark)[
    Strukturierter Blick · ABCDE + Ugly Duckling
  ]
  v(2pt)
  text(size: 7pt, fill: palette.text-muted)[
    Früherkennung suspekter Veränderungen — rechtzeitige ärztliche Zuweisung.
  ]
  v(5pt)

  // Letter spine A–E — ordered cascade (not five equal table rows)
  let letter(L, body, fill) = {
    grid(
      columns: (11mm, 1fr),
      column-gutter: 5pt,
      align(center + horizon)[
        #box(
          width: 10mm,
          height: 10mm,
          radius: 2pt,
          fill: fill,
          stroke: 0.5pt + fill.darken(25%),
          align(center + horizon)[
            #text(size: 14pt, weight: "bold", fill: white)[#L]
          ],
        )
      ],
      align(horizon)[
        #block(
          width: 100%,
          inset: (x: 7pt, y: 5pt),
          radius: 2pt,
          fill: white,
          stroke: 0.45pt + palette.border,
        )[
          #set text(size: 8pt, fill: palette.text-body)
          #body
        ]
      ],
    )
  }

  stack(
    spacing: 3.5pt,
    // Claim pins (Form Spec)
    letter("A", [Asymmetrie], palette.primary-dark),
    letter("B", [unscharfe/unregelmäßige Begrenzung], palette.primary),
    letter("C", [Farbvielfalt (Color)], palette.primary-light),
    letter("D", [Durchmesser typisch > 5 mm], palette.warning),
    letter("E", [Evolution], palette.primary.darken(8%)),
  )

  // Ugly Duckling — second sign, distinct from letter spine, equal job
  v(6pt)
  block(
    width: 100%,
    inset: 8pt,
    radius: 3pt,
    fill: rgb("#fff7ed"),
    stroke: (left: 4pt + palette.warning, rest: 0.5pt + palette.warning.lighten(35%)),
  )[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 8pt,
      align(horizon)[
        #box(
          inset: (x: 6pt, y: 3pt),
          radius: 2pt,
          fill: palette.warning,
          text(size: 7.5pt, weight: "bold", fill: white)[Ugly Duckling],
        )
      ],
      align(horizon)[
        #set text(size: 8pt)
        Eine Läsion unterscheidet sich klar von den übrigen Nävi.
      ],
    )
  ]

  // Action micro — assignment on suspekt; forbidden destructive measures
  v(5pt)
  block(
    width: 100%,
    inset: 6pt,
    radius: 2pt,
    fill: rgb("#f0fdfa"),
    stroke: 0.45pt + palette.primary.lighten(40%),
  )[
    #set text(size: 7.5pt)
    #text(weight: "bold", fill: palette.primary)[Bei Suspekt → zuweisen:]
    #h(3pt)
    *keine* Biopsie, *keine* Kürettage, *keine* destruktiven Maßnahmen an suspekten Läsionen.
  ]
}

// ── Standalone demo page (eval compile) ───────────────────────
#set page(width: 160mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)
#set par(justify: false, leading: 0.65em)

#abcde-melanom()
