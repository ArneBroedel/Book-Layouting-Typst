# Decision heuristics — free vision → realize

**Load when:** choosing Phase A/B and `graphic_mode` / `realize_path`.

## 0. Ladder (v0.4 free-first + track + harvest)

```text
0. Form Spec (Media)     — Must-see + claim pins + genre
0b. Track (Graphics G0)  — free-vision-ambition (default) | grammar-only (opt-in) | none
1. Free vision           — when track = free-vision-ambition
2. Claim audit           — mandatory after free
2b. Harvest note         — layout cues ALWAYS after free (indep. of PASS/DRIFT/FAIL)
3. Best realization      — hierarchy-faithful recreate | hybrid | refine | accept-asset
4. Prefer maintainable   — code if ≈ equal *after harvest* (D4)
5. Raster end allowed    — only if gates PASS (playbook 06) + proximity
6. Media Accept          — free-vision proximity on ambition track
7. Fallback simpler      — only if vision + realize fail
```

**Code first** = preferred *realization carrier* when qualities equal after harvest — **not** “skip free vision” for real visual units.  
**Playbook:** `playbook/00-overview.md`

## 1. When to run free vision

| Yes (default track free-vision-ambition) | No / skip (grammar-only opt-in or none) |
|---|---|
| Real visual unit: urgency, mimic, cues, discrimination graphic, peel, dashboard | Trivial callout/table (`none`) |
| decision-flow, mechanism, cue-cluster, criteria-by-picture, spatial (non-body) | Documented pure re-pin of already harvested module |
| Media ambition required/optional | Explicit Human/Media skip; smoke / EXCEPTION |
| Media ideal needs non-box form | Anatomy free blocked without H-Gfx |

## 2. Free vision quality (Phase A rubric)

| Criterion | Question |
|---|---|
| Ideal proximity | Matches Media “what learner sees”? |
| Learner job | Faster scan / action under genre stress? |
| Flow honesty | Branches/loops look like branches/loops? |
| Claim risk | Invented clinical text? mark for B |
| Novelty | Not a silent clone of repo SVG? |

## 3. realize_path (Phase B)

| Path | Prefer when |
|---|---|
| **recreate** | Free vision strong; Typst/SVG/hybrid can approach it |
| **refine** | Vision good; needs palette/flow/German polish only |
| **accept-asset** | Recreate loses quality; DPI/alt/H-Gfx OK |

Production preference after free vision + claim audit:

1. recreate (code) when quality ≈ free  
2. true hybrid (labels on nodes) when form chrome needs asset  
3. vector asset  
4. high-res / refined raster **only with gates** (claim PASS, DPI or screen-only, MANIFEST, Accept)  

Never: accept-asset on claim FAIL.

## 4. graphic_mode (carrier)

| `graphic_mode` | Use |
|---|---|
| `code` | Typst/bookkit/@preview only |
| `asset` | Image main carrier (SVG prefer; raster if needed) |
| `hybrid` | Asset form + Typst labels on slots |
| `ab-test` | Compare candidates; Accept picks |
| `none` | No graphic object |

## 5. Incomplete hybrid

Foot-legend-only hybrid is **invalid** as equal to labeled flowchart. Labels must sit **on** referents.

## 6. Structure-transfer mode

Attaching SVG/PNG as layout template is **opt-in** (brand remake). Never default free-vision test.
