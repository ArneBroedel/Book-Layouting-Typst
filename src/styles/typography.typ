// styles/typography.typ — Typography set/show rules

#import "theme.typ": fonts, palette, space, type-scale

#let setup-typography() = body => {
  // ── Base text ────────────────────────────────────────────────
  set text(
    font: fonts.serif,
    size: type-scale.body,
    lang: "de",
    region: "DE",
    hyphenate: true,
    fill: palette.text-body,
  )

  // ── Paragraph rhythm ────────────────────────────────────────
  // NOTE: leading belongs to par, NOT text
  set par(
    leading: 0.65em,
    spacing: 1.2em,
    justify: true,
    first-line-indent: 0pt,
  )

  // ── Heading numbering (auto — no manual numbers anywhere) ───
  set heading(numbering: "1.1")

  // ── Level 1: Chapter title ──────────────────────────────────
  show heading.where(level: 1): it => {
    set text(font: fonts.sans, size: type-scale.h1, fill: palette.primary, weight: "bold")
    block(
      above: space.xxxl,
      below: space.xl,
      {
        counter(heading).display()
        h(space.md)
        it.body
      },
    )
  }

  // ── Level 2: Section ────────────────────────────────────────
  show heading.where(level: 2): it => {
    set text(font: fonts.sans, size: type-scale.h2, fill: palette.primary-dark, weight: "bold")
    block(above: space.xxl, below: space.lg, it)
  }

  // ── Level 3: Subsection ─────────────────────────────────────
  show heading.where(level: 3): it => {
    set text(font: fonts.sans, size: type-scale.h3, fill: palette.text-body, weight: "bold")
    block(above: space.xl, below: space.md, it)
  }

  // ── Level 4: Minor heading ──────────────────────────────────
  show heading.where(level: 4): it => {
    set text(font: fonts.sans, size: type-scale.h4, fill: palette.text-body, weight: "bold")
    block(above: space.lg, below: space.sm, it)
  }

  // ── Level 5: Run-in heading ─────────────────────────────────
  show heading.where(level: 5): it => {
    set text(
      font: fonts.sans,
      size: type-scale.body,
      fill: palette.text-muted,
      weight: "semibold",
      style: "italic",
    )
    block(above: space.md, below: space.sm, it)
  }

  // ── Lists ───────────────────────────────────────────────────
  set enum(indent: space.md, body-indent: space.sm)
  set list(indent: space.md, body-indent: space.sm, marker: sym.bullet)

  // ── Strong: sans-serif for contrast ─────────────────────────
  show strong: set text(font: fonts.sans, weight: "bold")

  // ── Inline code ─────────────────────────────────────────────
  show raw.where(block: false): it => box(
    fill: palette.bg-subtle,
    inset: (x: 3pt, y: 1.5pt),
    outset: (y: 1.5pt),
    radius: 2pt,
    text(font: fonts.mono, size: type-scale.small, it),
  )

  // ── Code blocks ─────────────────────────────────────────────
  show raw.where(block: true): it => block(
    fill: palette.bg-subtle,
    inset: space.md,
    radius: 4pt,
    width: 100%,
    text(font: fonts.mono, size: type-scale.small, it),
  )

  // ── Footnote separator ──────────────────────────────────────
  set footnote.entry(separator: line(length: 30%, stroke: 0.5pt + palette.border))

  // ── Figure captions ─────────────────────────────────────────
  show figure.caption: it => {
    set text(size: type-scale.small, fill: palette.text-muted)
    it
  }

  body
}
