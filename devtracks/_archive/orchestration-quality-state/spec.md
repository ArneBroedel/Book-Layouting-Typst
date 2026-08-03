# Spec — Orchestration Quality State

**Status:** **Phase A complete** (2026-08-03) · ready-to-archive · Phase B deferred optional  
**Product:** A orchestration (book-production, studio resume) · thin B (packet paths as board index) · optional later A validate soft-gate  
**Plan:** [plan.md](plan.md) · **STATUS:** [STATUS.md](STATUS.md)  
**Predecessors:** [collab-control-plane](../collab-control-plane/) · [open-assets-production-wire](../open-assets-production-wire/)  
**Trilogy index:** [skill-collaboration/README.md](../../skill-collaboration/README.md)

---

## Problem

Even with Collaboration Contract (T1) and default-path wiring (T2), **multi-session / L2** work fails when quality state lives only in chat:

1. book-production **board templates** still track coarse cells (content / brief / graphics / accept / compose) without **design_clean**, **visual_clean**, **open_assets**, **quality_packet**, **macro_vc**.  
2. Cold resume invents “units done / accepted” without packet paths or open-assets status.  
3. Studio sit.2 either has **no durable state** (resume dies) or risks a **shadow board** if someone invents a second schema.  
4. Quality Packet exists as B template and Accept may link it, but there is **no soft machine check** that paths resolve — only later optional (panel: soft path gate yes, semantic CLEAN no).  
5. Over-building (skill graph, hard CLEAN-in-validate, always sit.2 boards) was rejected; this track must stay **narrow enums + paths**.

---

## Goal

### Phase A (required for track “implementing complete” / archive-eligible without CLI) — **DONE**

1. Extend **board templates** and route templates with quality/open-assets/packet/macro fields (enums + paths only).  
2. Document **done checklist** for chapter rows using those cells (align Collaboration Contract).  
3. **Sit.2 board policy:** create durable board only when multi-session / multi-unit / autonomy L2 resume risk / user asks; schema = book-production with `scope: single-chapter` (no third board type).  
4. Resume ownership: if board exists → **book-production-orchestrator** (studio sit.7).  
5. Optional kickoff fields: `playbook_pin`, advisory `production_bridge` path.  
6. Status script / runbook awareness of new cells if cheap.

### Phase B (optional, same track; not required to harvest Phase A) — **DEFERRED**

7. Soft `bookkit validate --quality-packet PATH` (or equivalent): **WARN** on missing file / missing required path entries / missing PNG files on disk — **never** certify Visual CLEAN.  
8. Optional evals: self-Accept negative; required open-assets without MANIFEST.  
9. Production profile may escalate warn→fail for missing packet path only after dogfood (explicit Human decision).

---

## Non-goals

| Non-goal | Why |
|---|---|
| Semantic CLEAN via CLI / vision CI | False green (DQS + panel) |
| Quality Packet SoT moved to toolset | Packet remains B; A only indexes/gates presence |
| Critique full text in board.md | Agent-load + merge conflicts |
| New P-numbers per specialist | Unit flags + routing only |
| Always-on sit.2 boards | Process tax |
| Skill-graph YAML | Deferred |
| Form Lab board schema rewrite | Different phase machine; optional later alignment only if needed |
| Re-open T2 open-assets procedure design | Consume T2 flags |

---

## Locked decisions (Human 2026-08-03 + panel)

| # | Decision |
|---|---|
| **D1 Board = resume index** | Enums + paths; artifacts remain SoT of evidence. |
| **D2 One board family** | sit.2 durable state reuses book-production templates + `scope`. |
| **D3 Phase B optional** | Track may harvest/archive after Phase A; Phase B later without new track if small. |
| **D4 Soft before hard** | Path existence WARN first; hard fail only with Human OK after dogfood. |
| **D5 A/B boundary** | Validate must not import medical claim-audit semantics. |

---

## In scope — Phase A field design

### Board YAML / header

| Field | Values / notes |
|---|---|
| `scope` | `full-book` \| `single-chapter` \| `explore-portfolio` |
| `playbook_pin` | optional string (date or skill rev) |
| `production_bridge` | path \| `—` (advisory) |

### Chapter row (rollup)

| Field | Values |
|---|---|
| `design_clean` | `n/a` \| `missing` \| `partial` \| `clean` \| `blocked` |
| `visual_clean` | same (unit rollup) |
| `macro_vc` | `todo` \| `clean` \| `blocked` \| `n/a` |
| `quality_packet` | `missing` \| path \| `ready` |
| `open_assets` | `n/a` \| `needed` \| `partial` \| `done` \| `blocked` |

### Unit row (if template has units)

| Field | Values |
|---|---|
| `design_clean` | `missing` \| `partial` \| `clean` \| `blocked` \| `n/a` |
| `visual_clean` | same |
| `needs_open_assets` | `yes` \| `no` |
| `open_assets` | `n/a` \| `needed` \| `scanning` \| `manifest_ok` \| `blocked` |
| `manifest_path` | path \| `—` |

### Route template

| Field | Notes |
|---|---|
| `next_skill` enum | add `open-assets` |
| Mirror | design_clean, visual_clean, quality_packet, open_assets (status or path) |

### Chapter done (board-gated, Contract-aligned)

```text
design_clean = clean|n/a
unit visual_clean clean where graphics
macro_vc = clean|n/a
quality_packet = ready
accept = accepted
compose = done
pdf path present
validate OK  →  necessary but NOT sufficient alone
```

### Sit.2 board policy

| Autonomy / context | Board? |
|---|---|
| L0 route-only, single short session | No |
| L1 single-unit single-session | Optional |
| L1+ multi-unit **or** “continue later” **or** L2 | **Create** `toolset/orchestration/book-production/<slug>/` with `scope: single-chapter` |
| User requests resume/status | Create if missing |

---

## In scope — Phase B (optional) — deferred

| Item | Spec |
|---|---|
| CLI | e.g. `bookkit validate --quality-packet <path>` or flag on production profile |
| Checks | File exists; listed paths exist; required headings/keys present; PNG paths exist on disk |
| Non-checks | Whether PNG was “opened”; whether critique is adversarial; claim medical correctness |
| Default | WARN; exit 0 or soft non-zero per existing validate patterns — document choice in plan Phase B |
| Tests | One fixture missing packet paths; one complete stub |

---

## Success criteria

### Phase A — **all pass 2026-08-03**

| ID | Criterion |
|---|---|
| **SA1** | board.template (+ kickoff as needed) documents new fields with allowed enums. |
| **SA2** | route.template includes `open-assets` and quality mirrors. |
| **SA3** | book-production SKILL / phase-machine / multi-chapter-explore notes reference cells for done/idle. |
| **SA4** | sit.2 board policy written in studio + book-production; single-chapter scope; no shadow board. |
| **SA5** | playbook_pin + production_bridge optional fields documented. |
| **SA6** | No semantic CLEAN in A; no critique bodies in board. |
| **SA7** | Harvest Phase A into orchestrator + studio (+ status script if touched). |

### Phase B (if executed)

| ID | Criterion |
|---|---|
| **SB1** | Soft path gate implemented and documented as non-quality-certification. |
| **SB2** | At least one automated or fixture test for missing paths. |
| **SB3** | Default consumer smoke path does not require medical packet. |

---

## Risks

| Risk | Mitigation |
|---|---|
| Board sprawl / empty cells cargo-cult | Enums include `n/a`; policy limits when boards are created |
| Agents treat `clean` cell as proof | Contract + skill text: cell is resume index; critique files + PNGs are evidence |
| Phase B false green | Explicit non-goals in CLI help text |
| Drift from T2 flag names | Use T2 names (`needs_open_assets`, scan outcomes) |

---

## Dependencies

| Dependency | Why |
|---|---|
| T1 Contract | Done definition, controller resume rules |
| T2 wire | Meaning of open_assets / macro_vc / packet in the default path |
| Existing templates | `board.template.md`, `route.template.md`, quality-packet.template.md |

---

## Related paths

- `toolset/skill-pack/book-production-orchestrator/templates/{board,route,kickoff}.template.md`  
- `toolset/skill-pack/book-production-orchestrator/{SKILL.md,references/*}`  
- `toolset/skill-pack/studio/{SKILL.md,references/*}`  
- `scripts/book-production-status.sh`  
- `docs/BOOK-PRODUCTION-RUNBOOK.md`  
- `toolset/compose/validate/*` (Phase B only)  
- `domains/medical/templates/quality-packet.template.md`  
- `toolset/skill-pack/COLLABORATION-CONTRACT.md`  
