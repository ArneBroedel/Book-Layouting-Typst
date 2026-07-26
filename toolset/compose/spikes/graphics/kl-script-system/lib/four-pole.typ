// F4 — Four-Pole Suspicion + Trügerisch (Erysipel §4)

#import "/packages/bookkit/theme.typ": palette

#let _pole(title, fill, bar, body) = {
  block(
    width: 100%,
    fill: fill,
    stroke: (left: 3.5pt + bar, rest: 0.4pt + palette.border-light),
    inset: 6pt,
    radius: 2pt,
  )[
    #text(size: 7.5pt, weight: "bold", fill: bar)[#title]
    #v(2pt)
    #set text(size: 7pt)
    #body
  ]
}

#let f4-grid-erysipel() = {
  grid(
    columns: (1fr, 1fr),
    column-gutter: 5pt,
    row-gutter: 5pt,
    _pole("Erhärtet den Verdacht", rgb("#f0fdfa"), palette.primary)[
      Flächiges, scharf begrenztes Erythem mit Überwärmung und Schmerz; Onset Stunden–Tage; mögliche Systemik (Fieber, Schüttelfrost); Eintrittspforte oder Lymphödem/Diabetes/Immunsuppression.
    ],
    _pole("Passt eher nicht", palette.bg-subtle, palette.text-muted)[
      Rein belastungsabhängiger Muskelschmerz *ohne* Hautrötung und *ohne* Überwärmung; bilaterale schleichende Stauungsdermatitis ohne Systemik und ohne scharfe flammenförmige Begrenzung.
    ],
    _pole("Nicht übersehen", rgb("#fff7ed"), palette.warning)[
      Nekrotisierende Weichteilinfektion · Sepsis · TVT (kann koexistieren) · angrenzende septische Arthritis · Phlegmone mit tieferer Ausbreitung.
    ],
    _pole("Trügerische Erklärungen", rgb("#fef2f2"), palette.danger)[
      *Gefahr hinter harmlosem Bild* — siehe Masken-Leiste unten.
    ],
  )
}

#let f4-mask-strip-erysipel() = {
  set text(size: 7.2pt)
  text(size: 8pt, weight: "bold", fill: palette.danger)[
    Trügerisch — MSK-/Alltags-Label maskiert Infekt
  ]
  v(3pt)
  let mask(harmless, danger) = {
    block(
      width: 100%,
      inset: 5pt,
      radius: 2pt,
      fill: white,
      stroke: 0.45pt + palette.border,
    )[
      #grid(
        columns: (1fr, 10pt, 1fr),
        column-gutter: 3pt,
        align(horizon)[
          #text(fill: palette.text-muted, size: 6.5pt)[Label]
          #v(1pt)
          #text(weight: "bold")[#harmless]
        ],
        align(center + horizon)[
          #text(size: 11pt, fill: palette.danger)[→]
        ],
        align(horizon)[
          #text(fill: palette.danger, size: 6.5pt)[Darunter]
          #v(1pt)
          #text(weight: "bold", fill: palette.danger)[#danger]
        ],
      )
    ]
  }
  stack(
    spacing: 3.5pt,
    mask[„Muskelkater“ / Überlastung][Weichteilinfekt — Therapieverzögerung],
    mask[„Nur gestautes Bein“ / Ekzem][Systemik + flammenförmiges Muster übersehen],
    mask[„Wahrscheinlich Gicht“ (Fuß)][Erysipel topografisch verdeckt],
    mask[„Sicher TVT“][TVT-Abklärung nötig — schließt Infekt *nicht* aus (und umgekehrt)],
  )
}

#let f4-combined-erysipel() = {
  f4-grid-erysipel()
  v(5pt)
  f4-mask-strip-erysipel()
}
