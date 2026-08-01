// Clean slate 2026-08-01 · ACS kl-kurz · slug kl-kompartment-2026-08-01
// Layout revise 2026-08-01: quieter criteria (no multi-orange stack hop)
// Pins: copy-through C chapter-v-3-kompartmentsyndrom only

#import "/packages/bookkit/theme.typ": palette
#import "/domains/medical/lib/typst/kl-wave5/compartment.typ": (
  us-compartment,
  mimic-compartment,
)

#let us-acs = us-compartment
#let mimic-acs = mimic-compartment

/// Quieter L3–L4 criteria cluster (layout revise wave — replace loud stacked bars)
#let criteria-acs() = {
  set text(size: 8.2pt)

  text(size: 9pt, weight: "bold", fill: palette.primary)[
    Klinische Zeichen · vorderes Unterschenkelkompartiment
  ]
  v(2pt)
  text(size: 7.5pt, fill: palette.text-muted)[
    Kritischer Druckanstieg im osteofaszialen Fach → Ischämie in wenigen Stunden, wenn unbehandelt.
  ]
  v(6pt)

  // 2×2 primary signs — one visual weight level, not five escalating walls
  grid(
    columns: (1fr, 1fr),
    column-gutter: 6pt,
    row-gutter: 6pt,
    block(
      width: 100%, inset: 7pt, radius: 2pt,
      fill: white,
      stroke: (left: 3pt + palette.warning, rest: 0.45pt + palette.border),
    )[
      #text(size: 8pt, weight: "bold", fill: palette.warning.darken(12%))[1 · Disproportionaler Schmerz]
      #v(3pt)
      #text(size: 7.5pt)[Schmerz *deutlich stärker* als zur Verletzung passend; analgetisch kaum beherrschbar.]
    ],
    block(
      width: 100%, inset: 7pt, radius: 2pt,
      fill: white,
      stroke: (left: 3pt + palette.warning, rest: 0.45pt + palette.border),
    )[
      #text(size: 8pt, weight: "bold", fill: palette.warning.darken(12%))[2 · Passiver Dehnungsschmerz]
      #v(3pt)
      #text(size: 7.5pt)[Massiver Schmerz bei *passiver* Muskeldehnung (z. B. Plantarflexion bei vorderer Loge).]
    ],
    block(
      width: 100%, inset: 7pt, radius: 2pt,
      fill: white,
      stroke: (left: 3pt + palette.warning, rest: 0.45pt + palette.border),
    )[
      #text(size: 8pt, weight: "bold", fill: palette.warning.darken(12%))[3 · Brettharte Loge]
      #v(3pt)
      #text(size: 7.5pt)[Prall-bretthartes Kompartiment / brettharte Loge bei Untersuchung.]
    ],
    block(
      width: 100%, inset: 7pt, radius: 2pt,
      fill: white,
      stroke: (left: 3pt + palette.danger, rest: 0.45pt + palette.danger.lighten(35%)),
    )[
      #text(size: 8pt, weight: "bold", fill: palette.danger)[4 · Pulse schließen ACS *nicht* aus]
      #v(3pt)
      #text(size: 7.5pt)[Pulse können erhalten/tastbar sein — *auch bei tastbaren Pulsen* bleibt der ACS-Verdacht.]
    ],
  )

  v(7pt)
  grid(
    columns: (1fr, 1fr),
    column-gutter: 6pt,
    block(
      width: 100%, inset: 7pt, radius: 2pt,
      fill: rgb("#fef2f2"),
      stroke: (left: 3pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
    )[
      #text(size: 7.8pt, weight: "bold", fill: palette.danger)[Nicht über Herzhöhe lagern]
      #v(2pt)
      #text(size: 7.3pt)[Hochlagerung mindert die arterielle Perfusion — *kein* Ersatz für Notfallversorgung.]
    ],
    block(
      width: 100%, inset: 7pt, radius: 2pt,
      fill: rgb("#f0fdfa"),
      stroke: 0.4pt + palette.primary.lighten(30%),
    )[
      #text(size: 7.8pt, weight: "bold", fill: palette.primary)[Lokalisation · Tempo]
      #v(2pt)
      #text(size: 7.3pt)[Vorderes Unterschenkelkompartiment / Unterarm · *stundenkritisch* / über Stunden eskalierend.]
    ],
  )

  v(6pt)
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#f8fafc"), stroke: 0.45pt + palette.border,
  )[
    #set text(size: 7.5pt)
    #text(weight: "bold")[Handlung: ]
    Screening → *sofortiger Therapieabbruch* → Notfallweiterleitung (Unfallchirurgie / Notaufnahme; bei rascher Verschlechterung *112*).
    Keine Belastung, Kompression, forcierte Dehnung, tiefe myofasziale Release-Techniken.
    Verband nach Möglichkeit *lockern oder öffnen*.
  ]
}
