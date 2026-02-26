# Typst Extensibility: Phase 2 — Chapter 09: Datengetriebene Dokumente

## Objective

Write the complete Chapter 09 demonstrating data-driven document generation. This chapter shows how Typst reads structured data (JSON, YAML, CSV) and transforms it into publication-ready content — a key capability for enterprise and clinical reporting.

## Dependencies

- Phase 0 complete (data files `sample-patients.json` and `sample-study.csv` created)

## Content Strategy

**Narrative**: A hospital's reporting department needs to generate weekly patient summaries, clinical study reports, and quality metrics — all from structured data. Instead of manual copy-paste, they build Typst templates that automatically transform raw data into formatted, professional documents.

**Pacing**: Medium-high density. Data-driven content is inherently technical, so use generous whitespace, explanatory callouts, and visual output examples. Target 3–5 pages.

**Structure**:
1. Chapter opener
2. Introduction: The data-driven philosophy
3. JSON: Patient records → formatted reports
4. CSV: Study results → auto-generated tables
5. YAML: Configuration-driven documents
6. sys.inputs: External parameterization
7. Pattern: Computed and conditional content
8. Closing reflection

## Tasks

### 2.1 Chapter Opener

```typst
#import "../components/spreads.typ": chapter-opener

#chapter-opener(
  title: [Datengetriebene Dokumente],
  number: [9],
  lead: [
    Moderne Dokumente entstehen nicht mehr durch manuelles Tippen —
    sie werden aus strukturierten Daten generiert. Typst bietet
    leistungsfähige Werkzeuge, um JSON, YAML und CSV direkt in
    publikationsreife Inhalte zu verwandeln.
  ],
)
```

### 2.2 Introduction: Die Philosophie datengetriebener Dokumente

Opening section explaining the paradigm shift from manual formatting to automated generation.

**Content points:**
- Separation of data and presentation (single source of truth)
- Built-in parsers: `json()`, `yaml()`, `csv()`, `toml()`, `xml()`
- No external dependencies needed — data parsing is native
- Use cases: reports, invoices, certificates, clinical summaries

**Components to use:**
- `key-concept(term: "Datentrennung")` — explaining separation of concerns
- `callout(tone: "info")` — listing all built-in data functions

### 2.3 Section: JSON — Patientenberichte aus strukturierten Daten

The centerpiece demo: loading `data/sample-patients.json` and rendering a formatted patient report.

**Step 1: Load and inspect data**

```typst
#let patient-data = json("../data/sample-patients.json")
```

Use `code-block` to show the raw JSON structure, then demonstrate transformation.

**Step 2: Patient Overview Table**

Auto-generate a table from the patient array:

```typst
#import "../components/tables.typ": styled-table

#styled-table(
  columns: (auto, 1fr, auto, 2fr, auto),
  table.header(
    [ID], [Name], [Alter], [Diagnose], [Status],
  ),
  ..patient-data.patienten.map(p => (
    p.id, p.name, str(p.alter), p.diagnose, p.status,
  )).flatten(),
)
```

Use `callout(tone: "success")` to highlight that the table automatically updates when the JSON file changes.

**Step 3: Individual Patient Cards**

Generate a card for each patient using a loop:

```typst
#for patient in patient-data.patienten {
  card(title: patient.name + " (" + patient.id + ")")[
    *Diagnose:* #patient.diagnose \
    *Alter:* #str(patient.alter) Jahre \
    *Status:* #badge(patient.status, color: if patient.status == "kritisch" { palette.danger } else if patient.status == "stabil" { palette.success } else { palette.primary }) \
    *Medikamente:* #patient.medikamente.join(", ")
  ]
}
```

> **GUARD**: When accessing nested JSON fields, always use dot notation (`patient.vitalzeichen.puls`). Do not use string-based key access unless keys contain special characters.

**Step 4: Vital Signs Summary**

Extract vital signs and present in a comparison format:

```typst
#let critical-patients = patient-data.patienten.filter(p => p.status == "kritisch")

#callout(title: [Kritische Patienten], tone: "danger")[
  #for p in critical-patients [
    *#p.name* — SpO#sub[2]: #str(p.vitalzeichen.spo2)%,
    Puls: #str(p.vitalzeichen.puls) bpm \
  ]
]
```

### 2.4 Section: CSV — Studienergebnisse automatisch auswerten

Load `data/sample-study.csv` and auto-generate a results table with computed columns.

**Step 1: Load CSV**

```typst
#let study = csv("../data/sample-study.csv")
#let headers = study.first()
#let rows = study.slice(1)
```

**Step 2: Auto-Generated Results Table**

```typst
#styled-table(
  columns: (2fr, auto, auto, auto, auto, auto),
  table.header(..headers.map(h => strong(h))),
  ..rows.flatten(),
)
```

**Step 3: Computed Analysis**

Show dynamic calculations from CSV data — e.g., finding the therapy with the highest response rate:

```typst
#let best-therapy = rows.sorted(key: r => float(r.at(2))).last()

#callout(title: [Ergebnis der Analyse], tone: "success")[
  Die höchste Ansprechrate zeigt *#best-therapy.at(0)* mit
  *#best-therapy.at(2)%* (p = #best-therapy.at(5)).
]
```

Use `side-note()` to mention that more sophisticated statistical analysis would use external tools (R/Python via Quarto), while Typst handles the presentation layer.

### 2.5 Section: YAML — Konfigurationsgetriebene Dokumente

Demonstrate how YAML can drive document appearance and content selection.

**Content points:**
- Typst's own `glossary.yml` is already an example of data-driven content
- Configuration patterns: feature flags, content variants, branding parameters
- Loading and using YAML dictionaries

Show a brief example loading the existing `data/glossary.yml`:

```typst
#let glossar = yaml("../data/glossary.yml")
// Demonstrate structured access to glossary entries
```

Use `key-concept(term: "Konfiguration als Code")` to frame this pattern.

### 2.6 Section: sys.inputs — Externe Parametrisierung

Demonstrate how documents accept parameters from the command line.

**Content points:**
- `sys.inputs` dictionary populated via `--input key=value` CLI flag
- Use cases: build dates, version numbers, environment flags, author names
- Pattern: fallback defaults with `sys.inputs.at("key", default: "fallback")`

```typst
#let build-mode = sys.inputs.at("mode", default: "draft")
#let report-date = sys.inputs.at("date", default: datetime.today().display())

#callout(tone: "info", title: [Build-Konfiguration])[
  *Modus:* #build-mode \
  *Datum:* #report-date
]
```

Show the corresponding CLI command in a `code-block`:
```sh
typst compile --input mode=final --input date=2026-02-15 main.typ
```

Use `callout(tone: "warning")` to note that `sys.inputs` values are always strings — they must be parsed if numeric or boolean values are needed.

### 2.7 Section: Muster — Bedingte und berechnete Inhalte

Show advanced scripting patterns for dynamic content generation.

**Pattern 1: Conditional sections**
```typst
// Show different content based on build mode
#if build-mode == "draft" {
  callout(tone: "warning", title: [Entwurf])[
    Dieses Dokument ist ein Entwurf. Nicht zur Veröffentlichung.
  ]
}
```

**Pattern 2: Dynamic summary statistics**
```typst
#let total-patients = patient-data.patienten.len()
#let avg-age = patient-data.patienten.map(p => p.alter).sum() / total-patients

#card(title: [Abteilungsstatistik])[
  #feature-grid(
    ([*#str(total-patients)*], [Patienten gesamt]),
    ([*#str(calc.round(avg-age, digits: 1))*], [Durchschnittsalter]),
    // ...
  )
]
```

### 2.8 Closing Reflection

Brief paragraph on how data-driven documents reduce errors and ensure consistency. Use a `pull-quote` about automation in clinical documentation.

End with a `section-break`.

## Deliverables

- [ ] Chapter 09 fully written with German medical content
- [ ] JSON data loads from `data/sample-patients.json` and renders patient table
- [ ] Patient cards auto-generated from JSON array
- [ ] CSV data loads from `data/sample-study.csv` and renders study results table
- [ ] Computed analysis (best therapy) works correctly
- [ ] YAML loading demonstrated
- [ ] `sys.inputs` pattern shown with fallback defaults
- [ ] Conditional content pattern demonstrated
- [ ] All data transformations use Typst's built-in functions (no external packages)
- [ ] All visuals use existing theme tokens and components
- [ ] Chapter compiles without errors when included in main.typ
- [ ] Target: 3–5 pages

## Anti-Pattern Guards

> **DO NOT** hardcode data values in the chapter text. All patient names, diagnoses, and study results must come from the data files in `data/`.

> **DO NOT** use `eval()` to parse data strings. Use the typed built-in functions (`json()`, `csv()`, `yaml()`).

> **DO NOT** assume CSV column order by magic numbers without documenting which column is which. Always reference `headers` or use named constants.

> **DO NOT** use `read()` when `json()`/`csv()`/`yaml()` are available. The typed functions handle parsing; `read()` returns raw strings.

## Next Step

Proceed to [Phase 3: Chapter 10 — Werkzeuge & Workflows](typst-extensibility-phase3.md).
