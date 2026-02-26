# Typst Layout Mastery: Zero to Hero

The ultimate handbook for creative book layout and design with Typst.

This guide takes you from the fundamental building blocks of Typst’s layout system to advanced techniques for complex, publication‑ready designs. It focuses on **boxes**, **grids**, **multi‑column layouts**, **absolute placement**, and **styling systems**, using only features that are available and correctly documented in current Typst versions.[^1][^2]

***

## Part 1 – Understanding the Basics

### 1.1 The three syntactic modes in Typst

Typst uses three primary syntactic modes when you write documents:

- **Markup mode (default):** Regular text, headings, lists, etc. This is what you get when you just type in a `.typ` file.
- **Code mode:** Introduced with `#`. You use it for function calls, variable interpolation, and more complex logic.
- **Math mode:** Delimited by dollar signs — `$x^2$` for inline math, or `$ x^2 $` (with spaces after/before the `$`) for display (block‑level) math. Inside math mode you use TeX‑like syntax, but rendered by Typst's math engine.[^3]

Example:

```typst
This is markup text with an inline formula $a^2 + b^2 = c^2$ and a
#emph[code‑level emphasis].
```

### 1.2 Block vs inline containers

Typst distinguishes between **block‑level** and **inline‑level** content, similar to HTML/CSS, but with its own layout model.[^4]

- **Block‑level elements** take up the full available width and are laid out vertically one after another. Examples: headings, paragraphs, lists, grids, columns.
- **Inline‑level elements** flow within a line of text and wrap with the text. Examples: spans of text, inline math, small icons or boxes.
- The `box` function is a key bridge: it lets you wrap arbitrary content in a container that can be used inline or in layout structures.

Example:

```typst
This is normal text with an inline #box(fill: yellow.lighten(80%))[highlight].

// A block‑level container (use `block`, not `box`, for block‑level):
#block(fill: blue.lighten(80%), inset: 8pt)[
  This is a full‑width callout block.
]
```

### 1.3 Core layout functions you will use

For layout work you will repeatedly use these primitives:[^2][^4]

- `box(...)` – Generic container with size, background, and spacing control.
- `grid(...)` – Flexible grid system with rows/columns, gutters, and spanning.
- `columns(...)` – Content that flows across multiple columns.
- `place(...)` – Absolute/floating placement relative to page, column, or parent container.[^1]
- `page(...)` – Page setup (size, margins, columns at page level).[^5]

This handbook builds progressively on these functions.

***

## Part 2 – Mastering Box Elements

### 2.1 Box as your fundamental building block

A `box` is the fundamental tool for local layout control: backgrounds, borders, paddings, and fine‑grained alignment.[^4]

Basic example:

```typst
#box(
  width: 2cm,
  height: 1cm,
  fill: blue.lighten(60%),
)[
  Content
]
```

Important parameters you will use frequently:

- `width`, `height` – Control the size of the box. They can be:
  - automatic (`auto`) – size is driven by content
  - fixed (`10pt`, `2cm`)
  - relative (`50%` of the available width)
- `fill` – Background paint: a solid color or gradient, e.g. `blue`, `luma(90%)`, `gradient.linear(...)`.[^6]
- `stroke` – Border (color, thickness, style), e.g. `1pt + black`.
- `radius` – Rounded corners (single value or per‑corner tuple).
- `inset` – Inner padding; increases the space between content and border.
- `outset` – Visual extension outside the content box; useful for drop shadows, glows or visual emphasis.
- `baseline` – Shifts the baseline for inline alignment.
- `clip` – If `true`, content is clipped to the box’s shape.

### 2.2 Advanced box techniques

#### Inline highlighting and badges

```typst
This is an inline #box(
  inset: (x: 4pt, y: 2pt),
  fill: yellow.lighten(80%),
  radius: 2pt,
)[highlight].

You can also create a badge:
#box(
  inset: (x: 4pt, y: 1pt),
  radius: 999pt,
  fill: green.lighten(40%),
  text(fill: white)[NEW]
)
```

#### Baseline alignment for icons

Baseline control is crucial when mixing text and icons inline.

```typst
Text #box(baseline: 30%, height: 1em)[⚡] with icon

// Or a more controlled variant:
Text #box(
  height: 1em,
  baseline: 0%,
  inset: (x: 2pt),
)[
  #text(size: 0.8em)[⚡]
]
```

#### Decorative outset without changing content flow

Use `outset` to let a background extend beyond the nominal content area (for emphasis or visual rhythm):

```typst
#box(
  fill: yellow.lighten(80%),
  inset: 4pt,
  outset: (x: 4pt),
)[Important]
```

#### Fractional widths in layout containers

Fractional units like `1fr` are supported in layout containers such as `grid`, and also for `box` widths within paragraphs (e.g. `#box(width: 1fr)`). However, other elements do not yet support fractional sizing inline.[^2][^4]

Correct usage inside a grid:

```typst
#grid(
  columns: (auto, 1fr),
  gutter: 8pt,
  [Label],
  [
    #box(
      width: 100%,
      fill: red.lighten(80%),
      inset: 4pt,
    )[Flexible content area]
  ],
)
```

Here, the second column takes up the remaining horizontal space with `1fr`.

***

## Part 3 – Grid Systems: Your Power Tool

### 3.1 Grid basics

`grid` is Typst’s general‑purpose layout grid, designed for complex arrangements of boxes, text, and images.[^2]

Basic example:

```typst
#grid(
  columns: (1fr, 2fr, 1fr),
  rows: (auto, 60pt),
  gutter: 3pt,
  [A], [B], [C],
  [D], [E], [F],
)
```

Key concepts:

- `columns` and `rows` define track sizes (see below).
- Content is filled row by row unless you specify positions via `grid.cell`.
- `gutter` sets the space between tracks.

### 3.2 Understanding track sizing

Tracks (columns and rows) can be sized in three main ways:[^2]

- `auto` – Size is determined by the content.
- Fixed or relative lengths – e.g. `10pt`, `2cm`, `20% - 1cm`.
- Fractional (`fr`) – Distribute remaining space proportionally, e.g. `(1fr, 2fr)`.

Complex example:

```typst
#grid(
  columns: (60pt, 1fr, 2fr),
  rows: (auto, 60pt),
  gutter: 5pt,

  // Fixed, flexible, double flexible
  [Sidebar], [Content], [Extra],
  [Nav], grid.cell(colspan: 2)[Footer],
)
```

Here, the first column is fixed, while the second and third share remaining space in a 1:2 ratio.

### 3.3 Grid styling techniques

#### Striped grid using functional `fill`/`stroke`

`fill` and `stroke` in a grid can be functions of `(x, y)` (column and row indices).[^2]

```typst
#grid(
  columns: 5,
  gutter: 2pt,
  fill: (x, y) => if calc.rem(x + y, 2) == 0 {
    luma(240)
  },
  stroke: (x, y) => if calc.rem(x + y, 3) == 0 {
    0.5pt
  },
  ..range(15).map(n => [#n]),
)
```

This produces a checkerboard‑like pattern with extra strokes every third diagonal.

#### Per‑column alignment

You can control alignment for each column individually:

```typst
#grid(
  columns: 3,
  align: (left, center, right),
  [Left], [Center], [Right],
  [A], [B], [C],
)
```

Each column’s content is aligned as specified.

### 3.4 `grid.cell` for precise control

`grid.cell` lets you override defaults per cell: spanning, coordinates, and styling.[^2]

```typst
#grid(
  columns: 4,

  // Spanning cell
  grid.cell(colspan: 2, rowspan: 2)[Big],
  [A], [B],

  // Manual positioning
  grid.cell(x: 2, y: 1)[Here],

  // Individual styles
  grid.cell(
    fill: blue.lighten(80%),
    stroke: 2pt + red,
  )[Styled],
)
```

Typical uses include hero sections, sidebars, and asymmetric layouts.

### 3.5 Grid lines for structure

Horizontal and vertical grid lines help structure content visually.[^2]

```typst
#grid(
  columns: 3,

  [A], [B], [C],
  grid.hline(stroke: 2pt + red),
  [D], [E], [F],
  grid.vline(x: 1, stroke: blue),
)
```

`grid.hline` inserts a horizontal separator; `grid.vline` a vertical one at the specified column index.

***

## Part 4 – Multi‑Column Layouts

### 4.1 Simple column layouts with `columns`

`columns` allows content to flow across multiple columns within a region.[^7]

```typst
#columns(2, gutter: 8pt)[
  This text flows across two columns.

  #colbreak()

  Explicit column break here.
]
```

- `gutter` controls the space between columns within this block.
- `#colbreak()` forces a column break.

### 4.2 Page‑level columns

You can set columns at the **page level** so that most of your document flows multi‑column by default.[^8]

```typst
#set page(
  columns: 2,
  margin: (x: 2cm, y: 1.5cm),
)

// Optional: global column gutter for page‑level columns
#set columns(gutter: 8pt)

Regular content will now flow over two columns and across pages.
```

Page‑level columns are ideal for magazines, newspapers, and scientific papers.

### 4.3 Breaking out of columns with `place`

You can place elements outside the normal column flow, e.g. a full‑width title above two columns.[^1]

```typst
#set page(columns: 2)
#set columns(gutter: 8pt)

#place(
  top + center,
  scope: "parent",
  float: true,
  text(1.4em, weight: "bold")[Document Title],
)

Normal two‑column text follows...
```

- `scope: "parent"` means the placement is relative to the page body, not just the current column.
- `float: true` lets the element participate in layout so other content is pushed around it.

***

## Part 5 – `place`: Absolute and Floating Positioning

### 5.1 Basic placement

`place` allows absolute or floating placement relative to a reference rectangle (page, column, or parent container).[^1]

```typst
#set page(height: 120pt)

Normal text here.

#place(
  top + right,
  dx: -1cm,
  dy: 0.5cm,
  square(size: 20pt, fill: red),
)
```

Alignment options:

- Vertical: `top`, `horizon`, `bottom`.
- Horizontal: `left`, `center`, `right`.
- Combined: `top + left`, `horizon + center`, etc.

### 5.2 Floating vs overlay

By default, `place` overlays content and **does not affect** the surrounding layout.[^1]

```typst
#place(top + right)[Overlay]
// Does not change how text flows.
```

To create floating elements that push other content away, use `float: true` and a suitable `scope`:

```typst
#place(
  top + center,
  float: true,
  scope: "parent",
  [Floating Element],
)
```

### 5.3 Scope control

The `scope` parameter controls which rectangle is used as the reference for positioning.[^1]

- `"column"` – Relative to the current column (default if omitted).
- `"parent"` – Relative to the parent container (e.g. the whole page body or the container that encloses the column layout).

Example:

```typst
#rect(width: 100%, height: 50pt)[
  // Placed relative to the parent (outside the rect)
  #place(
    bottom + right,
    scope: "parent",
    dx: -1cm,
  )[Outside Box]
]
```

***

## Part 6 – Advanced Layout Patterns

### 6.1 Classic sidebar layout

Use a two‑column grid to create a sidebar + main content layout.

```typst
#grid(
  columns: (200pt, 1fr),
  gutter: 20pt,

  // Sidebar
  [
    #set text(size: 10pt)
    *Navigation*
    - Link 1
    - Link 2
    - Link 3
  ],

  // Main content
  [
    = Main Title
    Your content here...
  ],
)
```

### 6.2 Magazine layout with mixed columns

Combine full‑width elements with multi‑column text.

```typst
#set page(margin: 1.5cm)

// Full‑width title
#align(center)[
  #text(2em, weight: "bold")[Magazine Title]
  #v(0.5em)
]

// Two‑column article
#columns(2, gutter: 1cm)[
  #lorem(100)

  // Image spanning both columns
  #place(
    scope: "parent",
    float: true,
    image("image.jpg", width: 100%),
  )

  #lorem(150)
]
```

Here, `scope: "parent"` ensures the image aligns with the page text block rather than being constrained to a single column.[^1]

### 6.3 Pull quotes

A pull quote is a highlighted quote that “floats” into the margin or side of the text.

```typst
#let pull-quote(body) = place(
  right,
  dx: -2cm,
  scope: "parent",
  box(
    width: 5cm,
    fill: luma(95%),
    inset: 1em,
    text(1.2em, style: "italic", body),
  ),
)

#lorem(50)

#pull-quote[
  "This is an important quote that stands out."
]

#lorem(50)
```

### 6.4 Complex book cover

Use `place` and vector shapes to design a full cover.

```typst
#set page(width: 15cm, height: 21cm, margin: 0pt)

// Background
#place(
  top + left,
  rect(
    width: 100%,
    height: 100%,
    fill: gradient.linear(
      rgb("1e3a8a"),
      rgb("3b82f6"),
    ),
  ),
)

// Decorative elements
#place(
  top + right,
  dx: -2cm,
  dy: 3cm,
  rotate(15deg)[
    #circle(radius: 50pt, fill: white.transparentize(80%)),
  ],
)

// Title
#place(
  horizon + center,
  text(3em, fill: white, weight: "bold")[
    Book Title
  ],
)

// Author
#place(
  bottom + center,
  dy: -3cm,
  text(1.5em, fill: white)[
    By Author Name
  ],
)
```

***

## Part 7 – Responsive and Dynamic Layouts

### 7.1 Context‑based adaptations

The `context` function allows you to inspect layout information (like page size) and adapt your layout accordingly.[^3]

A typical pattern is to switch between a single‑column layout and a sidebar layout depending on page width:

```typst
#let adaptive-layout(content) = layout(size => {
  if size.width < 15cm {
    // Narrow layout: full‑width content
    content
  } else {
    // Wide layout with sidebar
    grid(
      columns: (1fr, 3fr),
      [], content,
    )
  }
})
```

Here, `layout(size => ...)` provides the available content area dimensions (page width minus margins), which is the correct way to adapt layout based on actual available space. Note: `context { page.width }` returns the *configured* page width (e.g. 21cm for A4), not the text area width after margins.[^9]

### 7.2 Dynamic grid columns

Compute the number of columns or items per row dynamically:

```typst
#let items-per-row = 4

#grid(
  columns: items-per-row,
  gutter: 10pt,
  ..range(20).map(n => box(
    width: 100%,
    height: 50pt,
    fill: gradient.linear(blue, red),
    align(center + horizon)[#n],
  )),
)
```

This pattern is useful for galleries, product grids, or index pages.

***

## Part 8 – Styling Systems

### 8.1 `set` rules for consistent design

`set` rules define global defaults for elements and are the backbone of a consistent typographic system.[^10]

```typst
#set page(
  margin: (x: 2.5cm, y: 2cm),
  columns: 1,
)

#set par(
  justify: true,
  leading: 0.65em,
  spacing: 1.2em,
)

#set text(
  font: "Linux Libertine",
  size: 11pt,
  lang: "de",
)

#set heading(numbering: "1.1")
```

- `page` sets global page geometry.
- `par` controls paragraph behavior (justification, line spacing, spacing between paragraphs).[^11]
- `text` sets font and text defaults.
- `heading` configures automatic numbering.

### 8.2 `show` rules for transformative styles

`show` rules change how elements are rendered, effectively creating reusable components and themes.[^10]

Example: stylized headings with gradient background.

```typst
#show heading: it => box(
  width: 100%,
  inset: (y: 0.5em),
  fill: gradient.linear(
    blue.lighten(80%),
    blue.lighten(90%),
  ),
  text(fill: blue.darken(30%))[
    #counter(heading).display()
    #h(1em)
    #it.body
  ],
)
```

Every heading is now wrapped in a decorative bar with colored text and automatic numbering.

### 8.3 Combined styling patterns for grids

You can target `grid.cell` in `show` rules and style cells based on their coordinates.[^2]

```typst
// Style grid cells based on position
#show grid.cell.where(x: 0): set text(weight: "bold")
#show grid.cell.where(y: 0): set text(fill: blue)

#grid(
  columns: 3,
  [Header 1], [Header 2], [Header 3],
  [Row 1], [Data], [Data],
  [Row 2], [Data], [Data],
)
```

This produces a “header row / header column” style with minimal code.

***

## Part 9 – Practical Projects

### 9.1 Complete book layout

This example demonstrates a book‑like layout with inside/outside margins, chapter openers, and page numbers.

```typst
#set page(
  width: 17cm,
  height: 24cm,
  margin: (
    inside: 2.5cm,
    outside: 2cm,
    y: 2.5cm,
  ),
)

#set text(
  font: "Palatino",
  size: 11pt,
  hyphenate: true,
  lang: "de",
)

#set par(
  justify: true,
  first-line-indent: 1em,
  spacing: 1.5em,
)

// Chapter start styling
#show heading.where(level: 1): it => {
  pagebreak()
  v(5cm)
  text(3em, weight: "light")[
    #counter(heading).display("I")
  ]
  v(1cm)
  text(2em)[#it.body]
  v(2cm)
}

// Page numbers in header: alternate sides
#set page(
  header: context {
    if calc.rem(here().page(), 2) == 0 {
      align(left)[#counter(page).display()]
    } else {
      align(right)[#counter(page).display()]
    }
  },
)
```

- Inside/outside margins ensure a proper gutter for bound books.[^5]
- The `heading` show rule creates chapter openers on new pages.
- The header context alternates page numbers left/right on even/odd pages.

### 9.2 Scientific paper template

A two‑column scientific paper template with a full‑width title.

```typst
// Page setup with page‑level columns
#set page(
  paper: "a4",
  margin: (x: 3cm, y: 2.5cm),
  columns: 2,
)

// Column gutter for page‑level columns
#set columns(gutter: 1cm)

// Title spanning both columns
#place(
  top + center,
  scope: "parent",
  float: true,

  box(width: 100%)[
    #align(center)[
      #text(1.8em, weight: "bold")[Paper Title]
      #v(0.5em)
      #text(1.1em)[Author Name]
      #v(0.3em)
      #text(0.9em, style: "italic")[Institution]
    ]
    #v(1em)
  ],
)

// Two‑column content flows automatically below
#lorem(300)
```

The key trick is using `place` with `scope: "parent"` and `float: true` to make the title box span the full text width above both columns while the body text flows in two columns below it.[^8][^1]

***

## Part 10 – Performance and Best Practices

### 10.1 Performance tips for complex layouts

When documents become large and layouts complex, keep these practices in mind:[^4]

- Prefer `auto` sizing where possible and only fix sizes when needed. This lets Typst’s layout engine optimize flows.
- Avoid deeply nesting many `grid` and `columns` blocks when a flatter structure or a single powerful `grid` would suffice.
- Reuse components via functions and `show` rules instead of repeating complex structures inline.
- Test layouts incrementally: start from a minimal example and gradually add complexity, so regressions are easy to spot.

### 10.2 Design best practices

Beyond pure performance, keep these design guidelines in mind for professional results:

- Establish a typographic scale (e.g. base size 11pt, headings at 1.4×, 1.8×, 2.4×, etc.) and apply it consistently.[^10]
- Use `set` rules to centralize styling decisions so changes propagate across the whole document.
- Encapsulate recurring layout patterns (pull quotes, callout boxes, figure grids) in functions to keep your document source clean.
- Leverage `context` only where you truly need layout‑dependent behavior, to keep code maintainable.

With these tools and patterns, Typst becomes a powerful engine for expressive, modern book and document design.

---

## References

1. [Place Function – Typst Documentation](https://typst.app/docs/reference/layout/place/) - Writing in Typst · Formatting · Advanced Styling · Making a Template · Reference ... The parent scop...

2. [Grid Function – Typst Documentation](https://typst.app/docs/reference/layout/grid/) - The grid element allows you to arrange content in a grid. You can define the number of rows and colu...

3. [Context – Typst Documentation](https://typst.app/docs/reference/context/) - Typst's context system gives us time travel abilities and lets us retrieve the values of any counter...

4. [Layout Function – Typst Documentation](https://typst.app/docs/reference/layout/layout/) - Writing in Typst · Formatting · Advanced Styling · Making a Template · Reference ... Provides access...

5. [Page Function – Typst Documentation](https://typst.app/docs/reference/layout/page/) - The width of the page. View example. #set page( width: 3cm, margin: (x ... Typst's secret plans In t...

6. [Text Function – Typst Documentation](https://typst.app/docs/reference/text/text/) - When processing text, Typst tries all specified font families in order ... Whether to hyphenate text...

7. [Columns Function – Typst Documentation](https://typst.app/docs/reference/layout/columns/) - If you need to insert columns across your whole document, use the page function's columns parameter ...

8. [Page Setup – Typst Documentation](https://typst.app/docs/guides/page-setup/) - To adjust the amount of space between the columns, add a set rule on the columns function, specifyin...

9. [How to compute the current page's textwidth - Showcase - Typst Forum](https://forum.typst.app/t/how-to-compute-the-current-pages-textwidth/6523) - ... inside a context function, just pass page as an parameter: /// Computes the current page's textw...

10. [Advanced Styling – Typst Documentation](https://typst.app/docs/tutorial/advanced-styling/) - Here, we can provide a numbering pattern that defines how to number the pages. By setting it to "1" ...

11. [Typst Documentation - Paragraph Function](https://typst.app/docs/reference/model/par/) - By default, Typst only changes the spacing between words to achieve justification. However, you can ...

