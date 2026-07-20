// Facet smoke: foundation alone is enough for page 1 pattern; this file ALSO imports didactics.
#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *

#set document(title: "bookkit + didactics smoke")

#show: setup-typography()
#show: setup-pages()

#chapter-opener(title: [Didactics facet], number: 1)

#learning-objectives(items: (
  [Lernziele-Box aus der Facette rendern],
  [Cave/Memo nutzen ohne Showcase],
))

#memo[Facette ist optional — Foundation bleibt schlank.]

#cave[Keine schweren Charts in dieser Facette.]

#definition(term: [bookkit-didactics])[
  Optionales Package mit medizinischen Didaktik-Boxen und MC-Fragen.
]

#mc-question(
  [Was gehört in die Foundation?],
  ([Didaktik-Boxen], [Theme + generische Komponenten], [CeTZ-Charts]),
  answer: 2,
  show-solution: true,
)
