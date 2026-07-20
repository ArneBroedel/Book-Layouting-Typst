// Creative-first pilot visual helpers (not form-catalog cage).
// Prefer these when ideal needs flows, lanes, pathways.
// Pins: cetz 0.5.2 · fletcher 0.5.8 (showcase-aligned).

#import "/packages/bookkit/lib.typ": palette, fonts, space, type-scale
#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node
#import "@preview/cetz:0.5.2": canvas, draw

// ── Urgency chip ───────────────────────────────────────────────
#let urgency-chip(label, tone: "danger") = {
  let c = if tone == "danger" { palette.danger }
    else if tone == "warning" { palette.warning }
    else if tone == "success" { palette.success }
    else if tone == "info" { palette.info }
    else { palette.primary }
  box(
    fill: c,
    inset: (x: 6pt, y: 3pt),
    radius: 3pt,
    text(fill: white, weight: "bold", size: type-scale.tiny, font: fonts.sans, label),
  )
}

// ── Urgency lane row (scannable triage strip) ───────────────────
// rows: array of (criteria, urgency-label, urgency-tone, action)
#let urgency-lanes(rows, title: none) = {
  block(
    width: 100%,
    above: space.lg,
    below: space.lg,
    {
      if title != none {
        text(weight: "bold", font: fonts.sans, fill: palette.primary-dark, size: type-scale.h4, title)
        v(space.sm)
      }
      for (i, row) in rows.enumerate() {
        let (crit, urg, tone, action) = row
        let c = if tone == "danger" { palette.danger }
          else if tone == "warning" { palette.warning }
          else if tone == "success" { palette.success }
          else if tone == "info" { palette.info }
          else { palette.primary }
        block(
          width: 100%,
          inset: 0pt,
          stroke: (left: 4pt + c, rest: 0.4pt + palette.border-light),
          fill: if calc.even(i) { c.lighten(96%) } else { white },
          radius: (right: 3pt),
          below: 4pt,
          grid(
            columns: (1.35fr, auto, 1.25fr),
            column-gutter: space.sm,
            inset: (x: 8pt, y: 7pt),
            align: (left + horizon, center + horizon, left + horizon),
            text(size: type-scale.small, crit),
            urgency-chip(urg, tone: tone),
            text(size: type-scale.small, action),
          ),
        )
      }
    },
  )
}

// ── Horizontal pathway (linear process) ────────────────────────
// stages: content array
#let process-pathway(stages, color: palette.primary, title: none) = {
  block(
    width: 100%,
    above: space.lg,
    below: space.lg,
    {
      if title != none {
        text(weight: "bold", font: fonts.sans, fill: color.darken(15%), size: type-scale.h4, title)
        v(space.sm)
      }
      let n = stages.len()
      let box-w = 2.35
      let box-h = 1.15
      let gap = 0.45
      canvas(length: 1cm, {
        for (i, s) in stages.enumerate() {
          let x = i * (box-w + gap)
          draw.rect(
            (x, 0),
            (x + box-w, box-h),
            fill: color.lighten(88%),
            stroke: 1.1pt + color,
            radius: 4pt,
          )
          draw.content(
            (x + box-w / 2, box-h / 2),
            text(size: 7.5pt, fill: color.darken(25%), weight: "bold", font: fonts.sans, align(center, s)),
          )
          if i > 0 {
            let px = (i - 1) * (box-w + gap) + box-w
            let mid = box-h / 2
            draw.line(
              (px + 0.05, mid),
              (x - 0.05, mid),
              stroke: 1.1pt + color.darken(5%),
              mark: (end: "stealth", fill: color.darken(5%)),
            )
          }
        }
      })
    },
  )
}

// ── Vertical numbered flow (weighted steps, not plain enum) ────
// steps: array of content or (label, body)
#let vertical-flow(steps, title: none, tone: "danger") = {
  let c = if tone == "danger" { palette.danger }
    else if tone == "warning" { palette.warning }
    else if tone == "info" { palette.info }
    else { palette.primary }
  block(
    width: 100%,
    inset: (left: 4pt, rest: space.md),
    fill: c.lighten(95%),
    stroke: (left: 4pt + c),
    radius: (right: 4pt),
    above: space.lg,
    below: space.lg,
    {
      if title != none {
        text(weight: "bold", font: fonts.sans, fill: c.darken(15%), title)
        v(space.sm)
      }
      for (i, step) in steps.enumerate() {
        let lab = str(i + 1)
        let body = step
        if type(step) == dictionary {
          lab = str(step.at("label", default: lab))
          body = step.at("body", default: [])
        } else if type(step) == array and step.len() == 2 {
          lab = str(step.at(0))
          body = step.at(1)
        }
        grid(
          columns: (auto, 1fr),
          column-gutter: space.sm,
          align: (center + top, top),
          {
            // node + connector stem
            box(
              width: 1.7em,
              height: 1.7em,
              fill: c,
              radius: 50%,
              align(center + horizon, text(fill: white, weight: "bold", size: type-scale.small, font: fonts.sans, lab)),
            )
            if i < steps.len() - 1 {
              v(2pt)
              align(center, rect(width: 2pt, height: 10pt, fill: c.lighten(40%), stroke: none))
            }
          },
          pad(top: 2pt, body),
        )
        if i < steps.len() - 1 { v(space.xs) }
      }
    },
  )
}

// ── Cue cluster (recognition chips) ────────────────────────────
// items: array of content
#let cue-cluster(items, title: none, tone: "warning") = {
  let c = if tone == "danger" { palette.danger }
    else if tone == "warning" { palette.warning }
    else { palette.info }
  block(
    width: 100%,
    inset: space.md,
    fill: c.lighten(94%),
    stroke: 0.6pt + c.lighten(40%),
    radius: 4pt,
    above: space.lg,
    below: space.lg,
    {
      if title != none {
        text(weight: "bold", font: fonts.sans, fill: c.darken(20%), size: type-scale.small, title)
        v(space.sm)
      }
      for it in items {
        grid(
          columns: (auto, 1fr),
          column-gutter: 6pt,
          align: (center + horizon, left + horizon),
          box(width: 7pt, height: 7pt, fill: c, radius: 1.5pt),
          text(size: type-scale.small, it),
        )
        v(3pt)
      }
    },
  )
}

// ── Fletcher: generic decision diagram wrapper ─────────────────
// body is a content block that builds nodes/edges inside diagram()
#let decision-diagram(body, spacing: (12mm, 11mm)) = {
  set text(font: fonts.sans, size: 8pt)
  align(center, diagram(
    spacing: spacing,
    node-stroke: 0.85pt + palette.text-muted,
    node-inset: 5pt,
    label-sep: 2pt,
    edge-stroke: 0.9pt + palette.text-muted,
    body,
  ))
}

// Convenience shapes
#let n-start(pos, label) = node(
  pos, label,
  shape: fletcher.shapes.pill,
  fill: palette.primary.lighten(82%),
  stroke: 1pt + palette.primary,
)
#let n-decision(pos, label) = node(
  pos, align(center, label),
  shape: fletcher.shapes.diamond,
  fill: palette.warning.lighten(88%),
  stroke: 1pt + palette.warning,
)
#let n-danger(pos, label) = node(
  pos, align(center, label),
  shape: fletcher.shapes.rect,
  fill: palette.danger.lighten(88%),
  stroke: 1.1pt + palette.danger,
  corner-radius: 3pt,
)
#let n-ok(pos, label) = node(
  pos, align(center, label),
  shape: fletcher.shapes.rect,
  fill: palette.success.lighten(88%),
  stroke: 1pt + palette.success,
  corner-radius: 3pt,
)
#let n-warn(pos, label) = node(
  pos, align(center, label),
  shape: fletcher.shapes.rect,
  fill: palette.warning.lighten(88%),
  stroke: 1pt + palette.warning,
  corner-radius: 3pt,
)
#let n-info(pos, label) = node(
  pos, align(center, label),
  shape: fletcher.shapes.rect,
  fill: palette.info.lighten(90%),
  stroke: 1pt + palette.info,
  corner-radius: 3pt,
)
#let e(from, to, lab: none, side: right) = {
  if lab != none {
    edge(from, to, "-|>", label: text(size: 7pt, lab), label-side: side)
  } else {
    edge(from, to, "-|>")
  }
}

// ── Two-column contrast (sieht aus wie / notfall wenn) ─────────
#let contrast-pairs(pairs, title: none) = {
  // pairs: array of (looks-like, miss-if)
  block(
    width: 100%,
    above: space.lg,
    below: space.lg,
    {
      if title != none {
        text(weight: "bold", font: fonts.sans, fill: palette.primary-dark, size: type-scale.h4, title)
        v(space.sm)
      }
      grid(
        columns: (1fr, 1fr),
        column-gutter: 0pt,
        row-gutter: 0pt,
        box(
          width: 100%,
          inset: 6pt,
          fill: palette.bg-subtle,
          text(size: type-scale.tiny, weight: "bold", font: fonts.sans, fill: palette.text-muted)[Sieht aus wie …],
        ),
        box(
          width: 100%,
          inset: 6pt,
          fill: palette.danger.lighten(90%),
          text(size: type-scale.tiny, weight: "bold", font: fonts.sans, fill: palette.danger.darken(10%))[Notfall / Pfad wenn …],
        ),
        ..pairs.map(((a, b)) => (
          box(width: 100%, inset: 7pt, stroke: (bottom: 0.4pt + palette.border-light), text(size: type-scale.small, a)),
          box(width: 100%, inset: 7pt, stroke: (bottom: 0.4pt + palette.border-light, left: 2.5pt + palette.danger), fill: palette.danger.lighten(97%), text(size: type-scale.small, b)),
        )).flatten(),
      )
    },
  )
}

// ── Exam station card ──────────────────────────────────────────
#let station-card(
  number: 1,
  title: [],
  vignette: [],
  fangfrage: [],
  action: [],
  verweise: [],
  tone: "danger",
) = {
  let c = if tone == "danger" { palette.danger }
    else if tone == "warning" { palette.warning }
    else if tone == "info" { palette.info }
    else { palette.primary }
  block(
    width: 100%,
    stroke: (left: 5pt + c, rest: 0.5pt + palette.border-light),
    radius: (right: 4pt),
    fill: white,
    above: space.lg,
    below: space.md,
    clip: false,
    {
      // header bar
      box(
        width: 100%,
        fill: c.lighten(92%),
        inset: (x: 10pt, y: 7pt),
        grid(
          columns: (auto, 1fr),
          column-gutter: space.sm,
          align: horizon,
          box(
            fill: c,
            inset: (x: 7pt, y: 3pt),
            radius: 3pt,
            text(fill: white, weight: "bold", size: type-scale.tiny, font: fonts.sans)[Station #number],
          ),
          text(weight: "bold", font: fonts.sans, fill: c.darken(15%), size: type-scale.small, title),
        ),
      )
      pad(x: 10pt, y: 8pt, {
        text(size: type-scale.small, vignette)
        v(6pt)
        text(size: type-scale.tiny, fill: palette.text-muted, weight: "bold", font: fonts.sans)[Fokus]
        h(4pt)
        text(size: type-scale.small, fangfrage)
        v(8pt)
        block(
          width: 100%,
          inset: 8pt,
          fill: c.lighten(95%),
          stroke: (left: 3pt + c),
          radius: (right: 3pt),
          {
            text(size: type-scale.tiny, weight: "bold", font: fonts.sans, fill: c.darken(10%))[Musterlösung / Aktion]
            v(3pt)
            text(size: type-scale.small, action)
          },
        )
        if verweise != [] {
          v(6pt)
          text(size: type-scale.tiny, fill: palette.text-light, font: fonts.sans)[Verweise: #verweise]
        }
      })
    },
  )
}

// ── Three-layer legal stack ────────────────────────────────────
#let layer-stack(layers) = {
  // layers: array of (letter, title, body, tone)
  for (letter, title, body, tone) in layers {
    let c = if tone == "danger" { palette.danger }
      else if tone == "warning" { palette.warning }
      else if tone == "info" { palette.info }
      else { palette.primary }
    block(
      width: 100%,
      inset: 0pt,
      stroke: 0.6pt + c.lighten(30%),
      radius: 4pt,
      below: 8pt,
      grid(
        columns: (auto, 1fr),
        box(
          width: 2.2em,
          fill: c,
          inset: (y: 12pt),
          align(center, text(fill: white, weight: "bold", size: 14pt, font: fonts.sans, letter)),
        ),
        pad(10pt, {
          text(weight: "bold", font: fonts.sans, fill: c.darken(10%), title)
          v(4pt)
          text(size: type-scale.small, body)
        }),
      ),
    )
  }
}
