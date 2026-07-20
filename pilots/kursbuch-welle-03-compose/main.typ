// Kursbuch pilot compose — Wave 4 E2E III-5 (production path post-Accept)
// Consumer of platform A (bookkit + bookkit-didactics). Content SoT remains external (C).
#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *

#set document(
  title: "Kursbuch Pilot Compose — III-5 Cauda Notfallkarte",
  author: "Layout: bookkit toolset · Content: Kursbuch staging (read-only)",
  date: auto,
)

#show: setup-typography()

#book-cover(
  title: [Kursbuch 5.0 — Compose-Pilot],
  subtitle: [Welle 4 · III-5 Cauda-Notfallkarte · post-Accept],
  author: [bookkit + bookkit-didactics],
  edition: [Wave-4 compose · kein Promote nach book/],
)
#pagebreak()
#show: setup-pages()

#part-page(number: "Teil B", title: [Notfall & Cauda-Stack])
#include "chapters/iii5.typ"

#align(center)[
  #v(2em)
  #callout(title: [Layout-Hinweis], tone: "info")[
    Inhalt aus dem Kursbuch-Staging-Ordner (read-only). Klinische Freigabe und
    Promote liegen *nicht* in diesem Toolset-Track. Build mit Repro-Font-Flags:
    `--ignore-system-fonts --font-path fonts`.
  ]
]
