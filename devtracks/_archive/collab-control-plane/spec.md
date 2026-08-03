# Spec — Collaboration Control Plane

**Status:** implemented / complete-ready-to-archive (2026-08-03)  
**Product:** cross-cutting A/B/C (governance + skill control) · **not** new medical forms  
**Plan:** [plan.md](plan.md)  
**Siblings:** [open-assets-production-wire](../open-assets-production-wire/) · [orchestration-quality-state](../orchestration-quality-state/)  
**Trilogy index:** [skill-collaboration/README.md](../../skill-collaboration/README.md)

---

## Problem

Thirteen project skills already encode Media / Graphics / Tech / Content / Orchestrator roles and Design/Visual CLEAN floors (`design-quality-system`, studio routes, CONSENSUS). In practice:

1. **Who is controller?** is still under-specified when studio, `content-orchestrator`, `book-production-orchestrator`, and `form-lab-orchestrator` could all claim “what next?”.  
2. **Done** is overloaded: validate green, unit CLEAN, Accept, and “L2 shipped a PDF” compete; agents pick the cheapest green light (CRPS-class failure).  
3. **CLEAN authority** (who may mark Design/Visual CLEAN and Accept) lives in long skill bodies but not in one short operational law that every handoff cites.  
4. **Autonomy vocabulary** (L0/L1/L2) is almost shared between studio and book-production but **Form Lab L2** means something else (autodrive-to-complete) — risk of semantic merge.  
5. Process *additions* (more checklists, skill graphs, ownership RACI) without a **minimal contract** tend toward process theater (panel red-team 2026-08-03).

This track does **not** invent quality science (that is DQS). It installs the **control plane**: who leads, what “done” means, and which invariants no later wire may break.

---

## Goal

1. Ship a **Collaboration Contract** (≈1 page, agent-loadable) as the durable short law for skill collaboration.  
2. Ship a **Controller + CLEAN-authority matrix** (one doc or one contract section) that routes entry and forbids self-CLEAN / self-Accept.  
3. Align **L0/L1/L2** wording for studio ↔ book-production; document Form Lab L2 as **different**.  
4. Add **thin** foundation handoff phrases (typst-writer / typst-extension / pinit / bookkit) without making foundation skills Accept owners.  
5. Optional hygiene: **provision** content-orchestrator + content-review like other domain skills.  
6. Link governance surfaces (`AGENTS.md`, studio, runbook, `ROLES-AND-FLOW.md`) to the Contract — **no second full-text fork**.

---

## Non-goals

| Non-goal | Belongs elsewhere |
|---|---|
| Wire open-assets into sit.2 / P4 | Track **open-assets-production-wire** |
| Board YAML cells / route enum expansion | Track **orchestration-quality-state** |
| Soft/hard Quality Packet CLI | Track **orchestration-quality-state** Phase B |
| Redefine Design/Visual CLEAN criteria or critic attack lists | **design-quality-system** + B skills |
| Form Lab medium craft / Pass O program | **chapter-form-lab** |
| Skill-graph YAML, shared mega-critic list, B/C repo split API | Explicitly deferred (panel drop) |
| Medical genre logic in `packages/bookkit` | Forbidden (PRODUCT-BOUNDARIES) |
| New project skills | Not needed for control plane |

---

## Locked decisions (Human 2026-08-03)

| # | Decision |
|---|---|
| **D1 Track cut** | Exactly three sequential tracks (this = T1). |
| **D2 Contract home** | SoT: `toolset/skill-pack/COLLABORATION-CONTRACT.md`. `ROLES-AND-FLOW.md` / `AGENTS.md` only link (no second full text). |
| **D3 provision C** | Include content-orchestrator + content-review in `provision.sh` as part of this track (small hygiene). |
| **D4 Scope discipline** | Prose + thin skill references first; no CLI in this track. |
| **D5 Invariants** | Preserve CONSENSUS + PRODUCT-BOUNDARIES + DQS floors; Form Lab ≠ production default. |

---

## In scope (detail)

### Collaboration Contract (required sections)

Must fit roughly one screen of agent attention; use tables over essays.

1. **Entry:** unclear → studio; clear specialist → that skill; Form Lab only sit.9 / explicit lab-learning.  
2. **Artifact chain** (production chapter, pointer form — detail steps refined in T2): freeze? → design council → open-assets iff needed → realize → Visual CLEAN → packet index → Accept → compose → validate.  
3. **Two colors of green:** Design CLEAN · Visual CLEAN · Accept · Validate (what each means / does not mean).  
4. **Role firewall (one line each):** Media, Graphics, Tech, C Human, Orchestrators (route/log only).  
5. **Session law:** one council role per step; builder ≠ CLEAN signatory; PNG paths real; AX ≠ sole builder.  
6. **Caps:** pointer to DQS budgets (do not restate full budgets if avoidable — link).  
7. **Optional hints never gates:** production-bridge, playbook pin (execution in T2/T3).  
8. **Done definition (chapter):** packet index + Accept + embed + validate; multi-unit adds chapter macro VC (name only here; wiring in T2).  
9. **Controller ownership table** (or separate short matrix file linked from Contract).  
10. **Anti-patterns:** validate-as-design; Form Lab COMPLETE ⇒ Accept; dual boards; phase inflation.

### Controller matrix (must answer)

| Situation | Controller |
|---|---|
| Unclear / `/studio` | **studio** |
| C-only review / freeze route | **content-orchestrator** → content-review |
| Full book / multi-chapter board / resume board | **book-production-orchestrator** |
| Lab-learning T→C→V→R→S | **form-lab-orchestrator** (sit.9 only) |
| Platform smoke / consumer | **bookkit** (+ typst-*) |
| Single chapter production/exploration (no board yet) | **studio hosts** mini-pipeline (sit.2); may hand to specialists |
| Board already exists under book-production | Resume owner = **book-production-orchestrator** (sit.7) — studio must not keep a shadow board |

### CLEAN authority (must answer)

| Act | Who may | Who must not |
|---|---|---|
| Author Design Contract / Form Spec ideal | Media (MD) | Graphics sole, Tech sole |
| Mark Design CLEAN | Design Critic role (≠ sole Contract builder on same version) | Self-tick after sole-build |
| Implement graphics / compose realization | GX / Tech | Mark Visual CLEAN on own sole build |
| Mark Visual CLEAN | Visual Critic role (≠ sole implementer) | Self-CLEAN |
| Media Accept | AX / Media non-builder relative to sole craft | Sole builder Accept of own unit set |
| Validate green | Machine / Tech | Used as Accept substitute |

### Autonomy glossary

| Level | Studio / book-production meaning | Form Lab meaning (document as different) |
|---|---|---|
| L0 | Route-only / guided handoffs | Route-only / Orchestrator-only |
| L1 | Host steps; stop at gates | (if used) guided per pass |
| L2 | Drive between Human gates until blocked | **Default autodrive-to-complete** (full T→S+harvest) — not the same as production L2 |

### Foundation handoffs

Pasteable lines only when craft needs them — e.g. compose/graphics HAND-OFF: “Load `typst-writer`; if `#pin*` load `pinit-workflow`; if `@preview`/print load `typst-extension`; consumer API load `bookkit`.” No new situations.

### provision.sh

Add symlinks/discovery for `content-orchestrator` and `content-review` consistent with media-brief / open-assets pattern.

---

## Out of scope detail pointers

See sibling specs. This track may **name** open-assets and quality-packet in the Contract but must not rewrite phase-machines or board templates.

---

## Success criteria

| ID | Criterion |
|---|---|
| **S1** | `toolset/skill-pack/COLLABORATION-CONTRACT.md` exists, ≤ ~1.5 pages equivalent, covers entry, greens, roles, session law, done, controllers, anti-patterns. |
| **S2** | Controller matrix + CLEAN authority are unambiguous (table form); negative cases listed: “layout this chapter” ≠ Form Lab; “lektorieren only” ≠ media-brief; Form Lab COMPLETE ≠ production Accept. |
| **S3** | Studio skill (or routes) and book-production skill reference the Contract; Form Lab L2 difference stated in Contract + form-lab or studio note. |
| **S4** | `AGENTS.md` (skill gate or short pointer) and `ROLES-AND-FLOW.md` link Contract; no duplicated full Contract body. |
| **S5** | Foundation handoff phrases present in studio pasteable routes (or Contract appendix). |
| **S6** | `provision.sh` includes C skills; dry-run or documented expectation for fresh discovery. |
| **S7** | No CLI changes; no board schema changes; no open-assets phase rewrite in this track. |
| **S8** | Harvest footer lists exact skill/doc paths; track ready to archive after S1–S7. |

---

## Risks

| Risk | Mitigation |
|---|---|
| Contract becomes fourth copy of CONSENSUS and drifts | Contract is **operational short law**; CONSENSUS remains ADR depth; link out |
| Agents cite Contract instead of obeying | Keep mechanical hooks for T2/T3 (PNG paths, packet); Contract states session law clearly |
| Over-long Contract → skip | Hard length budget; tables; reject essay expansion in review |
| Steal scope from T2/T3 | Explicit non-goals + sibling links |

---

## Dependencies

| Depends on | Status |
|---|---|
| CONSENSUS-v0, PRODUCT-BOUNDARIES, checkpoints | exist |
| design-quality-system CLEAN floors | **archived** — cite living B skills; provenance [STATUS](../design-quality-system/STATUS.md) |
| Panel synthesis (skill collaboration 2026-08-03) | accepted direction |

**Blocks:** T2 and T3 **should** cite Contract vocabulary; T2 may start draft after S1 draft exists.

---

## Related paths (read before implement)

- `devtracks/CONSENSUS-v0.md`, `PRODUCT-BOUNDARIES.md`, `ROLES-AND-FLOW.md`  
- `devtracks/_archive/design-quality-system/{spec,plan,STATUS}.md` (provenance; living SoT = B skills)  
- `toolset/skill-pack/studio/{SKILL.md,references/situations.md,routes.md}`  
- `toolset/skill-pack/book-production-orchestrator/SKILL.md`  
- `toolset/skill-pack/form-lab-orchestrator/references/boundaries.md`  
- `toolset/skill-pack/provision.sh`  
- `AGENTS.md` skill gate  
- `docs/BOOK-PRODUCTION-RUNBOOK.md`  
