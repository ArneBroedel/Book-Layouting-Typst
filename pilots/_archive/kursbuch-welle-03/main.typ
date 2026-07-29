// Kursbuch pilot product — 10 chapters from staging/welle-03-final-10
// Consumer path: bookkit foundation + didactics facet (no studio chapter clone).
#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *

#set document(
  title: "Kursbuch Pilot — Welle 2026-07-welle-03-final-10",
  author: "Layout: bookkit toolset · Content: Kursbuch staging (read-only)",
  date: auto,
)

#show: setup-typography()

#book-cover(
  title: [Kursbuch 5.0 — Pilotlayout],
  subtitle: [Welle 2026-07 · 10 Staging-Kapitel · druckfertig (Layout)],
  author: [bookkit + bookkit-didactics],
  edition: [Layout-MVP · kein Promote nach book/],
)
#pagebreak()
#show: setup-pages()

#outline(title: [Inhaltsverzeichnis], depth: 2)
#pagebreak()

#part-page(number: "Teil A", title: [Methodik & Recht])
#include "chapters/ii1.typ"
#include "chapters/i4.typ"

#part-page(number: "Teil B", title: [Notfall & Cauda-Stack])
#include "chapters/iii2.typ"
#include "chapters/iii5.typ"
#include "chapters/v-cauda.typ"

#part-page(number: "Teil C", title: [Leitsymptome & Krankheitslehre])
#include "chapters/iv2.typ"
#include "chapters/iv4.typ"
#include "chapters/v-sept.typ"

#part-page(number: "Teil D", title: [Population & Integration])
#include "chapters/vi1.typ"
#include "chapters/vii1.typ"

#align(center)[
  #v(2em)
  #callout(title: [Layout-Hinweis], tone: "info")[
    Inhalt aus dem Kursbuch-Staging-Ordner (read-only). Klinische Freigabe und
    Promote liegen *nicht* in diesem Toolset-Track. Build: `bookkit build` mit
    Repro-Font-Flags.
  ]
]
