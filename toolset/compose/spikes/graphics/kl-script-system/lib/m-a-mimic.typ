// Wave G3 — M-A mimic mapping rows (Form Spec kl-u-mimic)
// FRAME-ERROR: false frame → real danger · no wireframe UI words
// Pins: Erysipel §4 Trügerische Erklärungen

#import "/packages/bookkit/theme.typ": palette

#let m-a-erysipel() = {
  set text(size: 8pt)
  // Title = content role only (trügerisch), not a form-language caption
  text(size: 9pt, weight: "bold", fill: palette.danger)[
    Trügerische Erklärungen
  ]
  v(4pt)

  let row(frame, danger, consequence: none) = {
    block(
      width: 100%,
      inset: 6pt,
      radius: 2pt,
      stroke: 0.45pt + palette.border,
      fill: white,
    )[
      #grid(
        columns: (40mm, 12mm, 1fr),
        column-gutter: 4pt,
        align(horizon)[
          #text(size: 8pt)[„#frame“]
        ],
        align(center + horizon)[
          #text(size: 13pt, fill: palette.danger, weight: "bold")[→]
        ],
        align(horizon)[
          #text(size: 8pt, weight: "bold", fill: palette.danger)[#danger]
          #if consequence != none {
            text(size: 7pt, fill: palette.text-muted)[ — #consequence]
          }
        ],
      )
    ]
  }

  stack(
    spacing: 3.5pt,
    row(
      "Muskelkater / Überlastung",
      "Weichteilinfekt (Erysipel)",
      consequence: "ärztliche Therapie wird verzögert",
    ),
    row(
      "Nur gestautes Bein / Ekzem",
      "Systemik und flammenförmiges Muster übersehen",
      consequence: none,
    ),
    row(
      "Wahrscheinlich Gicht (Fuß)",
      "Erysipel topografisch verdeckt",
      consequence: none,
    ),
    row(
      "Sicher TVT",
      "TVT und/oder Weichteilinfekt",
      consequence: "TVT-Abklärung nötig — schließt Infekt nicht aus",
    ),
  )
}
