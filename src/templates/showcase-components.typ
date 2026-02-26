#import "showcase-theme.typ": T

#let badge(label, fill: T.c.primary) = box(
  inset: (x: 6pt, y: 3pt),
  radius: 999pt,
  fill: fill,
  stroke: none,
)[
  #text(font: T.fonts.ui, size: 9pt, fill: white, weight: "bold")[#label]
]

#let icon-bubble(symbol, fill, fg: white) = box(
  width: 22pt,
  height: 22pt,
  radius: 8pt,
  fill: fill,
  stroke: none,
  inset: 0pt,
)[
  #align(center + horizon)[
    #text(font: T.fonts.ui, size: 10pt, fill: fg, weight: "bold")[#symbol]
  ]
]

#let callout(kind, title, body) = {
  let conf = (
    info: (c: T.c.info, soft: T.c.soft_info, icon: "i"),
    pearl: (c: T.c.primary, soft: T.c.soft_primary, icon: "*"),
    warn: (c: T.c.warn, soft: T.c.soft_warn, icon: "!"),
    danger: (c: T.c.danger, soft: T.c.soft_danger, icon: "X"),
    good: (c: T.c.good, soft: T.c.soft_good, icon: "+"),
  ).at(kind)

  box(
    fill: conf.soft,
    stroke: (paint: conf.c, thickness: 1pt),
    radius: T.radius,
    inset: 12pt,
  )[
    #grid(columns: (24pt, 1fr), gutter: 10pt)[
      [#icon-bubble(conf.icon, conf.c)],
      [
        #text(font: T.fonts.ui, weight: "bold", fill: conf.c)[#title]
        #v(4pt)
        #body
      ],
    ]
  ]
}

#let RedFlag(title, body) = callout("danger", title, body)
#let Warning(title, body) = callout("warn", title, body)
#let Pearl(title, body) = callout("pearl", title, body)
#let Info(title, body) = callout("info", title, body)
#let Success(title, body) = callout("good", title, body)

#let margin-note(body) = place(
  right,
  dx: 8mm,
  dy: 0mm,
)[
  box(
    width: 42mm,
    fill: white,
    stroke: (paint: T.c.line, thickness: 1pt),
    radius: 6pt,
    inset: 8pt,
  )[
    #text(size: T.size.small, fill: T.c.muted)[#body]
  ]
]

#let Fig(content, caption) = figure(
  content,
  caption: [
    #text(font: T.fonts.ui, size: T.size.small, fill: T.c.muted)[#caption]
  ],
)

#let table-cell(body, header: false) = box(
  fill: if header { T.c.soft_info } else { white },
  stroke: (paint: T.c.line, thickness: 0.8pt),
  inset: (x: 8pt, y: 6pt),
  width: 100%,
)[
  #if header [
    #text(font: T.fonts.ui, weight: "bold")[#body]
  ] else [
    #body
  ]
]

#let Table(head, rows) = [
  #grid(columns: (1.4fr, 2.2fr, 1.2fr), gutter: 0pt, row-gutter: 0pt)[
    [#table-cell(head.at(0), header: true)],
    [#table-cell(head.at(1), header: true)],
    [#table-cell(head.at(2), header: true)],
    #for r in rows [
      [#table-cell(r.at(0))]
      [#table-cell(r.at(1))]
      [#table-cell(r.at(2))]
    ]
  ]
]

#let Algorithm(title, steps) = box(
  fill: white,
  stroke: (paint: T.c.line, thickness: 1pt),
  radius: T.radius,
  inset: 12pt,
)[
  #text(font: T.fonts.ui, weight: "bold", size: 12pt)[#title]
  #v(8pt)

  #for (i, s) in steps.enumerate() [
    #grid(columns: (18pt, 1fr), gutter: 8pt)[
      [#badge(str(i + 1), fill: T.c.primary)],
      [#s],
    ]
    #v(6pt)
  ]
]
