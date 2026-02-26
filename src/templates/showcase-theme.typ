#let T = (
  page: (
    width: 210mm,
    height: 297mm,
    margin: (top: 22mm, bottom: 22mm, left: 24mm, right: 18mm),
    binding: 6mm,
  ),

  fonts: (
    body: "Noto Serif",
    ui: "Noto Sans",
    mono: "Noto Sans Mono",
  ),

  size: (
    body: 11pt,
    small: 9.5pt,
    h1: 22pt,
    h2: 16pt,
    h3: 13pt,
  ),

  leading: (
    body: 1.35em,
    tight: 1.15em,
  ),

  c: (
    ink: rgb(15, 23, 42),
    muted: rgb(71, 85, 105),
    line: rgb(226, 232, 240),
    paper: rgb(255, 255, 255),

    primary: rgb(15, 111, 134),
    info: rgb(47, 110, 166),
    warn: rgb(234, 122, 42),
    danger: rgb(220, 38, 38),
    good: rgb(16, 185, 129),

    soft_primary: rgb(228, 244, 247),
    soft_info: rgb(232, 241, 251),
    soft_warn: rgb(255, 241, 231),
    soft_danger: rgb(254, 226, 226),
    soft_good: rgb(220, 252, 231),
  ),

  s: (
    "1": 3pt,
    "2": 6pt,
    "3": 10pt,
    "4": 14pt,
    "5": 20pt,
    "6": 28pt,
  ),

  radius: 8pt,
)

#let apply-theme() = {
  set page(
    width: T.page.width,
    height: T.page.height,
    margin: (
      top: T.page.margin.top,
      bottom: T.page.margin.bottom,
      left: T.page.margin.left + T.page.binding,
      right: T.page.margin.right,
    ),
  )

  set text(
    font: T.fonts.body,
    size: T.size.body,
    fill: T.c.ink,
  )
  set par(leading: T.leading.body)

  set heading(
    numbering: "1.1",
  )

  set list(indent: 1.1em, body-indent: 0.2em)
}
