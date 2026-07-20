// compose fixture: pass_minimal
// catalog_version: 0.1.0
// Synthetic didactic sample — not Kursbuch content SoT.

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *

#set page(paper: "a4", margin: 2cm)
#set text(font: "Libertinus Serif", size: 11pt)

#chapter-opener(
  title: [Notfallkarte — Rückenmarkskompression],
  lead: [Früherkennung und sofortige Handlungskette.],
)

Red Flags erfordern eine *sofortige* neurologische Abklärung. Jede Verzögerung
kann bleibende Ausfälle begünstigen.

#cave[
  Bei neu aufgetretenen Blasen- oder Mastdarmstörungen und progredienter
  Beinschwäche: *sofortige bildgebende Abklärung* — nicht bis zum nächsten
  Werktag warten.
]

#memo[
  Cauda-equina-Verdacht ist ein zeitkritischer Notfall: Claim-Anker
  *Zeitkritischer Notfall bei Blasenstörung und Beinschwäche*.
]

#callout(title: [Ersteinschätzung], tone: "info")[
  Strukturierte Erhebung: Schmerz, Motorik, Sensorik, Blase/Mastdarm,
  Sattelanästhesie.
]

#styled-table(
  columns: (1fr, 1.2fr),
  [*Befund*], [*Sofortmaßnahme*],
  [Progrediente Parese], [Notfall-MRT organisieren],
  [Harnverhalt neu], [Restharn prüfen, urologisch mitdenken],
)
