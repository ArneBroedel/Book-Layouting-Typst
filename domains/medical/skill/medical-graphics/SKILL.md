---
name: medical-graphics
description: "ALWAYS use after a Media Brief for visual/graphic units: free AI vision first (content + didactic intent, no layout clone), then realize via Typst/SVG/hybrid recreate, prompt refine, or accept-asset; Decision Notes, Nano Banana/agy, Imagine, A/B compare. Covers didactic content graphics (flows, mechanisms, schemas — not only anatomy). Do NOT use for free Media ideal authorship, chapter compose/validate, or clinical claim rewrite."
---

# medical-graphics (Domain medical — Produkt B)

**Graphics** role: after Media’s free ideal, produce the best **visual realization** — **free vision first** for ambitious units, then constrain and realize.

**SoT:** `domains/medical/skill/medical-graphics/`  
**Policy:** `toolset/compose/CREATIVE-COMPOSE.md`

## When to use

- Media Brief implies diagrams, schemas, flows, illustrations, cue systems  
- Free AI vision (Nano Banana / Imagine) from content + didactic intent  
- Recreate in Typst/SVG/hybrid; prompt refine; accept asset  
- Graphic Decision Note / vision brief / asset manifest  
- Feasibility asks for Graphics on visual sections  

## When NOT to use

| Situation | Use instead |
|---|---|
| Free didactic ideal / Accept prose | `media-brief` |
| Full chapter compose + validate | `compose-chapter` |
| bookkit API only | `bookkit` |
| Typst syntax debug | `typst-writer` |
| `@preview` package details | `typst-extension` |
| Claim rewrite | Content (C) |
| Pure text pages | Skip — `graphic_mode: none` |

## Role flow

```text
Media Brief
    │
    ▼
Graphics Phase A — FREE VISION (ambitious units)
  content (C) + didactic intent only
  NO layout SVG/PNG template
  → *.vision.md + vision PNG(s)
    │
    ▼
Graphics Phase B — REALIZE
  recreate (code/SVG/hybrid) | refine (AI+standards) | accept-asset
  → Decision Note + spikes
    │
    ▼
Media Accept → Tech Compose
```

**MUST:** free vision without structure clone for ambitious units; pin claim-safe labels from C; document `realize_path`; manifest assets; Media Accept owns ideal proximity.  
**MUST NOT:** attach repo flowcharts as free-vision templates; invent clinical content; endless render loops; mark production done without Accept.

## Process

### Phase A — Free vision (default for ambitious units)

1. Extract Visual-Units from Brief (graphic only).  
2. Write **Vision Brief** from `domains/medical/templates/graphic-vision.template.md`.  
3. Load [`references/free-vision.md`](references/free-vision.md).  
4. Generate with **free** tool (preferred: `./scripts/graphics-vision-agy.sh`).  
5. Cap **2** free gens per unit. Save paths.  

Skip Phase A only for trivial units or documented exception.

### Phase B — Realize

1. Choose **`realize_path`:** `recreate` | `refine` | `accept-asset`  
   — heuristics: [`references/decision-heuristics.md`](references/decision-heuristics.md).  
2. **recreate:** Typst/Fletcher/CeTZ and/or SVG hybrid with labels **on** slots.  
3. **refine:** AI again with [`references/book-visual-standards.md`](references/book-visual-standards.md) + surgical fixes (`./scripts/graphics-refine-agy.sh`).  
4. **accept-asset:** promote PNG/SVG; DPI + alt + claim audit; H-Gfx if risk.  
5. Prefer maintainable carrier when quality ≈ equal (code/hybrid > low-DPI raster).  
6. Write **Decision Note** from template.  
7. Handoff Media Accept + Tech Compose.

### graphic_mode (carrier)

`code` | `asset` | `hybrid` | `ab-test` | `none`  
— see decision-heuristics.

## Outputs

| Artifact | Path |
|---|---|
| Vision Brief | `domains/medical/briefs/<slug>.vision.md` |
| Decision Note | `domains/medical/briefs/<slug>.graphics.md` |
| Assets | `domains/medical/assets/<slug>/` |
| Spikes | `dist/spikes/graphics/<slug>/` |

## Spikes

Types: `vision-free` | `recreate-code` | `recreate-hybrid` | `refine-ai` | `ab-pair`  
See `toolset/compose/spikes/README.md`.

```bash
./scripts/graphics-vision-agy.sh \
  --brief domains/medical/briefs/<slug>.vision.md \
  --out domains/medical/assets/<slug>/vision-free-01.png

typst compile --root . --ignore-system-fonts --font-path fonts \
  path/to/spike.typ dist/spikes/graphics/<slug>/out.pdf
```

## Iteration caps

| Loop | Max | Then |
|---|---|---|
| Free gens / unit | **2** | Human/Media direction |
| Prompt refine gens | **2** | Human or recreate |
| Recreate solid spikes | **1** (+ polish) | Accept or fallback |
| Media↔Tech | **2** | Human |

## ALWAYS / NEVER

| ALWAYS | NEVER |
|---|---|
| Free vision without structure template (ambitious units) | Default free gen with SVG/PNG layout attach |
| Claim-safe labels from C | Clinical invention in pictures |
| Document realize_path + Decision Note | Endless AI loops without artifact |
| Hybrid labels on nodes if hybrid | Foot-legend-only as equal to flowchart |
| Media Accept on ideal proximity | Graphics alone = production done |
| DPI/alt/manifest for assets | Silent monotony to avoid graphics work |

## Boundary

| Graphics | Media | Tech |
|---|---|---|
| Vision + realize + assets | Ideal + Accept | Feasibility, compose, validate |
| Domain B | Domain B | Platform A |

## Related

| | |
|---|---|
| Free vision | `references/free-vision.md` |
| Standards (B2) | `references/book-visual-standards.md` |
| Tools | `references/tools-and-generation.md` |
| Vision template | `domains/medical/templates/graphic-vision.template.md` |
| Decision template | `domains/medical/templates/graphic-decision.template.md` |
| Track | `devtracks/medical-graphics/` |
| Gold free vision | `domains/medical/assets/iii2-bls-aed/primar-algorithmus-raster-nanobanana-free.png` |

## Product note

Produkt **B**. Do not fold medical free-vision logic into `packages/bookkit`.
