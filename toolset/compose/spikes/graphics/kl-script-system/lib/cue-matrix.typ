// F3 — Clinical Cue Matrix variants (Erysipel §3)

#import "/packages/bookkit/theme.typ": palette

#let f3-table-erysipel() = {
  set text(size: 8pt)
  table(
    columns: (28mm, 1fr),
    stroke: 0.4pt + palette.border-light,
    inset: 6pt,
    fill: (_, y) => if y == 0 { palette.primary } else if calc.odd(y) {
      palette.bg-subtle
    } else {
      white
    },
    table.header(
      text(fill: white, weight: "bold")[Domäne],
      text(fill: white, weight: "bold")[Erwartbare Merkmale],
    ),
    text(weight: "bold", fill: palette.primary)[Anamnese],
    [Plötzliches oder rasch progredientes Erythem (Bein oder Gesicht), Schmerz, Überwärmung; Fieber/Schüttelfrost; Eintrittspforte (Mykose, Wunde, Ulcus); Immunsuppression/Diabetes erfragen],
    text(weight: "bold", fill: palette.primary)[Beobachtung],
    [Scharf begrenztes, oft flammenförmiges Erythem, meist einseitig; glänzende, überwärmte Haut; ggf. Ödem und regionäre Lymphknotenschwellung; toxischer AZ bei schwerem Verlauf],
    text(weight: "bold", fill: palette.primary)[Untersuchung],
    [Rand markieren (Verlauf), Umfang, Pulse, Lymphknoten, Vitalparameter/Systemzeichen; *keine* manuelle „Entstauung“ und *keine* intensive Wärme auf floridem Befund],
    text(weight: "bold", fill: palette.primary)[Verlauf],
    [Stunden bis wenige Tage; rasche Ausbreitung, zunehmender Schmerz oder Systemik sind alarmierend],
  )
}

#let _tile(title, body, accent: palette.primary) = {
  block(
    width: 100%,
    height: auto,
    fill: white,
    stroke: (left: 3pt + accent, rest: 0.4pt + palette.border-light),
    inset: 7pt,
    radius: 2pt,
  )[
    #text(size: 8pt, weight: "bold", fill: accent)[#title]
    #v(3pt)
    #set text(size: 7.2pt, fill: palette.text-body)
    #body
  ]
}

#let f3-tiles-erysipel() = {
  grid(
    columns: (1fr, 1fr),
    rows: (auto, auto),
    column-gutter: 5pt,
    row-gutter: 5pt,
    _tile("Anamnese", [
      Plötzliches/rasches Erythem (Bein/Gesicht), Schmerz, Überwärmung; Fieber/Schüttelfrost; Eintrittspforte; Immunsuppression/Diabetes erfragen.
    ]),
    _tile("Beobachtung", [
      Scharf begrenzt, oft flammenförmig, meist einseitig; glänzend, überwärmt; Ödem/Lymphknoten; toxischer AZ möglich.
    ], accent: palette.primary-light),
    _tile("Untersuchung", [
      Rand markieren · Umfang · Pulse · Lymphknoten · Vitale.\
      *Keine* manuelle Entstauung · *keine* intensive Wärme auf floridem Befund.
    ], accent: palette.warning),
    _tile("Verlauf", [
      Stunden bis wenige Tage. Rasche Ausbreitung, Schmerz↑ oder Systemik → alarmierend.
    ], accent: palette.accent-dark),
  )
}
