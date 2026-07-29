// Wave G — FA-A + NM strip (Form Spec kl-u-discrimination)
// HYP-H two poles + HYP-OTHER loud list — no form meta in figure
// Pins: Erysipel §4

#import "/packages/bookkit/theme.typ": palette

#let fa-a-erysipel() = {
  set text(size: 8pt)
  grid(
    columns: (1fr, 1fr),
    column-gutter: 5pt,
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: rgb("#f0fdfa"),
      stroke: (left: 3.5pt + palette.primary, rest: 0.4pt + palette.border-light),
    )[
      #text(size: 8pt, weight: "bold", fill: palette.primary)[Erhärtet den Verdacht]
      #v(3pt)
      #set text(size: 7.2pt, fill: palette.text-body)
      Flächiges, scharf begrenztes Erythem mit Überwärmung und Schmerz; Onset Stunden bis Tage; mögliche Systemik (Fieber, Schüttelfrost); Eintrittspforte oder Lymphödem/Diabetes/Immunsuppression im Kontext.
    ],
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: palette.bg-subtle,
      stroke: (left: 3.5pt + palette.text-muted, rest: 0.4pt + palette.border-light),
    )[
      #text(size: 8pt, weight: "bold", fill: palette.text-muted)[Passt eher nicht]
      #v(3pt)
      #set text(size: 7.2pt, fill: palette.text-body)
      Rein belastungsabhängiger Muskelschmerz *ohne* Hautrötung und *ohne* Überwärmung; bilaterale, schleichende Stauungsdermatitis ohne Systemik und ohne scharfe flammenförmige Begrenzung.
    ],
  )
}

#let nm-a-erysipel() = {
  set text(size: 8pt)
  block(
    width: 100%,
    inset: 7pt,
    radius: 2pt,
    fill: rgb("#fff7ed"),
    stroke: (left: 3.5pt + palette.warning, rest: 0.5pt + palette.warning.lighten(40%)),
  )[
    #text(size: 8pt, weight: "bold", fill: palette.warning)[Nicht übersehen]
    #v(3pt)
    #set text(size: 7.3pt, fill: palette.text-body)
    #list(
      [Nekrotisierende Weichteilinfektion],
      [Sepsis],
      [TVT (kann unklar sein oder koexistieren)],
      [Angrenzende septische Arthritis],
      [Phlegmone mit tieferer Ausbreitung],
    )
  ]
}

/// Full §4 discrimination stack without mimic (mimic is separate accepted unit)
#let discrimination-erysipel() = {
  fa-a-erysipel()
  v(5pt)
  nm-a-erysipel()
}

/// Full §4 as learner would see: FA + NM + M-A
#let section-four-erysipel() = {
  import "m-a-mimic.typ": m-a-erysipel
  discrimination-erysipel()
  v(6pt)
  m-a-erysipel()
}
