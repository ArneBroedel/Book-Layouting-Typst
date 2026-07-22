---
name: medical-graphics
description: "ALWAYS use after Media Brief/Form Spec for visual units: free vision first, claim audit, then multi-round realize (Typst recreate, hybrid labels-on-nodes, AI refine); Decision Notes, A/B, raster end-product only with gates. Covers didactic content graphics (flows, protocols, schemas — not only anatomy). Do NOT use for Media Form Spec authorship, chapter compose/validate, or clinical claim rewrite."
---

# medical-graphics (Domain medical — Produkt B)

**Graphics** role: after Media’s **Form Spec** / Brief ideal, produce the best **visual realization**.

**SoT:** `domains/medical/skill/medical-graphics/`  
**Playbook (run this):** [`playbook/00-overview.md`](playbook/00-overview.md)  
**Policy:** `toolset/compose/CREATIVE-COMPOSE.md`  
**Why-guide:** `Guides/Medical-Graphics-Playbook.md`

## When to use

- Form Spec / Brief implies diagrams, flows, protocols, schemas, cue systems  
- Free vision, claim audit, Typst recreate, hybrid, AI refine  
- Decision Note, asset manifest, A/B, Accept handoff  

## When NOT to use

| Situation | Use instead |
|---|---|
| Form Spec / free ideal authorship / Accept decision | `media-brief` |
| Full chapter compose + validate | `compose-chapter` |
| bookkit API only | `bookkit` |
| Typst syntax bugs | `typst-writer` |
| Claim rewrite | Content (C) |
| Pure text / no graphic | `graphic_mode: none` — skip |

## Pipeline

```text
Form Spec (Media)
    │
    ▼
G0  Visual-Units + recipe          playbook/01
G1  Free vision (no structure)     playbook/02
G2  Claim audit (mandatory)        playbook/03
G3  Realize ladder:
      R1 Typst recreate            playbook/04
      R2 Hybrid (optional)         playbook/05
      R3 Refine / raster gates     playbook/06
      R4 Fair A/B                  playbook/07
G4  Decision Note → Media Accept   playbook/08
    │
    ▼
Tech embed accepted winner
```

**MUST:** read Form Spec; free vision without structure clone (ambitious units); **claim audit after free**; pin labels from C; document `realize_path`; Media Accept owns ideal proximity.  
**MUST NOT:** invent clinical content; foot-legend-only hybrid as fair A/B; accept-asset on audit FAIL; endless AI loops; production “done” without Accept.

## End product policy

| `graphic_mode` | Prefer when |
|---|---|
| `code` | Default if quality ≈ free (maintainable) |
| `hybrid` | Asset chrome + Typst labels **on** nodes |
| `asset` | Refined/free raster or SVG **after** claim PASS + DPI/manifest + Accept |
| `ab-test` | Multiple candidates until Accept |
| `none` | No graphic object |

Raster **may** be final — only with gates in [`playbook/06-refine-raster.md`](playbook/06-refine-raster.md).

## Caps

| Loop | Max | Then |
|---|---|---|
| Free gens / unit | **2** | Human/Media |
| Refine gens | **2** | recreate or Human |
| Solid recreate | **1** (+ polish) | Accept or fallback |
| Fair hybrid | **1** | — |
| Media↔Graphics | **2** | Human |

## Artifacts

| Artifact | Path |
|---|---|
| Form Spec (Media) | `domains/medical/briefs/<slug>.form-spec.md` |
| Vision Brief | `…/<slug>.vision.md` |
| Claim audit | template `graphic-claim-audit.template.md` |
| Decision Note | `…/<slug>.graphics.md` |
| Assets | `domains/medical/assets/<slug>/` |
| Modules | `toolset/compose/spikes/graphics/<slug>/lib/` |
| Spikes out | `dist/spikes/graphics/<slug>/` |

## Commands

```bash
./scripts/graphics-vision-agy.sh \
  --brief domains/medical/briefs/<slug>.vision.md \
  --out domains/medical/assets/<slug>/vision-free-01.png

./scripts/graphics-refine-agy.sh \
  --vision domains/medical/assets/<slug>/vision-free-01.png \
  --brief domains/medical/briefs/<slug>.vision.md \
  --notes "…" --out domains/medical/assets/<slug>/vision-refined-01.png

./scripts/graphics-spike-init.sh <slug> <recipe-id>

typst compile --root . --ignore-system-fonts --font-path fonts \
  toolset/compose/spikes/graphics/<slug>/spike-recreate.typ \
  dist/spikes/graphics/<slug>/recreate.pdf
```

## Form recipes

See [`playbook/09-form-recipes.md`](playbook/09-form-recipes.md):  
`branching-emergency` · `leitsymptom-vertical-flow` · `hard-stop-protocol` · `framework-os-sequence`

## Gold examples

[`examples/INDEX.md`](examples/INDEX.md) · Walkthrough [`playbook/walkthrough-iv2.md`](playbook/walkthrough-iv2.md)

## References

| | |
|---|---|
| Free vision | [`references/free-vision.md`](references/free-vision.md) |
| Decision heuristics | [`references/decision-heuristics.md`](references/decision-heuristics.md) |
| Book visual standards | [`references/book-visual-standards.md`](references/book-visual-standards.md) |
| Graphic types | [`references/graphic-types.md`](references/graphic-types.md) |
| Tools | [`references/tools-and-generation.md`](references/tools-and-generation.md) |
| Asset pipeline | [`references/asset-pipeline.md`](references/asset-pipeline.md) |
| Presentation forms (why) | `Guides/Medical-Presentation-Forms.md` |

## Boundary

| Graphics | Media | Tech |
|---|---|---|
| Vision + realize + assets | Form Spec + ideal + Accept | Feasibility, compose, validate |
| Does not invent Form Spec | Does not write production `.typ` | Does not invent ideal |
| Does not own Accept | Does not free-gen production claims | Embeds Accept winners |

## Product note

Produkt **B**. Do not fold medical free-vision logic into `packages/bookkit`.

**Background:** `Guides/Medical-Graphics-Playbook.md` · Track `devtracks/medical-graphics/`
