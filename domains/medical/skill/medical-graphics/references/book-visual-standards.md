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

## Body / anatomy: **pause** unsupervised depictions (Human 2026-07-29)

After iterative free-vision and code attempts (Kompartment and related), **Human verdict:** unsupervised anatomical / body-structure figures are frequently **absurd or embarrassing** to medical professionals and not Accept-ready for a Fachbuch.

### Current default (hard until lifted)

| Do | Do not |
|----|--------|
| Teach with **non-body** forms: TIME/SCOPE, discrimination, mimic maps, criteria chips, pure mechanism **without** limb/organ drawing | Free vision or agent-coded “anatomy” of limbs, cuts, bones, loges, NV bundles |
| Patho as **text + abstract process** (if needed) without body silhouette | CT/MRI-style cuts, comic legs, “almost right” fascial shells that still fail professional scrutiny |
| Optional later: **H-Gfx** / human gold anatomy only after explicit reopen | Treating AI anatomy as “good enough if stylized” |

**Rationale:** The sweet spot (schematic but correct relations, not atlas) was **not** reliably hit. Until a human/H-Gfx path exists, **distance from anatomical depiction** is safer than more free-vision retries.

**Not a forever ban of all body cues** — a **pause** on unsupervised production of anatomy. Reopen only with Human + H-Gfx (or proven human-drawn assets).

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
