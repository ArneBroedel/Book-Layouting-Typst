---
name: medical-graphics
description: "ALWAYS use after Media Brief/Form Spec for visual units: free vision first, claim audit, then multi-round realize (Typst recreate, hybrid labels-on-nodes, AI refine); Decision Notes, A/B, raster end-product only with gates. Use for Krankheitslehre forms (urgency/scope, mimic peel, discrimination, CES/MSCC spatial), pattern transfer from kl-form-library. Covers didactic content graphics (flows, protocols, schemas — not only anatomy). Do NOT use for Media Form Spec authorship, chapter compose/validate, clinical claim rewrite, or inventing German clinical text."
---

# medical-graphics (Domain medical — Produkt B)

**Graphics** role: after Media’s **Design CLEAN** packet (Form Spec + Design Contract + Design Critic), produce the best **visual realization**, then pass **Visual Critic** until Visual CLEAN.

**SoT:** `domains/medical/skill/medical-graphics/`  
**Playbook (run this):** [`playbook/00-overview.md`](playbook/00-overview.md)  
**Visual critique:** [`playbook/11-visual-critique.md`](playbook/11-visual-critique.md)  
**Policy:** `toolset/compose/CREATIVE-COMPOSE.md`  
**Design-quality:** `devtracks/design-quality-system/`  
**Why-guide:** `Guides/Medical-Graphics-Playbook.md`  
**KL form language:** `Guides/KL-Form-Language.md` · library [`references/kl-form-library.md`](references/kl-form-library.md)

## When to use

- Form Spec / Brief implies diagrams, flows, protocols, schemas, cue systems  
- Free vision, claim audit, Typst recreate, hybrid, AI refine  
- Decision Note, asset manifest, A/B, Accept handoff  
- **KL / Illness Script** units: urgency-scope, mimic, discrimination, mechanism chain, spatial saddle/MSCC — see [`references/kl-form-library.md`](references/kl-form-library.md)  

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
Design CLEAN packet (Media: Form Spec + Design Contract + Design Critic)
    │
    ▼
G0  Visual-Units + recipe + **track**     playbook/01
G1  Free vision (if free-vision-ambition) playbook/02
G2  Claim audit (mandatory)               playbook/03
    Harvest → map to Contract atom_ids    graphic-harvest
G3  Realize ladder:
      R1 Hierarchy-faithful Typst recreate playbook/04
      R2 Hybrid (optional)                 playbook/05
      R3 Refine / raster gates             playbook/06
      R4 Fair A/B                          playbook/07
G3b Visual Critique on PNG pages          playbook/11  ← until Visual CLEAN
G4  Decision Note → Media Accept (AX)     playbook/08
    │
    ▼
Tech embed accepted winner
```

**MUST:** refuse free gen / realize without **Design CLEAN**; name **track** per unit; realize at Contract **intensity level** (L0–L6; do not silently upgrade to diagram/raster); free vision only when Contract is L6 (or explicit ambition track); prefer **one focused visual claim** per free gen and **default no labels in free raster** (Typst owns German pins); write **short positive prompts** (concrete subject; no long kitchen-sink / no negative-list-as-strategy; **§1.1 rewrite dual-meaning jargon** e.g. *atomic*/*cascade* before gen — [`references/prompt-and-semantic-read.md`](references/prompt-and-semantic-read.md)); **open every gen and run Semantic Read** (Lesart · Job-Fit · Falsche Lehre · Claim-Trennung) as **hard gate** before montage/Accept; **claim audit** after free including illustration-semantics (laterality, leaders, structure — not text-only); **harvest** mapped to **atom_ids**; port harvest must-cues; **honor Contract space budget** without **squish-compress** (dense book: often ~⅛–⅓ page teaching density, still readable rhythm); **export PNG and Visual Critic** until Visual CLEAN (builder ≠ critic); pin labels from C; document realize_path + harvest + visual_critique_path; **German labels only** in ship text; no form-meta in figures. On free **FAIL** or Semantic Read FAIL: demote raster and **step down** to simple alternative / L3–L4 clinical typography.  
**MUST NOT:** invent clinical content; free vision without Design CLEAN; free vision without harvest; free vision when Contract chose L0–L3; pin-monotone winner on ambition when free truly passed; **self-CLEAN visual**; handoff Accept without PNG inspection; **declare process done / Accept-ready while Semantic Read FAIL is open**; code-leak / overflow / **sparse-sprawl** / **squish-compress** / **over-intensity** ship; accept-asset on FAIL; endless AI gens beyond caps; transfer decorative bars without meaning; expand insets/spacers for “premium air” when pins are few; replace failed free vision with **decorative placeholder geometry** (colored “hand” blocks, empty ovals); treat first-glance pretty or minimized page count as done; use caption/disclaimer to waive a Semantic Read FAIL.

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
| Solid recreate | **1** (+ polish) | visual loop |
| Fair hybrid | **1** | — |
| **Visual critique rounds** | **5** | Human (do not fake clean) |
| Media↔Graphics feasibility | **2** | Human |

**Floor beats schedule:** open visual `block` → no Accept. Simplification to Contract simple alternative is a valid CLEAN path.

## Artifacts

| Artifact | Path |
|---|---|
| Form Spec + Design Contract (Media) | `…form-spec.md` · `…design-contract.md` |
| Design Critique CLEAN | `…design-critique.md` |
| Vision Brief | `…/<slug>.vision.md` |
| Harvest | section in `*.graphics.md` or `…/<slug>.harvest.md` · map to atom_ids |
| Claim audit | template `graphic-claim-audit.template.md` |
| Visual Critique CLEAN | `…visual-critique.md` + page PNGs |
| Decision Note | `…/<slug>.graphics.md` |
| Quality packet | `…quality-packet.md` |
| Assets | `domains/medical/assets/<slug>/` |
| Modules (SoT) | `domains/medical/lib/typst/` (`kl-core/`, `kl-wave5/`, `kl-wave6/`) |
| Spike re-exports / drivers | `toolset/compose/spikes/graphics/<slug>/lib/` · `spike-*.typ` |
| Spikes out | `dist/spikes/graphics/<slug>/` |

## Commands

Prefer unified **`bookkit graphics`** (one-shot only — **not** a refine loop):

```bash
./scripts/bookkit graphics vision --backend agy \
  --brief domains/medical/briefs/<slug>.vision.md \
  --out domains/medical/assets/<slug>/vision-free-01.png

# If agy image quota (429): Gemini Web UI Nano Banana
./scripts/bookkit graphics vision --backend gemini \
  --brief domains/medical/briefs/<slug>.vision.md \
  --out domains/medical/assets/<slug>/vision-free-gemini-01.png

./scripts/bookkit graphics refine \
  --vision domains/medical/assets/<slug>/vision-free-01.png \
  --brief domains/medical/briefs/<slug>.vision.md \
  --notes "…" --out domains/medical/assets/<slug>/vision-refined-01.png

./scripts/bookkit graphics spike-init <slug> <recipe-id>
./scripts/bookkit graphics manifest --unit <slug>
./scripts/bookkit prepress dpi --paths domains/medical/assets/<slug>

# Legacy thin engines (still valid):
# ./scripts/graphics-vision-agy.sh | graphics-vision-gemini.sh | graphics-refine-agy.sh | graphics-spike-init.sh

typst compile --root . --ignore-system-fonts --font-path fonts \
  toolset/compose/spikes/graphics/<slug>/spike-recreate.typ \
  dist/spikes/graphics/<slug>/recreate.pdf
```

**Caps still apply** (max 2 free + 2 refine gens / unit) — enforce here, not via CLI loops.  
Do **not** commit intermediate vision PNGs without MANIFEST `accepted` (`assets/CANONICAL.md`).

## Form recipes

See [`playbook/09-form-recipes.md`](playbook/09-form-recipes.md):  
`branching-emergency` · `leitsymptom-vertical-flow` · `hard-stop-protocol` · `framework-os-sequence`  
**+ KL:** `kl-urgency-scope-stack` · `kl-urgency-nested-t1` · `kl-urgency-exception-t1` · `kl-urgency-scope-dashboard` · `kl-mimic-map` · `kl-mimic-peel` · `kl-discrimination` · `kl-mechanism-chain` · `kl-abcde-look` · `kl-fast-look` · `kl-flag-cluster` · `kl-safety-chrome` · `kl-spatial-saddle` · `kl-spatial-mscc`  
**E2E one monograph:** [`playbook/10-kl-chapter-pipeline.md`](playbook/10-kl-chapter-pipeline.md)

## Gold examples

[`examples/INDEX.md`](examples/INDEX.md) · Walkthrough [`playbook/walkthrough-iv2.md`](playbook/walkthrough-iv2.md)  
**KL modules:** `domains/medical/lib/typst/` · spike drivers under `toolset/compose/spikes/graphics/{kl-script-system,kl-wave5,kl-wave6}/`

## Track + harvest (free-vision-ambition default)

| Track | When | Free vision? | Default posture |
|-------|------|--------------|-----------------|
| **`free-vision-ambition`** | Real visual units: urgency, mimic, cues, discrimination graphic, peels, dashboards, criteria-by-picture, novel chrome | Yes → audit → **harvest** → hierarchy-faithful recreate / refine / asset | **Yes** — normal path |
| **`grammar-only`** | Opt-in: pure re-pin of already harvested pattern; documented Human/Media skip; time-box | No | **No** — never silent chapter/genre default |
| **`none`** | No graphic object | No | — |

**Harvest:** non-claim layout cues (zones, weight, peel, rails, dual-coding). Template `domains/medical/templates/graphic-harvest.template.md`.  
**DRIFT ≠ discard composition** — refine or recreate-with-harvest; pin-monotone fails free-vision proximity Accept.  
**Carrier (D4):** hierarchy-faithful **code first**; code if ≈ equal after harvest; asset when chrome cannot match.  
Never accept-asset on claim FAIL. Free vision may invent EN/meta chrome → refine or code SoT with harvest.  
Criteria icons may look right while teaching wrong (Melanom B/D) → illustration-semantics + surgical refine.  
**Quota / 429 fallback to Typst must not be Accept-ed as free vision.** Name the carrier.  
**Body/anatomy free vision:** **paused by default** (Human 2026-07-29) — H-Gfx to reopen.  
**CRPS 2026-07-31:** multi-pin labeled limbs fail textbook scrutiny (laterality, arbitrary leaders); demote path must not invent blob theater — solid clinical table is a valid Accept winner. Process review: `domains/medical/briefs/kl-crps-2026-07-31.process-review.md`.

## References

| | |
|---|---|
| **KL form library** | [`references/kl-form-library.md`](references/kl-form-library.md) |
| **KL chapter pipeline** | [`playbook/10-kl-chapter-pipeline.md`](playbook/10-kl-chapter-pipeline.md) |
| Free vision | [`references/free-vision.md`](references/free-vision.md) |
| **Prompt craft + Semantic Read** | [`references/prompt-and-semantic-read.md`](references/prompt-and-semantic-read.md) |
| Decision heuristics | [`references/decision-heuristics.md`](references/decision-heuristics.md) |
| Book visual standards | [`references/book-visual-standards.md`](references/book-visual-standards.md) |
| Graphic types | [`references/graphic-types.md`](references/graphic-types.md) |
| Tools | [`references/tools-and-generation.md`](references/tools-and-generation.md) |
| Asset pipeline | [`references/asset-pipeline.md`](references/asset-pipeline.md) |
| Presentation forms (why) | `Guides/Medical-Presentation-Forms.md` |
| KL ontology (Media) | `domains/medical/skill/media-brief/references/kl-illness-script-ontology.md` |

## Boundary

| Graphics | Media | Tech |
|---|---|---|
| Vision + realize + assets | Form Spec + ideal + Accept | Feasibility, compose, validate |
| Does not invent Form Spec | Does not write production `.typ` | Does not invent ideal |
| Does not own Accept | Does not free-gen production claims | Embeds Accept winners |

## Product note

Produkt **B**. Do not fold medical free-vision logic into `packages/bookkit`.

**Background:** `Guides/Medical-Graphics-Playbook.md` · Track `devtracks/_archive/medical-graphics/`
