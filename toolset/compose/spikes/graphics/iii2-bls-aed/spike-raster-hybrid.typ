// graphics spike — E raster hybrid v4
// Imagine base v4 + Typst labels (flow-correct structure)
// Layout target: 1→2→3 vertical; 4a left with loop; 4b→5→6 right

#import "/packages/bookkit/theme.typ": palette

#set page(width: 170mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 8.5pt, fill: palette.text-body)
#set par(leading: 0.32em, justify: false)

#align(center)[
  #text(size: 9pt, fill: palette.text-muted)[
    Raster-Spike hybrid v4 (Imagine-Basis + Typst) · 4a-Schleife · S4
  ]
]

#v(2mm)

#let dw = 150mm
#let dh = dw * (1152 / 864)
#let sx(x) = dw * (x / 864)
#let sy(y) = dh * (y / 1152)

#let lab(body, size: 7pt) = {
  set text(size: size, fill: palette.text-body)
  set par(leading: 0.3em)
  align(center + horizon, body)
}

#align(center)[
  #block(width: dw, height: dh, breakable: false)[
    #place(top + left)[
      #image(
        "/domains/medical/assets/iii2-bls-aed/primar-algorithmus-raster-base.png",
        width: dw,
        height: dh,
        alt: "Leere Raster-Struktur v4: 4a-Schleife und CPR-Pfad",
      )
    ]

    // Approximate places for vertical 1-2-3 / left 4a / right 4b-5-6
    #place(top + left, dx: sx(280), dy: sy(40))[
      #box(width: sx(320), height: sy(90), lab(size: 7.2pt)[
        *Szene sichern*\ Handschuhe wenn verfügbar
      ])
    ]
    #place(top + left, dx: sx(280), dy: sy(170))[
      #box(width: sx(320), height: sy(90), lab(size: 7.2pt)[
        *Ansprechen + Schmerzreiz*\ Atemwege freimachen
      ])
    ]
    #place(top + left, dx: sx(300), dy: sy(340))[
      #box(width: sx(260), height: sy(90), lab(size: 7.4pt)[
        *Atmung normal?*\ max. *10 s*
      ])
    ]
    #place(top + left, dx: sx(60), dy: sy(520))[
      #box(width: sx(280), height: sy(90), lab(size: 7pt)[
        *4a Seitenlage · 112*\ überwachen
      ])
    ]
    #place(top + left, dx: sx(40), dy: sy(480))[
      #text(size: 6.5pt, weight: "bold", fill: palette.success.darken(20%))[↻ stabil]
    ]
    #place(top + left, dx: sx(300), dy: sy(560))[
      #text(size: 6.5pt, weight: "bold", fill: palette.danger)[Verschlechterung]
    ]
    #place(top + left, dx: sx(500), dy: sy(500))[
      #box(width: sx(300), height: sy(90), lab(size: 7pt)[
        *4b 112 · CPR*\ AED holen lassen
      ])
    ]
    #place(top + left, dx: sx(480), dy: sy(680))[
      #box(width: sx(320), height: sy(90), lab(size: 6.7pt)[
        *5* CPR *30:2* bzw.\ nur Kompressionen · AED
      ])
    ]
    #place(top + left, dx: sx(480), dy: sy(860))[
      #box(width: sx(320), height: sy(90), lab(size: 7pt)[
        *6* Bis *Übergabe RD*\ min. Pausen
      ])
    ]
  ]
]

#v(3mm)
#text(size: 7.5pt, fill: palette.text-muted)[
  Hybrid-Raster: Place genähert — bei Versatz nachjustieren. Logik v4: 4a-Schleife + Eskalation, 5/6 nur CPR.
]
