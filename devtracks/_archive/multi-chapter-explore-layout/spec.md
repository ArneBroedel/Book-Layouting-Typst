# Spec — Multi-Chapter Explore Layout (Portfolio)

**Status:** **ARCHIVED 2026-08-03** · process complete · board idle · [STATUS.md](STATUS.md)  
**Products:** A (compose, board, bookkit) · B (media-brief, medical-graphics) · C content **read-only** (Kursbuch external)  
**Plan:** [plan.md](plan.md)  
**Studio entry:** Situation **1 light** / multi-chapter exploration (not full print production)  
**Orchestrator:** `book-production-orchestrator` with `brief_class: exploration`  
**Related:** `design-quality-system` (floors dogfooded; core complete) · `chapter-form-lab` (medium extremes — different mission) · CRPS process review `domains/medical/briefs/kl-crps-2026-07-31.process-review.md`

---

## Problem

1. **Single-chapter** layout+graphics (e.g. CRPS `kl-crps-2026-07-31`) is **solid but not perfect** — quality bar and process lessons are now encoded in skills.  
2. Scaling **only** by repeating Situation-2 chat sessions does **not** give durable overview, prioritization, or wave-based Human review.  
3. Jumping to **full production book** (all chapters + H1 freeze + PDF-X) is **too early** and too rigid for the desired **creative room**.  
4. Content inventory is large (e.g. Welle-06 KL monographs + Welle-04 fullbook mix) — “do everything” fails quality and burns Human gates.

**Need:** a governed path to produce **layout + graphics for a curated plurality of chapters**, with **shared quality norms**, **creativity per chapter**, and **durable board state** — without forcing production freeze or full catalog completion.

---

## Goal

Ship an **exploration portfolio** of **many (not all)** content chapters as:

- Media Brief + Form Specs / Design Contracts where needed  
- Graphics units (grammar + optional ambition) under Design CLEAN → Visual CLEAN  
- Exploration Accept + compose pilot PDF per chapter  
- Board + run-log for multi-session drive  

Success is measured by **chapter quality + process fidelity + creative variety**, not by chapter count alone or assembly print.

---

## Scope

| In | Out |
|---|---|
| Curated portfolio (default target **10** chapters in W1; expandable) | Entire Kursbuch catalog as hard commitment |
| `brief_class: exploration` | Production freeze (H1) for every chapter (optional later) |
| Board under `toolset/orchestration/book-production/<book-id>/` | Mandatory P10 PDF-X / H5 imprimatur |
| Genre mix (KL + Non-KL recommended) | Copying chapter SoT into `packages/` |
| Creativity: free ideal, wishlist, ≥1 ambition slot when justified | Form-id shopping / monotony “one template all KL” |
| CRPS-harvest norms (focus free vision, anti-squish, demotion ladder) | Re-opening body free vision without H-Gfx |
| Optional later: explore-band assembly PDF | Treating validate green as design quality |

---

## Non-goals

- Auto-layout of all monographs without Human portfolio selection  
- Production compose authorization without freeze + production Accept  
- Clinical claim rewrite / Genesis score loops  
- Anatomy free-vision default  
- Replacing `design-quality-system` (this track **uses** it)  
- Physical multi-repo split  

---

## Actors & inputs

| Actor | Role |
|---|---|
| Human | Portfolio pick, H-Explore wave gates, H-Design/H-Gfx if triggered |
| Studio | Intake / status front door |
| book-production-orchestrator | Board, run-log, wave routing |
| media-brief / medical-graphics / compose-chapter | Per-chapter work products |
| C (Kursbuch) | Read-only chapter markdown |

**Default content roots (candidates):**

- `…/Kursbuch5/…/2026-07-welle-06-kl-full/monographs/`  
- `…/Kursbuch5/…/2026-07-welle-04-fullbook/` (Non-KL mix)  
- Baseline pilot (not SoT to copy): `toolset/compose/pilots/kl-crps-2026-07-31/`

---

## Success criteria

| ID | Criterion |
|---|---|
| **S1** | Kickoff + board exist; portfolio list frozen for W1 (Human signed in kickoff/notes) |
| **S2** | ≥ **N** chapters (N agreed at kickoff, default **10**) reach exploration Accept + pilot PDF |
| **S3** | Every shipped pilot has Design CLEAN + Visual CLEAN quality packet (or documented simple-alternative path) |
| **S4** | Genre variety: ≥2 genres in portfolio (e.g. kl-kurz + notfall or leitsymptom) unless Human opts out |
| **S5** | Per chapter: free ideal + non-goals; ambition track **or** justified grammar-only (no silent monotony) |
| **S6** | Free vision defaults applied: focused claim; no labels-in-raster default; demotion ≠ blob theater |
| **S7** | Layout density two-sided: no squish-compress for page-count vanity |
| **S8** | Human H-Explore after each wave (sample or full as agreed) before next wave starts |
| **S9** | Run-log complete enough to resume after session break |
| **S10** | Track harvest: wave lessons → skills/guides; then archive |

---

## Risks

| Risk | Mitigation |
|---|---|
| Volume kills quality | Waves; H-Explore; cap free gens; solid simple alternative OK |
| Creative monotony | Genre mix; per-chapter free ideal; wishlist visible |
| Pretty FAIL graphics | CRPS harvest norms; Visual CLEAN; H-Gfx for body |
| Scope creep to full catalog | Portfolio lock in kickoff; expand only via Human note |
| Exploration mistaken for production | Board banner `brief_class: exploration`; no H2 production without freeze |

---

## Dependencies

- Skills: studio, book-production-orchestrator, media-brief, medical-graphics, compose-chapter  
- Design-quality system norms (Design/Visual CLEAN)  
- CRPS process review harvest (already in skills 2026-07-31)  
- External C paths readable from workspace  

---

## Decisions (kickoff — locked 2026-08-01)

See [decisions.md](decisions.md). All D1–D8 resolved. No open kickoff decisions.

## Residual (optional only)

| Item | Not a process gap |
|---|---|
| Optional R2 craft (BLS / Stroke / residual revise debt) | Regular skill path if Human wants polish |
| P3 assembly | Deferred D8 until Human reopens |
| W2 expansion | Human portfolio edit only |
| Board quality cell schema | Trilogy **T3** — explore board is provenance |
| Archive track | Human “archive explore” / process enough |  
