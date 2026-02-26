# Showcase-v1: Phase 4 – Layout & Spreads

## Objectives

Introduce **visual rhythm, full-bleed spreads, dynamic page structure, and sophisticated typography layout** that rivals InDesign. This phase transforms the document from well-designed to visually stunning.

## Dependencies

✓ Phases 1–3 complete (typography, color, components)

## Tasks

### 4.1 Title Spread Redesign (main.typ)

**Current**: Centered text, simple alignment.
**Goal**: Asymmetric, dramatic full-bleed cover with hierarchy.

**Implementation**:
```typst
// TITLE PAGE – Full bleed, no margin constraints
#set page(margin: 0pt, header: none, footer: none)

#block(
  width: 100%,
  height: 100%,
  fill: palette.primary,
  inset: (top: 80mm, left: 40mm, right: 40mm),
)[
  #align(left + top)[
    #block(spacing: space.xxl)[
      #text(
        size: type.display,
        weight: 900,
        fill: palette.paper,
      )[Typst: The Missing Manual]

      #text(
        size: type.h2,
        weight: 600,
        fill: palette.paper.lighten(20%),
      )[Clinical Reasoning · Didatic Design]

      #v(space.xxxl)
      #text(size: type.lead, fill: palette.paper)[
        A complete book layout system based on semantic markup,
        reusable components, and data-driven design.
      ]
    ]
  ]
]

// Back to normal pages
#pagebreak()
#set page(margin: (top: 20mm, bottom: 22mm, left: 22mm, right: 18mm))
#set page(header: auto, footer: auto)  // Re-enable headers
```

**Visual impact**: Full-color background, large type, asymmetric composition—immediately signals professional design.

### 4.2 Chapter Openers with Asymmetric Layout (chapters/*.typ)

**Current**: Simple chapter-opener function.
**Goal**: Spread-style layout with image, chapter number, title, descriptor.

**Implementation** (in styles/components OR create new `components/spreads.typ`):
```typst
#let chapter-spread(num, title, subtitle, image-path: none, theme-color: palette.primary) = {
  pagebreak()

  // Full-width colored band
  block(
    width: 100vw,
    height: 60%,
    fill: theme-color.lighten(92%),
    inset: (left: -20mm, right: -20mm, top: -20mm),
  )[
    #grid(
      columns: (1fr, 1fr),
      gutter: 40mm,
      align: (center + horizon, center + horizon),
    )[
      // Left: Chapter number & title
      [
        #align(left + top)[
          #text(
            size: 120pt,
            weight: 900,
            fill: theme-color.lighten(50%),
            opacity: 0.3,  // Subtle background number
          )[#num]

          #v(-40pt)  // Optical overlap
          #text(
            size: type.display-sm,
            weight: 800,
            fill: theme-color,
          )[#title]

          #v(space.lg)
          #text(
            size: type.lead,
            fill: palette.mute,
            weight: 400,
          )[#subtitle]
        ]
      ]

      // Right: Image (if provided)
      [
        #if image-path != none {
          #block(
            width: 100%,
            radius: 12pt,
            inset: 20pt,
            fill: palette.paper,
            stroke: (paint: theme-color.lighten(50%), thickness: 1pt),
          )[
            #image(image-path, width: 90%)
          ]
        } else {
          // Placeholder gradient
          #block(
            width: 100%,
            height: 300pt,
            fill: theme-color.lighten(80%),
            radius: 12pt,
          )[
            #align(center + horizon)[
              #text(size: type.h2, fill: palette.mute)[#num]
            ]
          ]
        }
      ]
    ]
  ]

  #v(space.xxxl)
  #pagebreak()
}
```

**Usage**:
```typst
#chapter-spread(
  "03",
  "Layout-Techniken",
  "Raster, Marginalspalten, visuelle Rhythmen",
  theme-color: palette.good,
)
```

### 4.3 Running Headers Tied to Chapter Context

Update `styles/page.typ`:

```typst
#let setup-pages() = {
  set page(
    // ... existing margin setup ...
    header: context [
      #let current-chapter = query(selector(heading).before(here())).last().body
      #set text(size: type.tiny, fill: palette.mute, weight: 500)

      #grid(
        columns: (1fr, auto),
        gutter: space.xl,
      )[
        [#emph[#current-chapter]]
        [#counter(page).display() von #counter(page).final().first()]
      ]

      #line(length: 100%, stroke: (paint: palette.primary-light, thickness: 0.5pt))
    ],
    footer: context [
      // Page number centered at bottom
      #set text(size: type.small, fill: palette.mute)
      #align(center)[#counter(page).display()]
    ],
  )
}
```

**Result**: Headers show chapter name, page count shows total; visual connection throughout.

### 4.4 Margin Notes & Sidebar Content (NEW layout pattern)

For showcasing margin-note technique:

```typst
#let two-column-flow(main, margin) = [
  #grid(
    columns: (2fr, 1fr),
    gutter: space.lg,
  )[
    // Main column
    [#set par(leading: 1.5em)
    #main]

    // Margin column (smaller type, subtle styling)
    [
      #set text(size: type.tiny, fill: palette.mute)
      #set par(leading: 1.3em)
      #margin-note[#margin]
    ]
  ]
]
```

**Use in chapters**: Split screen with definition/example pairs:
```typst
#two-column-flow(
  [
    *Red Flag Heuristic*

    Diese sind Warnsymptome, die in der Klinik sofort
    Aufmerksamkeit verdienen …
  ],
  [
    *Margin Note*

    Red Flags sind *nicht* Diagnosen, sondern
    Zeichen, die Abklärung erfordern.
  ]
)
```

### 4.5 Full-Bleed Colored Section Breaks (NEW)

Add visual pauses between major sections:

```typst
#let section-break(title: none, color: palette.primary) = [
  #pagebreak()

  #block(
    width: 100%,
    height: 40%,
    fill: color.lighten(90%),
    inset: (left: -20mm, right: -20mm, top: -20mm),
    radius: 0pt,
  )[
    #align(center + horizon)[
      #if title != none {
        #text(size: type.h1, weight: 800, fill: color)[#title]
      } else {
        #text(size: type.h1, weight: 800, fill: color.lighten(70%))[••••]
      }
    ]
  ]

  #v(10% * 100% - 40%)
]
```

**Usage**: Between chapters or major transitions.

### 4.6 Grid-Based Photo/Graphics Section

Demonstrate multi-column layouts with controlled aspect ratios:

```typst
#let image-grid(columns: 3, gap: space.lg, ..images) = [
  #let col-size = 100% / columns

  #grid(
    columns: (..range(columns).map(_ => 1fr)),
    gutter: gap,
  )[
    #for img in images.pos() {
      block(
        width: col-size,
        height: col-size,  // Square aspect ratio
        fill: palette.mute-light,
        radius: 6pt,
        inset: 4pt,
        stroke: (paint: palette.mute-light, thickness: 0.5pt),
      )[
        #image(img, width: 100%, height: 100%, fit: "cover")
      ]
    }
  ]
]
```

### 4.7 Table Breakout Section (Full-width tables)

Create an opt-in full-width mode for complex tables:

```typst
#let wide-section(body) = [
  #block(
    width: 110%,  // Slight overflow
    inset: (left: -5%, right: -5%),
  )[
    #body
  ]
]

// Usage:
#wide-section[
  #zebra-table(columns: (1fr, 1fr, 1fr, 1fr), ..table-data)
]
```

### 4.8 Dynamic Color Per Chapter

Assign each chapter a theme color for visual coherence:

In `main.typ`, define:
```typst
#let chapter-colors = (
  ch1: palette.info,       // Intro: cyan
  ch2: palette.primary,    // Structure: blue
  ch3: palette.good,       // Layout: green
  ch4: palette.accent1,    // Graphics: violet
  ch5: palette.warn,       // Didactics: amber
  ch6: palette.accent2,    // Extreme: gold
)
```

Pass to chapter functions; admonitions and headers use assigned color.

### 4.9 Footer Analytics (Optional: Chapter Stats)

Add subtle chapter progress indicator:

```typst
#let chapter-footer(chapter-num, total-chapters) = [
  #set text(size: type.tiny, fill: palette.mute-light)

  // Progress bar: visual indicator of position in book
  #block(
    width: 100%,
    height: 2pt,
    fill: palette.mute-light,
    radius: 1pt,
  )[
    #block(
      width: (chapter-num / total-chapters) * 100%,
      height: 100%,
      fill: palette.primary,
      radius: 1pt,
    )[]
  ]
]
```

Place in footer context or chapter opener.

### 4.10 Whitespace & Breathing Room

Critical layout principle:
- Add `#v(space.xxxl)` between major sections
- Use `#parbreak()` strategically (not `#v()` for spacing)
- Ensure no text block > 60 chars wide (readability)
- Margin: 20–25mm is professional (current: good)

## Deliverables

**Files created/modified**:
- `styles/page.typ` (chapter-aware headers, footers)
- `components/spreads.typ` (new: chapter-spread, section-break)
- `components/layouts.typ` (new: two-column, image-grid, wide-section)
- `main.typ` (title spread, chapter-colors mapping)

**Output**: Document now has visual landmarks, spatial hierarchy, color-coded chapters, and professional spread design.

## Acceptance Criteria

✓ Title spread is full-bleed, dramatic, professional
✓ Chapter openers use asymmetric layout + theme colors
✓ Running headers show chapter context + page numbers
✓ Section breaks provide visual pause/rhythm
✓ Margin notes integrate naturally without layout breaks
✓ Full-width table mode available
✓ No compile errors
✓ PDF shows Spreads that rival InDesign quality

## Time Estimate

**3–4 days** (complex layout logic + testing + visual validation)

## Next Phase

→ [Phase 5: Content & Polish](showcase-v1-phase5.md)
