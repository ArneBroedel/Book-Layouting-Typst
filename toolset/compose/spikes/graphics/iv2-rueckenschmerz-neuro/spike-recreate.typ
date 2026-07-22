// Phase B1 — technical recreate of Nano Banana free vision (IV-2 S4)
// realize_path: recreate · graphic_mode: code (pure Typst module)
// vision: domains/medical/assets/iv2-rueckenschmerz-neuro/vision-free-01.png
// EXCEPTION_NO_BRIEF: medical-graphics recreate pilot

#import "/packages/bookkit/theme.typ": palette
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")
#import "lib/entscheidungs-flow.typ": entscheidungs-flow-rueckenschmerz

#set page(width: 170mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)

#align(center)[
  #text(size: 8.5pt, fill: palette.text-muted)[
    Recreate-Spike B1 · Free-Vision → Typst · claim-safe · bookkit tokens · IV-2 S4
  ]
]

#v(3mm)

#entscheidungs-flow-rueckenschmerz()

#v(4mm)
#block(
  width: 100%,
  inset: 6pt,
  fill: palette.bg-subtle,
  radius: 3pt,
)[
  #set text(size: 7.5pt, fill: palette.text-muted)
  *Phase B1:* Visual language inspired by Nano Banana free (vertical protocol 1–4,
  solid red urgency cards 1–2, R/I/S trio, loud Default-to-Danger banner).
  Claim-safe copy from pilot/vision. Module: `lib/entscheidungs-flow.typ` (composable).
]
