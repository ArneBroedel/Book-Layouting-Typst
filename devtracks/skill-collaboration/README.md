# Skill collaboration trilogy

**Status:** **complete / archived** 2026-08-03 · T1+T2+T3 Phase A + R1 dogfood + R2 soft gate  
**Residuals:** **closed** (R1 GO → R2 shipped).  
**Not a feature track itself** — durable index only. Provenance tracks live under `_archive/`.  
**Origin:** Panel synthesis on project skill collaboration (control plane, default-path wire, durable quality state).  
**Does not replace:** archived [`design-quality-system`](../_archive/design-quality-system/) (CLEAN doctrine → B skills) · archived [`chapter-form-lab`](../_archive/chapter-form-lab/) (lab → `form-lab-orchestrator`) · [`CONSENSUS-v0`](../CONSENSUS-v0.md) / [`PRODUCT-BOUNDARIES`](../PRODUCT-BOUNDARIES.md).

---

## Post-trilogy residuals (closed 2026-08-03)

| # | Track (archived) | Mission | Status |
|---|---|---|---|
| **R1** | [`_archive/collab-wire-dogfood/`](../_archive/collab-wire-dogfood/) | Bounded sit.2 / board / open-assets / packet dogfood; Phase B **GO** | **archived** · [findings](../_archive/collab-wire-dogfood/findings.md) |
| **R2** | [`_archive/quality-packet-soft-gate/`](../_archive/quality-packet-soft-gate/) | Soft `--quality-packet` path gate (WARN; never certifies CLEAN) | **archived** · live under `toolset/compose/validate/` |

```text
Trilogy T1–T3A ✅ archived
        │
        ▼
R1 collab-wire-dogfood ✅ GO (findings)
        │
        └─► R2 soft path gate ✅ shipped → harvested
```

---

## Tracks (implemented T1 → T2 → T3A)

| # | Track (archived) | Mission | Status |
|---|---|---|---|
| **T1** | [`_archive/collab-control-plane/`](../_archive/collab-control-plane/) | Collaboration Contract, controller + CLEAN authority, L0–L2 glossary, foundation phrases, provision C skills | **archived** · Contract SoT live |
| **T2** | [`_archive/open-assets-production-wire/`](../_archive/open-assets-production-wire/) | Conditional open-assets on sit.2 + book-prod; production-bridge cite-if-present; chapter macro VC | **archived** · S1–S8 |
| **T3** | [`_archive/orchestration-quality-state/`](../_archive/orchestration-quality-state/) | Board/route quality cells; sit.2 board policy; optional soft packet path-gate (Phase B) | **archived** Phase A · **Phase B deferred** |

Living harvest is in skills/templates/docs (not in the frozen tracks).

---

## Sequence delivered

```text
T1 Contract + matrices + provision C              ✅ archived
        │
        ▼
T2 Default-path wire (open-assets, bridge, macro VC)  ✅ archived
        │
        ▼
T3 Phase A board/resume cells                     ✅ archived
        │
        └─► T3 Phase B soft CLI  → R1 dogfood (GO) + R2 soft-gate ✅ closed
```

**Contract SoT (living):** `toolset/skill-pack/COLLABORATION-CONTRACT.md`  
(`ROLES-AND-FLOW.md` / `AGENTS.md` only link — no second full text.)

**T2 field SoT (living):** `open_asset_scan: required | optional | skip` (Form Spec / Design Contract); chapter macro VC on multi-unit quality chapters.

**T3 Phase A board cells (living templates):** `design_clean`, `visual_clean`, `macro_vc`, `quality_packet`, `open_assets` (+ unit `needs_open_assets`, `manifest_path`); header `scope` / `playbook_pin` / `production_bridge`.

---

## Explicit non-goals (whole trilogy — held)

- Skill-graph YAML as runtime  
- Shared critic mega-checklist  
- Quality Packet SoT under `toolset/` / medical semantics in bookkit foundation  
- Validate certifies Visual CLEAN  
- open-assets as always-on P3.5  
- Sit.2 durable board always  
- Form Lab as production default  
- B/C physical repo split  

---

## Living surfaces (use these, not the archive)

| Surface | Path |
|---|---|
| Collaboration Contract | `toolset/skill-pack/COLLABORATION-CONTRACT.md` |
| studio sit.2 / board policy | `toolset/skill-pack/studio/` |
| book-production board templates | `toolset/skill-pack/book-production-orchestrator/templates/` |
| open-assets / G0b | `domains/medical/skill/open-assets/` · medical-graphics |
| Runbook | `docs/BOOK-PRODUCTION-RUNBOOK.md` |

### Invariants this trilogy must preserve

1. Design CLEAN / Visual CLEAN criteria stay in DQS + B skills (T1 only names **authority**).  
2. Form Lab COMPLETE ≠ production Accept; Form Lab not sit.2 default.  
3. open-assets is **unit-conditional**, never always-on P3.5.  
4. Board quality cells are enums + paths only — no critique text in board.md.  
5. Validate never certifies Visual CLEAN.

---

## Status log

| Date | Note |
|---|---|
| 2026-08-03 | Trilogy planned; specs/plans written; implementation not started. Start at T1. |
| 2026-08-03 | Sibling tracks audited and archived (DQS, form-lab, multi-chapter). |
| 2026-08-03 | **T1 complete** — Contract live; provision C; controllers wired. |
| 2026-08-03 | **T2 complete** — open-assets production wire; chapter macro VC; bridge cite-if-present. |
| 2026-08-03 | **T3 Phase A complete** — board quality cells; sit.2 board policy; Phase B deferred. |
| 2026-08-03 | **T1–T3 archived** under `devtracks/_archive/`. Index remains here. |
| 2026-08-03 | Residuals planned as **R1** `collab-wire-dogfood` (next) + **R2** `quality-packet-soft-gate` (blocked on R1 GO). |
| 2026-08-03 | **R1 complete** — findings GO; dogfood board sample; hygiene patches. |
| 2026-08-03 | **R2 complete** — soft `--quality-packet` WARN gate + tests + docs; R1+R2 archived. |
