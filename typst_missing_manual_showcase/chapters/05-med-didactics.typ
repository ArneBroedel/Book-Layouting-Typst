// chapters/05-med-didactics.typ
#import "../styles/theme.typ": palette, space, type
#import "../components/learning.typ": knowledge-check
#import "../components/layouts.typ": scientific-paper
#import "../components/spreads.typ": chapter-opener
#import "../components/blocks.typ": callout, card
#import "../components/inline.typ": badge

#chapter-opener("Medizinische Didaktik", number: "05")

Das Layout soll nicht nur aestethisch sein -- es soll *lernen lassen*.
Gute Didaktik ist unsichtbar: Sie lenkt Aufmerksamkeit, ohne Aufwand zu erzeugen.

== Pattern 1: Dual-Track Text (Praxis vs. Evidenz)
Ein Track bleibt praxisnah. Der zweite Track liefert Evidenz, Testguete, Leitlinien-Hinweise.

#grid(
  columns: (2.2fr, 1fr),
  gutter: 14pt,
  [
    *Praxis-Track*

    Du beginnst mit Hypothesen, die die _Zeit_ respektieren:
    Was ist dringend? Was ist wahrscheinlich? Was waere gefaehrlich zu uebersehen?

    Dann sammelst du Befunde in einer Reihenfolge, die deine Hypothesen maximal trennt.

    Das Ziel: Mit minimalem Aufwand maximale diagnostische Sicherheit.
  ],
  block(
    fill: palette.info-light,
    radius: 10pt,
    inset: 12pt,
    stroke: (paint: palette.info, thickness: 1pt),
  )[
    #set text(size: type.small, fill: palette.ink)
    *Evidenz-Track* #badge(color: palette.info)[Niveau 1a]

    - Sensitivitaet ist nicht Rule-out automatisch
    - LR- ist oft besser als Sens.
    - Basisrate dominiert die Interpretation
    - Bayesianisches Denken ist Pflicht
  ],
)

== Pattern 2: Illness Script als Karte
#let illness-script(title, items, color: palette.accent) = {
  block(
    fill: color.lighten(92%),
    radius: 12pt,
    inset: 16pt,
    stroke: (paint: color, thickness: 1.2pt),
  )[
    #text(weight: 900, size: 14pt, fill: color)[#title]
    #v(12pt)
    #set list(marker: text(fill: color)[#sym.triangle.stroked.r], spacing: 8pt)
    #set par(leading: 1.3em)
    #for it in items { list(it) }
  ]
}

#illness-script(
  "Lumbar Radiculopathy -- Kurzscript",
  (
    [#badge(color: palette.bad)[Leitsymptom] Radikulaerer Beinschmerz, Dermatom, evtl. Paraesthesie.],
    [#badge(color: palette.warn)[Provokation] Husten/Niesen moeglich, SLR/SLUMP je nach Segment.],
    [#badge(color: palette.info)[DD] Huefte, ISG, vaskulaer, periphere Nerven, Red Flags.],
    [#badge(color: palette.good)[Management] Belastungssteuerung, Edukation, ggf. zeitnahe Abklaerung bei Defiziten.],
  ),
  color: palette.accent,
)

== Pattern 3: Entscheidungsraeume (Decision Boxes)
#block(
  fill: palette.warn-light,
  radius: 12pt,
  inset: 14pt,
  stroke: (paint: palette.warn, thickness: 1.2pt),
)[
  #text(weight: 900, size: 11pt, fill: palette.warn)[Entscheidungspunkt]
  #v(12pt)
  #set par(leading: 1.3em)
  Wenn *progressive neurologische Defizite* vorliegen #sym.arrow.r aerztliche Abklaerung zeitnah.
  #v(8pt)
  Wenn *stabil* und keine Red Flags #sym.arrow.r konservatives Management + Re-Evaluation.
]

#v(space.md)

#grid(
  columns: (1fr, 1fr),
  gutter: space.md,
  card(title: "Sofort handeln", accent: palette.bad)[
    - Cauda equina Syndrom
    - Progressive Paresen
    - Schwere Traumata
    - Malignitaet-Verdacht
  ],
  card(title: "Beobachten und Re-Eval", accent: palette.good)[
    - Stabile Symptomatik
    - Keine Red Flags
    - Gutes Ansprechen auf Therapie
    - Patient gut informiert
  ],
)

== Pattern 4: Spaced Retrieval eingebaut
#knowledge-check(
  title: "Spaced Retrieval -- 30 Sekunden",
  [Nenne 3 Muster, die entzuendlich aussehen.],
  [Nenne 3 Red Flags bei LWS-Schmerz.],
  [Was ist der Unterschied zwischen LR+ und LR-?],
)

#pagebreak()

== Wissenschaftliches Paper-Layout

#scientific-paper(
  "Evidenzbasierte Praxis in der Physiotherapie",
  "Dr. Max Mustermann, Prof. Dr. Anna Schmidt",
  "Dieser Artikel untersucht die Integration von evidenzbasierter Praxis in den klinischen Alltag von Physiotherapeuten. Es werden Herausforderungen und Loesungsansaetze diskutiert.",
  [
    == Einleitung
    Die evidenzbasierte Praxis (EBP) ist ein Eckpfeiler der modernen Medizin. In der Physiotherapie gewinnt sie zunehmend an Bedeutung.

    == Methoden
    Eine systematische Literaturrecherche wurde durchgefuehrt, um aktuelle Studien zur EBP in der Physiotherapie zu identifizieren.

    == Ergebnisse
    Die Ergebnisse zeigen, dass Physiotherapeuten EBP grundsaetzlich positiv gegenueberstehen, jedoch haeufig auf Barrieren wie Zeitmangel und fehlende Ressourcen stossen.

    == Diskussion
    Um die Implementierung von EBP zu foerdern, sind gezielte Schulungen und eine verbesserte Infrastruktur erforderlich.
  ],
)


