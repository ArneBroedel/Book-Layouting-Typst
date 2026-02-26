# Typst Extensibility: Specification

## Product Goal

Extend the existing `typst_showcase_v2` document with 3 new chapters (08–10) that demonstrate Typst's extensibility ecosystem: community packages, data-driven document generation, and professional tooling/workflows. The new chapters integrate seamlessly with the existing design system and add a **Part III: Erweiterbarkeit** section to the book.

## Motivation

The `typst_showcase_v2` document comprehensively covers Typst's built-in capabilities — typography, layout, components, advanced techniques. However, it deliberately excluded external packages and tooling. A complete reference must also demonstrate how the ecosystem extends Typst's power through:

- Community packages from the Typst Universe
- Data-driven document generation patterns
- Professional development tooling and CI/CD workflows
- Accessibility standards compliance

This devtrack fills that gap by adding publication-grade chapters that **use** these tools rather than merely describing them.

## Scope

### In Scope

- 3 new chapters added to `typst_showcase_v2/chapters/`
- New Part III divider in `main.typ`
- Installation and configuration of required Typst packages
- Live, working demonstrations of key packages (CeTZ, fletcher, codly, showybox, etc.)
- Data-driven examples using JSON/YAML/CSV parsing
- Developer tooling overview (Tinymist, typstyle, CI/CD)
- Accessibility section with PDF/UA considerations
- German language content, consistent with existing medical/didactic theme
- All new content uses the existing theme token system and component library
- Updated build scripts if necessary

### Out of Scope

- Rewriting or modifying existing chapters 00–07
- Changing the existing design token system or component library
- Creating a Quarto integration demo (informational only)
- Building actual WASM plugins (conceptual coverage only)
- Modifying the build pipeline to use CI/CD (documentation only)

## Target Folder

```
C:\Users\arneb\dev\Book-Layouting-Typst\typst_showcase_v2\
```

All new files are added to the existing project structure. No restructuring of existing files.

## New File Structure

```
typst_showcase_v2/
├── main.typ                         # Updated: add Part III + 3 new includes
├── chapters/
│   ├── (existing 00–07)
│   ├── 08-packages.typ              # NEW: Packages & Ecosystem
│   ├── 09-data-driven.typ           # NEW: Data-Driven Documents
│   └── 10-tooling.typ               # NEW: Tools & Workflows
└── data/
    ├── (existing files)
    ├── sample-patients.json         # NEW: Sample data for Ch.09
    └── sample-study.csv             # NEW: Sample CSV data for Ch.09
```

## Chapter Design

### Chapter 08: Pakete & Ökosystem

**Theme**: The Typst Universe as a living ecosystem that amplifies document engineering capabilities.

**Key demonstrations** (with working Typst code):

| Package | Category | What It Demonstrates |
|---|---|---|
| CeTZ | Graphics/Drawing | Vector diagrams, plots, coordinate systems |
| fletcher | Diagrams | Flowcharts, node-edge diagrams |
| codly | Code Display | Syntax-highlighted code blocks with line numbers |
| showybox | Decorative Boxes | Advanced callout/box styling beyond built-ins |
| tablem | Tables | Markdown-style table shorthand |
| fontawesome | Icons | Professional icon integration |
| glossarium | Glossary | Structured glossary management |

**Narrative**: A medical research team building a clinical handbook discovers that built-in Typst can do 80% of the work, but community packages take them the remaining 20% — from anatomical diagrams (CeTZ) to clinical flowcharts (fletcher) to styled code for data protocols (codly).

### Chapter 09: Datengetriebene Dokumente

**Theme**: Documents that generate themselves from structured data.

**Key demonstrations**:

| Technique | Source | What It Demonstrates |
|---|---|---|
| JSON parsing | `json()` built-in | Patient records → formatted case reports |
| YAML loading | `yaml()` built-in | Configuration-driven document appearance |
| CSV processing | `csv()` built-in | Study results → auto-generated tables & charts |
| `sys.inputs` | CLI `--input` flag | Template parameterization from external systems |
| Computed content | Scripting | Conditional sections, dynamic calculations |

**Narrative**: A hospital reporting system needs to generate weekly patient summaries, study reports, and compliance documents. Instead of manual formatting, data flows into Typst templates that automatically produce publication-ready output.

### Chapter 10: Werkzeuge & Workflows

**Theme**: The professional ecosystem around Typst that makes teams productive.

**Key sections**:

| Topic | Scope |
|---|---|
| Tinymist LSP | Autocomplete, go-to-definition, workspace symbols, profiling |
| typstyle / typstfmt | Code formatting standards |
| CI/CD Pipelines | GitHub Actions with setup-typst, automated builds |
| Accessibility | PDF/UA-1, semantic tagging, `alt` text, screen reader support |
| Enterprise patterns | Private packages, template management, brand systems |
| Quarto integration | Bridge to R/Python data science workflows |

**Narrative**: A university's medical faculty standardizes their publication pipeline — from local editing with Tinymist, through automated CI/CD builds, to accessible PDF output that meets European Accessibility Act requirements.

## Design Constraints

### Consistency with Existing Design

1. **Token usage**: All new content uses `palette`, `space`, `type-scale` from `styles/theme.typ`
2. **Component reuse**: Maximize use of existing components (`callout`, `card`, `pull-quote`, etc.)
3. **Chapter openers**: Use existing `chapter-opener` spread component
4. **Visual rhythm**: Maintain the dense → airy → visual pacing established in chapters 01–06

### Package Management

- Typst packages are auto-downloaded on first `import` from the Universe
- All required packages must be listed explicitly in Phase 0
- Pin specific package versions in import statements (e.g., `@preview/cetz:0.3.4`)
- Test each package import compiles before writing chapter content

### Content Tone

- German language throughout
- Medical/didactic theme consistent with existing chapters
- Problem → technique → result narrative structure
- Real-world medical scenarios (data-driven patient reports, clinical flowcharts, etc.)

## Locked Decisions

1. **Additive only** — No changes to existing chapters or components
2. **Existing theme** — All new content styled through existing token system
3. **German content** — Medical/didactic theme maintained
4. **Version-pinned imports** — All package imports specify version
5. **A4 format** — Consistent with existing document
6. **Target folder** — Same `typst_showcase_v2/` project

## Validation Strategy

After each phase:
1. Compile: `typst compile main.typ` (from `typst_showcase_v2/`)
2. Export PNGs: `typst compile --format png --ppi 200 main.typ "png_output/page-{0p}-of-{t}.png"`
3. Visual review of new pages
4. Regression check: existing pages unchanged
5. Package import audit: all versions pinned, all imports resolve

## Next Step

See [typst-extensibility-plan.md](typst-extensibility-plan.md) for the phased development plan.
