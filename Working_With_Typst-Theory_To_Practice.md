# Working With Typst — Theory To Practice

> Lessons learned from building a 23-page medical textbook showcase with Typst.
> Every section documents a real mistake we made, the root cause, and the proven fix.

---

## Table of Contents

1. [Scoping & Leaking: The #1 Typst Pitfall](#1-scoping--leaking-the-1-typst-pitfall)
2. [Parameters: Know Which Function Owns What](#2-parameters-know-which-function-owns-what)
3. [Placement & Positioning](#3-placement--positioning)
4. [Multi-Column Layouts](#4-multi-column-layouts)
5. [Headings — Numbering, Show Rules, and Chapter Openers](#5-headings--numbering-show-rules-and-chapter-openers)
6. [Color Manipulation](#6-color-manipulation)
7. [Grid & Content Passing Patterns](#7-grid--content-passing-patterns)
8. [Reusable Component Design](#8-reusable-component-design)
9. [Page Setup & Book Conventions](#9-page-setup--book-conventions)
10. [Context & Queries](#10-context--queries)
11. [Inline Elements & Baseline Alignment](#11-inline-elements--baseline-alignment)
12. [Common Typst Gotchas (Quick Reference)](#12-common-typst-gotchas-quick-reference)
13. [Architecture Patterns That Worked](#13-architecture-patterns-that-worked)
14. [Architecture Anti-Patterns](#14-architecture-anti-patterns)

---

## 1. Scoping & Leaking: The #1 Typst Pitfall

### The Problem

`set` rules in Typst apply to the **entire remaining scope** — but "scope" means the enclosing block `{ }` or content block `[ ]`. For most elements this is fine because `set` on text, par, or heading is naturally scoped to the function body. **But `set page(...)` is special**: page-level settings leak beyond the function call into subsequent content.

### What Went Wrong

We created a `scientific-paper()` function that used `set page(columns: 2)` inside its body:

```typ
// ❌ BROKEN: columns leak to all subsequent pages
#let scientific-paper(title, authors, abstract, body) = {
  // ... header ...
  set page(columns: 2)
  body
}
```

After calling `#scientific-paper(...)`, every page that followed was rendered in two columns. The entire rest of the book was broken.

### The Fix

Use the `columns()` **function** instead of `set page(columns: ...)`. The function creates a columns layout as an in-flow block that does not affect subsequent content:

```typ
// ✅ CORRECT: columns() scopes properly
#let scientific-paper(title, authors, abstract, body) = {
  // ... header ...
  columns(2, gutter: 16pt)[
    #set text(size: type.small)
    #set par(leading: 1.2em)
    #body
  ]
}
```

### The Rule

> **Never use `set page(...)` inside a reusable component function** unless you explicitly intend to change the page for everything that follows (e.g., a book cover that resets to zero margins). The only safe place for `set page` is at the top level or in a dedicated setup function.

**Exceptions**: `set page(margin: 0pt, header: none, footer: none)` inside a cover page function is acceptable because you call `setup-pages()` again right after it (as we do in `main.typ`).

---

## 2. Parameters: Know Which Function Owns What

### `leading` belongs to `par`, not `text`

```typ
// ❌ WRONG: leading is not a parameter of text
set text(leading: 1.35em)

// ✅ CORRECT: leading is a par parameter
set par(leading: 1.35em)
```

This seems obvious but is easy to mix up, especially when you think of "line spacing" as a "text property". In Typst's model:
- `text` controls: font family, size, weight, fill, style, tracking, lang, etc.
- `par` controls: leading (line spacing), spacing (between paragraphs), justify, first-line-indent, hanging-indent.

### `spacing` on `block`

`block(spacing: ...)` controls the space **before and after** the block relative to surrounding content. It is **not** the internal padding — that's `inset`.

```typ
// spacing = external margin around the block
// inset   = internal padding inside the block
block(spacing: space.md, inset: space.lg)[...]
```

### `gutter` vs `column-gutter` vs `row-gutter`

In `grid()`, `gutter` sets both column and row gutter. You can also set them independently:

```typ
grid(columns: 3, column-gutter: 12pt, row-gutter: 8pt, ...)
```

---

## 3. Placement & Positioning

### `place()` Basics

`place()` takes content out of the normal flow and positions it relative to the current container. It does **not** consume vertical space.

```typ
// Place at top-right of the enclosing container
place(top + right, dx: 10pt, dy: 10pt)[Label]
```

### `place(float: true)` Requires Explicit Alignment

```typ
// ❌ BROKEN: float without alignment
place(float: true)[...]

// ✅ CORRECT: float needs top or bottom
place(float: true, top)[...]
```

Without an explicit `top` or `bottom`, Typst will error on `place(float: true)`.

### Hardcoded Offsets Overflow Pages

We initially built `margin-note` and `pull-quote` using `place()` with hardcoded `dx` offsets:

```typ
// ❌ BROKEN: flies off the page
#let margin-note(body) = place(right, dx: 25mm, dy: 0pt)[
  #block(width: 60mm)[#body]
]
```

This caused content to appear outside the visible page area. The offsets are relative to the current position, and if the container's width doesn't account for the extra displacement, content simply vanishes off-screen.

### The Fix: Use Grid-Based Layouts Instead

```typ
// ✅ CORRECT: grid-based side note
#let side-note(main, note) = {
  grid(
    columns: (1fr, 140pt),
    gutter: 16pt,
    main,
    block(fill: palette.surface, inset: space.md)[
      #set text(size: type.small)
      #note
    ],
  )
}
```

### When `place()` IS Appropriate

- **Decorative overlays** on a full-page cover (circles, bars, labels)
- **Overlay labels** on an image/figure container with known, fixed dimensions
- **Background elements** that should not affect text flow
- **Accent bars** that extend beyond content margins (use `dx: -22mm` to extend into the margin)

### When to Avoid `place()`

- **Side notes / margin notes**: Use `grid()` instead
- **Pull quotes**: Use an in-flow `block()` instead
- **Anything that needs to interact with page breaks**: placed content can end up on the wrong page

---

## 4. Multi-Column Layouts

### `columns()` Function vs `set page(columns: ...)`

| Approach | Scoped? | Page-break aware? | Use case |
|----------|---------|-------------------|----------|
| `columns(2)[...]` | ✅ Yes | Within the block | Magazine body, paper body |
| `set page(columns: 2)` | ❌ Leaks | Full page | Only at document top level |

### `colbreak()` Inside `columns()`

Use `#colbreak()` to force content to the next column. This works inside both `columns()` and `set page(columns: ...)`.

### Columns and Block Elements

Blocks inside columns are constrained to the column width. A `block(width: 100%)` means 100% of the **column**, not 100% of the page. This is generally what you want.

### Preventing Column Breaks Inside Blocks

```typ
block(breakable: false)[
  // This content will not be split across columns
]
```

We used this on `pull-quote` to prevent a decorative quote block from being split across two columns in the magazine layout, which looked broken.

---

## 5. Headings — Numbering, Show Rules, and Chapter Openers

### The Duplicate Heading Problem

We created `chapter-opener()` as a decorative component that displays a large chapter number and title. But we **also** had `= Heading Title` in the chapter file as a regular level-1 heading. The result: two titles on every chapter-opener page.

```typ
// ❌ BROKEN: two headings
#chapter-opener("Layout-Techniken", number: "03")
= Layout: Raster, Kapitel-Opener, Marginalien

// ✅ CORRECT: chapter-opener IS the heading, no = needed
#chapter-opener("Layout-Techniken", number: "03")
// Content starts directly here
```

**Decision**: `chapter-opener()` replaces the `= Heading` for chapters that use it. The opener itself doesn't create a `heading` element (it uses `text()` directly), which means it won't appear in `outline()`. If you need it in the outline, you'd need to add a hidden heading:

```typ
#let chapter-opener(title, number: none) = {
  // ... decorative layout ...
  // Register in document outline:
  heading(level: 1, outlined: true, bookmarked: true)[#title]
  // But hide the default heading rendering via show rule
}
```

### Auto-Numbering vs Manual Numbering

`set heading(numbering: "1.1")` enables automatic numbering for ALL headings. If your chapter-opener already shows "03" manually, the auto-numbering creates ugly duplicates like "1 03 Layout-Techniken".

**Rule**: Either use auto-numbering exclusively, or handle chapter numbers manually in your opener — never both.

### Show Rules for Headings

Show rules transform how headings are rendered. Key patterns:

```typ
// Style level-1 headings with accent underline
show heading.where(level: 1): it => block(width: 100%, breakable: false)[
  #v(space.xl)
  #text(size: type.h1, weight: 800, fill: palette.ink)[#it.body]
  #v(space.sm)
  #line(length: 100%, stroke: (paint: palette.accent, thickness: 1.2pt))
  #v(space.lg)
]
```

Important: inside the show rule, `it.body` gives you the heading text without numbering. `it.numbering` tells you the numbering pattern (or `none`). If you want to display the counter manually:

```typ
#counter(heading).display()  // e.g., "2.3"
```

### Headings Inside Component Bodies

When you pass content containing `= Heading` into a component like `scientific-paper(body)`, those headings are still globally level-1. Inside a two-column paper, they trigger the full-width level-1 show rule, which looks wrong.

**Fix**: Use `== Level 2` inside component bodies, or create a scoped show rule inside the component:

```typ
#let scientific-paper(body) = {
  show heading.where(level: 1): it => text(weight: "bold", size: 11pt)[#it.body]
  columns(2)[#body]
}
```

---

## 6. Color Manipulation

Typst provides several color manipulation methods. Here's when to use each:

### `lighten(percentage)` — Make a Color Lighter

```typ
palette.accent.lighten(90%)   // Very light tint, good for backgrounds
palette.accent.lighten(60%)   // Medium tint, good for borders
palette.accent.lighten(40%)   // Subtle tint, still visible
```

**Use for**: Background fills, subtle borders, zebra-stripe alternation.

### `darken(percentage)` — Make a Color Darker

```typ
palette.accent.darken(20%)    // Slightly darker, good for text on light bg
```

**Use for**: Text that needs to be the same hue but darker for contrast.

### `transparentize(percentage)` — Add Transparency

```typ
palette.paper.transparentize(92%)   // Almost invisible, ghostly overlay
palette.accent.transparentize(70%)  // Semi-transparent, decorative
```

**Use for**: Decorative elements (circles on cover), watermark-style chapter numbers, overlay effects.

### `mix(other-color)` — Blend Two Colors

```typ
palette.ink.mix(palette.paper)   // 50/50 blend → medium grey
```

**Note**: `.mix()` was used in early code but `.lighten()` and `.transparentize()` give more predictable results and are preferred.

### Color Tokens Pattern

Define semantic colors in a central theme and reference them everywhere:

```typ
#let palette = (
  // Base
  ink: rgb("#101418"),
  paper: rgb("#ffffff"),
  // Semantic
  info: rgb("#1b6ca8"),
  info-light: rgb("#e0f2fe"),
  warn: rgb("#b36b00"),
  warn-light: rgb("#fef9c3"),
  // ...
)
```

This way, a single change to `palette.accent` propagates throughout the entire document.

---

## 7. Grid & Content Passing Patterns

### Syntax: Array Spread vs Content Blocks

There are two ways to pass children to `grid()`:

```typ
// Pattern A: Positional arguments (preferred for dynamic/computed content)
grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  card(title: "A")[Content A],
  card(title: "B")[Content B],
)

// Pattern B: Content block (works but less flexible)
grid(columns: (1fr, 1fr), gutter: 12pt)[
  #card(title: "A")[Content A]
  #card(title: "B")[Content B]
]
```

**Pattern A** is preferred because each child maps cleanly to a grid cell. **Pattern B** can cause issues because all the content is a single block that gets implicitly split — results depend on Typst's internal content-to-cells mapping.

### Array Spread with `.map()` and `.enumerate()`

For dynamic grids (gallery, data-driven layouts):

```typ
grid(
  columns: 3,
  gutter: space.md,
  ..items.enumerate().map(((i, item)) => {
    let color = colors.at(calc.rem(i, colors.len()))
    block(fill: color.lighten(88%))[#item]
  })
)
```

The `..` spread operator expands the array into positional arguments.

### `calc.rem()` for Rotating Patterns

```typ
let colors = (palette.accent, palette.info, palette.good, palette.warn, palette.bad)
let color = colors.at(calc.rem(i, colors.len()))
```

This cycles through the colors array as `i` increases: 0→accent, 1→info, 2→good, 3→warn, 4→bad, 5→accent, …

---

## 8. Reusable Component Design

### Function Signature Patterns

Typst functions use a `(positional, named: default, body)` pattern. The **body** (trailing content argument) must come last:

```typ
// ✅ Good: body is last, named params have defaults
#let card(body, title: none, accent: palette.accent) = { ... }

// Usage:
#card(title: "My Card", accent: palette.info)[Card content here]
```

### Two-Content Components

For components that take two distinct content blocks (e.g., sidebar + main, or main + note), use positional arguments:

```typ
#let side-note(main, note) = {
  grid(columns: (1fr, 140pt), gutter: 16pt, main, note-block)
}

// Usage:
#side-note(
  [Main text content here...],
  [Side note content...],
)
```

### Component API Stability

When you change a component's API, **every call site breaks**. Document your APIs clearly and prefer named parameters for anything optional:

```typ
// ❌ Fragile: changing parameter order breaks callers
#let card(body, color) = ...

// ✅ Resilient: named parameter with default
#let card(body, accent: palette.accent) = ...
```

### Breakability

For decorative blocks that look terrible when split across pages, always add `breakable: false`:

```typ
block(breakable: false, ...)[
  // Decorative content that must stay together
]
```

Components where this matters: pull-quotes, cards, illness scripts, decision boxes, admonitions.

---

## 9. Page Setup & Book Conventions

### Inside/Outside Margins for Binding

For a book that will be printed and bound, use `inside`/`outside` instead of `left`/`right`:

```typ
set page(
  margin: (
    top: 20mm,
    bottom: 22mm,
    inside: 22mm,   // binding side (left on odd, right on even)
    outside: 18mm,  // outer edge
  ),
)
```

`inside` is always the edge closest to the spine. Typst automatically mirrors this for odd/even pages.

### Suppressing Headers/Footers on Special Pages

For cover pages or chapter openers, you need to suppress headers:

```typ
// Cover approach: set page with header: none
set page(margin: 0pt, header: none, footer: none)
```

After the cover, call your `setup-pages()` again to re-enable headers.

### Forcing Odd Page Starts

Chapters in books traditionally start on odd (recto) pages:

```typ
pagebreak(to: "odd", weak: true)
```

`weak: true` prevents a double page break if you're already on an odd page.

### Accent Bar Extending Beyond Margins

To create a decorative bar that bleeds into the margins:

```typ
place(top + left, dy: -20mm, dx: -22mm,
  block(width: 130%, height: 8pt, fill: palette.accent)
)
```

The `dx: -22mm` matches the inside margin, and `width: 130%` ensures coverage edge-to-edge. This is one of the valid uses of `place()` for decorative elements.

---

## 10. Context & Queries

### Context-Aware Headers

Headers that show the current chapter title use `context` and `query()`:

```typ
header: context [
  #let headings = query(selector(heading.where(level: 1)).before(here()))
  #let chapter-title = if headings.len() > 0 {
    headings.last().body
  } else {
    [Fallback Title]
  }
  // ... render header with chapter-title ...
]
```

### Key Rules for `context`

1. `context` creates a scope where `here()`, `query()`, and `counter().display()` work.
2. You **cannot** use `context` inside content that hasn't been laid out yet — it only knows about content that Typst has already processed.
3. `query(selector(...).before(here()))` gets all matching elements that appear before the current position.

### Odd/Even Page Detection

```typ
#let is-even = calc.even(here().page())
```

This requires being inside a `context` block.

---

## 11. Inline Elements & Baseline Alignment

### The `baseline` Parameter

When creating inline elements (badges, tags, icons), use `box()` with `baseline` to align them with surrounding text:

```typ
#let badge(body, color: palette.accent) = box(
  inset: (x: 6pt, y: 2pt),
  radius: 999pt,
  fill: color.lighten(85%),
  stroke: (paint: color, thickness: 0.5pt),
  baseline: 20%,  // ← KEY: pushes the box down to align with text baseline
)[
  #set text(size: type.micro, weight: "bold", fill: color.darken(20%))
  #body
]
```

Without `baseline`, inline boxes sit on top of the text line and look "floaty".

### `box` vs `block`

- `box`: Inline element, flows with text, no line break before/after.
- `block`: Block-level element, always starts a new line, takes full width by default.

Use `box` for badges, tags, inline highlights. Use `block` for cards, callouts, sections.

### `outset` for Inline Highlights

```typ
#let highlight(body, color: palette.warn-light) = box(
  inset: (x: 2pt, y: 0pt),
  radius: 2pt,
  fill: color,
  outset: (y: 2pt),  // extends the fill beyond the box boundary
)[#body]
```

`outset` is like negative margin — it makes the colored background slightly larger than the text, giving a comfortable highlight effect.

---

## 12. Common Typst Gotchas (Quick Reference)

| Gotcha | Wrong | Right |
|--------|-------|-------|
| Line spacing | `set text(leading: 1.35em)` | `set par(leading: 1.35em)` |
| Float placement | `place(float: true)[...]` | `place(float: true, top)[...]` |
| Scoped columns | `set page(columns: 2)` in function | `columns(2)[...]` |
| Side notes | `place(right, dx: 25mm)` | `grid(columns: (1fr, 140pt))` |
| Grid children | `grid(...)[#a #b]` | `grid(..., a, b)` |
| Heading numbering | `set heading(numbering: "1.1")` + manual numbers | Choose one approach |
| Symbol names | `sym.lightning` | Check with `sym.` autocomplete; some symbols don't exist |
| Color method | `.mix(other)` (unpredictable) | `.lighten(%)` or `.transparentize(%)` |
| Non-breaking block | `block(...)` (default breakable) | `block(breakable: false, ...)` |
| Empty pages | Content pushed to next page by heading | `breakable: false` on heading blocks |

---

## 13. Architecture Patterns That Worked

### Token-Based Design System

Central `theme.typ` with all design tokens:

```
styles/
  theme.typ      ← Colors, spacing, type scale (pure data, no set/show)
  typography.typ ← set/show rules for text, par, headings
  page.typ       ← set page rules (margins, header, footer)
```

`theme.typ` exports dictionaries, not functions. Every other file imports tokens from it. This means changing `palette.accent` updates the entire document.

### Component Architecture

```
components/
  spreads.typ      ← Full-page components (cover, chapter opener)
  blocks.typ       ← Block-level reusables (card, callout, blockquote, side-note, pull-quote)
  layouts.typ      ← Multi-column/grid patterns (sidebar, magazine, scientific, adaptive)
  grids.typ        ← Data-driven grid (gallery)
  inline.typ       ← Inline elements (badge, highlight, icon)
  admonitions.typ  ← Didactic boxes (note, tip, warn, redflag)
  learning.typ     ← Learning components (goals, knowledge-check)
  tables.typ       ← Styled table helper
  figures.typ      ← Figure wrapper
```

Each file imports only from `theme.typ`, never from other component files. This prevents circular dependencies.

### Setup Function Pattern

```typ
// main.typ
#setup-pages()
#setup-typography()
#book-cover(...)
#setup-pages()  // re-enable header/footer after cover
```

Setup functions use `set` and `show` rules that apply to all subsequent content. Call them at the document level, not inside components.

### Chapter File Pattern

```typ
// chapters/03-layout.typ
#import "../styles/theme.typ": palette, space, type
#import "../components/spreads.typ": chapter-opener
#import "../components/blocks.typ": card, side-note
// ... other imports ...

#chapter-opener("Layout-Techniken", number: "03")

// Content starts immediately — NO = heading here
== First Section
...
```

Each chapter imports only what it uses. The chapter-opener replaces the level-1 heading.

---

## 14. Architecture Anti-Patterns

### ❌ Using `place()` for Structural Layout

`place()` is for decoration, not structure. If content needs to be part of the document flow (side notes, quotes, cards), use `grid()` or `block()`.

### ❌ Mixing Auto-Numbering with Manual Numbers

Either let Typst number all headings with `set heading(numbering: "1.1")`, or handle numbers manually in custom components. Combining both creates duplicates.

### ❌ `set page(...)` Inside Components

Page-level set rules leak beyond the function scope. Only use at the top level of the document or in dedicated setup functions.

### ❌ Hardcoded Dimensions Without Margin Awareness

Offsets like `dx: 25mm` assume specific margins. If margins change, the layout breaks. Prefer relative sizing (`1fr`, `100%`, percentage-based) whenever possible.

### ❌ Content Blocks `[...]` as Grid Children

Using `grid(...)[#child1 #child2]` puts everything in a single content block. The grid then has only one cell. Use positional arguments instead: `grid(..., child1, child2)`.

### ❌ Deeply Nested `place()` Calls

Stacking multiple `place()` calls for layout (not decoration) creates a fragile, position-dependent structure that's nearly impossible to maintain. One element shifting causes a cascade of misalignment.

---

## Appendix: Verified Typst API Facts

These were verified through trial-and-error during the project:

1. **`leading`** is a `par` parameter, not `text`.
2. **`place(float: true)`** requires an explicit `top` or `bottom` alignment.
3. **`set page(columns: N)`** inside a function leaks to all subsequent pages.
4. **`columns(N, gutter: ...)[body]`** is properly scoped and does not leak.
5. **`pagebreak(to: "odd", weak: true)`** starts a new odd page without double-breaking.
6. **`transparentize(pct)`** works on any color and adds alpha channel.
7. **`lighten(pct)`** works on any color but `lighten(100%)` is pure white.
8. **`block(breakable: false)`** prevents content from splitting across pages/columns.
9. **`box(baseline: 20%)`** shifts an inline element to align with surrounding text baseline.
10. **`outset: (y: 2pt)`** on `box` extends the fill beyond the box boundary — useful for highlight effects.
11. **`calc.rem(a, b)`** computes the remainder — useful for cycling through arrays.
12. **`..array`** spread syntax works to pass array items as positional arguments to `grid()`.
13. **`context`** is required for `here()`, `query()`, and `counter().display()`.
14. **`query(selector(heading.where(level: 1)).before(here()))`** finds all level-1 headings before the current position.
15. **`gradient.linear(color1, color2, angle: 45deg)`** creates a gradient fill usable on `block` or `page`.
16. **Inside/outside margins** (`margin: (inside: ..., outside: ...)`) auto-mirror for odd/even pages.
17. **`sym.` namespace** is limited — not every Unicode symbol has a named alias (e.g., `sym.lightning` does not exist). When in doubt, paste the Unicode character directly or use a text-based fallback.
