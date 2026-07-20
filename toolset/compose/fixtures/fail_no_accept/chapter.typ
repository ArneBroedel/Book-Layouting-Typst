// compose fixture: fail_no_accept
// Valid stable forms; accept missing / not authorized → accept-gate FAIL

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *

#set page(paper: "a4", margin: 2cm)
#set text(font: "Libertinus Serif", size: 11pt)

#chapter-opener(title: [Ohne Accept])

#cave[Warnung ohne Freigabe.]

#memo[Merksatz ohne Freigabe.]
