// compose-chapter unit pilot — design-quality WP9c density
// brief: domains/medical/briefs/kl-crps-wp9-2026-07-31.brief.md
// brief_class: exploration — production compose NOT authorized
// HARD BAN: no import of crps-rerun.typ / old kl-crps winners

#import "/packages/bookkit/lib.typ": *
#import "/domains/medical/lib/typst/kl-wave6/crps-wp9.typ": *

#set document(
  title: "CRPS WP9 — mechanism + mimic (density pilot)",
  author: "Kursbuch · kl-crps-wp9-2026-07-31",
)

#show: setup-typography()
#show: setup-pages()

// Compact pilot shell — no full chapter-opener air (density demo)
#text(size: 11pt, weight: "bold", fill: palette.primary-dark)[CRPS — WP9c Dichte-Pilot]
#h(6pt)
#text(size: 7.5pt, fill: palette.text-muted)[U-mechanism + U-mimic · Space budget enforced]

#v(6pt)
== Entstehung und Mechanismus
#v(3pt)
#mechanism-crps-wp9()

#v(7pt)
#mimic-crps-wp9()
