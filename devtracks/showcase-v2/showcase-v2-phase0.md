# Showcase-v2: Phase 0 — Scaffold & Theme Tokens

## Objective

Create the project folder structure and design-token system. The phase ends with an empty but compiling Typst document that imports all style modules.

## Dependencies

None — this is the starting phase.

## Tasks

### 0.1 Create Folder Structure

Create the exact directory tree specified in the spec:

```
typst_showcase_v2/
├── main.typ
├── README.md
├── assets/images/           (empty, for future assets)
├── styles/
│   ├── theme.typ
│   ├── typography.typ       (stub: just imports theme)
│   └── page.typ             (stub: just imports theme)
├── components/
│   ├── spreads.typ          (stub)
│   ├── blocks.typ           (stub)
│   ├── layouts.typ          (stub)
│   ├── grids.typ            (stub)
│   ├── inline.typ           (stub)
│   ├── tables.typ           (stub)
│   └── figures.typ          (stub)
├── chapters/                (empty, for Phase 6)
├── data/
│   ├── glossary.yml         (minimal placeholder)
│   └── references.bib       (minimal placeholder)
└── png_output/              (empty, for renders)
```

Each stub file should contain a comment header and an empty placeholder:

```typst
// components/blocks.typ — Block-level components
// Populated in Phase 3
```

### 0.2 Design Token System (`styles/theme.typ`)

This file is **pure data** — no `set` or `show` rules, no side effects. Only dictionary exports.

#### 0.2.1 Color Palette

```typst
#let palette = (
  // Primary
  primary:        rgb("#0d7377"),    // Deep teal
  primary-light:  rgb("#14a3a8"),    // Lighter teal
  primary-dark:   rgb("#094f52"),    // Darker teal

  // Accent
  accent:         rgb("#d4a039"),    // Warm amber
  accent-light:   rgb("#e8c468"),    // Light amber
  accent-dark:    rgb("#a67c2e"),    // Dark amber

  // Neutrals
  bg:             rgb("#ffffff"),    // Page background
  bg-subtle:      rgb("#f5f5f0"),    // Subtle off-white for cards/callouts
  bg-muted:       rgb("#e8e8e3"),    // Muted background
  text-body:      rgb("#1a1a1a"),    // Near-black body text
  text-muted:     rgb("#555555"),    // Secondary text
  text-light:     rgb("#888888"),    // Tertiary text
  border:         rgb("#cccccc"),    // Default borders
  border-light:   rgb("#e0e0e0"),    // Subtle borders

  // Semantic
  info:           rgb("#2563eb"),    // Blue
  success:        rgb("#16a34a"),    // Green
  warning:        rgb("#d97706"),    // Orange
  danger:         rgb("#dc2626"),    // Red
)
```

#### 0.2.2 Gradient Presets

```typst
#let gradients = (
  cover:    gradient.linear(palette.primary-dark, palette.primary, angle: 135deg),
  chapter:  gradient.linear(palette.primary, palette.primary-light, angle: 0deg),
  accent:   gradient.linear(palette.accent-dark, palette.accent, angle: 90deg),
  subtle:   gradient.linear(palette.bg-subtle, palette.bg, angle: 180deg),
)
```

#### 0.2.3 Type Scale

```typst
#let type-scale = (
  micro:    7.5pt,
  tiny:     8.5pt,
  small:    9.5pt,
  body:     10.5pt,
  lead:     12pt,
  h4:       13pt,
  h3:       15pt,
  h2:       18pt,
  h1:       24pt,
  display:  36pt,
)
```

#### 0.2.4 Spacing Scale

```typst
#let space = (
  xs:    4pt,
  sm:    8pt,
  md:    12pt,
  lg:    16pt,
  xl:    24pt,
  xxl:   32pt,
  xxxl:  48pt,
)
```

#### 0.2.5 Font Families

```typst
#let fonts = (
  serif:  ("Libertinus Serif", "Linux Libertine", "Georgia", "serif"),
  sans:   ("Libertinus Sans", "Linux Biolinum", "Helvetica Neue", "sans-serif"),
  mono:   ("Inconsolata", "Cascadia Code", "Courier New", "monospace"),
)
```

> **Note**: Font families include fallback stacks. Typst will use the first available font. If workspace has custom fonts in `fonts/`, those can be referenced via `--font-path`.

### 0.3 Style Module Stubs

#### `styles/typography.typ`

```typst
// styles/typography.typ — Typography set/show rules
// Populated in Phase 1

#import "theme.typ": palette, type-scale, space, fonts
```

#### `styles/page.typ`

```typst
// styles/page.typ — Page geometry, margins, running headers/footers
// Populated in Phase 2

#import "theme.typ": palette, type-scale, space, fonts
```

### 0.4 Entry Point (`main.typ`)

```typst
// main.typ — Typst Showcase v2 Entry Point

#import "styles/theme.typ": *
#import "styles/typography.typ": *
#import "styles/page.typ": *

// Document metadata
#set document(
  title: "Typst Showcase v2 — Medizinische Didaktik",
  author: "Showcase Project",
  date: auto,
)

// Phase 0: Minimal content to verify compilation
#heading(level: 1)[Typst Showcase v2]

Dieses Dokument wird in den kommenden Phasen Schritt für Schritt aufgebaut.

Aktuelle Phase: *Phase 0 — Scaffold & Theme Tokens*
```

### 0.5 README

Create a minimal `README.md` with build instructions:

```markdown
# Typst Showcase v2

A publication-grade showcase of Typst layout capabilities.

## Build

```sh
typst compile main.typ
```

## PNG Export

```sh
typst compile --format png --ppi 200 main.typ "png_output/page-{0p}-of-{t}.png"
```

## Structure

See `devtracks/showcase-v2/showcase-v2-spec.md` for full architecture.
```

### 0.6 Compile Gate

Run:
```sh
cd typst_showcase_v2
typst compile main.typ
```

Must succeed with zero errors, zero warnings.

## Deliverables

- [ ] Complete folder structure created
- [ ] `styles/theme.typ` with all token dictionaries (palette, gradients, type-scale, space, fonts)
- [ ] `styles/typography.typ` stub importing theme
- [ ] `styles/page.typ` stub importing theme
- [ ] All component stubs in `components/`
- [ ] `main.typ` importing all styles and compiling
- [ ] `README.md` with build instructions
- [ ] Minimal placeholder data files

## Acceptance Criteria

- `typst compile main.typ` produces a 1-page PDF with the heading and placeholder text
- All imports resolve without errors
- Token dictionaries are accessible (no typos in field names)
- Folder structure matches spec exactly
- No `set` or `show` rules in `theme.typ` (pure data only)

## Anti-Pattern Guards

| Do NOT | Do Instead |
|---|---|
| Put `set`/`show` rules in `theme.typ` | Keep it pure data; rules go in `typography.typ` and `page.typ` |
| Use hardcoded colors anywhere except `theme.typ` | Reference `palette.xxx` everywhere |
| Create circular imports between style files | Follow the DAG: theme → typography/page → components → chapters |

## Next Phase

[Phase 1: Typography](showcase-v2-phase1.md)
