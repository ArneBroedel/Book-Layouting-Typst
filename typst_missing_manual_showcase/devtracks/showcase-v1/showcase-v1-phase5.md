# Showcase-v1: Phase 5 – Content & Polish

## Objectives

**Complete the transformation** by enhancing chapter narratives, adding visual diagrams, refining final layout details, and achieving publication-ready polish. This phase focuses on content richness and micro-interactions.

## Dependencies

✓ Phases 1–4 complete (typography, color, components, layout)

## Tasks

### 5.1 Chapter Narrative Overhaul

**Goal**: Rewrite chapter intros to set up visual examples, not just list features.

**Chapter 00 (Intro)**:
- Current: Lists design principles
- New: **Story-driven** intro that promises readers will design like a pro after reading
- Add: "You'll learn to…" callout with visual icon list

**Chapter 01 (Typography)**:
- Current: Feature list
- New: Compare "Before/After" side-by-side (same text, poor vs. refined typography)
- Add: Interactive visual showing impact of leading/kerning

**Chapter 02 (Structure)**:
- Current: References and footnotes overview
- New: Real-world case study of how a structured document evolves
- Add: Visual tree showing outline hierarchy

**Chapter 03 (Layout)**:
- Current: Layout patterns described
- New: **Dramatic full-bleed chapter opener** with grid visualization
- Add: Animated layout decision tree (via Typst show rules + color)

**Chapter 04 (Graphics)**:
- Current: Generic diagram code
- New: **Real medical-didactic diagrams** (simplified SVGs: anatomy, algorithms)
- Add: Overlay technique showcase with live examples

**Chapter 05 (Didactics)**:
- Current: Pattern showcase
- New: **Case study of complete didactic chapter** (not just snippets)
- Add: Spaced retrieval quiz with visual answer reveals

**Chapter 06 (Extreme)**:
- Current: Advanced tricks as afterthought
- New: **Positioning as "Pro Techniques"** (not extreme, aspirational)
- Add: Side-by-side comparisons: LaTeX vs. InDesign vs. Typst for each technique

### 5.2 Illustration/Asset Creation

Create 5–8 SVG assets to demonstrate visual power:

**Assets to create/add**:
1. **Typst logo/wordmark** (header decoration)
2. **Workflow diagram** (Sketch → Typst → PDF pipeline)
3. **Medical algorithm** (flowchart: clinical reasoning step-by-step)
4. **Anatomy element** (simplified: spine/vertebra for example)
5. **Comparison chart** (Typst vs. LaTeX vs. InDesign feature matrix)
6. **Type scale visualization** (visual hierarchy of sizes)
7. **Color system diagram** (palette layout + contrast ratios)
8. **Grid overlay** (show how content aligns)

**Tools**:
- Inkscape (free, outputs SVG)
- Figma (free tier, export SVG)
- Hand-drawn → scanned (if artistic)

**Placement**:
- Chapter openers: thematic illustration
- Feature comparisons: beside claim text
- Section breaks: decorative element

### 5.3 Data-Driven Visualizations

Demonstrate Typst's ability to generate charts from logic (no external packages):

**Mini-bar chart** (already in showcase, enhance):
```typst
#let mini-bar(value, max: 10, label: none, color: palette.primary) = [
  #let w = 60pt
  #let filled = w * (value / max)

  #grid(columns: (auto, 1fr), gutter: space.md, align: (auto, center))[
    #text(size: type.tiny, weight: 600, fill: palette.mute)[#label]

    [
      #block(
        width: w,
        height: 6pt,
        fill: color.lighten(80%),
        radius: 3pt,
      )[
        #block(
          width: filled,
          height: 100%,
          fill: color,
          radius: 3pt,
        )[]
      ]
    ]
  ]
]

// Usage: Comparison chart
#block(spacing: space.md)[
  Sensitivity Vergleich:
  #mini-bar(9, label: [Test A], color: palette.good)
  #mini-bar(7, label: [Test B], color: palette.warn)
  #mini-bar(5, label: [Test C], color: palette.bad)
]
```

**Heatmap-style table**:
```typst
#let heatmap-table(column-headers: (), row-headers: (), values: ()) = {
  // Generate color-coded grid based on numeric values
  table(
    columns: (auto, ..range(column-headers.len()).map(_ => 1fr)),
    // ... implementation: cell fill by value ...
  )
}
```

### 5.4 Footnotes, References, Bibliography

Enhance with professional styling:

```typst
#show footnote: it => {
  set text(size: type.tiny, fill: palette.mute)
  set par(leading: 1.3em, first-line-indent: 0em)

  // Wrap footnote in subtle box
  block(
    inset: space.sm,
    fill: palette.mute-light.lighten(40%),
    radius: 3pt,
    stroke: none,
  )[#it]
}

// Citation styling
#show cite: it => {
  set text(size: type.tiny, weight: 500, fill: palette.info)
  it
}
```

**Bibliography** (if using):
```typst
#set bibliography(style: "chicago-author-date")

// Or manual citation block at end of chapters:
#block(
  inset: space.lg,
  fill: palette.info-light,
  radius: 6pt,
  stroke: (paint: palette.info, thickness: 0.8pt),
)[
  #heading(level: 3)[Quellen & Literatur]

  #set text(size: type.small, fill: palette.mute)
  #set par(hanging-indent: 1em, leading: 1.4em)

  - Autor(in), „Titel", *Journal*, 2024.
  - … (links to papers, standards)
]
```

### 5.5 Appendix & Resources Section

Add back matter:

```typst
#pagebreak()
#set page(header: none)

= Anhang: Ressourcen & Referenzen

== Installation & CLI

#block(
  fill: palette.primary-light,
  inset: space.lg,
  radius: 6pt,
)[
  ```bash
  # Macbook
  brew install typst

  # Windows
  winget install Typst.Typst

  # Linux
  https://typst.app/docs/installation/
  ```
]

== Weiterführende Ressourcen

#set list(marker: "→", spacing: space.md)
- Typst Dokumentation: https://typst.app/docs
- Typst Universe (Packages): https://typst.app/universe
- Community Discord: https://typst.app/community
- GitHub Issues & Discussions: https://github.com/typst/typst

== Komponenten-Schnellreferenz

#zebra-table(
  columns: (1fr, 2fr),
  [Komponente], [Beispiel],
  [#text(size: type.small, weight: 600)[`#note[]`]], [`#note[Das ist eine Notiz]`],
  [#text(size: type.small, weight: 600)[`#tip[]`]], [`#tip[Praktischer Tipp]`],
  [#text(size: type.small, weight: 600)[`#warn[]`]], [`#warn[Warnung!]`],
  [#text(size: type.small, weight: 600)[`#redflag[]`]], [`#redflag[Kritisches Signal]`],
  [#text(size: type.small, weight: 600)[`#callout[]`]], [`#callout(title: [Wichtig])[...]`],
  [#text(size: type.small, weight: 600)[`#fig()`]], [`#fig("image.svg", caption: [...])`],
)
```

### 5.6 Visual Polish Details

**Drop-cap first letter** (optional, for chapter intros):
```typst
#let drop-cap(body, letter) = [
  #let first = text(size: type.display-sm, weight: 900, letter)
  #let rest = body

  #box(
    width: auto,
    inset: (right: space.sm),
  )[
    #float(text-size: 2em, [#first])
  ]
  #rest  // LaTeX: wrap flow around drop-cap; Typst: approximation above
]

// Note: True drop-cap text wrapping ≥ Typst v0.13
```

**Ornaments/Flourishes** (Unicode decorative elements):
```typst
#let divider = text(size: type.h2, fill: palette.primary-light)[════•════]

// Usage:
#align(center)[#divider]
```

**Hanging punctuation** (for quotes):
```typst
#let hang-quote(body) = [
  #block(inset: (left: -0.25em))[#body]
]
```

### 5.7 Final Compile & QA

**Checklist**:
- [ ] All chapters compile without warnings
- [ ] PNG pages render at 200 dpi; inspect visually
- [ ] Page count is ~20–24 (expanded from ~14 due to breathing room)
- [ ] Color scheme consistent across all pages
- [ ] No orphans/widows (single line at page top/bottom)
- [ ] Footnotes, citations formatted consistently
- [ ] Images have captions, copyright notices if needed
- [ ] Margin notes don't overflow
- [ ] Chapter numbers are progressive
- [ ] Appendix sections display correctly

**Tools**:
```powershell
# Compile to PDF
typst compile main.typ main.pdf

# Compile to PNG for visual inspection
typst compile --format png --ppi 200 main.typ 'png_output/page-{0p}-of-{t}.png'

# Compile single page for detail check
typst compile --format png --ppi 200 --pages 3 main.typ 'page-3.png'
```

### 5.8 Final PDF Metadata

Add document metadata to main.typ:
```typst
#set document(
  title: "Typst: The Missing Manual – Showcase",
  author: "Arne Broedel",
  date: datetime(2026, 2, 26),
  keywords: ("Typst", "Typography", "Book Design", "Didactics"),
)
```

### 5.9 Git Commits & Versioning

After Phase 5 completion, commit with clear message:
```bash
git add .
git commit -m "feat(showcase-v1): Complete visual overhaul

- Refined typography: improved type scale, leading, spacing
- Expanded color palette: 15+ semantic colors, WCAG AA
- 10+ publication-grade components: admonitions, cards, quotes
- Advanced layouts: chapter spreads, full-bleed sections, margin notes
- Enhanced chapters: narrative rewrite, visual storytelling
- Appendix & resources section added
- Final polish: drop-caps, ornaments, metadata, appendix

Showcase now rivals InDesign quality, proves Typst's capabilities.
Page count: 24 (was 14); no external packages required.
"
```

### 5.10 Public Launch Prep

**README update** (typst_missing_manual_showcase/README.md):

Add section:
```markdown
## What Makes v1 Special?

This is not just a teaching document—it's a **proof of concept** that Typst can produce
**publication-ready layouts** without external tools, no InDesign, no manual layout tricks.

### Why This Matters

- **Former LaTeX users**: See what's possible with a modern language
- **InDesign users**: Discover a 10x faster workflow that outputs Git-friendly PDF
- **Typst newcomers**: Learn that beautiful books start with smart typography, not plug-ins

### Key Techniques Demonstrated

- Muti-level typography (48+ type combinations)
- Semantic color system (15+ colors, all WCAG AA)
- Reusable components (10+)
- Advanced layouts (spreads, full-bleed, margin notes)
- Data-driven visualization (charts, heatmaps, progress)
- Professional meta (running headers, cross-refs, footnotes, appendix)

### Compile It Yourself

```bash
typst compile main.typ main.pdf
```

No external packages. No build tools. Just Typst.
```

## Deliverables

**Files created/modified**:
- All chapters: narrative rewrite, example enhancement
- `assets/`: 5–8 new SVGs (diagrams, workflows, illustrations)
- `styles/`: footnote/citation styling
- `components/`: data visualization helpers
- Appendix section in `main.typ` (resources, quick reference)
- Document metadata in `main.typ`
- `README.md`: v1 highlights & launch messaging

**Output**: Showcase-v1 is complete, polished, publication-ready book that proves Typst's capabilities.

## Acceptance Criteria

✓ All chapters rewritten for narrative flow, not just feature lists
✓ 5–8 professional SVG assets integrated
✓ Data visualizations working (bars, heatmaps, progress)
✓ Footnotes, references, bibliography styled
✓ Appendix section complete with resources
✓ Document metadata (title, author, date) set
✓ No compile warnings/errors
✓ PDF visual quality: stunning, publishable
✓ Page count: 20–24 pages (breathing room)
✓ Git clean; ready for public display

## Time Estimate

**3–4 days** (content rewrite + asset creation + final polish + validation)

## Success Metrics (Post-Launch)

- Viewers say: "I didn't know Typst could do this!"
- GitHub stars increase on Book-Layouting-Typst repo
- LaTeX/InDesign communities notice and are impressed
- Typst adoption increases via word-of-mouth

---

## Showcase-v1 Complete ✓

At this point:
- Document is visually stunning
- All pages compile cleanly
- Components are reusable, documented
- Content is engaging, educational
- Zero external dependencies
- Git-friendly, version control-ready
- Ready to share, present, publish

**Next opportunity**: Phase 6 (optional future) could explore advanced features like:
- External package integration (CeTZ for diagrams)
- Web export (HTML alongside PDF)
- Interactive examples (via Typst packages)
- Multi-language variants
