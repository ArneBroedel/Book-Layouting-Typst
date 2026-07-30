# Playbook 00 — Overview (Graphics pipeline)

**Skill:** `medical-graphics`  
**Full plan (archived):** `devtracks/_archive/medical-graphics/playbook-system-plan.md`  
**Harvest policy:** `devtracks/_archive/free-vision-harvest/`  
**Design-quality:** `devtracks/design-quality-system/` (Design CLEAN → realize → Visual CLEAN)

## End-to-end

```text
Design CLEAN (Form Spec + Design Contract + Design Critic)
  → G0 Visual-Units + **track** (default free-vision-ambition)
  → G1 Free vision (if ambition track)
  → G2 Claim audit
  → Harvest (cues → Contract atom_ids)
  → G3 Realize (hierarchy-faithful recreate / hybrid / refine / A/B)
  → G3b Visual Critique on PNG (playbook 11) until Visual CLEAN
  → Decision Note → Media Accept (AX) → Tech embed
```

**Anti-patterns to kill:** free vision without Design CLEAN; free vision → pin-monotone; Accept without opening page PNGs; code-leak on page.

## Stages (this skill owns G0–G4)

| Stage | Playbook | Output |
|---|---|---|
| G0 | [01-from-form-spec](01-from-form-spec.md) | unit list + recipe + **track** |
| G1 | [02-free-vision](02-free-vision.md) | `*.vision.md` + PNG + **harvest draft** |
| G2 | [03-claim-audit](03-claim-audit.md) | PASS/DRIFT/FAIL (harvest still required on ambition) |
| G3a | [04-recreate-typst](04-recreate-typst.md) | hierarchy-faithful `lib/*.typ` + spike |
| G3b | [05-hybrid](05-hybrid.md) | hybrid spike (optional) |
| G3c | [06-refine-raster](06-refine-raster.md) | refined PNG; **raster end gates** |
| G3d | [07-ab-compare](07-ab-compare.md) | compare.pdf + scores |
| G3b | [11-visual-critique](11-visual-critique.md) | PNG inspect → Visual CLEAN |
| G4 | [08-accept-handoff](08-accept-handoff.md) | `*.graphics.md` + CLEAN packet |
| Recipes | [09-form-recipes](09-form-recipes.md) | skeletons |
| KL path | [10-kl-chapter-pipeline](10-kl-chapter-pipeline.md) | one monograph E2E |
| Example | [walkthrough-iv2](walkthrough-iv2.md) | full run |

## Track (per unit, G0)

| Track | Free vision? | Default? |
|---|---|---|
| `free-vision-ambition` | Yes (unless H-Gfx / Human skip) | **Yes** for real visual units |
| `grammar-only` | No | **Opt-in only** (documented re-pin / skip) |
| `none` | No | Pure prose / no graphic |

## Caps

| Loop | Max |
|---|---|
| Free gens / unit | 2 |
| Refine gens | 2 |
| Solid recreate spikes | 1 (+ polish) |
| Fair hybrid spikes | 1 |
| Media↔Graphics rounds | 2 → Human |

## End product policy

| Carrier | When |
|---|---|
| **code** (prefer if ≈ equal after harvest) | hierarchy-faithful Typst module |
| **hybrid** | form chrome needs asset + labels **on** nodes |
| **asset raster/SVG** | claim audit PASS + DPI/manifest gates + Media Accept |

Raster is **allowed**, not default. See 06.  
**DRIFT** does not discard composition — harvest + recreate-with-harvest or surgical refine.

## Artifact paths

| Artifact | Path |
|---|---|
| Form Spec | `domains/medical/briefs/<slug>.form-spec.md` |
| Vision | `…/<slug>.vision.md` |
| Harvest | section in `*.graphics.md` or `…/<slug>.harvest.md` (template `graphic-harvest.template.md`) |
| Claim audit | optional note or section in graphics.md |
| Decision | `…/<slug>.graphics.md` |
| Assets | `domains/medical/assets/<slug>/` |
| Modules | `domains/medical/lib/typst/` · spike re-exports under `toolset/compose/spikes/graphics/<slug>/` |
| Spikes out | `dist/spikes/graphics/<slug>/` |

## ALWAYS / NEVER (summary)

| ALWAYS | NEVER |
|---|---|
| **Design CLEAN** before free gen / realize | Free gen without Design Contract + Critic clean |
| Name **track** before free gen | Silent grammar-only chapter default |
| Read Form Spec + Contract before free gen | Free gen with structure SVG attach |
| Claim audit after free | accept-asset on FAIL audit |
| **Harvest** → atom_ids after free vision | Free vision → pin-monotone code as winner |
| Port harvest **must** cues on recreate | Drop composition because DRIFT |
| **PNG + Visual Critic** until Visual CLEAN | Self-CLEAN / compile-only handoff |
| Labels on nodes if hybrid | Foot-legend-only as equal flowchart |
| Document realize_path + harvest + visual_critique | Invent clinical thresholds |
| Media Accept only on CLEAN packet | Endless AI loops without artifact |
