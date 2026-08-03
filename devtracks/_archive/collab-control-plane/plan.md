# Plan — Collaboration Control Plane

**Status:** complete-ready-to-archive · implemented 2026-08-03  
**Spec:** [spec.md](spec.md)  
**Siblings:** [T2 open-assets-production-wire](../open-assets-production-wire/) · [T3 orchestration-quality-state](../orchestration-quality-state/)  
**Trilogy:** [skill-collaboration/README.md](../../skill-collaboration/README.md)

---

## 0. Intent (one line)

Install the **short operational law** for skill collaboration (Contract + controller/CLEAN authority + autonomy glossary) so later wiring tracks do not invent conflicting “done” or “who leads” rules.

---

## 1. Phases

### Phase 0 — Align sources (read-only, short)

**Goal:** Confirm no conflicting “done” already forced in skills that the Contract would contradict without a deliberate change.

| Task | Output |
|---|---|
| Diff studio sit.2 done rules vs DQS Accept rules vs compose-chapter “validate ≠ design” | Aligned — Contract codifies existing floors |
| List current L0/L1/L2 strings in studio, book-production, form-lab autonomy.md | Glossary in Contract §11 |
| Confirm provision.sh pattern for domain skills | C skills added same pattern as media-brief |

**Exit:** Phase 1 can write Contract without inventing new CLEAN semantics. ✅

---

### Phase 1 — Collaboration Contract + matrices

**Goal:** Author SoT file(s).

| Deliverable | Path |
|---|---|
| Collaboration Contract | `toolset/skill-pack/COLLABORATION-CONTRACT.md` |
| Optional: if Contract too dense, split matrix only | kept both tables inside Contract (single file) |

**Contract checklist (must all be present):**

- [x] Entry / situations pointer  
- [x] Artifact chain (high level)  
- [x] Two colors of green table  
- [x] Role firewall  
- [x] Session law (builder ≠ CLEAN; AX ≠ sole builder; open PNGs)  
- [x] Caps → link DQS  
- [x] Optional hints never gates  
- [x] Done definition (chapter + multi-unit macro VC **named**)  
- [x] Controller table  
- [x] CLEAN authority table  
- [x] Autonomy L0–L2 + Form Lab L2 callout  
- [x] Foundation load-when-needed lines  
- [x] Anti-patterns  
- [x] Links: PRODUCT-BOUNDARIES, CONSENSUS, DQS, checkpoints, T2/T3 placeholders  

**Review gate (Human or self against red-team):** length; no phase-machine rewrite; no second CONSENSUS essay. ✅

**Exit:** S1 draft accepted for linking. ✅

---

### Phase 2 — Wire references into controllers (prose only)

| File | Change | Done |
|---|---|---|
| `toolset/skill-pack/studio/SKILL.md` | Obey Contract; link; done definition pointer | ✅ |
| `toolset/skill-pack/studio/references/routes.md` | Controller note + foundation paste lines | ✅ |
| `toolset/skill-pack/studio/references/situations.md` | Negative: sit.2 ≠ Form Lab; sit.9 only lab; link Contract | ✅ |
| `toolset/skill-pack/book-production-orchestrator/SKILL.md` | Does not replace craft; Contract link; resume ownership | ✅ |
| `toolset/skill-pack/form-lab-orchestrator/references/boundaries.md` | Form Lab L2 ≠ production L2; COMPLETE ≠ Accept; link Contract | ✅ |
| `docs/BOOK-PRODUCTION-RUNBOOK.md` | Related: Contract (one line) | ✅ |
| `AGENTS.md` | Skill gate Collaboration one-liner + path | ✅ |
| `devtracks/ROLES-AND-FLOW.md` | Link Contract as operational short law | ✅ |

**Exit:** S2–S5 greppable. ✅

---

### Phase 3 — provision C skills

| Task | Detail | Done |
|---|---|---|
| Update `toolset/skill-pack/provision.sh` | content-orchestrator, content-review same pattern as media-brief | ✅ |
| Document in provision header comment | Full provisioned skill list | ✅ |
| Verify | Targets exist under domains/content-maturity/skill/ | ✅ |

**Exit:** S6. ✅

---

### Phase 4 — Harvest & close

| Task | Detail | Done |
|---|---|---|
| Confirm S1–S8 | Checklist below | ✅ |
| `## Harvested into` footer | Exact paths | ✅ |
| Do **not** archive until Human OK | Marked **complete-ready-to-archive** (orchestrator harvest after trilogy review if appropriate) | ✅ |
| Unlock T2 | Trilogy README: T1 complete | ✅ |

**Exit:** Track complete-ready-to-archive; T2 implementation free to start. ✅

---

## 2. Worked file list (expected touch set)

```text
toolset/skill-pack/COLLABORATION-CONTRACT.md          # CREATE
toolset/skill-pack/provision.sh
toolset/skill-pack/studio/SKILL.md
toolset/skill-pack/studio/references/routes.md
toolset/skill-pack/studio/references/situations.md
toolset/skill-pack/book-production-orchestrator/SKILL.md
toolset/skill-pack/form-lab-orchestrator/references/boundaries.md
docs/BOOK-PRODUCTION-RUNBOOK.md
AGENTS.md
devtracks/ROLES-AND-FLOW.md
devtracks/collab-control-plane/{spec,plan}.md         # status updates
devtracks/skill-collaboration/README.md               # status
```

Avoid: `packages/bookkit/**`, compose validate Python, board templates (T3), phase-machine open-assets steps (T2).

---

## 3. Acceptance test (manual, no CI required)

1. Open Contract alone: can answer “who leads after freeze on multi-chapter board?” → book-production. ✅  
2. Open Contract: “may the same agent sole-build and mark Visual CLEAN?” → no. ✅  
3. Grep: `COLLABORATION-CONTRACT` in studio + book-production + AGENTS. ✅  
4. Grep: Form Lab L2 distinction present. ✅  
5. provision targets for C skills resolve. ✅  
6. Diff size: no accidental phase-machine or board-template edits. ✅

---

## 4. Sequencing vs siblings

```text
T1 Phase 1 Contract draft
    → T2 may start drafting spec language against Contract terms
T1 complete (Phases 1–4)
    → T2 implementation
T2 complete
    → T3 implementation
```

---

## 5. Effort estimate

| Phase | Effort |
|---|---|
| P0 | XS (hours) |
| P1 | S (½–1 day) |
| P2 | S (½ day) |
| P3 | XS |
| P4 | XS |
| **Total** | **~1–2 days** |

---

## 6. Status log

| Date | Note |
|---|---|
| 2026-08-03 | Track opened; Human approved trilogy cut + Contract path + provision C in T1. Implementation not started. |
| 2026-08-03 | **Implemented** Phases 1–4: Contract shipped; controllers wired; provision C; harvest footer; T2 unlocked. Status: **complete-ready-to-archive**. |
| 2026-08-03 | **Archived** with T2–T3 after orchestrated trilogy review. |

---

## Success criteria (S1–S8)

| ID | Result |
|---|---|
| **S1** | PASS — Contract exists, tables, all required sections |
| **S2** | PASS — Controller + CLEAN tables; negatives unambiguous |
| **S3** | PASS — studio + book-production + form-lab L2 distinction |
| **S4** | PASS — AGENTS + ROLES-AND-FLOW link only |
| **S5** | PASS — foundation paste in routes + Contract §12 |
| **S6** | PASS — provision.sh includes C skills |
| **S7** | PASS — no CLI / board schema / open-assets phase rewrite |
| **S8** | PASS — harvest footer filled; ready-to-archive |

---

## Harvested into

- `toolset/skill-pack/COLLABORATION-CONTRACT.md` — SoT operational short law  
- `toolset/skill-pack/studio/SKILL.md`  
- `toolset/skill-pack/studio/references/routes.md`  
- `toolset/skill-pack/studio/references/situations.md`  
- `toolset/skill-pack/book-production-orchestrator/SKILL.md`  
- `toolset/skill-pack/form-lab-orchestrator/references/boundaries.md`  
- `toolset/skill-pack/provision.sh` — content-orchestrator + content-review  
- `docs/BOOK-PRODUCTION-RUNBOOK.md`  
- `AGENTS.md`  
- `devtracks/ROLES-AND-FLOW.md`  
- `devtracks/skill-collaboration/README.md` — T1 complete / T2 unlocked  
