// main.typ
// Typst Missing Manual – Showcase
// Einstiegspunkt fürs ganze Buch.

#import "styles/theme.typ": palette, type
#import "styles/page.typ": setup-pages
#import "styles/typography.typ": setup-typography
#import "components/spreads.typ": book-cover, chapter-opener

// 1) Global Setup
#setup-pages()
#setup-typography()

// 2) Titelblatt (minimal)
#book-cover(
  "Clinical Reasoning",
  "Differentialdiagnostik · Krankheitslehre",
  "Typst Showcase / „Missing Manual“",
)

// 3) Kopf/Fußzeile wieder aktivieren
#setup-pages()

// 4) Frontmatter
#chapter-opener("Vorwort (Showcase)")
Dieses Dokument ist eine *Werkstatt*: Du kannst Bausteine herausziehen und in dein echtes Buch übernehmen.
Es ist bewusst nicht „minimal“ – es zeigt Bandbreite.

#pagebreak()

// 5) Kapitel-Imports
#include "chapters/00-intro.typ"
#include "chapters/01-typography.typ"
#include "chapters/02-structure.typ"
#include "chapters/03-layout.typ"
#include "chapters/04-graphics.typ"
#include "chapters/05-med-didactics.typ"
#include "chapters/06-extreme.typ"

// 6) Ende
#pagebreak()
#set page(header: none)
#align(center)[
  #v(60mm)
  #text(size: 18pt, weight: 800)[Ende des Showcases]
  #v(8pt)
  #set text(size: type.small, fill: palette.muted)
  Wenn du daraus ein echtes Buch machst: ersetze Platzhaltertexte, definiere deine Tokens in `styles/`,
  und baue deine didaktischen Komponenten in `components/`.
]
