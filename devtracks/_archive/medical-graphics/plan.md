# Plan: medical-graphics

**Spec:** [`spec.md`](spec.md)  
**Source plan:** expert role Mediengrafik — code first, asset conscious, A/B when unsure.  
**Status:** **complete — archived 2026-07-29**  
**Playbook system:** [`playbook-system-plan.md`](playbook-system-plan.md) (implemented)

## Phases

| Phase | Deliverable | Status |
|---|---|---|
| **0** | Spec lock + track | **done** |
| **1** | Skill MVP + template + references + symlinks | **done** |
| **2** | Pipeline hooks (feasibility, CREATIVE-COMPOSE, spikes, compose-chapter) | **done** |
| **3** | Governance (ROLES, BOUNDARIES, AGENTS, Accept template, H-Gfx) | **done** |
| **4** | Asset convention `domains/medical/assets/` | **done** |
| **5** | Gold A/B pilot on one Visual-Unit | **done** — III-2 S4; v1 unfair (legend hybrid); **v2 fair → winner hybrid** |
| **6** | Harvest → archive | **done** — partial harvest 2026-07-23; full archive 2026-07-29 |

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
| Gold free vision III-2 | `…/primar-algorithmus-raster-nanobanana-free.png` (see residual) + `iii2-bls-aed.vision.md` |

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

Report: `dist/spikes/graphics/_eval/eval-batch-2026-07-22.md` (gitignored build output; may be absent in clean trees)  
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

## Archive decision (2026-07-29)

**Verdict: ARCHIVE.** MVP phases 0–5 + playbook system + substantial harvest verified on disk.
Form Spec e2e dogfood is satisfied by gold IV-2 / III-5 Form Specs + walkthrough + extensive KL form-spec→vision→audit→recreate corpus.
Continued illness-script expansion lives in active track `devtracks/kl-form-language/` (not this track).

### Residual optional (does **not** re-open this track)

| Item | Note |
|---|---|
| III-2 free PNG | Decision note references `primar-algorithmus-raster-nanobanana-free.png`; on disk: refined + structure SVGs (free may be local-only / lost) |
| Eval batch report | Path under `dist/` (gitignored); learnings harvested into skill/playbook/guides |
| form-spec retrofit ii1 / iv4 | Orchestration residual (`demo-welle03`); not MVP gate |
| Anatomy free-vision pause | Policy in skill (H-Gfx) — ongoing ops, not track work |
| KL form expansion | `devtracks/kl-form-language/` |

## Harvested into

**Playbook system (2026-07-23) + archive close (2026-07-29):**

| Learning | Target |
|---|---|
| Form Spec as Media handoff | `media-brief` + `form-spec.template.md` + `Guides/Medical-Presentation-Forms.md` |
| Free-first multi-round ladder | `medical-graphics` SKILL + `playbook/00–09` |
| Claim audit mandatory | `playbook/03` + `graphic-claim-audit.template.md` + free-vision.md |
| Contiguity / fair hybrid | `playbook/05` + decision-heuristics |
| Raster end product gated | `playbook/06` |
| Form recipes (4 + KL skeletons) | `playbook/09` + examples/INDEX + `references/kl-form-library.md` |
| Narrative why | `Guides/Medical-Graphics-Playbook.md` |
| System plan (provenance) | `devtracks/_archive/medical-graphics/playbook-system-plan.md` |
| Pipeline hooks | `toolset/compose/CREATIVE-COMPOSE.md`, feasibility template, `compose-chapter` skill |
| Governance | `ROLES-AND-FLOW.md`, `PRODUCT-BOUNDARIES.md`, `AGENTS.md`/`CLAUDE.md` skill gate, H-Gfx in checkpoints |
| Scripts | `scripts/graphics-vision-agy.sh`, `graphics-refine-agy.sh`, `graphics-spike-init.sh`, `graphics-vision-gemini.sh` |
| skill-creator evals | `domains/medical/skill/medical-graphics/evals/` + workspace iteration-1 (green) |

**Runtime SoT after archive:** `domains/medical/skill/medical-graphics/` · guides · templates · assets/briefs (not this folder).
