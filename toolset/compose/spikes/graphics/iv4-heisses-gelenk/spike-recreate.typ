// Phase B1 — technical recreate of free vision (IV-4 S6 Entscheidungs-Flow)
// realize_path: recreate · graphic_mode: code (pure Typst module)
// vision: domains/medical/briefs/iv4-heisses-gelenk.vision.md
// EXCEPTION_NO_BRIEF: medical-graphics recreate pilot

#import "/packages/bookkit/theme.typ": palette
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")
#import "lib/entscheidungs-flow.typ": entscheidungs-flow-heisses-gelenk

#set page(width: 170mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)

#align(center)[
  #text(size: 8.5pt, fill: palette.text-muted)[
    Recreate-Spike B1 · Free-Vision → Typst · claim-safe · bookkit tokens · IV-4 S6
  ]
]

#v(3mm)

#entscheidungs-flow-heisses-gelenk()

#v(4mm)
#block(
  width: 100%,
  inset: 6pt,
  fill: palette.bg-subtle,
  radius: 3pt,
)[
  #set text(size: 7.5pt, fill: palette.text-muted)
  *Phase B1:* Vertical protocol 1–4 (IV-2 family). Exact 112 vs ED split on steps 1–2;
  Kind Sepsis bifurcation; gatekeeper chip Fieber ≥ 38,5 °C; S-checks loud;
  Default-to-Danger banner. Module: `lib/entscheidungs-flow.typ` (composable).
]
