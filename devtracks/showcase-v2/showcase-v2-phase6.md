# Showcase-v2: Phase 6 — Chapters & Content Assembly

## Objective

Write all 8 chapter files with real German medical/didactic content, exercising every component and layout pattern. Remove all test content from `main.typ` and replace with the final chapter includes. The document should reach 30–40 pages.

## Dependencies

- Phases 0–5 complete (all tokens, styles, components, layouts, and spreads are built and tested)

## Content Strategy

Each chapter follows a **problem → technique → result** narrative structure. Chapters are not feature lists — they tell a story about medical didactics while demonstrating Typst capabilities. The content should feel like a real book, not a component catalog.

### Pacing

Deliberate visual rhythm across chapters:

| Chapter | Feel | Density | Key Visual Element |
|---|---|---|---|
| 00 Cover | Striking | — | Full-bleed gradient cover |
| 01 Einleitung | Welcoming, airy | Low | Cards, badges, light callouts |
| 02 Typographie | Elegant, flowing | Medium | Pull-quotes, blockquotes, type samples |
| 03 Struktur | Organized, dense | High | Tables, lists, cross-references |
| 04 Komponenten | Showcase, varied | Medium | Every block/inline component |
| 05 Layouts | Architectural, dramatic | Medium | Sidebar, magazine, scientific layouts |
| 06 Fortgeschritten | Technical, impressive | Medium-High | Adaptive, dynamic grids, stats |
| 07 Anhang | Reference, clean | High | Tables, bibliography, compact lists |

## Tasks

### 6.1 Chapter 00: Cover (`chapters/00-cover.typ`)

A single file containing only the cover call:

```typst
#import "../components/spreads.typ": book-cover

#book-cover(
  title: [Medizinische\Didaktik],
  subtitle: [Moderne Lehrmethoden im klinischen Alltag],
  author: [Prof. Dr. med. A. Beispiel],
  edition: [2. Auflage — 2026],
)
```

> **Note**: The cover file must be included BEFORE `setup-pages()` is called in `main.typ`, or use the post-cover restoration pattern from Phase 5.

### 6.2 Chapter 01: Einleitung (`chapters/01-intro.typ`)

**Content**: What this book is about, who it's for, how to read it, what you'll learn.

**Components exercised**: `chapter-opener`, `callout` (info), `card`, `badge`, `icon-text`, `section-break`

**Outline**:
- Chapter opener with lead paragraph
- Welcome section explaining the book's purpose
- "Für wen ist dieses Buch?" — target audience with badges
- "Wie Sie dieses Buch nutzen" — reading guide with callout
- Overview card showing chapter structure
- Section break

**Target length**: 2–3 pages

### 6.3 Chapter 02: Typographie (`chapters/02-typography.typ`)

**Content**: Why typography matters in medical education, type hierarchy, readability, font choice.

**Components exercised**: `chapter-opener`, `pull-quote`, `blockquote`, `highlight-text`, `comparison-layout`, `key-concept`

**Outline**:
- Chapter opener: "Die unsichtbare Kunst der Lesbarkeit"
- Opening pull-quote about typography in medical contexts
- Section on readability (Lesbarkeit): body text, line length, leading
- Comparison layout: good vs. bad typography examples
- Section on hierarchy: headings, emphasis, visual weight
- Key concept: "Typographische Hierarchie"
- Blockquote from a medical educator
- Section on font choice for clinical materials

**Target length**: 4–5 pages

### 6.4 Chapter 03: Struktur (`chapters/03-structure.typ`)

**Content**: Document structure, headings, lists, tables, cross-references, footnotes.

**Components exercised**: `chapter-opener`, `styled-table`, `comparison-table`, `callout` (tip, warning), `key-concept`, `code-block`, `side-note`

**Outline**:
- Chapter opener: "Ordnung schafft Verständnis"
- Section on heading hierarchy with examples
- Section on lists and enumerations
- Styled table: patient data example (vitals, medications)
- Comparison table: traditional vs. modern teaching methods
- Section on cross-references and footnotes
- Callout (tip): best practices for structuring learning materials
- Callout (warning): common structural mistakes
- Key concept: "Cognitive Load Theory"

**Target length**: 4–5 pages

### 6.5 Chapter 04: Komponenten (`chapters/04-components.typ`)

**Content**: Showcase of the complete component library with real medical content.

**Components exercised**: ALL block components, ALL inline components, `gallery-grid`, `feature-grid`

**Outline**:
- Chapter opener: "Bausteine für Lehrmaterialien"
- **Block Components Showcase**:
  - Callout in all 4 tones (info: drug interaction, success: correct diagnosis, warning: dosage limit, danger: contraindication)
  - Card: clinical case summary
  - Blockquote: Hippocratic oath excerpt
  - Pull-quote: striking medical insight
  - Side-note: supplementary explanation
  - Code-block: a medical formula or classification system (ICD codes)
  - Key concept: "Evidenzbasierte Medizin"
- **Inline Components Showcase**:
  - Badges: Fachgebiet tags (Kardiologie, Neurologie, etc.)
  - Tags: difficulty levels
  - Highlight: key terms in running text
  - Kbd: software shortcuts for medical systems
  - Icon-text: checkmarks and warnings inline
- **Grid Showcases**:
  - Gallery grid: 6 medical specialties with descriptions
  - Feature grid: 3 benefits of modern didactic methods

**Target length**: 5–6 pages

### 6.6 Chapter 05: Layouts (`chapters/05-layout.typ`)

**Content**: Page layout patterns for medical publications, demonstrating each layout system.

**Components exercised**: `sidebar-layout`, `magazine-layout`, `scientific-paper`, `comparison-layout`, `breakout`, `stats-grid`

**Outline**:
- Chapter opener: "Die Architektur der Seite"
- **Sidebar Layout**: Navigation sidebar with topic list + main content about page design
- **Magazine Layout**: Hero block about visual communication + two-column body text
- **Scientific Paper**: Mock abstract and methods for a medical education study
  - ⚠️ Use `==` and `===` headings inside the two-column body (not `=`)
- **Comparison Layout**: Side-by-side of two teaching approaches
- **Stats Grid**: Medical education statistics (number of students, success rates, etc.)
- Section on when to use which layout pattern
- Callout: "Wann welches Layout?"

**Target length**: 5–7 pages

### 6.7 Chapter 06: Fortgeschritten (`chapters/06-advanced.typ`)

**Content**: Advanced Typst techniques — adaptive layouts, dynamic content, computed grids.

**Components exercised**: `adaptive-layout`, `gallery-grid`, `stats-grid`, `comparison-grid`, `feature-grid`

**Outline**:
- Chapter opener: "Dynamische Dokumente"
- Section on adaptive layouts: how content adapts to available space
  - Adaptive layout demo with sidebar that collapses on narrow widths
- Section on dynamic grids: computed columns and conditional rendering
  - Gallery grid with varying column counts
  - Feature grid with medical competencies
- Section on data-driven content: medical statistics visualization
  - Stats grid with clinical outcomes
  - Comparison grid: before/after intervention metrics
- Key concept: "Responsive Document Design"
- Callout: benefits of dynamic layouts in educational materials

**Target length**: 4–5 pages

### 6.8 Chapter 07: Anhang / Back Matter (`chapters/07-backmatter.typ`)

**Content**: Glossary, bibliography, component index.

**Components exercised**: `styled-table`, section headings

**Outline**:
- Chapter opener: "Anhang"
- **Glossar**: Key medical and typographic terms in a styled table
- **Komponentenverzeichnis**: Summary table of all components with name, description, page reference
- **Literaturverzeichnis**: Bibliography (from `data/references.bib`)
- **Stichwortverzeichnis**: Simple index of key topics

**Target length**: 3–4 pages

### 6.9 Main Assembly (`main.typ`)

Replace all test content with the final document assembly:

```typst
// main.typ — Typst Showcase v2

#import "styles/theme.typ": *
#import "styles/typography.typ": setup-typography
#import "styles/page.typ": setup-pages

// === Cover (before page setup) ===
#include "chapters/00-cover.typ"

// === Restore page setup after cover ===
#pagebreak()
#{
  setup-typography()
  setup-pages()
}

// === Front Matter ===
// (optional: table of contents, preface)
#outline(title: [Inhaltsverzeichnis], depth: 3)
#pagebreak()

// === Main Matter ===
#include "chapters/01-intro.typ"
#include "chapters/02-typography.typ"
#include "chapters/03-structure.typ"
#include "chapters/04-components.typ"
#include "chapters/05-layout.typ"
#include "chapters/06-advanced.typ"

// === Back Matter ===
#include "chapters/07-backmatter.typ"
```

> **Pattern**: The `#show: doc => { ... doc }` pattern vs sequential `#set`/`#show` — either works. The important thing is that `setup-typography()` and `setup-pages()` are called after the cover page, so the cover's zero-margin settings don't persist.

### 6.10 Chapter File Template

Every chapter file follows this pattern:

```typst
// chapters/XX-name.typ — Chapter Title

#import "../styles/theme.typ": palette, type-scale, space, fonts, gradients
#import "../components/spreads.typ": chapter-opener, section-break
#import "../components/blocks.typ": callout, card, blockquote, pull-quote, side-note, key-concept
#import "../components/inline.typ": badge, tag, highlight-text, kbd, icon-text
#import "../components/layouts.typ": sidebar-layout, magazine-layout
#import "../components/grids.typ": gallery-grid, feature-grid, stats-grid
#import "../components/tables.typ": styled-table

// ⚠️ DO NOT add `= Title` here — chapter-opener creates the heading
#chapter-opener(
  title: [Kapiteltitel],
  lead: [Einleitender Absatz...],
)

// Chapter body starts here
== Erster Abschnitt

// content...
```

> **CRITICAL GUARD**: The chapter file must NOT contain `= Title` at the top. The `chapter-opener()` component creates the level-1 heading internally. Adding another `=` heading creates duplicates and breaks numbering.

### 6.11 Data Files

#### `data/glossary.yml`

```yaml
- term: Evidenzbasierte Medizin
  definition: Medizinische Versorgung auf Basis der besten verfügbaren wissenschaftlichen Erkenntnisse.

- term: Cognitive Load Theory
  definition: Theorie über die begrenzte Kapazität des Arbeitsgedächtnisses beim Lernen.

- term: Didaktische Reduktion
  definition: Vereinfachung komplexer Inhalte für den Lernprozess ohne Verfälschung.
# ... more entries
```

#### `data/references.bib`

```bibtex
@book{mayer2009,
  author = {Richard E. Mayer},
  title = {Multimedia Learning},
  publisher = {Cambridge University Press},
  year = {2009},
  edition = {2nd},
}

@article{sweller1988,
  author = {John Sweller},
  title = {Cognitive Load During Problem Solving},
  journal = {Cognitive Science},
  year = {1988},
  volume = {12},
  pages = {257--285},
}
# ... more entries
```

### 6.12 Compile Gate

```sh
cd typst_showcase_v2
typst compile main.typ
typst compile --format png --ppi 200 main.typ "png_output/page-{0p}-of-{t}.png"
```

Verify:
- [ ] Document compiles with zero errors
- [ ] Total page count is 30–40 pages
- [ ] Cover renders correctly (full-bleed)
- [ ] Normal pages have correct margins after cover
- [ ] All chapter openers render with decorative numbers and gradient bars
- [ ] No duplicate headings anywhere
- [ ] Table of contents lists all chapters and sections
- [ ] Running headers show correct chapter titles throughout
- [ ] Page numbers are consecutive and correctly alternated
- [ ] All components render correctly in their chapter contexts
- [ ] Layout patterns (sidebar, magazine, scientific) are visually distinct
- [ ] Visual rhythm alternates between dense and airy spreads
- [ ] No content overflows margins or columns

## Deliverables

- [ ] 8 chapter files in `chapters/` directory
- [ ] Updated `main.typ` with final assembly (no test content)
- [ ] `data/glossary.yml` and `data/references.bib` populated
- [ ] 30–40 page document compiling successfully
- [ ] All 15 target layout patterns exercised at least once

## Acceptance Criteria

- Every component from Phases 3–5 is used at least once in real content
- Content is coherent German medical/didactic narrative (not lorem ipsum)
- Visual pacing varies across chapters (dense → airy → dramatic → reference)
- No `= Title` headings after `chapter-opener()` calls
- All imports follow the DAG (no circular imports)
- Table of contents generates correctly
- Bibliography renders if cited

## Anti-Pattern Guards

| Do NOT | Do Instead |
|---|---|
| Add `= Title` after `chapter-opener()` | Opener IS the heading |
| Use `lorem()` for final content | Write real German medical/didactic text |
| Import components you don't use | Import only what each chapter needs |
| Use `=` headings inside `columns()` or `scientific-paper()` | Use `==` or `===` (level 2+) inside multi-column contexts |
| Forget to include a chapter in `main.typ` | Update main.typ assembly when adding chapters |
| Use hardcoded numbers for chapter references | Use `@label` cross-references |

## Target Pattern Coverage Checklist

Verify all 15 patterns from the spec are present:

- [ ] 1. Full-bleed book cover (Ch. 00)
- [ ] 2. Chapter opener with number + decorative bar (All chapters)
- [ ] 3. Classic sidebar layout (Ch. 05)
- [ ] 4. Magazine layout with hero + columns (Ch. 05)
- [ ] 5. Scientific two-column paper (Ch. 05)
- [ ] 6. Pull quote (Ch. 02, 04)
- [ ] 7. Dynamic gallery grid (Ch. 04, 06)
- [ ] 8. Adaptive layout (Ch. 06)
- [ ] 9. Inside/outside binding margins (Global)
- [ ] 10. Context-aware running headers (Global)
- [ ] 11. Zebra-striped semantic table (Ch. 03)
- [ ] 12. Full-width breakout in column context (Ch. 05)
- [ ] 13. Decorative overlay elements (Ch. 00)
- [ ] 14. Comparison/feature grid (Ch. 04)
- [ ] 15. Stats/KPI display (Ch. 06)

## Next Phase

[Phase 7: Polish, QA & Release](showcase-v2-phase7.md)
