// Phase B1 — technical recreate of free vision (II-1 S8 Pflichtsequenz)
// realize_path: recreate · graphic_mode: code (pure Typst module)
// vision: domains/medical/briefs/ii1-drei-achsen-drisc.vision.md
// EXCEPTION_NO_BRIEF: medical-graphics recreate pilot

#import "/packages/bookkit/theme.typ": palette
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")
#import "lib/pflichtsequenz.typ": pflichtsequenz-risc

#set page(width: 170mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)

#align(center)[
  #text(size: 8.5pt, fill: palette.text-muted)[
    Recreate-Spike B1 · Free-Vision → Typst · claim-safe · bookkit tokens · II-1 S8
  ]
]

#v(3mm)

#pflichtsequenz-risc()

#v(4mm)
#block(
  width: 100%,
  inset: 6pt,
  fill: palette.bg-subtle,
  radius: 3pt,
)[
  #set text(size: 7.5pt, fill: palette.text-muted)
  *Phase B1:* Framework-OS look (teal header, not red wall). Steps 1–5 with
  danger accent only on *R zuerst*; binary rule loud; Default-to-Danger vs
  Burden-of-Proof asymmetry note. Module: `lib/pflichtsequenz.typ` (composable).
]
