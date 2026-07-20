// compose fixture: fail_claims
// Claims in content.md intentionally absent from this .typ

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *

#set page(paper: "a4", margin: 2cm)
#set text(font: "Libertinus Serif", size: 11pt)

#chapter-opener(title: [Claims-Mismatch])

#cave[Allgemeine Warnung ohne die geforderten Claim-Formulierungen.]

#memo[Ein harmloser Merksatz.]

#callout(title: [Hinweis], tone: "info")[
  Dieser Text enthält bewusst nicht die Critical Claims aus content.md.
]
