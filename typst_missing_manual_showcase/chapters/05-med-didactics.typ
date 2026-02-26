// chapters/05-med-didactics.typ
#import "../styles/theme.typ": palette, space, type
#import "../components/admonitions.typ": note, tip, warn, redflag, checklist
#import "../components/learning.typ": learning-goals, knowledge-check
#import "../components/tables.typ": zebra-table

= Medizinische Didaktik als Layout-System

Das Layout soll nicht „schön“ sein – es soll *lernen lassen*.

== Pattern 1: Dual-Track Text (Praxis vs. Evidenz)
Ein Track bleibt praxisnah. Der zweite Track liefert Evidenz, Testgüte, Leitlinien-Hinweise.

#grid(columns: (2.2fr, 1fr), gutter: 14pt)[
  [
    *Praxis-Track*  
    Du beginnst mit Hypothesen, die die *Zeit* respektieren:
    Was ist dringend? Was ist wahrscheinlich? Was wäre gefährlich zu übersehen?

    Dann sammelst du Befunde in einer Reihenfolge, die deine Hypothesen maximal trennt.
  ],
  [
    #block(
      fill: palette.paper.mix(palette.muted),
      radius: 10pt,
      inset: 10pt,
      stroke: (paint: palette.muted, thickness: 0.6pt),
    )[
      #set text(size: type.small, fill: palette.ink)
      *Evidenz-Track*  
      - Sensitivität ≠ Rule-out automatisch  
      - LR− ist oft besser als Sens.  
      - Basisrate dominiert
    ]
  ]
]

== Pattern 2: Illness Script als „Karte“
#let illness-script(title, ..items) = [
  #block(
    fill: palette.paper,
    radius: 14pt,
    inset: 14pt,
    stroke: (paint: palette.accent.mix(palette.paper), thickness: 0.8pt),
  )[
    #text(weight: 900, size: 14pt)[#title]
    #v(8pt)
    #set list(marker: "•")
    ..items
  ]
]

#illness-script("Lumbar Radiculopathy – Kurzscript",
  [Leitsymptom: radikulärer Beinschmerz, Dermatom, evtl. Parästhesie.],
  [Provokation: Husten/Niesen möglich, SLR/SLUMP je nach Segment.],
  [DD: Hüfte, ISG, vaskulär, periphere Nerven, Red Flags.],
  [Management: Belastungssteuerung, Edukation, ggf. zeitnahe Abklärung bei Defiziten.],
)

== Pattern 3: Entscheideräume (Decision Boxes)
#block(
  fill: palette.warn.mix(palette.paper),
  radius: 12pt,
  inset: 14pt,
  stroke: (paint: palette.warn, thickness: 0.9pt),
)[
  #text(weight: 900)[Entscheidungspunkt]
  #v(6pt)
  Wenn *progressive neurologische Defizite* vorliegen → ärztliche Abklärung zeitnah.
  Wenn *stabil* und keine Red Flags → konservatives Management + Re-Evaluation.
]

== Pattern 4: Spaced Retrieval eingebaut
#knowledge-check(
  title: "Spaced Retrieval – 30 Sekunden",
  [Nenne 3 Muster, die „entzündlich“ aussehen.],
  [Nenne 3 Red Flags bei LWS-Schmerz.],
  [Was ist der Unterschied zwischen LR+ und LR−?]
)

