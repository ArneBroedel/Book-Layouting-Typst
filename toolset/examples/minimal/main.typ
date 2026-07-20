// Minimal foundation consumer — no showcase chapters, no didactics facet.
#import "/packages/bookkit/lib.typ": *

#set document(title: "bookkit smoke", author: "toolset")

#show: setup-typography()
#show: setup-pages()

#chapter-opener(
  title: [Foundation smoke],
  lead: [Two pages proving bookkit builds outside the showcase.],
  number: 1,
)

== Was hier getestet wird

Dieses Dokument importiert nur das Foundation-Package `bookkit`. Es nutzt weder
Showcase-Kapitel noch die Facette `bookkit-didactics`.

#callout(title: [Repro-Build], tone: "info")[
  Kompiliere mit `--ignore-system-fonts --font-path fonts` und `--root` so, dass
  `packages/bookkit/` erreichbar ist.
]

#card(title: [Komponenten-Stichprobe])[
  Badge: #badge[OK] · Tag: #tag[foundation] · Kbd: #kbd[Ctrl]+#kbd[B]
]

#key-concept[Theme-Tokens und Setup-Closures kommen aus dem Package.]

#pagebreak()

== Zweite Seite

#styled-table(
  columns: (1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold")[Layer],
    text(fill: white, weight: "bold")[Form],
  ),
  [Runtime], [Package],
  [Skills], [Skill-Pack],
  [CLI], [Orchestrierung],
)

#pull-quote[Ein Medium pro Schicht.]
