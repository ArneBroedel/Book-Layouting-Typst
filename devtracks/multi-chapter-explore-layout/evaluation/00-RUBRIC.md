# Full visual evaluation rubric — portfolio `kursbuch-explore-2026-08`

**Purpose:** Systematic cross-chapter audit of **all** exploration pilots — code + page PNGs + Gemini.  
**Not:** process-only harvest; not single-Human-comment expansion.  
**Date:** 2026-08-01

## Scope

| Item | Value |
|---|---|
| Chapters | all 10 portfolio slugs |
| Per chapter | every page PNG (`p1…pn`) + `chapter.typ` + graphic module(s) |
| Sections | every major section/block on page (heading, unit, table, figure, footer) |
| Evaluators | (1) agent multimodal PNG read (2) Gemini with this rubric attached |

## Scoring (per criterion)

| Score | Meaning |
|---|---|
| **5** | Strong — exemplary / reuse |
| **4** | Good — minor nits only |
| **3** | Acceptable / mixed — workable but weak |
| **2** | Weak — hurts use under scan stress |
| **1** | Fail — structural/aesthetic/didactic break |
| **n/a** | Not present |

Overall chapter score = mean of scored criteria (ignore n/a).

## Criteria catalog (all must be addressed)

### A — Didactic / method

| ID | Criterion |
|---|---|
| A1 | Primary learner job visible in first screenful |
| A2 | TIME / protocol / decision order scannable |
| A3 | Danger weight correct (T1 vs framework teal) |
| A4 | SCOPE / competence boundary not a fake tier |
| A5 | Mimic/error frames directionally clear if present |
| A6 | No claim invention / no form-meta in figures |
| A7 | Genre chrome correct (Master vs notfall vs OS) |

### B — Layout / structure / flow

| ID | Criterion |
|---|---|
| B1 | One calm reading path (scan-path) |
| B2 | Section hierarchy obvious (H2 → unit → trailing) |
| B3 | Indent / alignment consistency |
| B4 | Rhythm: not restless patchwork, not squish |
| B5 | Page breaks: no orphan titles / mid-table splits if avoidable |
| B6 | Margins / header / footer quiet, non-competing |
| B7 | Columns/grids aligned; no accidental asymmetry |

### C — Typography

| ID | Criterion |
|---|---|
| C1 | Type scale hierarchy (title / H2 / body / caption) |
| C2 | Body readable (~8–9.5pt book band) |
| C3 | Contrast of weight/color for emphasis only when meaningful |
| C4 | German hyphenation/wrapping not catastrophic |
| C5 | No code-leak / raw Typst on page |

### D — Graphics / visual forms

| ID | Criterion |
|---|---|
| D1 | Form intensity matches job (L2–L6 honest) |
| D2 | Graphic density vs space budget |
| D3 | Dual coding coherent (color = meaning) |
| D4 | Free/hybrid asset: illustration-semantics if any |
| D5 | Tables: header repeat clarity, cell density |
| D6 | Icons only if they teach (not decoration) |

### E — Aesthetic / craft

| ID | Criterion |
|---|---|
| E1 | Professional textbook look (not slide-deck chaos) |
| E2 | Color palette restrained (bookkit teal/amber/danger) |
| E3 | Corners/strokes/fills consistent within chapter |
| E4 | White space intentional |
| E5 | Overall “quiet confidence” vs noise |

### F — Code quality (implementation)

| ID | Criterion |
|---|---|
| F1 | Clean separation module vs chapter |
| F2 | Theme tokens vs hardcoded one-offs |
| F3 | Reusable patterns vs copy-paste monotony |
| F4 | Comments / accept paths in header |
| F5 | Compile flags / fonts reproducible |

## Report outputs

| File | Content |
|---|---|
| `01-form-inventory.md` | What visual forms appear where |
| `02-agent-visual-audit.md` | Agent PNG reads per chapter/section |
| `03-gemini-audit.md` | Gemini structured scores + quotes |
| `04-synthesis.md` | Cross-chapter matrix, winners/losers, revise priorities |
| `05-phase4-scope-note.md` | Clarifies prior process harvest vs this full eval |
