# Typst Extensibility: Phase 5 — Polish, QA & Release

## Objective

Final visual QA pass, package audit, regression verification, and release packaging. The extended document must be publication-grade with zero compile issues, all new content rendering correctly, and no regressions on existing pages.

## Dependencies

- Phase 4 complete (all chapters integrated, document compiling)

## Tasks

### 5.1 Full Build Verification

```sh
cd typst_showcase_v2
typst compile main.typ 2>&1
```

Requirements:
- Zero errors
- Zero warnings (or explicitly waived with documented reason)
- Successful PDF output

### 5.2 PNG Export and Page-by-Page Review

```sh
typst compile --format png --ppi 200 main.typ "png_output/page-{0p}-of-{t}.png"
```

Review EVERY new page (chapters 08–10 + Part III divider) for:

#### Layout Quality
- [ ] No content overflows page margins
- [ ] No content overlaps with headers or footers
- [ ] CeTZ diagrams fit within content area (no clipping)
- [ ] Fletcher flowcharts render with correct spacing
- [ ] Tables from JSON/CSV data don't overflow columns
- [ ] Code blocks don't break across pages awkwardly

#### Typography Quality
- [ ] Body text readable at 100% zoom
- [ ] Heading hierarchy consistent with existing chapters
- [ ] Chapter numbers (8, 9, 10) display correctly
- [ ] Package import syntax in code blocks is legible
- [ ] German text renders correctly (umlauts, ß, special characters)

#### Component Quality
- [ ] Chapter openers have gradient bar and decorative number
- [ ] Callouts have correct tone colors
- [ ] Cards have visible borders/elevation
- [ ] Code blocks have syntax highlighting (codly) or monospace (built-in)
- [ ] Feature grids are evenly spaced
- [ ] Tables have consistent styling with existing chapters
- [ ] Pull-quotes are non-breakable

#### Package Rendering
- [ ] CeTZ canvas renders vector graphics (not blank)
- [ ] Fletcher diagram shows nodes and edges correctly
- [ ] Codly code blocks show line numbers and zebra striping
- [ ] Showybox renders with custom borders and colors
- [ ] Tablem renders markdown-style table correctly
- [ ] Fontawesome icons display (if used) or gracefully degrade

### 5.3 Regression Check on Existing Pages

Verify that chapters 00–07 are visually identical to their pre-extensibility state:

- [ ] Cover page (00) — unchanged
- [ ] Introduction (01) — unchanged
- [ ] Typography (02) — unchanged
- [ ] Structure (03) — unchanged
- [ ] Components (04) — unchanged
- [ ] Layouts (05) — unchanged
- [ ] Advanced (06) — unchanged
- [ ] Back matter (07) — unchanged (now appears after Part III)

The ToC page may have new entries — verify they are formatted consistently.

### 5.4 Package Version Audit

Verify all package imports use pinned versions:

```sh
# Search for package imports in chapter files
Select-String -Path "chapters/08-packages.typ","chapters/09-data-driven.typ","chapters/10-tooling.typ" -Pattern "@preview/" | ForEach-Object { $_.Line.Trim() }
```

Check:
- [ ] Every import uses `@preview/package:x.y.z` format (no wildcards, no missing versions)
- [ ] All imported packages are actually used (no dead imports)
- [ ] No packages imported in `main.typ` or `styles/*.typ`

### 5.5 Content Quality Review

#### Chapter 08: Pakete & Ökosystem
- [ ] Introduction explains Typst Universe clearly
- [ ] Import syntax is correct and demonstrated
- [ ] CeTZ demo produces a meaningful medical diagram
- [ ] Fletcher demo shows a clinical decision tree
- [ ] Codly demo shows formatted code with highlighting
- [ ] Showybox demo shows enhanced container styling
- [ ] Quick-reference section lists additional packages
- [ ] German language natural and consistent

#### Chapter 09: Datengetriebene Dokumente
- [ ] JSON loading from data file works correctly
- [ ] Patient table auto-generated from JSON array
- [ ] Patient cards loop renders all entries
- [ ] CSV loading from data file works correctly
- [ ] Study results table renders with correct data
- [ ] Computed analysis (best therapy) calculates correctly
- [ ] YAML section references existing glossary
- [ ] sys.inputs pattern shown with defaults
- [ ] Conditional content pattern works
- [ ] German language natural and consistent

#### Chapter 10: Werkzeuge & Workflows
- [ ] Tinymist features clearly presented
- [ ] Code formatting comparison layout renders
- [ ] CI/CD pipeline YAML is syntactically correct
- [ ] Accessibility section covers PDF/UA accurately
- [ ] Element-to-tag table is complete
- [ ] Enterprise patterns section is actionable
- [ ] Quarto section provides useful overview
- [ ] German language natural and consistent

### 5.6 Page Count Verification

Count total pages and new chapter pages:

```sh
Get-ChildItem png_output/*.png | Measure-Object | Select-Object -ExpandProperty Count
```

Expected:
- Original document: ~30–40 pages
- New chapters: +10–15 pages
- Total: ~40–55 pages

Verify each new chapter's page count:
- [ ] Chapter 08: 4–6 pages
- [ ] Chapter 09: 3–5 pages
- [ ] Chapter 10: 3–4 pages

### 5.7 Data File Integrity

- [ ] `data/sample-patients.json` is valid JSON (parseable by Typst)
- [ ] `data/sample-study.csv` is valid CSV with consistent column count
- [ ] No real patient data or PII in sample files
- [ ] Data files are properly encoded (UTF-8)

### 5.8 Final Build

Clean build from scratch:

```sh
cd typst_showcase_v2
Remove-Item -Recurse -Force png_output -ErrorAction SilentlyContinue
New-Item -ItemType Directory png_output -Force | Out-Null
typst compile main.typ 2>&1
typst compile --format png --ppi 200 main.typ "png_output/page-{0p}-of-{t}.png"
```

Verify:
- [ ] Zero errors
- [ ] Zero warnings
- [ ] PDF generated
- [ ] All PNG pages exported
- [ ] No temporary files left (e.g., `_test-packages.typ` from Phase 0)

### 5.9 README Update (Optional)

If appropriate, update `typst_showcase_v2/README.md` to mention the new chapters and their package dependencies. List the required packages so that users know what will be auto-downloaded.

## Deliverables

- [ ] All new pages pass visual QA
- [ ] No regressions on existing pages
- [ ] All package imports pinned and verified
- [ ] Content quality checklist complete for all 3 chapters
- [ ] Page count within expected range
- [ ] Data files validated
- [ ] Clean build succeeds (PDF + PNG)
- [ ] No temporary or debug files remain

## Summary

With Phase 5 complete, the `typst_showcase_v2` document now covers both Typst's built-in capabilities (Part I & II) and its extensibility ecosystem (Part III). The document serves as a comprehensive reference for anyone learning or evaluating Typst for professional document engineering.

## Files Modified in This Devtrack

| File | Phase | Action |
|---|---|---|
| `chapters/08-packages.typ` | 0 (stub), 1 (content) | Created |
| `chapters/09-data-driven.typ` | 0 (stub), 2 (content) | Created |
| `chapters/10-tooling.typ` | 0 (stub), 3 (content) | Created |
| `data/sample-patients.json` | 0 | Created |
| `data/sample-study.csv` | 0 | Created |
| `main.typ` | 4 | Modified (Part III + includes) |
| `README.md` | 5 (optional) | Modified |
