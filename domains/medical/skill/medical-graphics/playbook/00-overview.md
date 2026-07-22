# Playbook 00 — Overview (Graphics pipeline)

**Skill:** `medical-graphics`  
**Full plan:** `devtracks/medical-graphics/playbook-system-plan.md`

## End-to-end

```text
Form Spec (Media) → G0 Visual-Units → G1 Free vision → G2 Claim audit
  → G3 Realize ladder (recreate / hybrid / refine / A/B)
  → Decision Note → Media Accept → Tech embed
```

## Stages (this skill owns G0–G5)

| Stage | Playbook | Output |
|---|---|---|
| G0 | [01-from-form-spec](01-from-form-spec.md) | unit list + recipe pick |
| G1 | [02-free-vision](02-free-vision.md) | `*.vision.md` + PNG |
| G2 | [03-claim-audit](03-claim-audit.md) | PASS/DRIFT/FAIL |
| G3a | [04-recreate-typst](04-recreate-typst.md) | `lib/*.typ` + spike |
| G3b | [05-hybrid](05-hybrid.md) | hybrid spike (optional) |
| G3c | [06-refine-raster](06-refine-raster.md) | refined PNG; **raster end gates** |
| G3d | [07-ab-compare](07-ab-compare.md) | compare.pdf + scores |
| G4 | [08-accept-handoff](08-accept-handoff.md) | `*.graphics.md` ready |
| Recipes | [09-form-recipes](09-form-recipes.md) | skeletons |
| Example | [walkthrough-iv2](walkthrough-iv2.md) | full run |

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
| **code** (default if ≈ equal) | maintainable Typst module |
| **hybrid** | form chrome needs asset + labels **on** nodes |
| **asset raster/SVG** | claim audit PASS + DPI/manifest gates + Media Accept |

Raster is **allowed**, not default. See 06.

## Artifact paths

| Artifact | Path |
|---|---|
| Form Spec | `domains/medical/briefs/<slug>.form-spec.md` |
| Vision | `…/<slug>.vision.md` |
| Claim audit | optional note or section in graphics.md |
| Decision | `…/<slug>.graphics.md` |
| Assets | `domains/medical/assets/<slug>/` |
| Modules | `toolset/compose/spikes/graphics/<slug>/lib/` |
| Spikes out | `dist/spikes/graphics/<slug>/` |

## ALWAYS / NEVER (summary)

| ALWAYS | NEVER |
|---|---|
| Read Form Spec before free gen | Free gen with structure SVG attach |
| Claim audit after free | accept-asset on FAIL audit |
| Labels on nodes if hybrid | Foot-legend-only as equal flowchart |
| Document realize_path | Invent clinical thresholds |
| Media Accept before “production done” | Endless AI loops without artifact |
