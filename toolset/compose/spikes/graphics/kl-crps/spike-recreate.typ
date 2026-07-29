// CRPS / Morbus Sudeck — exploration spike (studio situation 2)
// Grammar recreate + free-vision composition provenance (not accept-asset)
// Content C (read-only): Kursbuch5 …/chapter-v-3-crps-sudeck.md

#import "/packages/bookkit/theme.typ": palette
#import "/domains/medical/lib/typst/kl-wave6/crps.typ": (
  us-crps,
  mimic-crps,
  cues-crps,
  ddx-crps,
)

#set page(width: 180mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)
#set par(justify: false, leading: 0.65em)

#let h(t, sub: none) = {
  text(size: 11pt, weight: "bold", fill: palette.primary-dark)[#t]
  if sub != none {
    v(2pt)
    text(size: 7.5pt, fill: palette.text-muted)[#sub]
  }
  v(2pt)
  line(length: 100%, stroke: 0.55pt + palette.primary)
  v(4pt)
}

// ── Cover ─────────────────────────────────────────────────────
#align(center)[
  #v(6mm)
  #text(size: 8pt, fill: palette.text-muted)[
    Studio · Situation 2 · exploration prototype · L2 · 2026-07-30
  ]
  #v(3mm)
  #text(size: 15pt, weight: "bold", fill: palette.primary-dark)[
    CRPS (Morbus Sudeck)
  ]
  #v(2mm)
  #text(size: 10pt, fill: palette.primary)[
    Disproportionaler Extremitätenschmerz nach Trauma · kl-kurz · V-3
  ]
  #v(4mm)
  #block(width: 92%, inset: 8pt, fill: palette.bg-subtle, radius: 3pt)[
    #set text(size: 8pt)
    Code recreate (claim-safe pins) for urgency · mimic · regional cues · DDx.
    Free-vision PNGs under `domains/medical/assets/kl-crps-*` are *composition provenance*
    (claim audit *DRIFT* — not final accept-asset).
  ]
  #v(3mm)
  #set text(size: 7.5pt, fill: palette.text-muted)
  Brief: `kl-crps.brief.md` · Route: `studio-routes/kl-crps-sudeck-2026-07-30.md`
]

#pagebreak()
#h(
  "Klinische Hinweise · regionales Muster",
  sub: "U-cues · code board · free vision hierarchy reference",
)
#cues-crps()

#pagebreak()
#h(
  "Trügerische Erklärungen · Fehllabelung",
  sub: "U-mimic · 4 Frames + Notfall-DDx-Chips · full pins",
)
#mimic-crps()

#pagebreak()
#h(
  "Handeln und Dringlichkeit",
  sub: "U-urgency + U-scope · multi-T1 (Ischämie · Kompartment · Sepsis) · T2–T4 · SCOPE",
)
#us-crps(show-danger: true)

#pagebreak()
#h(
  "DDx-Minimal",
  sub: "U-discrimination · emergencies hard · somatische Belastungsstörung last",
)
#ddx-crps(show-title: true)

#v(8mm)
#align(center)[
  #set text(size: 7.5pt, fill: palette.text-muted)
  Exploration only · no production compose authorization · C remains SoT outside this monorepo
]
