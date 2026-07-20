// bookkit starter — thin consumer entry
#import "/packages/bookkit/lib.typ": *

#set document(
  title: "Starter Book",
  author: "Your Name",
)

#show: setup-typography()

// Optional cover (zero margins) — then restore pages
#book-cover(
  title: [Starter Book],
  subtitle: [bookkit consumer template],
  author: [Your Name],
  edition: [0.1],
)
#pagebreak()
#show: setup-pages()

#outline(title: [Inhaltsverzeichnis], depth: 2)
#pagebreak()

#chapter-opener(
  title: [Erste Schritte],
  lead: [Lies design-brief.yaml und den bookkit-Skill, dann baue Inhalt hier.],
  number: 1,
)

== Überblick

Dieses Starter-Projekt importiert nur die Foundation. Für medizinische Didaktik:

```typst
#import "/packages/bookkit-didactics/lib.typ": *
```

#callout(title: [Build], tone: "info")[
  `bookkit build --root .` erzwingt `--ignore-system-fonts --font-path fonts`.
]

== Nächste Schritte

- Tokens anpassen (named args / lokale Cover-Farben)
- Skills provisionieren (`toolset/skill-pack/provision.sh`)
- Optional Facetten importieren
