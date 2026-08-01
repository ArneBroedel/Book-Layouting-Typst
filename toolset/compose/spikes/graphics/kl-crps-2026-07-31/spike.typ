// Spike — kl-crps-2026-07-31 · clean slate graphics units
// Design CLEAN packet → realize

#import "/packages/bookkit/lib.typ": *
#import "/domains/medical/lib/typst/kl-wave6/crps-2026-07-31.typ": *

#set page(paper: "a4", margin: (x: 16mm, y: 14mm))
#setup-typography()

#text(size: 11pt, weight: "bold")[Spike · CRPS 2026-07-31 · clean slate]
#v(2pt)
#text(size: 8pt, fill: luma(80))[
  Module: `domains/medical/lib/typst/kl-wave6/crps-2026-07-31.typ` · no old CRPS SoT
]

#v(8pt)
#text(size: 10pt, weight: "bold")[1 · Big Picture]
#v(4pt)
#bp-crps()

#v(10pt)
#text(size: 10pt, weight: "bold")[2 · Regional cues (L4 code cluster)]
#v(4pt)
#regional-cues-crps()

#pagebreak()
#text(size: 10pt, weight: "bold")[3 · Discrimination FA + NM]
#v(4pt)
#discrimination-crps()

#v(10pt)
#text(size: 10pt, weight: "bold")[4 · Mimic map]
#v(4pt)
#mimic-crps()

#pagebreak()
#text(size: 10pt, weight: "bold")[5 · Urgency + Scope (T1–T4)]
#v(4pt)
#us-crps()
