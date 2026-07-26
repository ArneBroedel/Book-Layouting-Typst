// F3 + F4 redesign v2 — content relations, no decorative matrices

#import "/packages/bookkit/theme.typ": palette

// ── F3: domain table only (compact, no fake 2×2) ──────────────
#let f3-erysipel-v2() = {
  set text(size: 8pt)
  text(size: 7.5pt, fill: palette.text-muted)[
    Vier *gleichgeordnete* Kanäle des Erstkontakts — keine Matrix-Logik, keine Farbquadranten.
  ]
  v(3pt)
  table(
    columns: (26mm, 1fr),
    stroke: 0.4pt + palette.border-light,
    inset: 5.5pt,
    fill: (_, y) => {
      if y == 0 { palette.bg-muted }
      else if y == 3 { rgb("#fffbeb") } // Untersuchung: KI-Zeile leicht markieren
      else { white }
    },
    table.header(
      text(weight: "bold", size: 7.5pt)[Kanal],
      text(weight: "bold", size: 7.5pt)[Merkmale (Erysipel)],
    ),
    text(weight: "bold")[Anamnese],
    [Rasch progredientes Erythem (Bein/Gesicht), Schmerz, Überwärmung; Fieber/Schüttelfrost; Eintrittspforte; Immunsuppression/Diabetes erfragen.],
    text(weight: "bold")[Beobachtung],
    [Scharf begrenzt, oft flammenförmig, meist einseitig; glänzend, überwärmt; Ödem/Lymphknoten; toxischer AZ möglich.],
    text(weight: "bold")[Untersuchung],
    [Rand markieren · Umfang · Pulse · Lymphknoten · Vitale. *Keine* manuelle Entstauung · *keine* intensive Wärme auf floridem Befund.],
    text(weight: "bold")[Verlauf],
    [Stunden bis wenige Tage. Rasche Ausbreitung, Schmerz↑ oder Systemik → alarmierend.],
  )
}

// ── F4: three relations, not one 2×2 ───────────────────────────

/// For / against working hypothesis H
#let f4-for-against-erysipel() = {
  set text(size: 7.5pt)
  text(size: 7.5pt, fill: palette.text-muted)[
    Relation 1 — *Gewichtung der Arbeitshypothese „Erysipel“* (Für / Gegen).
  ]
  v(3pt)
  grid(
    columns: (1fr, 1fr),
    column-gutter: 5pt,
    block(
      width: 100%,
      inset: 6pt,
      radius: 2pt,
      fill: rgb("#f0fdfa"),
      stroke: (left: 3pt + palette.primary, rest: 0.4pt + palette.border-light),
    )[
      #text(weight: "bold", fill: palette.primary, size: 8pt)[Erhärtet H]
      #v(2pt)
      Flächiges, scharf begrenztes Erythem mit Überwärmung und Schmerz; Onset Stunden–Tage; mögliche Systemik; Eintrittspforte oder Lymphödem/Diabetes/Immunsuppression.
    ],
    block(
      width: 100%,
      inset: 6pt,
      radius: 2pt,
      fill: palette.bg-subtle,
      stroke: (left: 3pt + palette.text-muted, rest: 0.4pt + palette.border-light),
    )[
      #text(weight: "bold", fill: palette.text-muted, size: 8pt)[Passt eher nicht zu H]
      #v(2pt)
      Rein belastungsabhängiger Muskelschmerz *ohne* Hautrötung und *ohne* Überwärmung; bilaterale schleichende Stauungsdermatitis ohne Systemik und ohne scharfe flammenförmige Begrenzung.
    ],
  )
}

/// Must-not-miss — other entities
#let f4-must-not-miss-erysipel() = {
  set text(size: 7.5pt)
  text(size: 7.5pt, fill: palette.text-muted)[
    Relation 2 — *Nicht* „gegen Erysipel“, sondern *andere* gefährliche Bilder nicht verpassen.
  ]
  v(3pt)
  block(
    width: 100%,
    inset: 6pt,
    radius: 2pt,
    fill: rgb("#fff7ed"),
    stroke: (left: 3pt + palette.warning, rest: 0.45pt + palette.warning.lighten(40%)),
  )[
    #text(weight: "bold", fill: palette.warning, size: 8pt)[Nicht übersehen]
    #v(2pt)
    #list(
      [Nekrotisierende Weichteilinfektion],
      [Sepsis],
      [TVT (kann koexistieren)],
      [Angrenzende septische Arthritis],
      [Phlegmone mit tieferer Ausbreitung],
    )
  ]
}

/// Mimic map: false frame → real danger (NO meta words Label/Darunter)
#let f4-mimic-map-erysipel() = {
  set text(size: 7.5pt)
  text(size: 7.5pt, fill: palette.text-muted)[
    Relation 3 — *Trügerisch:* Alltags-/MSK-Frame *maskiert* die Gefahr (Pfeil = Verkennungsrichtung).
  ]
  v(3pt)

  let row(frame, danger, consequence: none) = {
    block(
      width: 100%,
      inset: 6pt,
      radius: 2pt,
      stroke: 0.4pt + palette.border,
      fill: white,
    )[
      #grid(
        columns: (38mm, 14mm, 1fr),
        column-gutter: 5pt,
        align(horizon)[
          #text(size: 8pt)[„#frame“]
        ],
        align(center + horizon)[
          #text(size: 14pt, fill: palette.danger, weight: "bold")[→]
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
    spacing: 3pt,
    row(
      "Muskelkater / Überlastung",
      "Weichteilinfekt (Erysipel o. ä.)",
      consequence: "ärztliche Therapie wird verzögert",
    ),
    row(
      "Nur gestautes Bein / Ekzem",
      "Systemische Infektion hinter Stauungsmuster",
      consequence: "Systemik und flammenförmige Grenze übersehen",
    ),
    row(
      "Wahrscheinlich Gicht (Fuß)",
      "Erysipel / Weichteilinfekt",
      consequence: "topografisch verdeckt",
    ),
    row(
      "Sicher TVT",
      "TVT *und/oder* Weichteilinfekt",
      consequence: "TVT-Abklärung nötig — schließt Infekt nicht aus",
    ),
  )
}

#let f4-erysipel-v2-full() = {
  f4-for-against-erysipel()
  v(6pt)
  f4-must-not-miss-erysipel()
  v(6pt)
  f4-mimic-map-erysipel()
}
