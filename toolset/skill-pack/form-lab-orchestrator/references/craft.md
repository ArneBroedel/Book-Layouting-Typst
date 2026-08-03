# Craft loop & medium rules (summary)

Full track detail: `devtracks/chapter-form-lab/plan.md` · `pass-craft-loop.md`.  
Runtime medium-rules copies: `toolset/orchestration/form-lab/_templates/medium-rules-*.md`.

## Loop (every pass)

```text
for r = 1…max:
  1. Build/revise under medium rules → chapter.typ (+ assets V/R)
  2. Compile + export page PNGs to dist/form-lab/<lab-id>/<pass>/
  3. Critic on PNGs → critique-rNN.md (revise | medium-optimum-candidate)
  4. If candidate AND r ≥ min AND empty blocks AND no SR FAIL:
       exhaustion.md → hand back to OR
  5. Else implement fixes; r += 1
  6. If r > max → residual dossier + OR/Human
```

**Anti-pattern:** first draft → accept for comparison.  
**Required:** draft → see → fix → … until medium exhausted.

Under **L2 autodrive**, OR runs this loop in-session for each pass (role-separated Builder vs Critic steps + files).

## Compile flags (always)

```bash
typst compile --root . --ignore-system-fonts --font-path fonts \
  toolset/compose/pilots/form-lab-…/chapter.typ \
  dist/form-lab/<lab-id>/<pass>/chapter.pdf
# PNG pages for critic eyes
typst compile --root . --ignore-system-fonts --font-path fonts \
  --format png --ppi 200 \
  …/chapter.typ dist/form-lab/<lab-id>/<pass>/p{n}.png
```

## Medium purity (one-liners)

| Pass | Dominant | Deny (examples) |
|---|---|---|
| **T** | Type + simple icons | Panel walls, free vision, rich SVG scenes |
| **C** | Color/chrome/bands | Free-vision heroes, large SVG illustration systems |
| **V** | Many small SR-PASS vectors | Caption-rescued doodles; mega-infographic dump |
| **R** | Many small SR-PASS rasters | Mega-infographic single gen; kitchen-sink prompts |
| **S** | Proven winners only | Untested media; force all media on p1 |

## Semantic Read (hard)

SoT: `domains/medical/skill/medical-graphics/references/prompt-and-semantic-read.md`

| Applies to | Gate |
|---|---|
| Pass R gens | After each gen: open PNG → SR |
| Pass V glyphs | After each draw: open PNG → SR **without caption** |
| Matrix / S | FAIL cannot win or mount; caption-dependent ≤2 |

Optional durable log: `_templates/sr-log.md` → `passes/<P>/sr-log.md`.

## Pass S rules — best-of fusion

Pass S is the **fused best chapter**, not an optional demo.

| Must | Must not |
|---|---|
| Read matrix winners + **asset paths** from this lab’s T/C/V/R | Invent untested media |
| Mount prepared winning assets (SVG/PNG/modules) that SR PASS | Mount FAIL or caption-rescued doodles |
| Per job: single strongest carrier | Stack face+face / medium quota on p1 |
| **Omit is a win** for weak media | Force T+C+V+R balance |
| Iterate: S draft → PNG → critique → revise to synthesis-clean | One-shot collage |
| Captions: Aspekt/Kachel/Gestalt | Caption that “fixes” SR FAIL |

Full procedure: `toolset/orchestration/form-lab/_templates/medium-rules-S.md`.

## Paths

| Kind | Pattern |
|---|---|
| Pilot source | `toolset/compose/pilots/form-lab-<chapter>-<pass>/` |
| Dist | `dist/form-lab/<lab-id>/<pass>/` |
| Assets V/R | `domains/medical/assets/form-lab/<lab-id>/…` |
| Critiques | `…/passes/<P>/critique-rNN.md` |
