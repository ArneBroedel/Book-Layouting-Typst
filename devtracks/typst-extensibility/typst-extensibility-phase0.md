# Typst Extensibility: Phase 0 — Workspace Prep & Package Installation

## Objective

Install and verify all required Typst packages, create sample data files, set up chapter stubs, and confirm the existing project still compiles cleanly. This phase produces no visible new pages — it only prepares the workspace.

## Dependencies

- `typst_showcase_v2` fully complete and compiling (Phases 0–7 of showcase-v2 devtrack)

## Tasks

### 0.1 Verify Baseline Compilation

Before any changes, confirm the existing project compiles cleanly:

```sh
cd typst_showcase_v2
typst compile main.typ 2>&1
```

Expected: Zero errors, zero warnings. If this fails, fix before proceeding.

### 0.2 Determine Package Versions

Typst packages are auto-downloaded on first import. However, we must pin exact versions for reproducibility. Check the Typst Universe for the latest stable release of each package.

Use Context7 or `typst.app/universe` to find the current versions. At time of writing, target these (update as needed):

| Package | Import Path | Purpose |
|---|---|---|
| CeTZ | `@preview/cetz:0.3.4` | Vector graphics and plots |
| fletcher | `@preview/fletcher:0.5.7` | Flowcharts and node-edge diagrams |
| codly | `@preview/codly:1.2.0` | Syntax-highlighted code blocks |
| codly-languages | `@preview/codly-languages:0.1.8` | Language definitions for codly |
| showybox | `@preview/showybox:2.0.4` | Enhanced decorative boxes |
| tablem | `@preview/tablem:0.2.0` | Markdown-style table shorthand |
| fontawesome | `@preview/fontawesome:0.5.0` | Professional icons |
| glossarium | `@preview/glossarium:0.5.4` | Structured glossary management |

> **IMPORTANT**: These versions are estimates. The implementer MUST verify each against the Typst Universe at build time and update the import paths accordingly. Use Context7 (`resolve-library-id` + `query-docs`) to check current versions.

### 0.3 Create Package Verification File

Create a temporary test file that imports all packages to verify they resolve:

```typst
// typst_showcase_v2/_test-packages.typ
// Temporary — delete after verification

#import "@preview/cetz:0.3.4"
#import "@preview/fletcher:0.5.7"
#import "@preview/codly:1.2.0"
#import "@preview/codly-languages:0.1.8"
#import "@preview/showybox:2.0.4"
#import "@preview/tablem:0.2.0"
#import "@preview/fontawesome:0.5.0"
#import "@preview/glossarium:0.5.4"

= Package Verification

All packages imported successfully.
```

Compile this file:

```sh
cd typst_showcase_v2
typst compile _test-packages.typ 2>&1
```

**Troubleshooting:**
- If a package fails to download, check network connectivity
- If a version doesn't exist, find the correct version on `typst.app/universe/package/<name>`
- Update the version in the import path and re-test
- Record the final working versions — these are the pinned versions for all subsequent phases

After successful verification, delete `_test-packages.typ`.

### 0.4 Create Sample Data Files

#### 0.4.1 `data/sample-patients.json`

Sample patient data for the data-driven chapter. Use realistic but fictional German medical data:

```json
{
  "abteilung": "Innere Medizin",
  "berichtsdatum": "2026-02-15",
  "patienten": [
    {
      "id": "PAT-2026-001",
      "name": "Maria Schneider",
      "alter": 67,
      "diagnose": "Hypertonie Grad II",
      "aufnahme": "2026-02-01",
      "status": "stabil",
      "medikamente": ["Ramipril 5mg", "Amlodipin 10mg", "ASS 100mg"],
      "vitalzeichen": {
        "blutdruck": "145/92",
        "puls": 78,
        "temperatur": 36.8,
        "spo2": 97
      }
    },
    {
      "id": "PAT-2026-002",
      "name": "Thomas Weber",
      "alter": 54,
      "diagnose": "Diabetes mellitus Typ 2",
      "aufnahme": "2026-02-03",
      "status": "in Behandlung",
      "medikamente": ["Metformin 1000mg", "Sitagliptin 100mg"],
      "vitalzeichen": {
        "blutdruck": "132/85",
        "puls": 72,
        "temperatur": 36.6,
        "spo2": 98
      }
    },
    {
      "id": "PAT-2026-003",
      "name": "Elena Fischer",
      "alter": 42,
      "diagnose": "Asthma bronchiale",
      "aufnahme": "2026-02-10",
      "status": "entlassen",
      "medikamente": ["Salbutamol b.B.", "Budesonid 200µg"],
      "vitalzeichen": {
        "blutdruck": "118/74",
        "puls": 68,
        "temperatur": 36.5,
        "spo2": 99
      }
    },
    {
      "id": "PAT-2026-004",
      "name": "Klaus Hoffmann",
      "alter": 73,
      "diagnose": "Herzinsuffizienz NYHA III",
      "aufnahme": "2026-02-08",
      "status": "kritisch",
      "medikamente": ["Bisoprolol 5mg", "Ramipril 10mg", "Furosemid 40mg", "Spironolacton 25mg"],
      "vitalzeichen": {
        "blutdruck": "110/68",
        "puls": 88,
        "temperatur": 37.1,
        "spo2": 93
      }
    },
    {
      "id": "PAT-2026-005",
      "name": "Anna Berger",
      "alter": 31,
      "diagnose": "Migräne mit Aura",
      "aufnahme": "2026-02-12",
      "status": "ambulant",
      "medikamente": ["Sumatriptan 50mg b.B.", "Magnesium 400mg"],
      "vitalzeichen": {
        "blutdruck": "122/78",
        "puls": 65,
        "temperatur": 36.4,
        "spo2": 99
      }
    }
  ]
}
```

#### 0.4.2 `data/sample-study.csv`

Clinical study results for auto-generated tables:

```csv
Therapie,N,Ansprechrate,Median_OS_Monate,Nebenwirkungen_Grad3,p_Wert
Standardtherapie,128,42.3,14.2,18.7,
Neue Substanz A,131,58.1,19.8,22.1,0.003
Neue Substanz B,125,61.5,21.3,31.2,0.001
Kombination A+B,130,72.8,26.1,38.5,<0.001
Placebo,64,12.5,8.4,5.2,
```

### 0.5 Create Chapter Stubs

Create minimal compiling stubs for the three new chapters:

#### 0.5.1 `chapters/08-packages.typ`

```typst
// Chapter 08: Pakete & Ökosystem
// Populated in Phase 1

#import "../components/spreads.typ": chapter-opener

#chapter-opener(
  title: [Pakete & Ökosystem],
  number: [8],
  lead: [Platzhalter für Kapitel 8.],
)
```

#### 0.5.2 `chapters/09-data-driven.typ`

```typst
// Chapter 09: Datengetriebene Dokumente
// Populated in Phase 2

#import "../components/spreads.typ": chapter-opener

#chapter-opener(
  title: [Datengetriebene Dokumente],
  number: [9],
  lead: [Platzhalter für Kapitel 9.],
)
```

#### 0.5.3 `chapters/10-tooling.typ`

```typst
// Chapter 10: Werkzeuge & Workflows
// Populated in Phase 3

#import "../components/spreads.typ": chapter-opener

#chapter-opener(
  title: [Werkzeuge & Workflows],
  number: [10],
  lead: [Platzhalter für Kapitel 10.],
)
```

### 0.6 Verify Stub Compilation

Each stub must compile in isolation to catch import errors early:

```sh
cd typst_showcase_v2
typst compile chapters/08-packages.typ 2>&1
typst compile chapters/09-data-driven.typ 2>&1
typst compile chapters/10-tooling.typ 2>&1
```

> **Note**: Stubs may not compile standalone because they use relative imports (`../components/...`). In that case, verify by temporarily including them in `main.typ` and compiling the whole document. Remove the include from `main.typ` after verification — the permanent wiring happens in Phase 4.

### 0.7 Test Full Compilation with Stubs

Temporarily add the new chapters to `main.typ` to verify they integrate:

```typst
// Temporary test — add before back matter
#include "chapters/08-packages.typ"
#include "chapters/09-data-driven.typ"
#include "chapters/10-tooling.typ"
```

Compile and verify:
```sh
typst compile main.typ 2>&1
```

Once verified, **revert** `main.typ` to its original state. The permanent integration happens in Phase 4.

### 0.8 Document Final Package Versions

After all packages are verified, create a record of the pinned versions. Update the import paths in this devtrack's phase files if any versions changed during verification.

## Deliverables

- [ ] Existing project compiles cleanly (baseline verified)
- [ ] All 8 packages import without errors (versions pinned)
- [ ] `data/sample-patients.json` created with 5 patient records
- [ ] `data/sample-study.csv` created with 5 therapy rows
- [ ] `chapters/08-packages.typ` stub created
- [ ] `chapters/09-data-driven.typ` stub created
- [ ] `chapters/10-tooling.typ` stub created
- [ ] Full compilation verified with stubs included
- [ ] `main.typ` reverted to original (stubs removed)
- [ ] Package version record documented

## Anti-Pattern Guards

> **DO NOT** add package imports to `main.typ` or any `styles/*.typ` file. Packages are imported only in the chapter files that use them.

> **DO NOT** install packages globally or modify the system Typst cache. Let Typst's built-in package manager handle downloads.

> **DO NOT** use unpinned versions like `@preview/cetz:*`. Always specify the exact version.

## Next Step

Once all packages resolve and stubs compile, proceed to [Phase 1: Chapter 08 — Pakete & Ökosystem](typst-extensibility-phase1.md).
