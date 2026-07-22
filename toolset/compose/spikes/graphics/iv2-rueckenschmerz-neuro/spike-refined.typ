// Phase B2 — refined free vision (Nano Banana + book standards)
// realize_path: refine · graphic_mode: asset
// EXCEPTION_NO_BRIEF: medical-graphics

#import "/packages/bookkit/theme.typ": palette

#set page(width: 170mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 8.5pt, fill: palette.text-body)

#align(center)[
  #text(size: 9pt, fill: palette.text-muted)[
    Refine-Spike B2 · Free vision + surgical fixes · Nano Banana · IV-2 S4
  ]
]

#v(3mm)

#align(center)[
  #image(
    "/domains/medical/assets/iv2-rueckenschmerz-neuro/vision-refined-01.png",
    width: 100%,
    alt: "Entscheidungs-Flow refined: First-Look → RF → R/I/S → C mit lautem Default-to-Danger",
  )
]

#v(3mm)
#block(width: 100%, inset: 6pt, fill: palette.bg-subtle, radius: 3pt)[
  #set text(size: 7.5pt, fill: palette.text-muted)
  *B2 fixes:* vertical protocol 1–4 retained; bookkit palette (teal/danger);
  high-contrast chips; equal R/I/S subcards; louder Default-to-Danger;
  German claim-safe only. Source free: `vision-free-01.png` · tool:
  `scripts/graphics-refine-agy.sh`
]
