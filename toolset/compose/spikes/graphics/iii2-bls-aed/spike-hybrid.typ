// graphics spike — B hybrid v4 (SVG form + Typst labels, correct flow)
// Flow: 1→2→3; ja→4a (loop + escalate); nein→4b→5→6
// viewBox 640×820 base

#import "/packages/bookkit/theme.typ": palette

#set page(width: 170mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 8.5pt, fill: palette.text-body)
#set par(leading: 0.32em, justify: false)

#align(center)[
  #text(size: 11pt, weight: "bold", fill: palette.primary-dark)[
    Primär-Algorithmus: Bewusstseinsstörung / Kollaps
  ]
  #v(1.5mm)
  #text(size: 8pt, fill: palette.text-muted)[
    Hybrid-Spike v4 (SVG + Typst) · 4a-Schleife · Eskalation → 4b · S4
  ]
]

#v(3mm)

#let dw = 150mm
#let dh = dw * (820 / 640)
#let sx(x) = dw * (x / 640)
#let sy(y) = dh * (y / 820)

#let node-text(body, size: 7.2pt) = {
  set text(size: size, fill: palette.text-body)
  set par(leading: 0.32em, justify: false)
  align(center + horizon, body)
}

#align(center)[
  #block(width: dw, height: dh, breakable: false)[
    #place(top + left)[
      #image(
        "/domains/medical/assets/iii2-bls-aed/primar-algorithmus-base.svg",
        width: dw,
        height: dh,
        alt: "Primär-Algorithmus v4: Entscheidung 3, 4a-Schleife, Eskalation zu 4b, CPR 5–6",
      )
    ]

    // 1 — rect 180,56 280×64
    #place(top + left, dx: sx(220), dy: sy(60))[
      #box(width: sx(220), height: sy(56), node-text(size: 7.3pt)[
        *Szene sichern*\ Handschuhe wenn verfügbar
      ])
    ]
    // 2
    #place(top + left, dx: sx(220), dy: sy(152))[
      #box(width: sx(220), height: sy(56), node-text(size: 7.3pt)[
        *Ansprechen + Schmerzreiz*\ Atemwege freimachen
      ])
    ]
    // 3 diamond (badge left @ 228)
    #place(top + left, dx: sx(250), dy: sy(250))[
      #box(width: sx(140), height: sy(60), node-text(size: 7.5pt)[
        *Atmung normal?*\ max. *10 s*
      ])
    ]
    #place(top + left, dx: sx(188), dy: sy(318))[
      #text(size: 7pt, weight: "bold", fill: palette.success.darken(25%))[ja]
    ]
    #place(top + left, dx: sx(400), dy: sy(318))[
      #text(size: 7pt, weight: "bold", fill: palette.danger.darken(10%))[nein / unsicher]
    ]

    // 4a
    #place(top + left, dx: sx(88), dy: sy(408))[
      #box(width: sx(170), height: sy(56), node-text(size: 7.2pt)[
        *Seitenlage* · *112*\ überwachen
      ])
    ]
    // 4a loop
    #place(top + left, dx: sx(88), dy: sy(528))[
      #box(width: sx(170), height: sy(48), node-text(size: 6.8pt)[
        ↻ *Weiter überwachen*\ (Zustand stabil)
      ])
    ]
    #place(top + left, dx: sx(280), dy: sy(458))[
      #text(size: 6.5pt, weight: "bold", fill: palette.danger.darken(5%))[Verschlechterung]
    ]

    // 4b
    #place(top + left, dx: sx(400), dy: sy(408))[
      #box(width: sx(180), height: sy(56), node-text(size: 7.2pt)[
        *112* · *CPR*\ AED holen lassen
      ])
    ]
    // 5
    #place(top + left, dx: sx(400), dy: sy(528))[
      #box(width: sx(180), height: sy(52), node-text(size: 6.8pt)[
        CPR *30:2* (Kurs) bzw.\ nur Kompressionen · AED folgen
      ])
    ]
    // 6
    #place(top + left, dx: sx(400), dy: sy(646))[
      #box(width: sx(180), height: sy(40), node-text(size: 7pt)[
        Bis *Übergabe RD* · min. Pausen
      ])
    ]
  ]
]

#v(3mm)
#block(
  width: 100%,
  inset: 6pt,
  fill: palette.bg-subtle,
  radius: 3pt,
  stroke: 0.5pt + palette.border-light,
)[
  #text(size: 7.5pt, fill: palette.text-muted)[
    *v4:* Genau zwei Ausgänge an *3*. *4a* mit Überwachungsschleife und
    Eskalation *Verschlechterung → 4b*. *5/6* nur auf dem CPR-Pfad.
  ]
]
