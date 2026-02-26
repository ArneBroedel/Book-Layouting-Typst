# Typst Mastery: The Complete Guide to Advanced Document Engineering

The ultimate handbook for creative book layout and design with Typst — from fundamental building blocks to advanced techniques for complex, publication‑ready designs.

The landscape of professional document preparation is currently undergoing a paradigm shift, characterized by the transition from legacy macro-expansion systems to modern, high-performance compilers built on functional programming principles. At the forefront of this evolution is Typst, a software ecosystem written in Rust that prioritizes incremental compilation, memory safety, and a unified styling model.[^R1] For the advanced designer tasked with reconstructing complex visual layouts—such as those encountered in prestigious typesetting contests—understanding the underlying architecture is as vital as mastering the syntax itself. The system is designed around the core principles of simplicity through consistency, power through composability, and performance through incrementality.[^R1] This architectural philosophy ensures that every element, from a single glyph to a multi-column grid, behaves predictably within a system of pure functions and reactive style rules.[^R1]

This guide focuses on **boxes**, **grids**, **multi‑column layouts**, **absolute placement**, and **styling systems**, using only features that are available and correctly documented in current Typst versions.[^R24][^R27]

***

## Part 1 – Technical Foundations and System Architecture

### 1.1 Compiler and performance

The technical superiority of Typst over historical systems like LaTeX is rooted in its choice of implementation language and its handling of document state. Written in Rust, the compiler leverages a static binary to achieve compile times that are three to four times faster than traditional TeX-based engines, often completing complex 2000-page documents in roughly one minute.[^R1] This performance is facilitated by comemo, a memoization system that tracks changes at a granular level, ensuring that only the segments of the document affected by an edit are re-evaluated.[^R1]

### 1.2 The four‑phase compilation lifecycle

The lifecycle of a document follows a rigorous four-phase process. First, the parsing phase transforms the source string into an untyped syntax tree, a design choice that allows the parser to remain resilient even when encountering broken code, thereby supporting real-time IDE feedback.[^R5] Second, the evaluation phase interprets this tree to produce content—the intermediate programmatic representation of the document.[^R5] Third, the layout phase arranges this content into frames, employing an introspection loop that runs up to five times to resolve cyclical dependencies such as page numbers and counters.[^R5] Finally, the export phase converts these frames into the final output format, most commonly a PDF or a raster graphic.[^R5]

| Compilation Phase | Data Input | Output Target | Performance Mechanism |
| :---- | :---- | :---- | :---- |
| Parsing | Raw Source String | Untyped Syntax Tree | Incremental Reparsing [^R5] |
| Evaluation | Syntax Tree | Content Values | Module/Closure Memoization [^R5] |
| Layout | Content Values | Frames | Introspection Stabilization [^R5] |
| Export | Frames | PDF / Raster Image | Native Rendering Logic [^R9] |

### 1.3 Purity and immutability

The concept of "purity" is central to this architecture. All Typst functions are pure, meaning that given the same arguments, they must return the same output.[^R3] This prevents side effects that could destabilize the layout during incremental updates. While built-in methods like array.push() allow for local state mutation within a code block, the global state remains immutable, managed instead through the dedicated state and counter introspection systems.[^R3]

***

## Part 2 – Understanding the Basics

### 2.1 The three syntactic modes in Typst

Typst uses three primary syntactic modes when you write documents:

- **Markup mode (default):** Regular text, headings, lists, etc. This is what you get when you just type in a `.typ` file. Headers are established with equals signs, where the quantity of signs dictates the nesting depth: `=` for primary chapters and `==` for sub-sections.[^R12] Paragraphs are delineated by blank lines, while common formatting such as emphasis and strong text are achieved via underscores and asterisks, respectively.[^R2]
- **Code mode:** Introduced with `#`. You use it for function calls, variable interpolation, and more complex logic. Variable and function names typically use kebab-case (e.g., `column-gutter`), aligning with the naming conventions found in modern web standards.[^R6] Code can be embedded directly into markup, and conversely, content blocks `[...]` can be used within code to treat markup as a programmatic value.[^R7]
- **Math mode:** Delimited by dollar signs — `$x^2$` for inline math, or `$ x^2 $` (with spaces after/before the `$`) for display (block‑level) math. Inside math mode you use TeX‑like syntax, but rendered by Typst's math engine.[^R30] Unlike markup mode, math mode treats single letters as variables and interprets multi-letter sequences as symbols or function names, such as `rho` being automatically transformed into the Greek letter ρ.[^R1] Equations become block-level elements if they are padded with internal spaces, a subtle but powerful distinction for managing vertical rhythm in scientific documents.[^R1]

Example:

```typst
This is markup text with an inline formula $a^2 + b^2 = c^2$ and a
#emph[code‑level emphasis].
```

| Syntax Element | Markup Representation | Programmatic Equivalent | Structural Context |
| :---- | :---- | :---- | :---- |
| Heading | `= Introduction` | `#heading[Introduction]` | Block-level [^R1] |
| Bold Text | `*Strong*` | `#strong[...]` | Inline [^R13] |
| Numbered List | `+ Item` | `#enum[Item]` | Flow-controlled [^R12] |
| Reference | `@label` | `#ref(<label>)` | Introspective [^R12] |
| Math Block | `$ x^2 $` | `#math.equation(...)` | Block or Inline [^R1] |

### 2.2 Block vs inline containers

Typst distinguishes between **block‑level** and **inline‑level** content, similar to HTML/CSS, but with its own layout model.[^R33]

- **Block‑level elements** take up the full available width and are laid out vertically one after another. Every element that Typst arranges from the top of the page to the bottom—including headings, paragraphs, and grids—is essentially a block.[^R20] Blocks support properties like `fill` for background colors, `stroke` for borders, and `radius` for rounded corners.[^R24] Crucially, blocks manage their own spacing via `above` and `below` parameters, and they can be made `breakable: false` to prevent them from being split across page boundaries.[^R24]
- **Inline‑level elements** flow within a line of text and wrap with the text. Examples: spans of text, inline math, small icons or boxes.
- The `box` function is a key bridge: it lets you wrap arbitrary content in a container that can be used inline or in layout structures. It prevents line breaks within its contents[^R17] and provides a `baseline` argument for adjusting vertical offset relative to the surrounding text line.[^R24]
- For linear arrangements, the `stack` function places items along an axis: `ltr` (left-to-right), `rtl` (right-to-left), `ttb` (top-to-bottom), or `btt` (bottom-to-top).[^R26] It is a simpler, more efficient alternative to a grid when content only needs to be arranged in one dimension with consistent spacing between elements.[^R26]

Example:

```typst
This is normal text with an inline #box(fill: yellow.lighten(80%))[highlight].

// A block‑level container (use `block`, not `box`, for block‑level):
#block(fill: blue.lighten(80%), inset: 8pt)[
  This is a full‑width callout block.
]
```

| Container | Level | Key Parameters | Layout Behavior |
| :---- | :---- | :---- | :---- |
| block | Block | width, height, breakable | Forced new line, vertical flow [^R24] |
| box | Inline | width, baseline, inset | Stays in paragraph flow [^R24] |
| stack | Block | dir, spacing | Linear arrangement along an axis [^R26] |
| grid | Block | columns, rows, gutter | Multi-dimensional track sizing [^R27] |

### 2.3 Core layout functions you will use

For layout work you will repeatedly use these primitives:[^R27][^R33]

- `box(...)` – Generic inline container with size, background, and spacing control.
- `block(...)` – Block‑level container with spacing, borders, and breakability control.
- `stack(...)` – Linear arrangement of items along a single axis.
- `grid(...)` – Flexible grid system with rows/columns, gutters, and spanning.
- `columns(...)` – Content that flows across multiple columns.
- `place(...)` – Absolute/floating placement relative to page, column, or parent container.[^R24]
- `page(...)` – Page setup (size, margins, columns at page level).[^R18]

This handbook builds progressively on these functions.

***

## Part 3 – Scripting and Functional Document Design

The scripting language within Typst is a fully-fledged, functional-style language that allows for the creation of sophisticated automation.[^R1] Variables are defined using let bindings, which can store data types ranging from simple integers and strings to complex dictionaries and arrays.[^R7]

### 3.1 Destructuring and first‑class functions

A critical feature for designers is the ability to destructure data. Let bindings can be used to unpack arrays and dictionaries, utilizing the `..` spread operator to collect remaining items.[^R1] This is particularly useful when creating templates that must handle a variable number of authors or bibliography entries.[^R1] Furthermore, functions in Typst are first-class values; they can be stored in variables, passed as arguments to other functions, and returned from code blocks.[^R3]

### 3.2 Code blocks vs content blocks

The distinction between a code block `{...}` and a content block `[...]` is fundamental to document logic. A code block allows for the execution of multiple statements, where the final value is the result of joining all expressions within the block.[^R3] Expressions that yield `none`, such as a variable assignment, are ignored during the joining process.[^R3] Content blocks, on the other hand, capture markup as a value of the content type, which can then be passed to functions like `align` or `block` for final placement.[^R7]

### 3.3 Data types reference

| Data Type | Syntax Example | Common Application |
| :---- | :---- | :---- |
| Content | `[Hello *world*]` | Storing styled text fragments [^R13] |
| String | `"Palo Alto"` | Labels, font names, and metadata [^R13] |
| Length | `12pt`, `2.5cm` | Fixed sizing and padding [^R6] |
| Relative Length | `50% + 1em` | Proportional sizing with offsets [^R12] |
| Dictionary | `(x: 1pt, y: 2pt)` | Margin and inset configuration [^R17] |
| Boolean | `true`, `false` | Conditional formatting flags [^R15] |

***

## Part 4 – Mastering Box Elements

### 4.1 Box as your fundamental building block

A `box` is the fundamental tool for local layout control: backgrounds, borders, paddings, and fine‑grained alignment.[^R33]

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
- `fill` – Background paint: a solid color or gradient, e.g. `blue`, `luma(90%)`, `gradient.linear(...)`.[^R25]
- `stroke` – Border (color, thickness, style), e.g. `1pt + black`.
- `radius` – Rounded corners (single value or per‑corner tuple).
- `inset` – Inner padding; increases the space between content and border.
- `outset` – Visual extension outside the content box; useful for drop shadows, glows or visual emphasis.
- `baseline` – Shifts the baseline for inline alignment.
- `clip` – If `true`, content is clipped to the box's shape.

### 4.2 Advanced box techniques

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

Fractional units like `1fr` are supported in layout containers such as `grid`, and also for `box` widths within paragraphs (e.g. `#box(width: 1fr)`). However, other elements do not yet support fractional sizing inline.[^R27][^R33]

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

## Part 5 – Grid Systems: Your Power Tool

### 5.1 Grid basics

`grid` is Typst's general‑purpose layout grid, designed for complex arrangements of boxes, text, and images.[^R27]

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

### 5.2 Understanding track sizing

Tracks (columns and rows) can be sized in three main ways:[^R27]

- `auto` – Size is determined by the content.
- Fixed or relative lengths – e.g. `10pt`, `2cm`, `20% - 1cm`.
- Fractional (`fr`) – Distribute remaining space proportionally, e.g. `(1fr, 2fr)`.

The `fr` (fraction) unit is the most powerful tool in the designer's arsenal for responsive design.[^R27] When a grid track is defined in `fr` units, it takes up a proportional share of the horizontal or vertical space remaining after all fixed-size and `auto` tracks have been allocated.[^R27] For instance, a column definition of `(150pt, 1fr, 2fr)` creates three columns: one fixed at 150 points, a second taking one-third of the remaining space, and a third taking two-thirds.[^R27]

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

### 5.3 Grid styling techniques

Grid styling can be handled globally or on a per-cell basis. Properties like `align`, `inset`, `fill`, and `stroke` can accept a single value, an array (which cycles through columns), or a function `(x, y) => value`.[^R27] This functional approach allows for the creation of complex "zebra" stripes or checkerboard patterns with minimal code.[^R27]

#### Striped grid using functional `fill`/`stroke`

`fill` and `stroke` in a grid can be functions of `(x, y)` (column and row indices).[^R27]

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

Each column's content is aligned as specified.

### 5.4 `grid.cell` for precise control

`grid.cell` lets you override defaults per cell: spanning, coordinates, and styling.[^R27] Cells can be merged using the `colspan` and `rowspan` arguments, which is essential for placing large graphics or title blocks within a structured grid.[^R27]

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

### 5.5 Grid lines for structure

Horizontal and vertical grid lines help structure content visually.[^R27]

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

### 5.6 Grid vs Table: Accessibility

It is important to distinguish between `grid` and `table`.[^R27] While they share similar syntactic structures, the grid is intended for layout and presentational purposes, whereas the table is intended for semantic data representation.[^R27] This distinction is critical for accessibility; Assistive Technologies (AT) will provide two-dimensional navigation for tables but will read grids in a linear semantic order, typically row-by-row.[^R27]

***

## Part 6 – Multi‑Column Layouts

### 6.1 Simple column layouts with `columns`

`columns` allows content to flow across multiple columns within a region.[^R38]

```typst
#columns(2, gutter: 8pt)[
  This text flows across two columns.

  #colbreak()

  Explicit column break here.
]
```

- `gutter` controls the space between columns within this block.
- `#colbreak()` forces a column break.

### 6.2 Page‑level columns

You can set columns at the **page level** so that most of your document flows multi‑column by default.[^R18]

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

### 6.3 Breaking out of columns with `place`

You can place elements outside the normal column flow, e.g. a full‑width title above two columns.[^R24]

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

## Part 7 – `place`: Absolute and Floating Positioning

### 7.1 Basic placement

`place` allows absolute or floating placement relative to a reference rectangle (page, column, or parent container).[^R24]

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

### 7.2 Floating vs overlay

By default, `place` overlays content and **does not affect** the surrounding layout.[^R24]

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

Floating positioning, enabled with `float: true`, moves an element to the top or bottom of the container and forces the remaining text to flow around it.[^R20] The `clearance` parameter ensures a minimum vertical gap between the float and the body text.[^R20] In multi-column layouts, the `scope: "parent"` argument is invaluable, as it allows a floating element to break out of its current column and span the entire width of the page—a common requirement for article titles or large figures.[^R20]

### 7.3 Scope control

The `scope` parameter controls which rectangle is used as the reference for positioning.[^R24]

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

For positioning that includes the page margins, content can be placed into the `page.foreground` or `page.background` fields.[^R24]

### 7.4 `place` parameters reference

| Argument | Type | Default | Functional Role |
| :---- | :---- | :---- | :---- |
| float | Boolean | false | Enables floating at top/bottom [^R20] |
| scope | String | "column" | Determines if element spans columns [^R20] |
| clearance | Length | 1.5em | Space between float and text [^R24] |
| dx, dy | Relative | 0pt | Physical offset from alignment [^R24] |

> **Note:** The `placement` parameter (`auto`/`top`/`bottom`) belongs to the `figure` element, not `place`. Use `figure(placement: top)` to float figures to the top or bottom of a page.[^R24]

***

## Part 8 – The Unified Styling Model: Set and Show Rules

The styling system is perhaps the most robust feature of the ecosystem, designed to replace the disparate and often conflicting "package-based" styling found in LaTeX.[^R1] Styling is achieved through two complementary mechanisms: **set rules** and **show rules**.[^R1]

### 8.1 `set` rules for consistent design

Set rules establish default parameter values for a function and are the backbone of a consistent typographic system.[^R6] For example, `#set page(paper: "a4")` or `#set text(font: "Linux Libertine")` establishes a baseline that applies to all subsequent content.[^R15] Set rules are scoped; a rule declared within a content block only persists until the end of that block, allowing for precise localized overrides.[^R16]

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
- `par` controls paragraph behavior (justification, line spacing, spacing between paragraphs).[^R39]
- `text` sets font and text defaults.
- `heading` configures automatic numbering.

### 8.2 `show` rules for transformative styles

Show rules provide the power of total transformation.[^R16] They allow the designer to intercept any element before it is rendered and redefine its appearance from scratch.[^R16] A show rule can be a simple "show-set" rule, such as `show heading: set text(red)`, which modifies specific properties of an element type.[^R16] More powerfully, a transformational show rule can accept the element as an argument—conventionally named `it`—and return entirely new content.[^R16] This gives the designer access to all fields of the element, such as `it.body` for a heading or `it.caption` for a figure, facilitating the reconstruction of complex visual headers or chapter titles.[^R16]

| Rule Type | Syntax | Visual Impact |
| :---- | :---- | :---- |
| Set Rule | `set text(size: 10pt)` | Adjusts default parameters [^R15] |
| Show-Set Rule | `show list: set text(blue)` | Conditional default adjustment [^R16] |
| Transform Rule | `show heading: it => [...]` | Complete element reconstruction [^R16] |
| Global Show | `show: template` | Document-wide wrapper [^R15] |

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

#### Selectors for advanced targeting

The use of selectors in show rules is critical for advanced layout design. The `.where()` method allows rules to be applied selectively based on field values.[^R16] For example, a designer can apply a specific style only to first-level headings that are not outlined in the table of contents by using `show heading.where(level: 1, outlined: true): ...`.[^R16] Other complex selector methods, such as `selector(heading).before(here())` and `selector(heading).after(here())`, enable the document to react to the relative positioning of elements, which is essential for "nearest chapter" markers in headers.[^R21]

### 8.3 Combined styling patterns for grids

You can target `grid.cell` in `show` rules and style cells based on their coordinates.[^R27]

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

This produces a "header row / header column" style with minimal code.

***

## Part 9 – Introspection: Reactive and Context‑Aware Documents

The "hero" level of document design is reached through the use of introspection—the ability of content to react to its final position on the page.[^R23] This is governed by the `context` keyword, which instructs the compiler that the following block of code must be re-evaluated as its environment is resolved.[^R5]

### 9.1 Context, here, and query

Within a context block, the designer can access the `here()` function to get the element's current location, or `query()` to find other elements in the document.[^R21] This is the engine behind dynamic headers that show the current chapter name, or table of contents entries that show correct page numbers.[^R18] For example, a header can be defined with `#set page(header: context { ... })`, where the internal logic queries for the most recent heading using `query(selector(heading).before(here())).last()`.[^R21]

### 9.2 Counters and state

The introspection system also manages `state` and `counter`.[^R10] Counters are specialized for items that step sequentially, like page numbers or theorem blocks.[^R10] They provide a "time travel" capability, where the `final()` method can retrieve the value of a counter at the very end of the document—essential for "Page 1 of 50" footers.[^R22] States are more general-purpose and can be used to track any information across the layout process, such as the current "theme color" of a chapter.[^R22]

### 9.3 Measure and layout

The `measure` function calculates physical dimensions of content, while `layout(size => ...)` provides the available content area dimensions (page width minus margins).[^R33] This is the correct way to adapt layout based on actual available space. Note: `context { page.width }` returns the *configured* page width (e.g. 21cm for A4), not the text area width after margins.[^R40]

### 9.4 Introspection tools reference

| Introspection Tool | Core Method | Design Purpose |
| :---- | :---- | :---- |
| context | `context { ... }` | Enters a reactive environment [^R20] |
| counter | `get()`, `final()` | Dynamic numbering (Pages, Figs) [^R10] |
| query | `query(selector)` | Finding elements (Headings, Tables) [^R21] |
| state | `update()`, `get()` | Tracking global variables [^R22] |
| measure | `measure(content)` | Calculating physical dimensions [^R33] |
| layout | `layout(size => ...)` | Adaptive design based on space [^R33] |

***

## Part 10 – Advanced Layout Patterns

### 10.1 Classic sidebar layout

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

### 10.2 Magazine layout with mixed columns

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

Here, `scope: "parent"` ensures the image aligns with the page text block rather than being constrained to a single column.[^R24]

### 10.3 Pull quotes

A pull quote is a highlighted quote that "floats" into the margin or side of the text.

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

### 10.4 Complex book cover

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

## Part 11 – Page Setup and Multi‑Part Book Structures

### 11.1 Page geometry and margins

Advanced book design requires careful orchestration of page-level properties.[^R18] The `page` set rule is where the physical canvas is defined.[^R17]

Margins are the most critical ingredient for legibility, with typographers recommending lines between 45 and 75 characters.[^R18] In Typst, margins can be set symmetrically or asymmetrically. For bound books, the `inside` and `outside` parameters are used to manage the spine offset.[^R18] The page numbering can be localized to specific sections by updating the page counter; for instance, a preface might use Roman numerals before resetting to Arabic numerals for the main body.[^R18]

### 11.2 Front matter, main matter, and back matter

Book structures are often categorized into front matter, main matter, and back matter.[^R34] In the Typst ecosystem, this is frequently implemented using "fences" or dedicated show rules that reset styling and counters.[^R34] The anti-matter package, for instance, provides a streamlined way to mark these transitions, automatically handling the switch between numbering styles and resetting the page count without manual interference.[^R35]

| Book Section | Content Type | Typical Styling |
| :---- | :---- | :---- |
| Front Matter | Title, TOC, Preface | Roman numerals, no headers [^R35] |
| Main Matter | Chapters, Body Text | Arabic numerals, dynamic headers [^R36] |
| Back Matter | Index, Bib, Bio | Reset numbering, hanging indents [^R36] |

### 11.3 Complete book layout example

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

- Inside/outside margins ensure a proper gutter for bound books.[^R18]
- The `heading` show rule creates chapter openers on new pages.
- The header context alternates page numbers left/right on even/odd pages.

### 11.4 Scientific paper template

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

The key trick is using `place` with `scope: "parent"` and `float: true` to make the title box span the full text width above both columns while the body text flows in two columns below it.[^R18][^R24]

***

## Part 12 – Responsive and Dynamic Layouts

### 12.1 Context‑based adaptations

The `context` function allows you to inspect layout information (like page size) and adapt your layout accordingly.[^R30]

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

Here, `layout(size => ...)` provides the available content area dimensions (page width minus margins), which is the correct way to adapt layout based on actual available space. Note: `context { page.width }` returns the *configured* page width (e.g. 21cm for A4), not the text area width after margins.[^R40]

### 12.2 Dynamic grid columns

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

## Part 13 – Visual Deconstruction: A Workflow for Designers

To rebuild a complex layout from an image, the designer must employ a heuristic of visual deconstruction, mapping visual elements to Typst's logical primitives.[^R1] This involves several distinct levels of analysis.

### Layer 1 — Grid Identification

The designer should look for the underlying vertical and horizontal tracks. Is there a consistent margin? Are there multiple columns? If a sidebar exists, is it fixed-width or fractional? This analysis maps directly to the `grid(columns: (...))` parameters.[^R27] For an image with a wide main column and a narrow information strip, a definition like `columns: (3fr, 1fr)` is often the starting point.[^R20]

### Layer 2 — Flow and Breaks

Identifying where paragraphs start, where headings sit, and how much space exists between them allows the designer to configure the `block` and `par` set rules.[^R20] Large gaps or decorative lines between sections can be mapped to the `v()` (vertical space) or `line()` functions.[^R25]

### Layer 3 — Exceptional Positioning

Elements that break the flow—such as a logo in the top margin, a photo that spans two columns, or a pull-quote that overlaps text—must be identified as candidates for the `place` function.[^R20] The designer must decide if these are "overlaid" (using absolute coordinates) or "floating" (interacting with the surrounding text).[^R24]

### Layer 4 — Componentization

If the design features repeating elements like "Warning Boxes" or "Step-by-Step Indicators," these should not be coded manually each time. Instead, the designer should define a function—for example, `let step-box(num, body) = { ... }`—that encapsulates the styling, borders, and numbering.[^R15]

### Layer 5 — Introspection

The designer looks for elements that depend on their location. Does the page number change color in the "Introduction" chapter? Does the footer show the current page's section title? These require the `context` keyword and query system to make the document reactive.[^R18]

***

## Part 14 – Leveraging the Advanced Package Ecosystem

While the core of Typst is powerful, the ecosystem provides pre-built tools for the most creative and impressive layouts.[^R41]

For complex graphics and visualizations, **CeTZ** is the industry standard, providing a coordinate-based system for drawing anything from simple flowcharts to complex scientific plots.[^R41] For designers focused on commutative diagrams or arrow-based logic, **Fletcher** and **Quill** offer specialized syntaxes.[^R41]

When designing books or instructional materials, **showybox** is an essential tool for creating colorful, breakable, and titled containers.[^R42] It provides granular control over shadows, inset, and multi-part borders.[^R44] For absolute positioning challenges, **Pinit** allows the designer to place "pins" in the flow of text and then draw lines or place content relative to those pins on the final page—a feature that is virtually impossible in standard word processors.[^R42]

Finally, for the "contest" environment where time is limited, **drafting** and **meander** can be utilized to visualize the layout grid and manage complex text wrap-around or threading.[^R41] Using rule-grid from the drafting package helps cross-hatch the page with reference lines, allowing for pinpoint accuracy when positioning elements to match a source image.[^R46]

| Package | Design Specialty | Key Functional Tool |
| :---- | :---- | :---- |
| cetz | Vector Graphics | Coordinate-based drawing API [^R41] |
| showybox | Admonitions | Titled, shadowed, breakable boxes [^R44] |
| pinit | Anchored Annotations | Pin-based relative positioning [^R43] |
| fletcher | Diagrams | Commutative diagrams with nodes [^R41] |
| drafting | Layout Refinement | Page-wide rule grids and margin notes [^R42] |
| codly | Code Presentation | Line numbers and syntax highlights [^R42] |

***

## Part 15 – Performance, Best Practices, and Strategic Synthesis

### 15.1 Performance tips for complex layouts

When documents become large and layouts complex, keep these practices in mind:[^R33]

- Prefer `auto` sizing where possible and only fix sizes when needed. This lets Typst's layout engine optimize flows.
- Avoid deeply nesting many `grid` and `columns` blocks when a flatter structure or a single powerful `grid` would suffice.
- Reuse components via functions and `show` rules instead of repeating complex structures inline.
- Test layouts incrementally: start from a minimal example and gradually add complexity, so regressions are easy to spot.

### 15.2 Design best practices

Beyond pure performance, keep these design guidelines in mind for professional results:

- Establish a typographic scale (e.g. base size 11pt, headings at 1.4×, 1.8×, 2.4×, etc.) and apply it consistently.[^R20]
- Use `set` rules to centralize styling decisions so changes propagate across the whole document.
- Encapsulate recurring layout patterns (pull quotes, callout boxes, figure grids) in functions to keep your document source clean.
- Leverage `context` only where you truly need layout‑dependent behavior, to keep code maintainable.

### 15.3 Strategic workflow

Success in Typst design requires a shift in perspective: from a "content writer" to a "document architect." By treating the page as a coordinate system and the document as a series of nested functions, the designer can achieve pixel-perfect reconstructions of even the most complex magazine and book layouts.

The strategic workflow begins with a comprehensive set of document-wide rules to establish the typography and page geometry.[^R17] This is followed by the construction of the primary grid—the skeletal structure that will hold the content.[^R27] From there, the designer utilizes show rules to automate the styling of headings and lists, ensuring that the visual logic is consistent and maintainable.[^R16]

For elements that defy the grid, the `place` function and absolute positioning provide the final layer of creative control.[^R24] By combining these primitives with the reactive power of `context` and the specialized capabilities of the package ecosystem, the designer transforms a static text file into a dynamic, beautiful, and structurally sound work of professional typography.[^R1] The result is a document that not only looks impressive but is engineered to the highest standards of the digital age.

With these tools and patterns, Typst becomes a powerful engine for expressive, modern book and document design.

---

## References

[^R1]: [typst/typst: A markup-based typesetting system that is powerful and easy to learn – GitHub](https://github.com/typst/typst)
[^R2]: [Exploring Typst: A LaTeX Alternative – The PCLinuxOS Magazine](https://pclosmag.com/html/Issues/202411/page08.html)
[^R3]: [Function Type – Typst Documentation](https://typst.app/docs/reference/foundations/function/)
[^R4]: [Typst: A Possible LaTeX Replacement – Hacker News](https://news.ycombinator.com/item?id=45393842)
[^R5]: [typst/docs/dev/architecture.md at main – GitHub](https://github.com/typst/typst/blob/main/docs/dev/architecture.md)
[^R6]: [Syntax – Typst Documentation](https://typst.app/docs/reference/syntax/)
[^R7]: [Scripting – Typst Documentation](https://typst.app/docs/reference/scripting/)
[^R8]: [Image Function – Typst Documentation](https://typst.app/docs/reference/visualize/image/)
[^R9]: [dashing-dept-news – Typst Universe](https://typst.app/universe/package/dashing-dept-news/)
[^R10]: [Counters – Typst Examples Book – GitHub Pages](https://sitandr.github.io/typst-examples-book/book/basics/states/counters.html)
[^R11]: [For LaTeX Users – Typst Documentation](https://typst.app/docs/guides/for-latex-users/)
[^R12]: [Writing in Typst – Typst Documentation](https://typst.app/docs/tutorial/writing-in-typst/)
[^R13]: [For LaTeX Users – Typst Documentation](https://typst.app/docs/guides/for-latex-users/)
[^R14]: [Heading Function – Typst Documentation](https://typst.app/docs/reference/model/heading/)
[^R15]: [Making a Template – Typst Documentation](https://typst.app/docs/tutorial/making-a-template/)
[^R16]: [Styling – Typst Documentation](https://typst.app/docs/reference/styling/)
[^R17]: [Formatting – Typst Documentation](https://typst.app/docs/tutorial/formatting/)
[^R18]: [Page Setup – Typst Documentation](https://typst.app/docs/guides/page-setup/)
[^R19]: [Is there a more elegant way for an Enclosure chapter – Typst Forum](https://forum.typst.app/t/is-there-a-more-elegant-way-for-an-enclosure-chapter-with-main-heading-visible-in-outline-subchapters-invisible-with-custom-titles-shown-and-shown-when-referenced/7907)
[^R20]: [Advanced Styling – Typst Documentation](https://typst.app/docs/tutorial/advanced-styling/)
[^R21]: [Query Function – Typst Documentation](https://typst.app/docs/reference/introspection/query/)
[^R22]: [Using `query` together with `counter.at` – GitHub Discussion #1109](https://github.com/typst/typst/discussions/1109)
[^R23]: [Query – Typst Examples Book – GitHub Pages](https://sitandr.github.io/typst-examples-book/book/basics/states/query.html)
[^R24]: [Place Function – Typst Documentation](https://typst.app/docs/reference/layout/place/)
[^R25]: [Box Function – Typst Documentation](https://typst.app/docs/reference/layout/box/)
[^R26]: [Stack Function – Typst Documentation](https://typst.app/docs/reference/layout/stack/)
[^R27]: [Grid Function – Typst Documentation](https://typst.app/docs/reference/layout/grid/)
[^R28]: [How to set up grid of rectangles with different cell width/height? – Typst Forum](https://forum.typst.app/t/how-to-set-up-grid-of-rectangles-with-different-cell-width-height/7498)
[^R29]: [Tables – Typst Documentation](https://typst.app/docs/guides/tables/)
[^R30]: [Context – Typst Documentation](https://typst.app/docs/reference/context/)
[^R31]: [How do I highlight text context-dependent in the header section? – Typst Forum](https://forum.typst.app/t/how-do-i-highlight-text-context-dependent-in-the-header-section/6331)
[^R32]: [Counter Type – Typst Documentation](https://typst.app/docs/reference/introspection/counter/)
[^R33]: [Layout Function – Typst Documentation](https://typst.app/docs/reference/layout/layout/)
[^R34]: [Observations from this new Typst user – Typst Forum](https://forum.typst.app/t/observations-from-this-new-typst-user/6395)
[^R35]: [anti-matter – Typst Universe](https://typst.app/universe/package/anti-matter/)
[^R36]: [How to structure a book project? – Typst Forum](https://forum.typst.app/t/how-to-structure-a-book-project/7298)
[^R37]: [Format Front Matter, Body Matter, and Back Matter – Amazon Kindle Direct Publishing](https://kdp.amazon.com/help/topic/GDDYZG2C7RVF5N9J)
[^R38]: [Columns Function – Typst Documentation](https://typst.app/docs/reference/layout/columns/)
[^R39]: [Typst Documentation – Paragraph Function](https://typst.app/docs/reference/model/par/)
[^R40]: [How to compute the current page's textwidth – Typst Forum](https://forum.typst.app/t/how-to-compute-the-current-pages-textwidth/6523)
[^R41]: [Typst Universe](https://typst.app/universe/)
[^R42]: [Search — Typst: Universe](https://typst.app/universe/search/)
[^R43]: [pinit – Typst Universe](https://typst.app/universe/package/pinit/)
[^R44]: [showybox – Typst Universe](https://typst.app/universe/package/showybox/)
[^R45]: [Showybox's Manual – Scribd](https://www.scribd.com/document/700741506/Showybox-s-Manual)
[^R46]: [Layout – Typst Examples Book – GitHub Pages](https://sitandr.github.io/typst-examples-book/book/packages/layout.html)
[^R47]: [drafting – Typst Universe](https://typst.app/universe/package/drafting/)
[^R48]: [Typst: The new foundation for documents](https://typst.app/)
