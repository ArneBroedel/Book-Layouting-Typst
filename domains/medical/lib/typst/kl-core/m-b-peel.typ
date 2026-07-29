// Wave G3 — M-B peel/mask cards (Form Spec kl-u-mimic)
// False frame peels away → real danger · pure Typst (no image asset)
// Pins: Erysipel §4 Trügerische Erklärungen (copy-through German)

#import "/packages/bookkit/theme.typ": palette

#let danger-fill = rgb("#1a1a1a")
#let frame-fill = white
#let fold-shade = rgb("#d4d4d0")

/// One peel card: muted false frame on top, danger revealed below.
/// Corner fold is approximate (stacked polygons) — no image asset.
#let peel-card(frame, danger, width: 36mm, height: 52mm) = {
  let fold-size = 11mm
  let frame-h = height * 0.48

  box(
    width: width,
    height: height,
    radius: 3pt,
    clip: true,
    stroke: 0.5pt + danger-fill,
    {
      // Bottom layer: danger panel (full card)
      place(top + left, box(
        width: width,
        height: height,
        fill: danger-fill,
      ))

      // Danger text in lower zone
      place(bottom + left, box(
        width: width,
        height: height - frame-h + 2mm,
        inset: (x: 4pt, y: 5pt),
        align(center + horizon, text(
          size: 7pt,
          weight: "bold",
          fill: white,
          danger,
        )),
      ))

      // Top layer: false-frame surface
      place(top + left, box(
        width: width,
        height: frame-h + 1.5mm,
        fill: frame-fill,
      ))

      // Soft shadow under peel edge
      place(top + left, dy: frame-h - 0.5mm, box(
        width: width,
        height: 2.2mm,
        fill: gradient.linear(
          rgb("#00000022"),
          rgb("#00000000"),
          angle: 90deg,
        ),
      ))

      // Frame text
      place(top + left, box(
        width: width,
        height: frame-h - 3mm,
        inset: (x: 4pt, y: 5pt),
        align(center + horizon, text(
          size: 7.2pt,
          weight: "bold",
          fill: palette.text-body,
          frame,
        )),
      ))

      // Corner fold underside (bottom-right of frame surface)
      place(
        top + right,
        dy: frame-h - fold-size + 0.5mm,
        polygon(
          fill: fold-shade,
          (0pt, 0pt),
          (fold-size, 0pt),
          (fold-size, fold-size),
        ),
      )

      // Top face of curled corner
      place(
        top + right,
        dy: frame-h - fold-size + 0.5mm,
        polygon(
          fill: gradient.linear(white, rgb("#e8e8e3"), angle: 135deg),
          stroke: 0.3pt + palette.border,
          (0pt, 0pt),
          (fold-size - 0.8mm, 0.6mm),
          (fold-size * 0.55, fold-size * 0.55),
        ),
      )

      // Direction cue: peel reveals danger
      place(
        top + right,
        dy: frame-h + 0.8mm,
        dx: -3.5mm,
        text(size: 9pt, fill: white, weight: "bold", [↓]),
      )
    },
  )
}

/// M-B Erysipel peel/mask strip — four claim-safe maps from §4.
#let m-b-erysipel() = {
  set text(font: ("Libertinus Serif", "New Computer Modern"))

  align(center, text(size: 11pt, weight: "bold", fill: palette.text-body)[
    Trügerische Erklärungen
  ])
  v(6pt)

  // Four maps: false frame → real danger (direction preserved)
  let cards = (
    (
      [„Muskelkater“\ Überlastung],
      [Weichteilinfekt · Therapieverzögerung],
    ),
    (
      [„Nur gestautes\ Bein“ / Ekzem],
      [Systemik und flammenförmiges Muster übersehen],
    ),
    (
      [„Wahrscheinlich\ Gicht“],
      [Erysipel topografisch verdeckt],
    ),
    (
      [„Sicher TVT“],
      [TVT und/oder Weichteilinfekt — schließt Infekt nicht aus],
    ),
  )

  layout(size => {
    let gap = 3.5mm
    let n = 4
    let card-w = calc.min(38mm, (size.width - gap * (n - 1)) / n)
    let card-h = 54mm

    grid(
      columns: (card-w,) * n,
      column-gutter: gap,
      align: center + top,
      ..cards.map(((frame, danger)) => {
        peel-card(frame, danger, width: card-w, height: card-h)
      }),
    )
  })
}
