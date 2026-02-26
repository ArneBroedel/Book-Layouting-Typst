# Typst Extensibility: Phase 3 — Chapter 10: Werkzeuge & Workflows

## Objective

Write the complete Chapter 10 covering the professional tooling ecosystem around Typst — IDE support, formatting, CI/CD pipelines, accessibility compliance, and enterprise patterns. This chapter is more informational than the previous two (fewer live demos, more explanatory content) but still uses Typst's layout capabilities to present the information beautifully.

## Dependencies

- Phase 0 complete (stubs created)
- No dependency on Phases 1–2 (can be built in parallel)

## Content Strategy

**Narrative**: A university's medical faculty decides to standardize their publication pipeline. They need local editing with instant preview, automated builds that catch errors before publication, accessible output for compliance, and a package management strategy for their growing template library.

**Pacing**: Medium density. This chapter is text-heavy by nature, so we use generous visual breaks — diagrams, tables, callouts, and comparison layouts. Target 3–4 pages.

**Structure**:
1. Chapter opener
2. IDE & Sprachserver (Tinymist)
3. Code-Formatierung (typstyle)
4. CI/CD-Pipelines (GitHub Actions)
5. Barrierefreie PDFs (PDF/UA)
6. Enterprise-Muster (private Pakete, Vorlagen)
7. Integration mit Quarto
8. Closing reflection

## Tasks

### 3.1 Chapter Opener

```typst
#import "../components/spreads.typ": chapter-opener

#chapter-opener(
  title: [Werkzeuge & Workflows],
  number: [10],
  lead: [
    Ein Satzsystem ist nur so gut wie die Werkzeuge, die es umgeben.
    Von der intelligenten IDE-Unterstützung über automatisierte
    Build-Pipelines bis hin zur barrierefreien PDF-Erzeugung — dieses
    Kapitel zeigt den professionellen Arbeitsablauf rund um Typst.
  ],
)
```

### 3.2 Section: IDE & Sprachserver — Tinymist

Overview of Tinymist LSP and its features for professional Typst development.

**Content points:**
- Tinymist as the standard language server for Typst
- Key features:
  - Autocompletion for functions, parameters, and package imports
  - Go-to-definition across multi-file projects
  - Workspace-wide symbol search
  - Live preview with instant feedback
  - Document profiling (`tinymist.profileCurrentFile`)
  - Syntax-only mode for large projects

**Components to use:**
- `feature-grid` — summarizing Tinymist capabilities in a visual grid
- `callout(tone: "info")` — Tinymist installation instructions
- `icon-text` — marking features with visual indicators

**Example feature grid:**
```typst
#feature-grid(
  (strong[Autovervollständigung], [Funktionen, Parameter und Importe werden in Echtzeit vorgeschlagen.]),
  (strong[Go-to-Definition], [Springe direkt zur Definition jeder Funktion oder Variable — auch projektübergreifend.]),
  (strong[Live-Vorschau], [Änderungen werden in Millisekunden kompiliert und sofort angezeigt.]),
  (strong[Profiling], [Identifiziere Performance-Engpässe mit `tinymist.profileCurrentFile`.]),
  (strong[Workspace-Symbole], [Suche nach Definitionen im gesamten Projekt.]),
  (strong[Syntax-Modus], [Ressourcenschonend: nur Syntaxprüfung ohne Layout-Berechnung.]),
)
```

Use `side-note` to mention that Tinymist supports VS Code, Neovim, Helix, and other editors.

### 3.3 Section: Code-Formatierung — typstyle

Brief section on automated code formatting.

**Content points:**
- `typstyle` as the community standard formatter
- Consistent code style across teams
- Integration with Tinymist's format-on-save
- Configuration options

Use `comparison-layout` to show unformatted vs. formatted Typst code side-by-side:

```typst
#comparison-layout(
  left-title: [Vor Formatierung],
  right-title: [Nach Formatierung],
  left: code-block(title: none)[
    ```typst
    #let f(a,b,c)={
    grid(columns:(1fr,2fr),
    a,b,c)}
    ```
  ],
  right: code-block(title: none)[
    ```typst
    #let f(a, b, c) = {
      grid(
        columns: (1fr, 2fr),
        a, b, c,
      )
    }
    ```
  ],
)
```

### 3.4 Section: CI/CD-Pipelines — Automatisierte Builds

Show how Typst integrates into GitHub Actions for automated document builds.

**Content points:**
- The `setup-typst` GitHub Action
- A typical CI pipeline: lint → compile → export → deploy
- Benefits: catch errors before merge, automated artifact generation
- Font management in CI (bundling fonts in the repo or using `--font-path`)

**Demo: GitHub Actions workflow** (shown in a `code-block`):

```typst
#code-block(title: [GitHub Actions — Typst Build Pipeline])[
  ```yaml
  name: Build Document
  on: [push, pull_request]
  jobs:
    build:
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v4
        - uses: typst-community/setup-typst@v4
          with:
            typst-version: latest
        - run: typst compile main.typ output.pdf
        - run: typst compile --format png --ppi 200
                main.typ "preview/page-{0p}.png"
        - uses: actions/upload-artifact@v4
          with:
            name: document
            path: |
              output.pdf
              preview/*.png
  ```
]
```

Use `callout(tone: "success")` to emphasize that the entire Typst compiler is ~40MB — CI builds are fast.

**Visual: Pipeline Diagram**

If fletcher was imported in Chapter 08, create a simple pipeline flow diagram. If not, use a `gallery-grid` or textual representation:

```typst
#gallery-grid(
  ([*1. Checkout*\ Code auschecken]),
  ([*2. Typst Setup*\ Compiler installieren]),
  ([*3. Kompilieren*\ PDF + PNG erzeugen]),
  ([*4. Prüfen*\ Fehler abfangen]),
  ([*5. Bereitstellen*\ Artefakte hochladen]),
)
```

### 3.5 Section: Barrierefreie PDFs — PDF/UA-Konformität

Critical section on accessibility — a key enterprise and regulatory requirement.

**Content points:**
- What PDF/UA means (Universal Accessibility)
- European Accessibility Act (EAA) and its requirements
- Typst's semantic element model as the foundation
- Built-in elements that generate correct PDF tags: `heading`, `table`, `figure`, `list`
- The `alt` parameter for images
- Enabling PDF/UA export: `typst compile --pdf-standard a-2b main.typ`
- Common pitfalls: missing `alt` text, decorative images without `role: "artifact"`

**Components to use:**
- `key-concept(term: "PDF/UA")` — explaining the standard
- `callout(tone: "warning")` — listing common accessibility mistakes
- `styled-table` — mapping Typst elements to PDF tags

**Example table:**
```typst
#styled-table(
  columns: (1fr, 1fr, 2fr),
  table.header([Typst-Element], [PDF-Tag], [Hinweis]),
  [heading],     [H1–H6],   [Automatisch nach Ebene],
  [table],       [Table],    [Inkl. Header-Auszeichnung mit `table.header`],
  [figure],      [Figure],   [`alt`-Text für Barrierefreiheit erforderlich],
  [list / enum], [L / LI],   [Automatisch korrekt getaggt],
  [link],        [Link],     [URI wird im Tag gespeichert],
)
```

Use `callout(tone: "danger")` for: "Jedes Bild ohne `alt`-Text ist ein Barrierefreiheits-Verstoß."

### 3.6 Section: Enterprise-Muster

Brief section on organizational patterns for Typst adoption.

**Content points:**
- Private packages via `@local` namespace
- `typst.toml` manifest for package metadata, versioning, and dependencies
- Template management: centralized brand packages
- The three-layer architecture: Foundation → Branding → Templates

**Components to use:**
- `card` — showing a `typst.toml` example
- `sidebar-layout` — architecture diagram alongside explanation

**Example typst.toml in a card:**
```typst
#card(title: [Package-Manifest: typst.toml])[
  #code-block(title: none)[
    ```toml
    [package]
    name = "klinikum-brand"
    version = "1.2.0"
    entrypoint = "lib.typ"
    authors = ["IT-Abteilung Universitätsklinikum"]
    description = "Corporate Design des Universitätsklinikums"
    ```
  ]
]
```

### 3.7 Section: Integration mit Quarto

Brief informational section on the Quarto–Typst bridge for data science teams.

**Content points:**
- Quarto as an orchestrator that calls Typst for PDF output
- Use case: R/Python code → data analysis → Typst PDF
- `_brand.yml` for unified branding across formats
- `--keep-typ` flag to preserve the intermediate Typst file

Keep this short (1/2 page maximum). Use a `callout(tone: "info")` and a brief explanation. This is informational — no live demo possible within a Typst document.

### 3.8 Closing Reflection

Brief paragraph summarizing how the professional ecosystem around Typst closes the gap between individual authoring and enterprise-scale publishing.

Use a `pull-quote` with a statement about accessibility being a feature, not an afterthought.

End with a `section-break`.

## Deliverables

- [ ] Chapter 10 fully written with German content
- [ ] Tinymist features presented in feature-grid
- [ ] Code formatting comparison layout renders correctly
- [ ] CI/CD pipeline YAML shown in code-block
- [ ] Accessibility section with PDF/UA explanation and element-to-tag table
- [ ] Enterprise patterns section with typst.toml example
- [ ] Quarto section provides clear overview
- [ ] All visuals use existing theme tokens and components
- [ ] Chapter compiles without errors when included in main.typ
- [ ] Target: 3–4 pages

## Anti-Pattern Guards

> **DO NOT** import external packages in this chapter unless strictly necessary for a demo. This chapter is primarily informational.

> **DO NOT** claim Typst features that don't exist yet (e.g., balanced columns, native text wrapping around shapes). Describe current capabilities accurately.

> **DO NOT** include actual CI/CD configuration files in the project. The YAML pipeline is shown as content in a code block, not as a functional file.

> **DO NOT** replicate information from Chapters 08–09. Reference them briefly if needed ("Wie in Kapitel 8 gezeigt...") but don't repeat package installation or data-loading instructions.

## Next Step

Proceed to [Phase 4: Assembly & Integration](typst-extensibility-phase4.md).
