// Phase B1 — technical recreate of free vision (III-5 S4 Sofortmaßnahmen)
// realize_path: recreate · graphic_mode: code (pure Typst module)
// vision: domains/medical/briefs/iii5-cauda-notfallkarte.vision.md
// EXCEPTION_NO_BRIEF: medical-graphics recreate pilot

#import "/packages/bookkit/theme.typ": palette
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")
#import "lib/sofortmassnahmen.typ": sofortmassnahmen-ces

#set page(width: 170mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)

#align(center)[
  #text(size: 8.5pt, fill: palette.text-muted)[
    Recreate-Spike B1 · Free-Vision → Typst · claim-safe · bookkit tokens · III-5 S4
  ]
]

#v(3mm)

#sofortmassnahmen-ces()

#v(4mm)
#block(
  width: 100%,
  inset: 6pt,
  fill: palette.bg-subtle,
  radius: 3pt,
)[
  #set text(size: 7.5pt, fill: palette.text-muted)
  *Phase B1:* Hard-stop protocol (solid danger step 1 + Verbote; numbered cards 2–4;
  dark teal header; BLS escape short). Claim-safe copy from pilot/vision.
  Module: `lib/sofortmassnahmen.typ` (composable).
]
