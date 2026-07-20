# Genre recipe stub: fallbasiert (Domain medical)

**Status:** stub (Wave 1) — expand when pilot needs full minima.  
**Produkt B** — not form-catalog core.

## Purpose

Case-driven learning: vignette → workup thinking → teaching points / pearl.  
Not a pure protocol card (see `notfall-karte`).

## Functional checklist (draft)

1. **Case frame** early (`clinical-case` or structured vignette).  
2. **Guided reasoning** (questions, decision points — not spoilers first).  
3. **Teaching extraction** after the case (`clinical-pearl`, `memo`, `summary-box`).  
4. **Optional DDx** short (`ddx-box`).  
5. **Sources / guidelines** trailing.

## Validator minima (placeholder — no YAML yet)

- distinct_forms_min: **3** (suggested)  
- requires: clinical-case **or** equivalent case framing form  
- teaching form after case (pearl/memo/summary)

## Recommended forms (non-exclusive)

`chapter-opener`, `clinical-case`, `callout`, `ddx-box`, `clinical-pearl`, `memo`, `summary-box`, `mc-question` *(if/when stable in core)*

## Anti-patterns (draft)

- Case buried after long theory  
- Spoiling diagnosis in the opener without pedagogical intent  
- Case with zero teaching extraction (vignette-only)
