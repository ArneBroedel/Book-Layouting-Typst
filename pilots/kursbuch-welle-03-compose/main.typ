// Kursbuch pilot compose — Welle 2026-07-welle-03-final-10 (10 Kapitel)
// v2 CREATIVE-FIRST redesign (flows, urgency lanes, decision diagrams)
// Policy: toolset/compose/CREATIVE-COMPOSE.md
// Content SoT external (Produkt C). Catalog preferred library, not cage.
// brief_class: exploration · kein Human-Freeze · kein Promote

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *

#set document(
  title: "Kursbuch 5.0 — Compose-Pilot Welle-03 v2 (Creative-First)",
  author: "Layout: bookkit + visual.typ · Content: Kursbuch staging (read-only)",
  date: auto,
)

#show: setup-typography()

#book-cover(
  title: [Kursbuch 5.0 — Compose-Pilot],
  subtitle: [Welle-03 · 10 Kapitel · Creative-First (Flows & Lanes)],
  author: [bookkit · fletcher · cetz · pilot visual helpers],
  edition: [v2 · catalog preferred · kein Promote · kein Human-Freeze],
)
#pagebreak()
#show: setup-pages()
// Kursbuch-IDs from chapter-opener(number); suppress typst H1 counter prefix
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: type-scale.h1, fill: palette.primary, weight: "bold")
  block(above: space.xxxl, below: space.xl, it.body)
}

#part-page(number: "Teil I–II", title: [Recht & Entscheidungsrahmen])
#include "chapters/i4.typ"
#include "chapters/ii1.typ"

#part-page(number: "Teil III", title: [Notfall-Handlungskarten])
#include "chapters/iii5.typ"
#include "chapters/iii2.typ"

#part-page(number: "Teil IV", title: [Leitsymptom — Flow & Red Flags])
#include "chapters/iv2.typ"
#include "chapters/iv4.typ"

#part-page(number: "Teil V", title: [Krankheitslehre — Master & Kurzprofil])
#include "chapters/v-cauda.typ"
#include "chapters/v-sept.typ"

#part-page(number: "Teil VI", title: [Population])
#include "chapters/vi1.typ"

#part-page(number: "Teil VII", title: [Exam-Cluster Integration])
#include "chapters/vii1.typ"

#align(center)[
  #v(2em)
  #callout(title: [Layout-Hinweis — Creative-First Pilot v2], tone: "info")[
    Inhalt: Kursbuch-Staging read-only (Produkt *C*).\
    Darstellung: Media ideal → full toolkit (bookkit, *fletcher*, *cetz*,
    `pilots/…/lib/visual.typ`: Pathways, Urgency-Lanes, Decision-Diagrams).\
    Policy: `toolset/compose/CREATIVE-COMPOSE.md`.\
    *Exploration* — kein Human-Freeze, I-4 ≠ Jurist, kein Promote nach `book/`.
  ]
]
