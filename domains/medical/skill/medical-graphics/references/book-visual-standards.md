# Book visual standards (Phase B2 refine / B1 recreate checklist)

**Load for:** prompt refine or technical recreate.  
**Do not load for:** Phase A free vision (would cage creativity).

## Palette (bookkit tokens)

| Role | Hex |
|---|---|
| Primary / teal | `#0d7377` |
| Primary dark | `#094f52` |
| Accent amber | `#d4a039` |
| Danger | `#dc2626` |
| Success | `#16a34a` |
| Warning | `#d97706` |
| Text body | `#1a1a1a` |
| Muted | `#555555` |
| BG subtle | `#f5f5f0` |

## Language & claims

- German only in production graphics (no English lane chrome).  
- No invented doses, cut-offs, ALS, anatomy “facts”.  
- Prefer claim-safe wording from Content C.  
- Hybrid: labels in Typst when possible.  
- **No form-meta inside the figure** (no “Trigger cluster”, “Action:”, ontology IDs, “keine Dringlichkeitsstufe” as caption). Content titles only. Separation of concepts must be optical.

## Layout / cognition

- One primary job per zone.  
- Urgency louder than sources.  
- Labels near referents (contiguity).  
- Order-critical steps look ordered.  
- Monitoring paths must show *ongoing* work (loop), not “done”.

## Production technical

- Prefer SVG / Typst over low-DPI raster for print.  
- Raster print: ≥ 300 dpi at final size (`scripts/check-image-dpi.py`).  
- Every figure: `alt` text.  
- Manifest: path, source (`ai-gen` + tool), license, role.

## Illustration honesty (icons & scales)

When free vision **depicts** a clinical criterion (not only labels it):

- **Icon = meaning.** Unscharfe Begrenzung → soft/feathered, poorly defined edge — not a sharp zigzag star.  
- **Scale = honest.** If pin says *typisch > 5 mm*, a “5 mm” reference must be shorter than the drawn lesion (or the object clearly larger than the bar). Never label 5 mm while drawing something that reads as ~2 mm.  
- **No false continuum.** Unlabeled color bars / fake time spectra that do not name what the color means → remove or replace with explicit poles (e.g. Evolution Wochen–Monate vs Jahre unverändert).  
- Label-only audit is **insufficient** for criteria-by-picture units (ABCDE, size cues, spatial maps).

## Body / patho: principle first, not “complete correct anatomy” (Human 2026-07)

Anatomy **may** appear in didactic figures. The constraint is **not** “no body shapes ever” — it is:

> The **style and detail level** must not create the impression of **completeness and textbook correctness**.

AI free vision is especially risky when it looks atlas-like: wrong details then read as “fact”. Lower fidelity (schematic, **comic-ish**, flat) is often better because the figure is clearly a **principle sketch**, not a reference plate.

| Prefer | Avoid |
|--------|--------|
| Principle + optional **coarse** body cue (loge, limb outline, saddle zone) | Photoreal / high-detail atlas cuts that invite “is every structure correct?” |
| Comic / flat / simplified look when body is shown | Micro-accurate cortex, vessels, multi-muscle inventories |
| Labeled zones, mechanism arrows, few structures | Dense anatomy that pretends to be complete |
| Code/CeTZ when control matters | Accepting free vision only because it “looks medical” |

**Rule of thumb:** If a clinician would start **error-hunting anatomy** rather than reading the didactic job, detail is too high — simplify style (more schematic/comic) or pure principle. True high-fidelity reference anatomy → H-Gfx / human gold, not unsupervised free gen.

**Avoid CT/MRI-slice aesthetics** for free didactic figures: axial cuts read as “precision imaging” and make missing/wrong structures especially attackable. Prefer outer silhouettes, zone highlights, or abstract closed-shell metaphors; drop bone-name inventories unless the job truly needs them and style stays obviously incomplete.

## What refine may fix

- Palette drift toward tokens  
- English leftovers  
- Loop/edge semantics (e.g. stabil stays on 4a)  
- Hierarchy / contrast  
- Footer claim accuracy  
- **Surgical icon/scale honesty** (keep composition; rewrite only broken tiles — Melanom B/D pattern)  

## What refine must not do by default

- Attach existing SVG as “copy layout” (that is structure-transfer)  
- Rewrite Critical Claims  
- “Improve” the whole page when notes say only tiles B and D  

## Surgical refine notes (pattern)

```text
Change ONLY tiles X and Y.
Keep A/C/E/header/footer composition and German labels.
X CURRENT ERROR: …  REQUIRED: …
Y CURRENT ERROR: …  REQUIRED: …
Do not invent new thresholds.
```

Cap 2 refine gens; re-run claim audit **including illustration-semantics**.
