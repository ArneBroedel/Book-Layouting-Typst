# Showcase-v1: Visual Excellence & Competitive Proof-of-Concept

## Vision

Transform the Typst Missing Manual showcase from a **functional reference** into a **visually stunning, publishable book** that **proves Typst superiority** over LaTeX and Adobe InDesign for professional document design. The goal is not just code correctness but **visual confidence**—every page should scream "this is production-grade."

## Why Current State Falls Short

- **Typography**: Flat, academic—no breathing room or visual hierarchy
- **Color**: Monochrome/minimal palette; no strategic accent usage
- **Layout**: Grid-locked; no visual variation, rhythm, or intentional whitespace
- **Imagery**: Placeholder SVGs; no data visualization or conceptual graphics
- **Components**: Functional but bland—boxes lack sophistication
- **Page Design**: No title spreads, no chapter breaks, no visual landmarks
- **Micro-Polish**: No drop caps, ornaments, captions with style, or elegant details

## Success Criteria

A showcase that when shown to:
- **LaTeX users** → "I didn't know you could make PDFs look this good"
- **InDesign users** → "This wasn't made in InDesign?"
- **Typst competitors** → "We need to catch up"

## Core Principles for Redesign

1. **Modularity**: All visual systems must be reusable, not bespoke
2. **Semantic**: Layout must support meaning (didactics, danger, insight)
3. **Constraint-based**: Use Typst's strengths (functions, show rules, tokens) not workarounds
4. **Performant**: No external packages initially; prove Typst's core can compete
5. **Accessible**: Sufficient contrast, readable on screen and print

## Scope & Deliverables

### Typography Layer
- Refined type scale (xs → xxl, micro → body → lead → h1–h3)
- Proper cap-height alignment, baseline grids, optical sizing
- Kerning pairs, ligatures, hanging quotes (via negative inset)
- Font weights: 400 (body), 600 (emphasis), 700–800 (display)

### Color & Visual Hierarchy
- Expanded palette: primaries (ink, paper), didactic (info/good/warn/bad), accents (2–3 tints each)
- Strategic color use: decision points, emphasis, zones of content
- Sufficient WCAG AA contrast everywhere

### Layout & Spacing
- Full-bleed chapter openers with asymmetric composition
- Margin notes and sidebar content with careful optical alignment
- Grid-based but broken strategically (not boring uniformity)
- Page numbering, running headers tied to chapter context

### Components (Advanced)
- **Admonitions**: Styled borders, icons (via Unicode), tinted backgrounds
- **Callouts**: Emphasis boxes with quote-style left border
- **Cards**: Multi-column layouts with shadow/depth illusion (via inset blend)
- **Figures**: Captions with fine typography, optional callouts/annotations
- **Tables**: Alternating rows, frozen headers, aligned decimal points
- **Lists**: Custom markers (bullets, numbers, symbols), proper indentation

### Showcase Features to Demonstrate
- **Spread-style layouts** (why this isn't LaTeX/InDesign limitation)
- **Dynamic page numbers & running headers** (context-aware)
- **Algorithmic design** (computed bars, heat maps, mini-visualizations)
- **Reference styling** (citations, cross-refs, footnotes with polish)
- **Scripting for layout** (custom spacing, column breaking decisions)

## Anti-Goals

- **NOT about adding external packages** (cetz, etc.)—prove base Typst first
- **NOT about photorealistic design**—elegant minimalism, not skeuomorphism
- **NOT about sacrificing clarity**—educational goal remains primary
- **NOT about dark mode hacks**—light background, strong contrast

## Key Metrics (Post-Redesign)

- Page count: ~20–24 (vs current ~14) with more breathing room
- Warning/error count: **zero**
- Load time: <2s compile (no regression)
- File size: <500 KB PDF
- Accessibility: WCAG AA on all text

## Competitive Narrative

This showcase **will prove**:
1. Typst can produce **publication-ready layouts** without InDesign
2. Typst's **function-based design** is superior to LaTeX macros for maintainability
3. **No external dependencies** needed for professional results
4. **Turnaround time** (sketch → print-ready) is dramatically faster
5. **Collaboration** (Git-friendly .typ files) beats InDesign's binary format
