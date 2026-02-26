# Showcase-v2: Phase 4 — Layout Systems & Grids

## Objective

Build reusable layout components: sidebar, magazine, scientific paper, adaptive, breakout, and dynamic grids. These are the most complex components and the area where v1 had the most bugs. Every layout is grid-based with scoped column usage.

## Dependencies

- Phases 0–3 complete (tokens, typography, page, block/inline components)

## Critical Warning: v1 Failure Points

This phase covers the exact territory where v1 broke. Three bugs dominated:

1. **`set page(columns: 2)` inside a function leaks to ALL subsequent pages** — destroyed the entire document
2. **`place()` with hardcoded `dx` offsets** — content flew off the page
3. **`place(float: true)` without alignment** — compilation failed

Every layout in this phase uses `columns()` function (scoped) or `grid` (structural). Never `set page(columns: N)`.

## Tasks

### 4.1 Layout Components (`components/layouts.typ`)

#### 4.1.1 `sidebar-layout()`

Classic two-column layout with fixed sidebar and fluid main content.

```typst
#let sidebar-layout(
  sidebar,
  main,
  sidebar-width: 160pt,
  gutter: space.lg,
  sidebar-position: left,   // "left" or "right"
) = {
  let cols = if sidebar-position == "left" {
    (sidebar-width, 1fr)
  } else {
    (1fr, sidebar-width)
  }
  let children = if sidebar-position == "left" {
    (sidebar-content, main-content)
  } else {
    (main-content, sidebar-content)
  }

  // Wrap sidebar in styled block
  let sidebar-content = block(
    width: 100%,
    fill: palette.bg-subtle,
    inset: space.md,
    radius: 4pt,
    sidebar,
  )
  let main-content = main

  grid(
    columns: cols,
    column-gutter: gutter,
    sidebar-content,
    main-content,
  )
}
```

> **Pattern**: Grid with `(fixed, 1fr)` columns. The sidebar gets a fixed width; the main content fills remaining space. No `place()`, no offsets.

> **GUARD**: Grid children are positional arguments — `grid(cols, child1, child2)`, never `grid(cols)[child1][child2]`.

#### 4.1.2 `magazine-layout()`

Full-width hero element followed by multi-column body.

```typst
#let magazine-layout(
  hero,                       // Full-width top element
  body,                       // Multi-column body
  column-count: 2,
  gutter: space.lg,
) = {
  // Hero: full width
  block(width: 100%, hero)

  v(space.lg)

  // Body: scoped columns
  columns(column-count, gutter: gutter, body)
}
```

> **CRITICAL GUARD**: Use `columns(N, gutter: ...)[body]` — the **function** — not `set page(columns: N)`. The function is scoped to its content. `set page(columns: N)` leaks to all subsequent pages.

#### 4.1.3 `scientific-paper()`

Two-column academic layout with full-width title and abstract.

```typst
#let scientific-paper(
  title: none,
  authors: none,
  abstract: none,
  body,
) = {
  // Full-width header section
  if title != none {
    set text(size: type-scale.h2, weight: "bold", font: fonts.sans)
    block(width: 100%, above: space.lg, below: space.md, title)
  }

  if authors != none {
    set text(size: type-scale.small, fill: palette.text-muted)
    block(width: 100%, below: space.md, authors)
  }

  if abstract != none {
    block(
      width: 100%,
      inset: space.md,
      fill: palette.bg-subtle,
      radius: 4pt,
      below: space.xl,
      {
        text(weight: "bold", size: type-scale.small)[Abstract]
        v(space.xs)
        set text(size: type-scale.small)
        abstract
      }
    )
  }

  // Two-column body
  columns(2, gutter: space.lg, body)
}
```

> **GUARD**: The body content inside `columns(2)` should use level-2+ headings (`==`, `===`). Level-1 headings (`=`) inside columns trigger the global chapter-level show rule, which is designed for full-width pages. Use `==` for section headings within multi-column content.

#### 4.1.4 `comparison-layout()`

Side-by-side comparison of two content blocks.

```typst
#let comparison-layout(
  left,
  right,
  left-title: none,
  right-title: none,
) = {
  grid(
    columns: (1fr, 1fr),
    column-gutter: space.lg,
    {
      if left-title != none {
        block(below: space.sm, text(weight: "bold", left-title))
      }
      left
    },
    {
      if right-title != none {
        block(below: space.sm, text(weight: "bold", right-title))
      }
      right
    },
  )
}
```

#### 4.1.5 `adaptive-layout()`

Layout that adapts based on available content width.

```typst
#let adaptive-layout(
  body,
  sidebar: none,
  sidebar-width: 160pt,
  breakpoint: 400pt,
) = {
  layout(size => {
    if sidebar != none and size.width > breakpoint {
      // Wide: sidebar layout
      grid(
        columns: (sidebar-width, 1fr),
        column-gutter: space.lg,
        sidebar,
        body,
      )
    } else {
      // Narrow: stacked layout (sidebar above body)
      if sidebar != none {
        block(width: 100%, sidebar)
        v(space.lg)
      }
      body
    }
  })
}
```

> **CRITICAL GUARD**: Use `layout(size => ...)` for content-width-aware decisions. **NEVER** use `context { page.width }` — that returns the configured page width (always the same), not the actual content area after margins.

#### 4.1.6 `breakout()`

Full-width element breaking out of a narrower context (e.g., for images or tables that need full page width).

```typst
#let breakout(body) = {
  block(
    width: 100%,
    above: space.xl,
    below: space.xl,
    body,
  )
}
```

> **Note**: True cross-column breakout requires `place(float: true, scope: "parent")`, which only works inside `set page(columns: N)`. Since we use the `columns()` function (not `set page`), breakout within columns is limited to column-width. For full-width breakout, exit the `columns()` call and place the breakout content between column sections.

### 4.2 Grid Components (`components/grids.typ`)

#### 4.2.1 `gallery-grid()`

Dynamic grid that displays items in computed columns with enumerated coloring.

```typst
#let gallery-grid(
  items,                      // Array of content items
  column-count: 3,
  gutter: space.md,
  colors: (palette.primary, palette.accent, palette.info, palette.success),
) = {
  let cells = items.enumerate().map(((i, item)) => {
    let color = colors.at(calc.rem(i, colors.len()))
    block(
      width: 100%,
      inset: space.md,
      radius: 4pt,
      fill: color.lighten(85%),
      stroke: 0.5pt + color.lighten(40%),
      breakable: false,
      item,
    )
  })

  grid(
    columns: (1fr,) * column-count,
    gutter: gutter,
    ..cells,
  )
}
```

> **Pattern**: `items.enumerate().map(((i, item)) => ...)` with `..cells` spread syntax. The double parentheses in the map are required for destructuring the `(index, value)` tuple.

> **Pattern**: `(1fr,) * column-count` creates a columns array with `column-count` equal fractional columns.

> **Pattern**: Color cycling via `calc.rem(i, colors.len())` maps each item index to a color from the palette.

#### 4.2.2 `feature-grid()`

Feature/benefit grid with icon, title, and description.

```typst
#let feature-grid(
  features,                   // Array of (icon: ..., title: ..., body: ...) dicts
  column-count: 3,
) = {
  let cells = features.map(f => {
    block(
      width: 100%,
      inset: space.md,
      radius: 4pt,
      fill: palette.bg-subtle,
      breakable: false,
      {
        set text(size: type-scale.h3)
        f.icon
        v(space.sm)
        set text(size: type-scale.body, weight: "bold")
        f.title
        v(space.xs)
        set text(size: type-scale.small, weight: "regular")
        f.body
      }
    )
  })

  grid(
    columns: (1fr,) * column-count,
    gutter: space.md,
    ..cells,
  )
}
```

#### 4.2.3 `stats-grid()`

Key statistics / KPI display.

```typst
#let stats-grid(
  stats,                      // Array of (value: ..., label: ...) dicts
  column-count: auto,
) = {
  let cols = if column-count == auto { stats.len() } else { column-count }

  let cells = stats.map(s => {
    align(center,
      block(
        width: 100%,
        inset: space.md,
        breakable: false,
        {
          text(size: type-scale.h1, weight: "bold", fill: palette.primary, s.value)
          v(space.xs)
          text(size: type-scale.small, fill: palette.text-muted, s.label)
        }
      )
    )
  })

  grid(
    columns: (1fr,) * cols,
    gutter: space.md,
    ..cells,
  )
}
```

#### 4.2.4 `comparison-grid()`

Before/after or A vs B grid with labeled columns.

```typst
#let comparison-grid(
  left-title: "Vorher",
  right-title: "Nachher",
  left,
  right,
) = {
  grid(
    columns: (1fr, 1fr),
    gutter: space.md,
    // Headers
    block(
      width: 100%,
      inset: space.sm,
      fill: palette.primary,
      radius: (top: 4pt),
      text(fill: white, weight: "bold", left-title),
    ),
    block(
      width: 100%,
      inset: space.sm,
      fill: palette.accent,
      radius: (top: 4pt),
      text(fill: white, weight: "bold", right-title),
    ),
    // Content
    block(width: 100%, inset: space.md, left),
    block(width: 100%, inset: space.md, right),
  )
}
```

### 4.3 Layout Isolation Test

Add a test section to `main.typ` that exercises all layout components:

```typst
= Layout-Systeme Test

== Sidebar Layout

#sidebar-layout(
  sidebar: [
    *Navigation*
    - Kapitel 1
    - Kapitel 2
    - Kapitel 3
  ],
  main: [#lorem(80)],
)

== Magazin Layout

#magazine-layout(
  hero: block(
    width: 100%, height: 80pt,
    fill: gradients.chapter, radius: 4pt,
    align(center + horizon, text(fill: white, size: type-scale.h2, weight: "bold")[Hero-Bereich])
  ),
  body: [#lorem(120)],
)

== Wissenschaftliches Paper

#scientific-paper(
  title: [Analyse der Typst-Layout-Primitiven],
  authors: [Dr. med. Beispiel · Universitätsklinikum],
  abstract: [#lorem(40)],
  [
    == Einleitung
    #lorem(60)

    == Methoden
    #lorem(60)
  ],
)

== Galerie-Grid

#gallery-grid(
  column-count: 3,
  items: range(6).map(i => [
    *Element #{i + 1}*\
    Beschreibung für Galerie-Element.
  ]),
)

== Statistik-Grid

#stats-grid(stats: (
  (value: "127", label: "Patienten"),
  (value: "94%", label: "Erfolgsrate"),
  (value: "3.2", label: "Tage Aufenthalt"),
  (value: "12", label: "Studien"),
))
```

### 4.4 Compile Gate

```sh
cd typst_showcase_v2
typst compile main.typ
typst compile --format png --ppi 200 main.typ "png_output/page-{0p}-of-{t}.png"
```

Visually verify:
- [ ] Sidebar: fixed-width sidebar + fluid main column, no overlap
- [ ] Magazine: full-width hero followed by scoped two-column body
- [ ] Scientific paper: full-width title/abstract, two-column body
- [ ] Gallery: items in 3 columns with cycling colors
- [ ] Stats: centered large numbers with labels below
- [ ] Comparison grid: two-column with colored headers
- [ ] No content overflows margins
- [ ] Multi-column layouts properly scope (no column leaking to next section)

## Deliverables

- [ ] `components/layouts.typ` with 6 components: sidebar-layout, magazine-layout, scientific-paper, comparison-layout, adaptive-layout, breakout
- [ ] `components/grids.typ` with 4 components: gallery-grid, feature-grid, stats-grid, comparison-grid
- [ ] Layout isolation test section in `main.typ`
- [ ] All layouts compile and render correctly

## Acceptance Criteria

- All layout components use `columns()` function (never `set page(columns: N)`)
- All structural layouts use `grid` with positional args
- Adaptive layout uses `layout(size => ...)`, not `context { page.width }`
- No hardcoded `dx`/`dy` offsets
- Grid children use `..cells` spread syntax for dynamic content
- Gallery grid cycles colors correctly via `calc.rem()`
- All components import only from `theme.typ`
- No column leking: column layouts are properly scoped to their content

## Anti-Pattern Guards

| Do NOT | Do Instead |
|---|---|
| `set page(columns: 2)` in any component | `columns(2, gutter: ...)[body]` — always the function |
| `place(dx: 200pt)` for sidebar | `grid(columns: (200pt, 1fr))` — structural grid |
| `context { page.width }` for responsive | `layout(size => ...)` for actual content width |
| `place(float: true)` without alignment | Must specify `top` or `bottom` |
| `grid(columns: 2)[a][b]` | `grid(columns: 2, a, b)` — positional args |
| Deep nesting of grids inside grids | Keep layout tree flat; one grid level usually suffices |
| Level-1 headings inside `columns()` | Use `==` (level 2+) inside column content |

## Next Phase

[Phase 5: Spreads & Special Pages](showcase-v2-phase5.md)
