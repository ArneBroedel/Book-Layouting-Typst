# Showcase-v2: Phase 3 — Block & Inline Components

## Objective

Build the reusable component library: block-level containers (callouts, cards, pull-quotes) and inline elements (badges, tags, highlights). Every component consumes theme tokens, has a documented API, and is tested in isolation before integration.

## Dependencies

- Phase 0 complete (tokens)
- Phase 1 complete (typography — heading and text styles)
- Phase 2 complete (page setup — determines content width context)

## Tasks

### 3.1 Block Components (`components/blocks.typ`)

Import theme and build these functions:

#### 3.1.1 `callout()`

Semantic admonition block with left accent bar, icon, and toned background.

```typst
#let callout(
  body,
  title: none,
  tone: "info",        // "info" | "success" | "warning" | "danger"
  icon: none,          // Optional: symbol like sym.info or emoji
) = { ... }
```

Implementation pattern:
```typst
// Map tone to palette color
let tone-color = if tone == "info" { palette.info }
  else if tone == "success" { palette.success }
  else if tone == "warning" { palette.warning }
  else { palette.danger }

block(
  width: 100%,
  inset: (left: space.lg + 4pt, rest: space.md),
  fill: tone-color.lighten(90%),
  stroke: (left: 3pt + tone-color),
  radius: (right: 4pt),
  breakable: false,
  {
    if title != none {
      // Title line with optional icon
      set text(weight: "bold", fill: tone-color.darken(20%))
      if icon != none { icon; h(space.xs) }
      title
      v(space.xs)
    }
    body
  }
)
```

> **GUARD**: Use `breakable: false` for all decorative blocks to prevent ugly splitting.

#### 3.1.2 `card()`

Elevated content card with optional header stripe.

```typst
#let card(
  body,
  title: none,
  accent: palette.primary,
  width: 100%,
) = { ... }
```

Pattern: `block` with subtle fill, thin stroke, top accent bar via `stroke: (top: 3pt + accent, rest: 0.5pt + palette.border-light)`.

#### 3.1.3 `blockquote()`

Styled quotation with left border and attribution.

```typst
#let blockquote(
  body,
  attribution: none,
) = { ... }
```

Pattern: `block` with left stroke, italic body, right-aligned attribution in muted text.

#### 3.1.4 `pull-quote()`

Large editorial quote breaking visual rhythm.

```typst
#let pull-quote(
  body,
  attribution: none,
  size: type-scale.h3,
) = { ... }
```

Pattern: Oversized italic text in `block(breakable: false)` with decorative top/bottom rules and primary color.

> **GUARD**: Always `breakable: false` on pull-quotes — they are decorative single units.

#### 3.1.5 `side-note()`

Smaller annotation block for supplementary information.

```typst
#let side-note(
  body,
  title: none,
) = { ... }
```

Pattern: `block` with reduced text size (`type-scale.small`), left accent, muted fill.

#### 3.1.6 `code-block()`

Formatted code display (beyond the global `raw` show rule).

```typst
#let code-block(
  body,
  title: none,
  language: none,
) = { ... }
```

Pattern: `block` with monospace font, subtle fill, optional title header bar.

#### 3.1.7 `key-concept()`

Highlighted definition or key term box.

```typst
#let key-concept(
  body,
  term: none,
) = { ... }
```

Pattern: `block` with gradient accent bar on left (using `gradients.accent`), emphasized term, explanatory body.

### 3.2 Inline Components (`components/inline.typ`)

#### 3.2.1 `badge()`

Small colored label, inline with text.

```typst
#let badge(
  content,
  color: palette.primary,
) = {
  box(
    fill: color,
    inset: (x: 4pt, y: 2pt),
    radius: 3pt,
    baseline: 20%,           // ⚠️ Critical for text alignment
    text(size: type-scale.tiny, fill: white, weight: "bold", content)
  )
}
```

> **GUARD**: Always set `baseline: 20%` (or similar) on inline `box` elements. Without it, badges appear to float above the text baseline.

#### 3.2.2 `tag()`

Outlined tag/category marker.

```typst
#let tag(
  content,
  color: palette.primary,
) = {
  box(
    stroke: 0.5pt + color,
    inset: (x: 4pt, y: 2pt),
    radius: 3pt,
    baseline: 20%,
    text(size: type-scale.tiny, fill: color, content)
  )
}
```

#### 3.2.3 `highlight-text()`

Background-highlighted text span.

```typst
#let highlight-text(
  content,
  color: palette.accent-light,
) = {
  box(
    fill: color.lighten(60%),
    inset: (x: 2pt, y: 0pt),
    outset: (y: 2pt),          // Extends fill beyond text bounds
    radius: 2pt,
    content,
  )
}
```

> **Pattern**: `outset: (y: 2pt)` extends the fill background beyond the content boundary — useful for highlight effects that feel natural rather than boxy.

#### 3.2.4 `kbd()`

Keyboard shortcut display.

```typst
#let kbd(key) = {
  box(
    inset: (x: 4pt, y: 2pt),
    radius: 3pt,
    baseline: 20%,
    stroke: 0.5pt + palette.border,
    fill: palette.bg-subtle,
    text(font: fonts.mono, size: type-scale.small, key)
  )
}
```

#### 3.2.5 `icon-text()`

Symbol + text pair, baseline-aligned.

```typst
#let icon-text(icon, content) = {
  box(baseline: 20%)[#icon]
  h(space.xs)
  content
}
```

### 3.3 Table Components (`components/tables.typ`)

#### 3.3.1 `styled-table()`

Base table wrapper with header styling and zebra rows.

```typst
#let styled-table(..args) = {
  set table(stroke: 0.5pt + palette.border-light)

  show table.cell.where(y: 0): set text(
    fill: white, weight: "bold", size: type-scale.small
  )
  show table.cell.where(y: 0): set cell(fill: palette.primary)

  // Zebra striping via functional fill
  // Note: This uses the table's fill parameter, not show rules
  table(
    fill: (x, y) => if y == 0 { palette.primary } else if calc.even(y) { palette.bg-subtle } else { white },
    ..args,
  )
}
```

> **Pattern**: Use the `fill: (x, y) => ...` functional parameter on `table` for zebra/checkerboard patterns. This is cleaner than multiple `show table.cell.where()` rules.

#### 3.3.2 `comparison-table()`

Feature comparison with checkmarks and semantic coloring.

```typst
#let comparison-table(headers: (), rows: ()) = { ... }
```

### 3.4 Figure Components (`components/figures.typ`)

#### 3.4.1 Consistent figure wrapper

Ensure all figures have consistent styling:

```typst
// Show rule for all figures (applied in typography or here)
show figure: it => {
  block(
    breakable: false,
    width: 100%,
    above: space.lg,
    below: space.lg,
    it
  )
}
```

### 3.5 Component Isolation Test

Before integrating into chapters, add a temporary test section to `main.typ` that exercises every component:

```typst
= Komponenten-Test

== Block-Komponenten

#callout(title: "Hinweis", tone: "info")[Dies ist ein Info-Callout.]

#callout(title: "Warnung", tone: "warning")[Dies ist eine Warnung.]

#callout(title: "Wichtig", tone: "danger")[Dies ist kritisch.]

#card(title: "Karte")[Inhalt einer Karte mit Rahmen und Akzent.]

#blockquote(attribution: "Hippokrates")[
  Das Leben ist kurz, die Kunst ist lang.
]

#pull-quote(attribution: "Paracelsus")[
  Die Dosis macht das Gift.
]

#side-note(title: "Randbemerkung")[Ergänzende Information.]

#key-concept(term: "Evidenzbasierte Medizin")[
  Medizinische Versorgung auf Basis der besten verfügbaren wissenschaftlichen Erkenntnisse.
]

== Inline-Komponenten

Dies ist Text mit einem #badge[NEU] Badge und einem #tag[Kategorie] Tag.

Markierter Text: #highlight-text[wichtiger Begriff] im Fließtext.

Tastenkürzel: #kbd[Ctrl+S] zum Speichern.

Symbol mit Text: #icon-text(sym.checkmark, [Erledigt])

== Tabellen

#styled-table(
  columns: 3,
  [Merkmal], [Wert], [Status],
  [Temperatur], [37.2°C], [Normal],
  [Blutdruck], [120/80], [Optimal],
  [Puls], [72/min], [Normal],
)
```

### 3.6 Compile Gate

```sh
cd typst_showcase_v2
typst compile main.typ
typst compile --format png --ppi 200 main.typ "png_output/page-{0p}-of-{t}.png"
```

Visually verify:
- [ ] Callouts render with correct tone colors and left accent bars
- [ ] Cards have visible elevation (border + subtle fill)
- [ ] Blockquote has left border and italic text
- [ ] Pull-quote is large, centered, non-breakable
- [ ] Badges and tags align with surrounding text baseline
- [ ] Highlight extends slightly beyond text bounds (outset)
- [ ] Kbd looks like a keyboard key
- [ ] Table has colored header row and zebra stripes
- [ ] No component breaks the page flow unexpectedly

## Deliverables

- [ ] `components/blocks.typ` with 7 components: callout, card, blockquote, pull-quote, side-note, code-block, key-concept
- [ ] `components/inline.typ` with 5 components: badge, tag, highlight-text, kbd, icon-text
- [ ] `components/tables.typ` with styled-table, comparison-table
- [ ] `components/figures.typ` with figure wrapper
- [ ] Component isolation test section in `main.typ`
- [ ] All components compile and render correctly

## Acceptance Criteria

- Every component uses theme tokens — no hardcoded colors or sizes
- All block components use `breakable: false` for decorative containers
- All inline components use `baseline: 20%` (or appropriate) for text alignment
- Grid children use positional args, not content blocks
- All components accept `body` as positional parameter (content)
- No duplicate style literals across component files
- Components import only from `theme.typ` (no cross-component imports)

## Anti-Pattern Guards

| Do NOT | Do Instead |
|---|---|
| Use `breakable: true` on decorative blocks | Always `breakable: false` |
| Forget `baseline` on inline `box` | Set `baseline: 20%` for text-aligned inline elements |
| Use `grid(columns: 2)[child1][child2]` | Use `grid(columns: 2, child1, child2)` — positional args |
| Hardcode `rgb("#...")` in components | Import and use `palette.xxx` from theme |
| Use `sym.lightning` | Verify symbol exists first; `sym.warning` or `sym.excl` are valid |
| Import from other component files | Components only import from `theme.typ` |
| Use `box` for block-level containers | Use `block` for anything that should be its own paragraph |

## Next Phase

[Phase 4: Layout Systems & Grids](showcase-v2-phase4.md)
