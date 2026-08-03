# Spec — Open-Assets Production Wire

**Status:** **complete** (2026-08-03) · ready-to-archive after harvest  
**Product:** B (open-assets, medical-graphics, media-brief) · thin A (studio, book-production, compose, runbook)  
**Plan:** [plan.md](plan.md)  
**Predecessor:** [collab-control-plane](../collab-control-plane/) (Contract vocabulary, Done, controllers)  
**Successor:** [orchestration-quality-state](../orchestration-quality-state/) (durable board cells)  
**Trilogy index:** [skill-collaboration/README.md](../../skill-collaboration/README.md)

---

## Problem

`open-assets` is a complete skill (SoT under `domains/medical/skill/open-assets/`), policy and templates exist, G0b is named in medical-graphics, studio **situation 4** knows the skill, and Form Lab has a **Pass O** lab-learning pilot. Production default paths still **half-wire**:

1. Studio **situation 2** mini-pipeline can jump Design CLEAN → free vision without an explicit open-assets **required | optional | skip** decision.  
2. **book-production** phase machine / kickoff `allowed_skills` / runbook do not systematically route open-assets before free vision for rights-bearing units.  
3. Empty ceremony risk: making open-assets **always-on** would produce hollow MANIFESTs for pure code/schema units and raise skip-rate (panel consensus).  
4. Form Lab **production-bridge** harvest exists but production path does not **read-if-present** with cite discipline (inform, not cage).  
5. **Chapter macro Visual CLEAN** (full-page eyes after multi-unit assemble) is implied by DQS / sit.2 but under-named; agents stop at unit CLEAN (assembly code-leak class).

This track closes the **default-path wire**. It does **not** add board schema (T3) or redefine CLEAN doctrine (DQS).

---

## Goal

1. **Conditional open-assets** on sit.2 and book-production P4/G0b: after Design CLEAN, before free gen when scan is required; skip documented when not.  
2. Kickoff / route surfaces list **open-assets** as allowed specialist; pasteable handoff exists.  
3. Media/Contract or Form Spec can set **`open_asset_scan` / `needs_open_assets`** (or equivalent named fields) so orchestration and graphics share one “needed” source of truth.  
4. Accept / quality path blocks **third-party embed** without MANIFEST outcome `accepted | gap` (gap → demote to Typst simple alternative is valid).  
5. **production-bridge:** read-if-present, cite after Design CLEAN / at carrier choice — never hard gate, never catalog cage.  
6. **Chapter macro VC** named and non-skippable for multi-unit chapter quality PDFs (sit.2 / compose) — vocabulary from Collaboration Contract (unit VC · chapter macro VC · book P9).

---

## Non-goals

| Non-goal | Where |
|---|---|
| Fixed phase **P3.5** always-on | Forbidden (unit-conditional only) |
| Board YAML columns / route enum machine fields | **T3** |
| Soft Quality Packet CLI | **T3 Phase B** |
| Rewrite Form Lab Pass O portfolio | archived **chapter-form-lab** / runtime Pass O board only |
| Move open-assets SoT into toolset/A | Forbidden |
| License engine inside `packages/bookkit` | Forbidden |
| Redefine Design CLEAN attack surfaces | **DQS** / media-brief |
| Skill-graph / shared mega-critic | Deferred forever for this trilogy |

---

## Locked decisions (Human 2026-08-03 + panel)

| # | Decision |
|---|---|
| **D1 Conditional only** | open-assets is unit-gated specialist, not a book-level always phase. |
| **D2 Sequence** | Design CLEAN → (if needed) open-assets → free vision / realize → Visual CLEAN → packet → Accept. |
| **D3 Needed SoT** | Media sets need (Form Spec / Design Contract / brief flag); orchestrator must not invent Commons scans for pure grammar/code units. |
| **D4 Bridge** | Advisory cite-if-present; never waives Design/Visual CLEAN or Accept. |
| **D5 Naming** | Do not call chapter re-check “mini-P9”; use **chapter macro VC**. Book **P9** stays multi-chapter assembly sample. |
| **D6 Depends on T1** | Implementation uses Collaboration Contract terms for done / controllers. |

---

## Field names chosen (for T3 match)

| Field | Values | SoT |
|---|---|---|
| **`open_asset_scan`** | `required` \| `optional` \| `skip` | Form Spec + Design Contract (Media); Graphics G0b; Accept/packet when asset |
| MANIFEST outcome | `accepted` \| `gap` \| `n/a` | open-assets + Accept rights row |
| **chapter macro VC** | done \| n/a (single-unit stated) | quality packet / compose done |

---

## Success criteria

| ID | Criterion | Status |
|---|---|---|
| **S1** | sit.2 mini-pipeline documents open-assets branch (required/optional/skip) before free vision. | **pass** |
| **S2** | book-production phase docs + kickoff `allowed_skills` include open-assets; runbook P4 mentions conditional scan. | **pass** |
| **S3** | medical-graphics: required scan without MANIFEST outcome blocks free gen / asset Accept (procedure text). | **pass** |
| **S4** | Template or Form Spec path exists to set scan need from Media. | **pass** |
| **S5** | production-bridge read-if-present + cite rules in GX and/or compose + studio (no hard gate). | **pass** |
| **S6** | Chapter macro VC named and required for multi-unit quality chapter done (sit.2 / compose). | **pass** |
| **S7** | No always-on P3.5; no board schema; no validate CLI; open-assets SoT remains under `domains/medical/`. | **pass** |
| **S8** | Harvest into listed skills/docs; unlocks T3. | **pass** |

---

## Risks

| Risk | Mitigation |
|---|---|
| Cargo-cult empty MANIFESTs | Skip/n/a path mandatory for code-only; Accept only cares when third-party embeds |
| Scope creep into Pass O lab | Lab remains chapter-form-lab; this track is production/default path only |
| Bridge becomes catalog cage | Cite do-nots and job-class bias only; Contract still free ideal first |
| Duplicate packet redesign | Only rights/scan fields needed for S3–S4; full packet schema → T3 |

---

## Dependencies

| Dependency | Why |
|---|---|
| **T1 collab-control-plane** | Done definition, controller ownership, naming (macro VC) |
| open-assets skill + OPEN-ASSET-POLICY | Already exist |
| DQS Visual CLEAN | Macro VC is assembly re-check under same severity rules |
| Form Lab harvest artifacts | Optional inputs for bridge read — prefer `toolset/orchestration/form-lab/portfolio-2026-08-d/harvest/production-bridge.md` (track archived: [`chapter-form-lab`](../chapter-form-lab/); Pass O pilot closed on runtime board) |

---

## Related paths

- `toolset/skill-pack/studio/references/{situations,routes}.md`  
- `toolset/skill-pack/book-production-orchestrator/{SKILL.md,references/phase-machine.md,templates/kickoff.template.md}`  
- `domains/medical/skill/{open-assets,medical-graphics,media-brief}/`  
- `domains/medical/templates/{design-contract,accept-record,quality-packet,source-scan}.template.md`  
- `domains/medical/OPEN-ASSET-POLICY.md`  
- `toolset/orchestration/form-lab/_templates/production-bridge.md`  
- `docs/BOOK-PRODUCTION-RUNBOOK.md`  
- `toolset/skill-pack/COLLABORATION-CONTRACT.md` (from T1)  
