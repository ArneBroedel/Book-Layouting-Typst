// compose fixture: fail_unknown_form
// Uses a non-catalog / planned form → whitelist FAIL

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *

#set page(paper: "a4", margin: 2cm)
#set text(font: "Libertinus Serif", size: 11pt)

#chapter-opener(title: [Unbekannte Form])

// Planned catalog id — not production-legal until stable
#protocol-steps[
  1. Schritt A
  2. Schritt B
]

// Purely invented form-like call
#mystery-widget[Sollte den Whitelist-Check brechen.]
