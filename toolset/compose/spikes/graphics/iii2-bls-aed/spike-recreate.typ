// Phase B1 — technical recreate of Nano Banana free vision (III-2 S4)
// realize_path: recreate · graphic_mode: code (pure Typst module)
// vision: domains/medical/assets/iii2-bls-aed/primar-algorithmus-raster-nanobanana-free.png
// EXCEPTION_NO_BRIEF: medical-graphics recreate pilot

#import "/packages/bookkit/theme.typ": palette
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")
#import "lib/primar-algorithmus.typ": primar-algorithmus-bewusstlosigkeit

#set page(width: 170mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)

#align(center)[
  #text(size: 8.5pt, fill: palette.text-muted)[
    Recreate-Spike B1 · Free-Vision → Typst · claim-safe · bookkit tokens · S4
  ]
]

#v(3mm)

#primar-algorithmus-bewusstlosigkeit()

#v(4mm)
#block(
  width: 100%,
  inset: 6pt,
  fill: palette.bg-subtle,
  radius: 3pt,
)[
  #set text(size: 7.5pt, fill: palette.text-muted)
  *Phase B1:* Visual language inspired by Nano Banana free (cards, JA/NEIN split,
  4a loop + escalate). Flow corrected: stabil stays on *4a*; *5/6* only after *4b*;
  wording *minimale Pausen*. Module: `lib/primar-algorithmus.typ` (composable).
]
