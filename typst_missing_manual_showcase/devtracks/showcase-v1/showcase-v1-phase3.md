# Showcase-v1: Phase 3 – Components (Base & Advanced)

## Objectives

Level-up **admonitions, cards, callouts, and figures** to feel sophisticated and publication-ready. Transform functional boxes into design elements that delight and inform.

## Dependencies

✓ Phase 1 (typography) and Phase 2 (color) complete

## Tasks

### 3.1 Admonition Redesign (components/admonitions.typ)

**Current**: Simple box with title and body.
**Goal**: Elegant left-border accent, optional icons, better spacing.

**Implementation**:
```typst
#let _box(title, color, body, icon: none) = {
  block(
    inset: (left: space.lg + 4pt, x: space.lg, y: space.md),
    radius: 6pt,
    fill: color.lighten(94%),
    stroke: (
      left: (paint: color, thickness: 4pt),
      top: (paint: color.lighten(80%), thickness: 0.5pt),
      bottom: (paint: color.lighten(80%), thickness: 0.5pt),
      right: (paint: color.lighten(80%), thickness: 0.5pt),
    ),
  )[
    #block(spacing: space.sm)[
      #set text(size: type.small, weight: 700, fill: color)
      #if icon != none {
        #text(size: 1.3em)[#icon] #h(space.xs)
      }
      #title
    ]
    #set text(size: type.body, fill: palette.ink, weight: 400)
    #set par(leading: 1.4em, spacing: space.sm)
    #body
  ]
}

#let note(body) = _box("ℹ Notiz", palette.info, body)
#let tip(body) = _box("💡 Praxis-Tipp", palette.good, body)
#let warn(body) = _box("⚠ Achtung", palette.warn, body)
#let redflag(body) = _box("🚩 Red Flag", palette.bad, body)

#let checklist(title: "Checkliste", items) = {
  _box(title, palette.primary, [
    #set list(marker: "☐", spacing: space.sm)
    #items
  ])
}
```

**Visual improvement**: Multi-sided subtle border (left strong, others light) creates depth without harshness.

### 3.2 Callout & Emphasis Box (NEW)

Add **highlighted callout** for key insights:

```typst
#let callout(title: none, body) = [
  #block(
    inset: space.lg,
    radius: 8pt,
    fill: palette.accent2-light,
    stroke: (paint: palette.accent2, thickness: 1.5pt),
  )[
    #if title != none {
      #text(size: type.h3, weight: 700, fill: palette.accent2)[#title]
      #v(space.sm)
    }
    #set text(size: type.body, fill: palette.ink)
    #set par(leading: 1.4em)
    #body
  ]
]
```

**Use case**: "Key insight" boxes, emphasis quotes, learning summaries.

### 3.3 Card Component (NEW)

Multi-use card for structured content (definitions, concepts, cases):

```typst
#let card(title: none, body, color: palette.primary, width: 100%) = [
  #block(
    width: width,
    inset: space.lg,
    radius: 8pt,
    fill: palette.paper,
    stroke: (paint: color.lighten(50%), thickness: 0.8pt),
    shadow: (
      offset: (x: 0pt, y: 2pt),
      blur: 4pt,
      color: color.lighten(80%),
    ),
  )[
    #if title != none {
      #text(size: type.h3, weight: 700, fill: color)[#title]
      #v(space.md)
    }
    #set text(size: type.body, fill: palette.ink)
    #set par(leading: 1.4em)
    #body
  ]
]
```

**Note**: Typst v0.13+ supports `shadow`. Fallback for older: use color.lighten border instead of shadow.

### 3.4 Figure Enhancement (components/figures.typ)

**Current**: Minimal frame + caption.
**Goal**: Elegant border, categorized captions, optional callout.

**Implementation**:
```typst
#let fig(img, caption: none, width: 100%, category: "Figure") = {
  figure(
    block(
      width: width,
      fill: palette.paper,
      radius: 6pt,
      stroke: (paint: palette.mute-light, thickness: 0.8pt),
      inset: 8pt,
    )[
      #image(img, width: 100%)
    ],
    caption: if caption != none {
      [
        #text(size: type.tiny, weight: 600, fill: palette.mute)[#category #counter(figure).display():]
        #h(space.sm)
        #caption
      ]
    } else { none },
  )
}

#show figure.caption: it => [
  #set text(size: type.small, fill: palette.mute)
  #set par(leading: 1.2em)
  #v(space.md)
  #it
]
```

### 3.5 Table Refinement (components/tables.typ)

**Current**: Alternating rows, basic styling.
**Goal**: Accessible header, visual grouping, refined colors.

**Implementation**:
```typst
#let zebra-table(columns: (1fr, 1fr), ..rows) = {
  table(
    columns: columns,
    stroke: (x: none, y: (paint: palette.mute-light, thickness: 0.5pt)),
    fill: (x, y) => {
      if y == 0 {
        palette.primary-light
      } else if calc.even(y) {
        palette.mute-light.lighten(30%)
      } else {
        palette.paper
      }
    },
    align: (x, y) => if y == 0 { center + horizon } else { left + horizon },
    inset: 10pt,
    ..rows,
  )
}

// Header styling via show rule
#show table.cell.where(y: 0): set text(weight: 700, fill: palette.primary-dark)
```

### 3.6 List Styling (NEW utility)

Add styled marker options:

```typst
#let list-check(..items) = {
  set list(marker: "✓", spacing: space.sm)
  items
}

#let list-cross(..items) = {
  set list(marker: "✗", spacing: space.sm)
  items
}

#let list-bullet(..items) = {
  set list(marker: "▪", spacing: space.sm)
  items
}

#let list-arrow(..items) = {
  set list(marker: "→", spacing: space.sm)
  items
}
```

### 3.7 Quote & Blockquote Styling (NEW)

Add elegant quote component:

```typst
#let blockquote(body, attribution: none) = [
  #block(
    inset: (left: space.lg, right: space.lg, y: space.md),
    radius: 0pt,
    fill: palette.mute-light.lighten(40%),
    stroke: (left: (paint: palette.accent1, thickness: 3pt)),
  )[
    #set text(style: "italic", fill: palette.mute)
    #set par(leading: 1.5em)
    #body
    #if attribution != none {
      #v(space.md)
      #align(right)[#text(size: type.small, weight: 600, fill: palette.mute)[— #attribution]]
    }
  ]
]
```

### 3.8 Marginalia Helper (NEW)

For sidebar notes without full layout redesign:

```typst
#let margin-note(body, color: palette.info) = [
  #box(
    fill: color.lighten(94%),
    stroke: (paint: color, thickness: 0.8pt),
    radius: 4pt,
    inset: 8pt,
  )[
    #set text(size: type.tiny, fill: palette.ink)
    #set par(leading: 1.2em)
    #body
  ]
]
```

### 3.9 Footnote Styling (NEW)

Enhance footnote appearance:

```typst
#show footnote: it => {
  set text(size: type.small, fill: palette.mute)
  set par(leading: 1.3em)
  it
}
```

### 3.10 Component Export & Documentation

Create `components/README.md`:
```markdown
# Showcase Components

## Available Components

- `note()` – informational box (ℹ icon)
- `tip()` – practical tip (💡 icon)
- `warn()` – warning/caution (⚠ icon)
- `redflag()` – critical alert (🚩 icon)
- `checklist()` – checkbox list
- `callout()` – emphasis/insight box (new)
- `card()` – structured content card (new)
- `fig()` – enhanced figure with caption
- `blockquote()` – styled quotation (new)
- `margin-note()` – sidebar annotation (new)
- `zebra-table()` – professional table
- `list-check()`, `list-arrow()` – styled lists (new)

Each component is:
- Reusable across chapters
- Themeable (colors, sizes via tokens)
- Accessible (WCAG AA contrast)
- Zero external dependencies
```

## Deliverables

**Files created/modified**:
- `components/admonitions.typ` (enhanced with icons, borders)
- `components/figures.typ` (refined border, category labels)
- `components/tables.typ` (header styling, refined zebra)
- `components/callout.typ` (new file)
- `components/card.typ` (new file)
- `components/quote.typ` (new file)
- `components/lists.typ` (new file: styled markers)
- `components/README.md` (new: documentation)

**Output**: 10+ publication-grade components, each with distinctive visual character.

## Acceptance Criteria

✓ All admonitions have left-border accent + optional icons
✓ New callout, card, blockquote components created & working
✓ Tables pass WCAG AA, headers visually distinct
✓ Figures have refined captions with category labels
✓ Footnotes styled subtly (small, muted)
✓ All components compile cleanly
✓ PNG render shows polished, unified component aesthetic

## Time Estimate

**2–3 days** (10 components × ~15 min design/implement/test)

## Next Phase

→ [Phase 4: Layout & Spreads](showcase-v1-phase4.md)
