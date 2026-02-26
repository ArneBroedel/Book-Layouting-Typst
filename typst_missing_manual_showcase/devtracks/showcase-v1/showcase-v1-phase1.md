# Showcase-v1: Phase 1 – Typography & Spacing

## Objectives

Establish a **refined, professional type system** that gives the document breathing room and visual hierarchy from the start. This phase is foundational; all subsequent styling will build on these tokens.

## Tasks

### 1.1 Type Scale Refinement (styles/theme.typ)

**Current state**: Fixed sizes (body: 10.6pt, h1: 30pt, etc.)
**Goal**: Add micro-grades and optical scaling.

**Changes**:
```
#let type = (
  micro: 7.2pt,      // footnotes, fine print
  tiny: 8pt,         // marginal notes
  small: 8.8pt,      // captions, labels (was 9pt)
  body: 10.8pt,      // main text (was 10.6pt)
  lead: 12.4pt,      // intro paragraphs (was 12.2pt)

  h3: 13.5pt,        // section heads (was 13pt)
  h2: 18.5pt,        // chapter minor heads (was 18pt)
  h1: 32pt,          // chapter titles (was 30pt)

  display: 48pt,     // book title (new)
  display-sm: 36pt,  // part titles (new)
)
```

**Why**:
- Fractional pt sizes provide subtle optical refinement
- New `display` sizes for full-page spreads (ch openers)
- `micro`/`tiny` grades for elegant annotation

### 1.2 Spacing & Rhythm (styles/theme.typ)

**Current state**:
```
#let space = (xs: 2pt, sm: 4pt, md: 8pt, lg: 14pt, xl: 22pt, xxl: 36pt)
```

**Goal**: Add mid-range steps, optical adjustment for text.

**Changes**:
```
#let space = (
  xs: 2pt,       // micro-adjustments
  sm: 4pt,
  md: 8pt,
  lg: 12pt,      // (was 14pt, refined)
  xl: 18pt,      // (was 22pt, refined)
  xxl: 28pt,     // (was 36pt, refined)
  xxxl: 42pt,    // new: major section breaks

  // Typography-specific
  line-tight: 1.3em,
  line-normal: 1.45em,
  line-loose: 1.6em,
)
```

**Why**: Tighter, more intentional. Optical rather than arbitrary intervals.

### 1.3 Leading Refinement (styles/typography.typ)

**Current state**: Global `leading: 1.35em`
**Goal**: Context-aware, readable at multiple sizes.

**Changes**:
- Body (10.8pt) → `leading: 1.5em` (roomier, more readable)
- Lead (12.4pt) → `leading: 1.52em` (intro paragraphs breathe)
- Small (8.8pt) → `leading: 1.3em` (captions stay compact)
- H1/H2 → `leading: 1.2em` (display tight)

### 1.4 Paragraph & List Refinement

**Changes to `set par()`**:
- `first-line-indent: 0em` (no indent; spacing separates paragraphs instead)
- `hanging-indent: 0em` in body
- `spacing: space.md` between paragraphs (add explicit spacing)

**Changes to `set list()`**:
- `indent: 0.8em` (tighter)
- `body-indent: 0.2em` (keep nested readable)
- `spacing: space.sm` (lists feel unified with text)

### 1.5 Font Weights & Variants

Update throughout typography setup:
- Body text: `weight: 400` (default)
- Emphasis/strong: `weight: 600` (was inconsistent)
- Headings: `weight: 700–800` (tiered by level)
- Labels/tags: `weight: 700` (consistent visual weight)

Add comment in typography.typ:
```typst
// Font selection: choose a face with 400/600/700/800
// Examples: Libertinus (4 weights), IBM Plex (8), Inter (9)
// Current: system defaults (works cross-platform but limited)
```

### 1.6 Baseline Grid & Optical Alignment

Add helper utility to theme.typ:
```typst
#let baseline-unit = 4pt  // 1/3 of standard space.md
```

Comment guide:
```typst
// Typography is measured in multiples of baseline-unit (4pt)
// Example: body leading 1.5em ≈ 16.2pt ≈ 4 × baseline-units
// Visual: all text baselines align to invisible 4pt grid → cohesive look
```

### 1.7 Quotation & Punctuation Refinement

Update `lang: "de"` handling in typography:
```typst
#set text(lang: "de", hyphenate: true)
// Typst auto-handles German quotes: „text" → proper guillemets
// Dashes: -- → proper en-dash, --- → em-dash
```

Add **hanging quote helper** (for chapter openers & quotes):
```typst
#let hang-quote(body) = [
  #block(inset: (left: -0.25em))[
    #text(size: type.lead, style: "italic")[#body]
  ]
]
```

### 1.8 Validation Checklist

- [ ] Type scale visually proportional when rendered
- [ ] No leading < 1.3em (readability)
- [ ] No font size < 7.2pt body text (accessibility)
- [ ] Spacing intervals feel rhythmic, not random
- [ ] Compiles cleanly; no warnings
- [ ] PNG render shows clear hierarchy on page 1

## Deliverables

**Files modified**:
- `styles/theme.typ` (type, space tokens)
- `styles/typography.typ` (leading, paragraph, list rules)

**Output**: Refined tokens, cleaner spacing, readable on all sizes. Document may look slightly different visually (more breathing room) but no layout breakage.

## Acceptance Criteria

✓ Type scale balanced (micro to display)
✓ Leading supports readability at body size
✓ Spacing intervals feel intentional, not random
✓ No compile errors
✓ PDF & PNG renders show improvement in hierarchy

## Time Estimate

**2–3 days** (implementation + validation)

## Next Phase

→ [Phase 2: Color & Contrast](showcase-v1-phase2.md)
