# Plan: medical-graphics

**Spec:** [`spec.md`](spec.md)  
**Source plan:** expert role Mediengrafik — code first, asset conscious, A/B when unsure.

## Phases

| Phase | Deliverable | Status |
|---|---|---|
| **0** | Spec lock + track | done |
| **1** | Skill MVP + template + references + symlinks | this work |
| **2** | Pipeline hooks (feasibility, CREATIVE-COMPOSE, spikes, compose-chapter) | this work |
| **3** | Governance (ROLES, BOUNDARIES, AGENTS, Accept template, H-Gfx) | this work |
| **4** | Asset convention `domains/medical/assets/` | this work |
| **5** | Gold A/B pilot on one Visual-Unit | **done** — III-2 S4; v1 unfair (legend hybrid); **v2 fair → winner hybrid** |
| **6** | Harvest → archive | after optional second pilot / skill harden |

## Decisions locked (MVP)

1. Skill name: **`medical-graphics`** (Produkt B).  
2. AI image gen: exploration allowed; production needs manifest + optional Human gate on risk motifs.  
3. Assets: **`domains/medical/assets/<slug>/`** for domain pilots; promote path documented.  
4. Accept owner: **Media** (default); Human after round-cap or medical risk.  

## Free-first workflow (2026-07-22)

**Policy:** ambitious Visual-Units → **Phase A free vision** (content + didactic intent, no layout template) → **Phase B** `recreate` | `refine` | `accept-asset`.

| Deliverable | Path |
|---|---|
| Vision template | `domains/medical/templates/graphic-vision.template.md` |
| Decision template | Phase A/B + `realize_path` |
| free-vision / book-visual-standards | skill `references/` |
| agy free wrapper | `scripts/graphics-vision-agy.sh` |
| agy refine wrapper | `scripts/graphics-refine-agy.sh` |
| Gold free vision III-2 | `…/primar-algorithmus-raster-nanobanana-free.png` + `iii2-bls-aed.vision.md` |

**Phase B1 done:** Typst recreate of free III-2 vision — `lib/primar-algorithmus.typ`, spikes `recreate`/`compare`, pilot `iii2.typ` embeds module.  

**Phase B2 done:** refined free vision — `primar-algorithmus-raster-nanobanana-refined.png` (`graphics-refine-agy.sh`); loop on 4a, minimale Pausen, book palette; spikes `refined` / `compare-b2`.  

**B1+ icon polish:** FA6 icons on recreate module; header chrome closer to free vision.  

**Second free-first chapter:** IV-2 S4 Entscheidungs-Flow — vision `iv2-rueckenschmerz-neuro.vision.md` + `vision-free-01.png` (Phase A).  
**IV-2 Phase B1 done:** Typst recreate `lib/entscheidungs-flow.typ`, spikes `recreate`/`compare`, pilot `iv2.typ` embeds `#entscheidungs-flow-rueckenschmerz()`.  
**IV-2 Phase B2 done:** refined free vision — `vision-refined-01.png` (`graphics-refine-agy.sh`); book palette, high-contrast chips, equal R/I/S, louder Default-to-Danger; spikes `refined` / `compare-b2`.

### Eval batch 2026-07-22 (3 new form families)

| unit | free | recreate | production lean |
|---|---|---|---|
| III-5 S4 Sofortmaßnahmen (hard-stop) | yes (EN chrome) | `sofortmassnahmen.typ` | code |
| II-1 S8 Pflichtsequenz (framework OS) | yes ★ horizontal | `pflichtsequenz.typ` | code (+ free ideal) |
| IV-4 S6 Flow (split triage) | yes ⚠ claim invent | `entscheidungs-flow.typ` | code only until B2 |

Report: `dist/spikes/graphics/_eval/eval-batch-2026-07-22.md`  
**Learning:** free vision claim audit is mandatory (IV-4 invented vitals); English chrome recurs; genre OS (II-1) can differ from emergency red wall.

### Follow-through P0–P2 (2026-07-22)

| Step | Status |
|---|---|
| **P0** IV-4 B2 refine | done — `vision-refined-01.png` claim-safe |
| **P1** Media Accept III-5 / II-1 / IV-4 | done — recreate winners |
| **P1** Pilot embed simple + compose | done — `iii5`, `ii1`, `iv4` both pilot trees |
| **P2** II-1 landscape mode | done — `layout: "landscape"` + spikes `landscape` / `compare-layout` |

## Phase 5 evidence

| Artifact | Path |
|---|---|
| Decision Note | `domains/medical/briefs/iii2-bls-aed.graphics.md` |
| Code spike | `toolset/compose/spikes/graphics/iii2-bls-aed/spike-code.typ` |
| Hybrid spike | `toolset/compose/spikes/graphics/iii2-bls-aed/spike-hybrid.typ` |
| Asset | `domains/medical/assets/iii2-bls-aed/primar-algorithmus-base.svg` |
| PNG compare | `dist/spikes/graphics/iii2-bls-aed/{code,hybrid}-p1.png` |
| Accept update | `domains/medical/briefs/iii2-bls-aed.accept.md` |

**Learning (for harvest):**

1. Hybrid with foot-legend only is **incomplete** — not a fair A/B against labeled code.  
2. True hybrid (SVG slots + Typst labels on nodes) can **beat** pure code on ideal proximity (lane chrome) while keeping claim safety.  
3. Code remains the best **single-file maintainability** fallback.

## Harvested into

**Playbook system (2026-07-23) — partial track harvest; track may stay open for dogfood:**

| Learning | Target |
|---|---|
| Form Spec as Media handoff | `media-brief` + `form-spec.template.md` + `Guides/Medical-Presentation-Forms.md` |
| Free-first multi-round ladder | `medical-graphics` SKILL + `playbook/00–09` |
| Claim audit mandatory | `playbook/03` + `graphic-claim-audit.template.md` + free-vision.md |
| Contiguity / fair hybrid | `playbook/05` + decision-heuristics |
| Raster end product gated | `playbook/06` |
| Form recipes (4 skeletons) | `playbook/09` + examples/INDEX |
| Narrative why | `Guides/Medical-Graphics-Playbook.md` |
| System plan | `devtracks/medical-graphics/playbook-system-plan.md` |

Full archive when dogfood (new chapter end-to-end on Form Spec) is done.
