# Typst Extensibility: Phase 4 — Assembly & Integration

## Objective

Wire the three new chapters (08–10) into `main.typ`, add a Part III divider, ensure running headers and page numbering flow correctly, and verify the complete document compiles and renders without regressions.

## Dependencies

- Phases 1–3 complete (all three chapters written and individually verified)

## Tasks

### 4.1 Restructure main.typ

The current `main.typ` structure places back matter (Chapter 07) at the end. The new chapters need to be inserted **before** back matter, with a Part III divider.

**Current structure:**
```
Part I:  Grundlagen     → Ch.01, 02, 03
Part II: Komponenten    → Ch.04, 05, 06
Back matter             → Ch.07
```

**New structure:**
```
Part I:   Grundlagen        → Ch.01, 02, 03
Part II:  Komponenten       → Ch.04, 05, 06
Part III: Erweiterbarkeit   → Ch.08, 09, 10
Back matter                 → Ch.07
```

### 4.2 Edit main.typ

Add the Part III section and chapter includes. The edit should be inserted **before** the back matter include:

```typst
// ── Part III: Erweiterbarkeit ──────────────────────────────────
#{
  import "components/spreads.typ": part-page
  part-page(number: "Teil III", title: [Erweiterbarkeit])
}

#include "chapters/08-packages.typ"
#include "chapters/09-data-driven.typ"
#include "chapters/10-tooling.typ"

// ── Back Matter ────────────────────────────────────────────────
#include "chapters/07-backmatter.typ"
```

> **GUARD**: The Part III block must appear BEFORE `07-backmatter.typ`. The back matter (glossary, bibliography) must remain the very last section of the document.

### 4.3 Verify Table of Contents

After compilation, check that the ToC (`outline`) correctly includes:
- [ ] Part III heading (if part pages generate heading entries)
- [ ] Chapter 8: Pakete & Ökosystem
- [ ] Chapter 9: Datengetriebene Dokumente
- [ ] Chapter 10: Werkzeuge & Workflows
- [ ] Chapters are numbered 8, 9, 10 (continuing from Chapter 7's backmatter or Chapter 6)

If chapter numbering is off (e.g., the chapter-opener `number` parameter conflicts with auto-numbering), resolve by:
1. Checking how existing chapters handle numbering (manual `number` parameter vs. auto `heading(numbering: ...)`)
2. Matching the same pattern for chapters 08–10

### 4.4 Verify Running Headers

Check that running headers on the new chapter pages show the correct chapter title:
- [ ] Chapter 08 pages show "Pakete & Ökosystem" (or equivalent)
- [ ] Chapter 09 pages show "Datengetriebene Dokumente"
- [ ] Chapter 10 pages show "Werkzeuge & Workflows"
- [ ] Headers alternate position on odd/even pages (consistent with existing chapters)
- [ ] Headers are suppressed on chapter opener pages (consistent with existing behavior)

### 4.5 Verify Page Numbering

- [ ] Page numbers are continuous from existing chapters through new chapters
- [ ] No duplicate page numbers
- [ ] Page numbers alternate position on odd/even pages

### 4.6 Visual Flow Check

Review the transition points between sections:
- [ ] End of Chapter 06 → Part III divider: clean page break
- [ ] Part III divider → Chapter 08: proper chapter opener with gradient bar
- [ ] Chapter 08 → Chapter 09: section break, then new chapter opener
- [ ] Chapter 09 → Chapter 10: section break, then new chapter opener
- [ ] Chapter 10 → Back matter: clean transition

### 4.7 Compile and Export

```sh
cd typst_showcase_v2
typst compile main.typ 2>&1
```

Expected: Zero errors.

Then export PNGs for visual review:
```sh
typst compile --format png --ppi 200 main.typ "png_output/page-{0p}-of-{t}.png"
```

### 4.8 Regression Check

Compare the new PNG output against the pre-extensibility state:
- [ ] Cover page unchanged
- [ ] ToC layout correct (may have new entries, but existing entries unchanged)
- [ ] Part I chapters (01–03) visually identical
- [ ] Part II chapters (04–06) visually identical
- [ ] Part III chapters (08–10) render correctly
- [ ] Back matter (07) visually identical (now at the end)

## Deliverables

- [ ] `main.typ` updated with Part III and 3 new chapter includes
- [ ] Full document compiles with zero errors
- [ ] ToC includes new chapters
- [ ] Running headers show correct titles for new chapters
- [ ] Page numbering is continuous
- [ ] No visual regressions on existing pages
- [ ] PNG export completed for review

## Anti-Pattern Guards

> **DO NOT** change the order of existing chapters or parts. Only add the new Part III section.

> **DO NOT** modify any existing chapter files (00–07) during this phase.

> **DO NOT** add package imports to `main.typ`. All package imports stay within their respective chapter files.

> **DO NOT** change `setup-typography()` or `setup-pages()` calls. The existing style pipeline must remain untouched.

## Next Step

Proceed to [Phase 5: Polish, QA & Release](typst-extensibility-phase5.md).
