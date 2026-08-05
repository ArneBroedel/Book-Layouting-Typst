# Medical Graphics Playbook — why free-first realization works

**Encoded in skill:** `medical-graphics`  
**Operational steps:** `domains/medical/skill/medical-graphics/playbook/`  
**Companion:** `Guides/Medical-Presentation-Forms.md` (Form Spec pedagogy)

---

## 1. Problem we solved

Media can name an ideal; Tech can compose tables. Missing was a **repeatable Graphics path** that:

1. Starts from a detailed pedagogical Form Spec  
2. Generates a free visual idea without cloning repo SVGs  
3. Rebuilds claim-safely in Typst (or hybrid)  
4. Optionally refines raster — and **may** accept raster as end product under gates  
5. Hands Media a Decision Note for Accept  

Evidence corpus: III-2, IV-2, III-5, II-1, IV-4 (+ eval batch 2026-07-22).

---

## 2. Free-first, not “code as creative filter”

| Stage | Filter |
|---|---|
| Creativity | Free vision from Form Spec + pins |
| Production | Prefer maintainable carrier when quality ≈ equal |

“Code first” means preferred **realization**, not the first creative move for ambitious units.

**Structure-transfer** (attach SVG as layout template) produces clones and kills free tests — opt-in only for brand remakes.

---

## 3. Contiguity and fair hybrid

Hybrid with **foot legend only** is not a flowchart for A/B purposes.  
True hybrid: asset form + **Typst labels on node slots**.

III-2 v1 unfair → v2 on-node labels restored fair comparison; hybrid can win ideal proximity; code remains maintainability fallback.

---

## 4. Claim audit is mandatory

Free models invent:

- Clinical gibberish / fake vitals (IV-4)  
- English stage titles / typos (III-5)  
- **Plausible icons that teach the wrong criterion** (Melanom ABCDE: sharp border for *unscharf*; dishonest mm scale)

**Rule:** audit every on-image **label** *and* **illustration-semantics** against pins before `accept-asset`.  
FAIL → recreate owns claims; free is composition provenance only.  
Icon/scale DRIFT with good layout → **surgical refine** (tile-scoped notes), not always full re-free.

### CRPS 2026-07-31 (process harvest)

| Lesson | Default practice |
|---|---|
| First-glance pretty fails textbook scrutiny | Do not Accept on polish alone; audit laterality, leaders, structure |
| Multi-pin labeled free dashboards overload the model | Prefer **one visual claim** per free gen; **no labels in free raster** by default (Typst owns pins) |
| Body/contralateral limbs remain high-risk | Stay under anatomy pause unless H-Gfx |
| Bad demotion is worse than no free vision | On FAIL → L3–L4 clinical table/cluster — **not** colored placeholder “hands” |
| Density is two-sided | Block sparse-sprawl *and* squish-compress; page count ≠ quality |
| Solid unimpressive can Accept | Simple-alternative success after ambition FAIL is a win |

Evidence: `domains/medical/briefs/_archive/campaigns-flat-2026-08/kl-crps-2026-07-31.process-review.md`.

### Multi-chapter portfolio 2026-08-01 (ops + layout)

| Lesson | Default practice |
|---|---|
| L2 premature stop after one chapter | Continue to portfolio idle unless hard stop |
| Parallel workers | Allowed if full packets + board reconcile; re-check macro page structure |
| Selective free vision across portfolio | Code when grammar teaches; free/hybrid only when gestalt needs it; **document skips** |
| Genre mix in one board | KL / notfall / leitsymptom / framework viable |
| **Macro page restlessness / odd indent / unclear flow** | Visual CLEAN + compose must re-read **full chapter PNGs** for scan-path — validate OK is not enough |
| **Print density (Human densify pass)** | Body flows `density: "compact"`; no hero pagebreaks for thin steps; mid-chapter bottoms fill |
| SCORE hygiene (Wells / ABCD² / MHS) | SCOPE / Sensibilisierung — never TIME ladder |
| T3 silent in C | Collapse — no empty third urgency card |

Evidence: `devtracks/_archive/multi-chapter-explore-layout/retro-2026-08-01.md` · `evaluation/09-human-density-critique.md` · board `kursbuch-explore-2026-08` · ops `toolset/skill-pack/book-production-orchestrator/references/multi-chapter-explore.md`.

---

## 5. Genre chrome matters

II-1 framework OS must not look like a CES/BLS red wall.  
Emergency protocols need solid danger where stops are.

---

## 5b. Krankheitslehre graphics

Illness-script monographs: load **form library** + **ontology**, then transfer or free-vision ambition units.

| | |
|--|--|
| Operating model | `Guides/KL-Form-Language.md` |
| Library | `domains/medical/skill/medical-graphics/references/kl-form-library.md` |
| Recipes | `playbook/09-form-recipes.md` (KL section) |
| Transfer demo | Melanom spike `spike-melanom.typ` → `melanom.pdf` |

**Track default (2026-07-30):** real visual units use **`free-vision-ambition`** — not a chapter/genre-wide grammar-only baseline.  
`grammar-only` is **opt-in** (documented re-pin of an already harvested pattern, or explicit skip).

**Design-quality (2026-07-30):** Design CLEAN (Contract + Critic) **before** free vision; Visual CLEAN (PNG + Visual Critic) **before** Accept — including exploration didactic PDFs.  
**Ambition path:** Design CLEAN → free vision (**short positive prompt** → gen → **Semantic Read hard gate**) → claim audit → **harvest→atoms** → hierarchy-faithful code/hybrid/asset → **visual critique loop** (Semantic Read FAIL = block until regen/demote).  
**Do not** scale quality via per-chapter negative prompt lists — SoT: `domains/medical/skill/medical-graphics/references/prompt-and-semantic-read.md`.  
**Semantic Read covers Typst/CeTZ glyphs too** (Form Lab Pass V lesson 2026-08): caption-rescued doodles (foot-blob+dot, smiley droop, red airway arcs, equal-circles+polygon “ugly duckling”) are **FAIL**, not style. **Omit is a win** when type/chrome or a strong raster already teaches. One primary aspect per learner job; prefer in-situ clinical context over sticker cutouts.  
**DRIFT ≠ discard free vision** — port harvest must-cues; pin-monotone fails proximity.  
Prefer **code if ≈ equal** after harvest; **simple form if complex is not better**.  
Never put form-meta inside the figure.  
Templates: `design-contract` · `visual-critique` · `graphic-harvest` · playbook `00` / `11` / `10`.  
**Negative gold:** CRPS re-run (`kl-crps-rerun-2026-07-30`) — code-leak in peel, unmotivated orange row, mechanism chain worse than list; process without visual eyes.

---

## 6. Pattern transfer

Leitsymptom vertical flow (IV-2) transfers to IV-4 with new split chips — same skeleton, new pins, always re-audit free labels.

Hard-stop (III-5) and branching-emergency (III-2) are separate recipes.

---

## 7. Dual layout (portrait / landscape)

Free vision may be horizontal dashboard (II-1). A4 body often needs vertical stack.  
Recreate may expose `layout: "vertical" | "landscape"` without changing claims.

---

## 8. Raster as end product

Allowed when: claim PASS, Must-see met, DPI or screen-only flag, MANIFEST, Decision Note `accept-asset`, Media Accept.  
If quality ≈ code → prefer code/hybrid.

AI rasters often ~146 dpi @ 150 mm — pilot/screen unless upscaled.

---

## 9. Caps and roles

Caps prevent endless gen loops (2 free, 2 refine, 1 solid recreate).  
Media owns Form Spec + Accept. Graphics owns vision + realize. Tech embeds winners.  
Nobody rewrites Critical Claims in pictures.

---

## 10. How to run (pointer)

1. Media: Form Spec  
2. Graphics: playbook `00` → `08`  
3. Media: Accept graphic winners  
4. Tech: embed  

Gold index: `domains/medical/skill/medical-graphics/examples/INDEX.md`  
Walkthrough: `…/playbook/walkthrough-iv2.md`

---

## Harvest source

`devtracks/_archive/medical-graphics/` · eval `dist/spikes/graphics/_eval/eval-batch-2026-07-22.md` · plan `playbook-system-plan.md`
