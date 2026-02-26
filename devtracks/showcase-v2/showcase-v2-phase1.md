# Showcase-v2: Phase 1 — Typography

## Objective

Establish the typographic foundation: font selection, heading hierarchy with auto-numbering, paragraph rhythm, and text styling rules. All later components depend on this layer being solid.

## Dependencies

- Phase 0 complete (tokens, folder structure, compiling document)

## Tasks

### 1.1 Global Text Defaults (`styles/typography.typ`)

Set up the base text configuration using theme tokens:

```typst
#let setup-typography() = {
  set text(
    font: fonts.serif,
    size: type-scale.body,       // 10.5pt
    lang: "de",
    region: "DE",
    hyphenate: true,
    fill: palette.text-body,
  )

  set par(
    leading: 0.65em,             // ⚠️ leading belongs to par, NOT text
    spacing: 1.2em,              // Space between paragraphs
    justify: true,
    first-line-indent: 0pt,      // Decision: no indent, use spacing instead
  )
}
```

> **GUARD**: `leading` is a `par` parameter, not `text`. This was a v1 bug.

### 1.2 Heading Hierarchy

Define heading styles for levels 1–5. Use auto-numbering via `set heading(numbering: ...)` and style with `show heading.where(level: N)`:

```typst
// Auto-numbering for all heading levels
set heading(numbering: "1.1")

// Level 1: Chapter titles — large, primary color, with rule below
show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: type-scale.h1, fill: palette.primary, weight: "bold")
  block(
    above: space.xxxl,
    below: space.xl,
    {
      counter(heading).display()
      h(space.md)
      it.body
    }
  )
}

// Level 2: Section titles — medium, primary color
show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: type-scale.h2, fill: palette.primary-dark, weight: "bold")
  block(above: space.xxl, below: space.lg, it)
}

// Level 3: Subsection — still sans, smaller
show heading.where(level: 3): it => {
  set text(font: fonts.sans, size: type-scale.h3, fill: palette.text-body, weight: "bold")
  block(above: space.xl, below: space.md, it)
}

// Level 4: Minor heading — body-sized, bold
show heading.where(level: 4): it => {
  set text(font: fonts.sans, size: type-scale.h4, fill: palette.text-body, weight: "bold")
  block(above: space.lg, below: space.sm, it)
}

// Level 5: Run-in heading — italic, inline feel
show heading.where(level: 5): it => {
  set text(font: fonts.sans, size: type-scale.body, fill: palette.text-muted, weight: "semibold", style: "italic")
  block(above: space.md, below: space.sm, it)
}
```

> **GUARD**: The custom heading show rules must use `counter(heading).display()` if they want to show numbering. Show rules override the default rendering, including numbering display. However, for levels 2+ we pass `it` directly which preserves the default numbering.

> **Decision**: Level 1 headings will be replaced by `chapter-opener()` in Phase 5, so the show rule here is a temporary but functional fallback.

### 1.3 List and Enum Styling

Configure lists and enumerations for visual consistency:

```typst
set enum(indent: space.md, body-indent: space.sm)
set list(indent: space.md, body-indent: space.sm, marker: sym.bullet)
```

### 1.4 Strong/Emph/Raw Styling

Subtle refinements for inline emphasis:

```typst
// Strong text in sans for contrast
show strong: set text(font: fonts.sans, weight: "bold")

// Raw/code text in monospace with subtle background
show raw.where(block: false): box.with(
  fill: palette.bg-subtle,
  inset: (x: 3pt, y: 1.5pt),
  outset: (y: 1.5pt),
  radius: 2pt,
)

// Code blocks with full background
show raw.where(block: true): block.with(
  fill: palette.bg-subtle,
  inset: space.md,
  radius: 4pt,
  width: 100%,
  breakable: true,
)
```

### 1.5 Footnote and Caption Styling

```typst
// Smaller footnotes
set footnote.entry(separator: line(length: 30%, stroke: 0.5pt + palette.border))

// Figure captions: smaller, muted
show figure.caption: it => {
  set text(size: type-scale.small, fill: palette.text-muted)
  it
}
```

### 1.6 Typography Test Page

Add a temporary test page to `main.typ` that exercises all heading levels, paragraph text, lists, emphasis, code, and footnotes. This page validates the entire typography system:

```typst
= Überschrift Ebene 1

== Überschrift Ebene 2

=== Überschrift Ebene 3

==== Überschrift Ebene 4

===== Überschrift Ebene 5

Dies ist ein Absatz mit normalem Fließtext. Er enthält *fetten Text*, _kursiven Text_,
und `inline code`. Die Lesbarkeit bei Standardgröße sollte gut sein.

Ein zweiter Absatz testet den Abstand zwischen Absätzen und die Zeilenhöhe über
mehrere Zeilen hinweg. Die Textbreite und der Randabstand müssen harmonisch wirken.

- Aufzählungsliste Punkt eins
- Aufzählungsliste Punkt zwei
  - Verschachtelt

+ Nummerierte Liste
+ Zweiter Punkt

Dies ist ein Satz mit einer Fußnote.#footnote[Dies ist der Fußnotentext.]
```

### 1.7 Compile Gate

```sh
cd typst_showcase_v2
typst compile main.typ
typst compile --format png --ppi 200 main.typ "png_output/page-{0p}-of-{t}.png"
```

Visually verify:
- [ ] Heading hierarchy is clearly distinguishable (size, weight, color)
- [ ] Body text is readable at 100% zoom
- [ ] Paragraph spacing and leading feel comfortable
- [ ] Lists are properly indented
- [ ] Inline code has subtle background
- [ ] Auto-numbering shows "1", "1.1", "1.1.1" etc.

## Deliverables

- [ ] `styles/typography.typ` fully populated with `setup-typography()` function
- [ ] All heading levels (1–5) styled with appropriate visual hierarchy
- [ ] List, enum, strong, emph, raw, footnote, caption styles defined
- [ ] Typography test page in `main.typ`
- [ ] Successful compile with visual verification

## Acceptance Criteria

- All text sizing comes from `type-scale` tokens — no hardcoded `pt` values in rules
- All colors come from `palette` — no hardcoded `rgb()` in rules
- `leading` is set on `par`, not `text`
- Heading show rules preserve counter access
- Auto-numbering works correctly at all levels
- Body text is readable (10–11pt range, adequate leading)
- Clear visual hierarchy from h1 to h5

## Anti-Pattern Guards

| Do NOT | Do Instead |
|---|---|
| `set text(leading: ...)` | `set par(leading: ...)` — leading belongs to par |
| Hardcode `12pt` in heading rules | Use `type-scale.h2` etc. |
| Use manual heading numbers like `1.` | Use `set heading(numbering: "1.1")` for auto-numbering |
| Put both `chapter-opener()` AND `= Title` | Chapter opener IS the heading (enforced in Phase 5–6) |
| Override heading show rule and lose counter | Always use `counter(heading).display()` when manually rendering heading content |

## Next Phase

[Phase 2: Page Setup](showcase-v2-phase2.md)
