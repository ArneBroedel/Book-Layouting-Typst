# Typst Extensibility: Phase 1 — Chapter 08: Pakete & Ökosystem

## Objective

Write the complete Chapter 08 showcasing the Typst package ecosystem. This chapter demonstrates real, working package usage through medical/didactic examples — CeTZ diagrams, fletcher flowcharts, codly code blocks, showybox decorative containers, and more.

## Dependencies

- Phase 0 complete (all packages verified, stubs created, data files in place)

## Content Strategy

**Narrative**: A medical research team building a clinical handbook discovers that built-in Typst handles most of their needs, but community packages handle the specialized 20% — anatomical diagrams, clinical decision flowcharts, formatted protocol code, and enhanced visual containers.

**Pacing**: Medium density. Alternate between explanatory text, visual package demos, and reflective callouts. Target 4–6 pages.

**Structure**:
1. Chapter opener
2. Introduction: What is the Typst Universe?
3. Importing packages (syntax and versioning)
4. Graphics & Diagrams (CeTZ)
5. Flowcharts & Decision Trees (fletcher)
6. Code Display (codly)
7. Enhanced Containers (showybox)
8. Quick-Reference: Further packages
9. Closing reflection

## Tasks

### 1.1 Chapter Opener

Replace the Phase 0 stub with the full chapter opener:

```typst
#import "../components/spreads.typ": chapter-opener

#chapter-opener(
  title: [Pakete & Ökosystem],
  number: [8],
  lead: [
    Typst bietet eine mächtige Grundausstattung — doch die wahre Stärke
    eines modernen Satzsystems liegt in seiner Erweiterbarkeit. In diesem
    Kapitel erkunden wir das Typst Universe und demonstrieren, wie
    Community-Pakete die Möglichkeiten der Dokumentenerstellung
    dramatisch erweitern.
  ],
)
```

### 1.2 Introduction: Das Typst Universe

Opening section explaining the package ecosystem.

**Content points:**
- Typst Universe as the central package registry (`typst.app/universe`)
- Packages are versioned and auto-downloaded on first import
- The `@preview` namespace for community packages
- Import syntax: `#import "@preview/package:version": function`
- Why version pinning matters (reproducibility, CI/CD stability)

**Components to use:**
- `callout(tone: "info")` — explaining the `@preview` namespace
- `card()` — summarizing available package categories
- `badge()` — tagging package categories (Grafik, Tabellen, Vorlagen, etc.)

Example import syntax demonstration (use existing `code-block` component):
```typst
#code-block(title: "Paketimport")[
  ```typst
  // Einzelne Funktion importieren
  #import "@preview/cetz:0.3.4": canvas, draw

  // Gesamtes Paket importieren
  #import "@preview/fletcher:0.5.7" as fletcher
  ```
]
```

### 1.3 Section: Grafiken & Diagramme mit CeTZ

Live demonstration of the CeTZ package for vector graphics.

**Import:**
```typst
#import "@preview/cetz:0.3.4": canvas, draw
```

**Demo 1: Medical Coordinate Diagram**

A simple vital signs chart plotting heart rate over time:

```typst
#figure(
  canvas(length: 1cm, {
    import draw: *

    // Axes
    line((0, 0), (8, 0), stroke: palette.text-muted)
    line((0, 0), (0, 5), stroke: palette.text-muted)

    // Axis labels
    content((4, -0.6), text(size: type-scale.small, [Zeit (Stunden)]))
    content((-1.0, 2.5), text(size: type-scale.small, [Puls (bpm)]))

    // Data points (simulated heart rate)
    let data = ((1, 2.8), (2, 3.2), (3, 2.5), (4, 3.0), (5, 2.7), (6, 2.3), (7, 2.5))

    // Plot line
    for i in range(data.len() - 1) {
      line(data.at(i), data.at(i + 1), stroke: 1.5pt + palette.primary)
    }

    // Plot points
    for pt in data {
      circle(pt, radius: 0.08, fill: palette.primary, stroke: none)
    }
  }),
  caption: [Pulsverlauf eines Patienten über 7 Stunden — erstellt mit CeTZ],
)
```

> **GUARD**: CeTZ uses its own coordinate system. Always set `length` on the `canvas` to control scale. Do not mix CeTZ coordinates with Typst layout units.

**Demo 2: Simple Anatomical Schematic**

A simplified organ/system diagram using basic shapes:

```typst
// A simplified body-system diagram showing connected organ blocks
canvas(length: 0.8cm, {
  import draw: *

  // Central nervous system
  rect((2, 4), (6, 5), fill: palette.primary.lighten(80%), stroke: palette.primary, name: "zns")
  content("zns", [ZNS])

  // Heart
  rect((2, 2), (6, 3), fill: palette.danger.lighten(80%), stroke: palette.danger, name: "herz")
  content("herz", [Herz])

  // Lungs
  rect((7, 2), (11, 3), fill: palette.info.lighten(80%), stroke: palette.info, name: "lunge")
  content("lunge", [Lunge])

  // Connection lines
  line("zns.south", "herz.north", stroke: palette.text-muted, mark: (end: ">"))
  line("herz.east", "lunge.west", stroke: palette.text-muted, mark: (end: ">", start: ">"))
})
```

Use `callout(tone: "info")` to explain CeTZ's architecture: canvas-based drawing, coordinate transforms, named anchors.

### 1.4 Section: Flussdiagramme mit Fletcher

Live demonstration of fletcher for clinical decision flowcharts.

**Import:**
```typst
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
```

**Demo: Clinical Decision Tree**

A diagnostic decision tree for chest pain triage:

```typst
#figure(
  diagram(
    spacing: (10mm, 12mm),
    node-stroke: 0.8pt + palette.text-muted,

    // Start
    node((0, 0), [Brustschmerz], shape: fletcher.shapes.pill, fill: palette.primary.lighten(80%)),

    // Decision 1
    edge((0, 0), (0, 1), "-|>", label: [Anamnese]),
    node((0, 1), [EKG-Veränderung?], shape: fletcher.shapes.diamond, fill: palette.warning.lighten(85%)),

    // Yes branch
    edge((0, 1), (-1, 2), "-|>", label: [Ja]),
    node((-1, 2), [Troponin bestimmen], fill: palette.danger.lighten(85%)),

    // No branch
    edge((0, 1), (1, 2), "-|>", label: [Nein]),
    node((1, 2), [Belastungs-EKG], fill: palette.success.lighten(85%)),

    // Outcomes
    edge((-1, 2), (-1, 3), "-|>"),
    node((-1, 3), [Kardiologie\Konsil], shape: fletcher.shapes.pill, fill: palette.danger.lighten(70%)),

    edge((1, 2), (1, 3), "-|>"),
    node((1, 3), [Ambulante\Kontrolle], shape: fletcher.shapes.pill, fill: palette.success.lighten(70%)),
  ),
  caption: [Klinischer Entscheidungsbaum: Brustschmerz-Triage — erstellt mit Fletcher],
)
```

> **GUARD**: Fletcher uses `(col, row)` coordinates, not `(x, y)` pixel positions. Rows increase downward. Use `spacing` parameter to control density, not absolute coordinates.

Use `side-note()` to mention fletcher's `edge` label positioning options.

### 1.5 Section: Code-Darstellung mit Codly

Live demonstration of enhanced code blocks.

**Import:**
```typst
#import "@preview/codly:1.2.0": codly, codly-init
#import "@preview/codly-languages:0.1.8": codly-languages
#show: codly-init
```

**Demo: Formatted Medical Data Protocol**

Show a JSON data protocol with professional syntax highlighting:

```typst
#codly(
  languages: codly-languages,
  zebra-fill: palette.bg-subtle,
  stroke: 0.5pt + palette.border-light,
)

// Then show a code block with syntax highlighting
```json
{
  "patient_id": "PAT-2026-001",
  "diagnose": "Hypertonie Grad II",
  "medikamente": [
    {"name": "Ramipril", "dosis": "5mg", "frequenz": "1x täglich"},
    {"name": "Amlodipin", "dosis": "10mg", "frequenz": "1x täglich"}
  ]
}
`` `
```

> **GUARD**: Codly uses `#show: codly-init` which must be scoped appropriately. If applied globally, it affects all code blocks. Scope it within the chapter using a block: `#{ show: codly-init; ... }` or apply it at the chapter level only.

Use `callout(tone: "success")` to highlight that codly supports line numbers, zebra striping, and language detection.

### 1.6 Section: Erweiterte Container mit Showybox

Show showybox's capabilities beyond the built-in `callout` and `card` components.

**Import:**
```typst
#import "@preview/showybox:2.0.4": showybox
```

**Demo: Medical Alert Box**

```typst
#showybox(
  frame: (
    border-color: palette.danger,
    title-color: palette.danger.lighten(80%),
    body-color: palette.danger.lighten(95%),
    thickness: 2pt,
    radius: 4pt,
  ),
  title-style: (
    color: palette.danger.darken(20%),
    weight: "bold",
  ),
  title: [⚠ Arzneimittelinteraktion],
  [
    *Warfarin + NSAR:* Die gleichzeitige Gabe von Warfarin und
    nicht-steroidalen Antirheumatika erhöht das Blutungsrisiko
    signifikant. INR-Kontrolle innerhalb von 3 Tagen erforderlich.
  ],
)
```

**Demo: Multi-Section Clinical Summary**

Use showybox's sectioning capabilities for a structured patient overview.

Use `comparison-layout` or `comparison-grid` to show built-in `callout` vs. `showybox` side-by-side, illustrating when each is appropriate.

### 1.7 Section: Schnellreferenz — Weitere Pakete

A quick-reference section listing additional useful packages without full demos.

Use `feature-grid` or `gallery-grid` to present a compact overview:

| Package | Zweck | Import |
|---|---|---|
| `tablem` | Markdown-Tabellen-Syntax | `@preview/tablem:0.2.0` |
| `fontawesome` | Professionelle Icons | `@preview/fontawesome:0.5.0` |
| `glossarium` | Strukturierte Glossare | `@preview/glossarium:0.5.4` |
| `touying` | Präsentationsfolien | `@preview/touying:...` |
| `charged-ieee` | IEEE-Papers | `@preview/charged-ieee:...` |
| `oxifmt` | String-Formatierung | `@preview/oxifmt:...` |

For `tablem` and `fontawesome`, include a brief inline demo (2–3 lines each):

```typst
// tablem demo
#import "@preview/tablem:0.2.0": tablem
#tablem[
  | Vital | Wert | Normal |
  |-------|------|--------|
  | Puls  | 78   | 60–100 |
  | SpO2  | 97%  | >95%   |
]
```

```typst
// fontawesome demo
#import "@preview/fontawesome:0.5.0": fa-heartbeat, fa-stethoscope
#icon-text(fa-heartbeat(), [Kardiologie])
#icon-text(fa-stethoscope(), [Untersuchung])
```

### 1.8 Closing Reflection

A brief paragraph reflecting on the ecosystem's maturity and growth. Use a `pull-quote` with a statement about open-source collaboration in scientific publishing.

End with a `section-break`.

## Deliverables

- [ ] Chapter 08 fully written with German medical content
- [ ] CeTZ diagram renders correctly (vital signs chart + system schematic)
- [ ] Fletcher flowchart renders correctly (decision tree)
- [ ] Codly code block renders with syntax highlighting
- [ ] Showybox demo renders with custom styling
- [ ] Quick-reference section with tablem and fontawesome inline demos
- [ ] All imports use pinned versions from Phase 0
- [ ] All visuals use existing theme tokens (palette, spacing)
- [ ] Chapter compiles without errors when included in main.typ
- [ ] Target: 4–6 pages

## Anti-Pattern Guards

> **DO NOT** import packages at the top of `main.typ` — keep imports local to this chapter file.

> **DO NOT** create new theme tokens for package-specific colors. Use `palette.*` values and `.lighten()` / `.darken()` modifiers.

> **DO NOT** use packages to replace existing components. The built-in `callout` stays as the primary admonition; `showybox` is shown as an alternative, not a replacement.

> **DO NOT** use deprecated package APIs. Check Context7 or package docs for current API if auto-complete suggests unfamiliar functions.

## Next Step

Proceed to [Phase 2: Chapter 09 — Datengetriebene Dokumente](typst-extensibility-phase2.md).
