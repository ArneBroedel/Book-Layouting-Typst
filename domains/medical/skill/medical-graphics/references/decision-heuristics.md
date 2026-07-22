# Decision heuristics — free vision → realize

**Load when:** choosing Phase A/B and `graphic_mode` / `realize_path`.

## 0. Ladder (v0.3 free-first + Form Spec)

```text
0. Form Spec (Media)     — Must-see + claim pins + genre
1. Free vision first     — ambitious visual units (default)
2. Claim audit           — mandatory after free
3. Best realization      — multi-round: recreate | hybrid | refine | accept-asset
4. Prefer maintainable   — when quality ≈ equal (code/hybrid > low-DPI raster)
5. Raster end allowed    — only if gates PASS (playbook 06)
6. Fallback simpler      — only if vision + realize fail
```

**Code first** = preferred *realization* when free vision skipped or qualities equal — **not** the first creative filter for ambitious graphics.  
**Playbook:** `playbook/00-overview.md`

## 1. When to run free vision

| Yes | No / skip |
|---|---|
| Wishlist high / ambitious diagram | Trivial callout/table |
| decision-flow, mechanism, cue-cluster, spatial | Smoke / EXCEPTION |
| Media ideal needs non-box form | Already have accepted gold vision |

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
