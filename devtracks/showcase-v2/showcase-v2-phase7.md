# Showcase-v2: Phase 7 — Polish, QA & Release

## Objective

Final visual QA pass, pattern coverage audit, performance validation, and release packaging. The document must be publication-grade with zero compile issues, all 15 patterns demonstrated, and consistent visual quality throughout.

## Dependencies

- Phases 0–6 complete (entire document assembled and compiling)

## Tasks

### 7.1 Full Build Verification

```sh
cd typst_showcase_v2
typst compile main.typ 2>&1
```

Requirements:
- Zero errors
- Zero warnings (or explicitly waived with documented reason)
- Successful PDF output

### 7.2 PNG Export and Visual Review

```sh
typst compile --format png --ppi 200 main.typ "png_output/page-{0p}-of-{t}.png"
```

Review EVERY page for:

#### Layout Quality
- [ ] No content overflows page margins
- [ ] No content overlaps with headers or footers
- [ ] Grid columns align cleanly (no orphaned cells)
- [ ] Multi-column layouts don't leak to subsequent sections
- [ ] Inside/outside margins are visibly asymmetric (binding gutter)

#### Typography Quality
- [ ] Body text is readable at 100% zoom
- [ ] Heading hierarchy is clear (size, weight, color decrease with level)
- [ ] Auto-numbering is consecutive and correct
- [ ] No orphaned headings at page bottoms (heading with no following text)
- [ ] Footnotes appear on same page as reference
- [ ] Lists are properly indented and aligned

#### Component Quality
- [ ] Callouts have correct tone colors and accent bars
- [ ] Cards have visible borders/elevation
- [ ] Pull-quotes are non-breakable (don't split across pages)
- [ ] Badges and tags align with text baseline
- [ ] Tables have zebra striping and header styling
- [ ] Inline code has subtle background

#### Spread Quality
- [ ] Cover is full-bleed (no white margins)
- [ ] Normal pages resume after cover (margins restored)
- [ ] Chapter openers show decorative number + gradient bar
- [ ] No duplicate headings (chapter-opener IS the heading)
- [ ] Part pages center content vertically
- [ ] Section breaks are centered and balanced

#### Running Elements
- [ ] Headers show correct chapter title
- [ ] Headers alternate position on odd/even pages
- [ ] Headers are suppressed on chapter opener pages
- [ ] Page numbers are present and correctly positioned
- [ ] Page numbers alternate position on odd/even pages

### 7.3 Pattern Coverage Audit

Verify all 15 target patterns from the spec are present and functional:

| # | Pattern | Present? | Page(s) | Quality |
|---|---|---|---|---|
| 1 | Full-bleed book cover | | | |
| 2 | Chapter opener with number + decorative bar | | | |
| 3 | Classic sidebar layout | | | |
| 4 | Magazine layout with hero + columns | | | |
| 5 | Scientific two-column paper | | | |
| 6 | Pull quote (editorial style) | | | |
| 7 | Dynamic gallery grid | | | |
| 8 | Adaptive layout (width-responsive) | | | |
| 9 | Inside/outside binding margins | | | |
| 10 | Context-aware running headers | | | |
| 11 | Zebra-striped semantic table | | | |
| 12 | Full-width breakout in column context | | | |
| 13 | Decorative overlay elements | | | |
| 14 | Comparison/feature grid | | | |
| 15 | Stats/KPI display | | | |

All 15 must be marked present and at good quality.

### 7.4 Component Usage Audit

Verify every component is used at least once:

**Spreads:**
- [ ] `book-cover()` — Chapter 00
- [ ] `chapter-opener()` — All chapters
- [ ] `section-break()` — At least 2 chapters
- [ ] `part-page()` — At least 1 part divider

**Blocks:**
- [ ] `callout()` — All 4 tones used
- [ ] `card()` — At least 2 instances
- [ ] `blockquote()` — At least 1
- [ ] `pull-quote()` — At least 2
- [ ] `side-note()` — At least 1
- [ ] `code-block()` — At least 1
- [ ] `key-concept()` — At least 2

**Inline:**
- [ ] `badge()` — At least 3
- [ ] `tag()` — At least 2
- [ ] `highlight-text()` — At least 3
- [ ] `kbd()` — At least 2
- [ ] `icon-text()` — At least 2

**Layouts:**
- [ ] `sidebar-layout()` — At least 1
- [ ] `magazine-layout()` — At least 1
- [ ] `scientific-paper()` — At least 1
- [ ] `comparison-layout()` — At least 1
- [ ] `adaptive-layout()` — At least 1

**Grids:**
- [ ] `gallery-grid()` — At least 1
- [ ] `feature-grid()` — At least 1
- [ ] `stats-grid()` — At least 1
- [ ] `comparison-grid()` — At least 1

**Tables:**
- [ ] `styled-table()` — At least 2

### 7.5 Performance Check

Record compile time:
```sh
Measure-Command { typst compile main.typ } | Select-Object TotalSeconds
```

Requirements:
- Build time under 5 seconds
- No deep grid/column nesting (max 2 levels)
- No unnecessary `context` blocks
- Functions used instead of repeated inline markup

If build time exceeds 5 seconds, audit for:
- Deep layout tree nesting
- Excessive `context` / `query` usage
- Overly complex `show` rules
- Large unoptimized assets

### 7.6 Anti-Pattern Final Audit

Grep the source for known anti-patterns:

```sh
# Check for set page(columns in components (MUST NOT exist except in page.typ)
Select-String -Path "components/*.typ" -Pattern "set page\(" -SimpleMatch

# Check for hardcoded colors
Select-String -Path "chapters/*.typ" -Pattern 'rgb\(' -SimpleMatch

# Check for hardcoded font sizes
Select-String -Path "chapters/*.typ" -Pattern '\d+pt' -SimpleMatch

# Check for context page.width
Select-String -Path "components/*.typ","chapters/*.typ" -Pattern "page\.width" -SimpleMatch

# Check for duplicate headings (= after chapter-opener)
# Manual review of each chapter file opening
```

None of these should return results (except legitimate uses like font fallback definitions).

### 7.7 Content Quality Check

- [ ] All German text is grammatically correct
- [ ] Medical terminology is used consistently
- [ ] No lorem ipsum remaining in final content
- [ ] Attribution quotes are properly sourced
- [ ] Table of contents entries match actual content
- [ ] Cross-references resolve correctly
- [ ] Bibliography entries render properly

### 7.8 Visual Rhythm Verification

Review the full document as a spread sequence:
- [ ] Dense pages alternate with airy pages
- [ ] No two consecutive pages feel identical
- [ ] Cover → intro → content → reference flows naturally
- [ ] Component-heavy pages are balanced with breathing room
- [ ] The document "feels" like a professional book

### 7.9 Release Packaging

#### Final PDF
```sh
typst compile main.typ "Typst-Showcase-v2.pdf"
```

#### Sample PNG Set
```sh
# Full set
typst compile --format png --ppi 200 main.typ "png_output/page-{0p}-of-{t}.png"

# Key pages for README (cover, opener, layout, component showcase)
```

#### README Update

Update `README.md` with:
- Final page count
- Component catalog summary
- Build instructions
- Sample screenshots (reference to png_output)
- Pattern coverage summary

#### Changelog

Add a brief summary of what showcase-v2 achieved:
- Total pages
- Components count
- Pattern count
- Key metrics (compile time, file count)

### 7.10 Final Acceptance Gate

All boxes below must be checked:

- [ ] `typst compile main.typ` — zero errors, zero unwaived warnings
- [ ] 30–40 pages of publication-grade output
- [ ] All 15 target layout patterns demonstrated
- [ ] All components exercised at least once
- [ ] WCAG AA contrast for body text
- [ ] Build time under 5 seconds
- [ ] Zero external dependencies
- [ ] No anti-patterns in codebase
- [ ] Consistent visual rhythm across spreads
- [ ] German content is coherent and grammatically correct
- [ ] README with build instructions and component catalog

## Deliverables

- [ ] Completed QA checklist (this document, filled in)
- [ ] Final PDF: `Typst-Showcase-v2.pdf`
- [ ] PNG sample set in `png_output/`
- [ ] Updated `README.md`
- [ ] Release-ready document

## Success Criteria

The showcase demonstrates that Typst, using only built-in primitives and documented patterns, can produce output rivaling professional InDesign/LaTeX publications. Every page should make the reader think: *"This was made with Typst?"*

## Completion

When all 7.10 gates pass, showcase-v2 is **done**. 🎉
