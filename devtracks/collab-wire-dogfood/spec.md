# Spec — Collaboration Wire Dogfood

**Status:** planned (2026-08-03) · **implement next** (post-trilogy residual)  
**Product:** A/B control verification (studio, book-production, open-assets, media-brief, medical-graphics)  
**Plan:** [plan.md](plan.md)  
**Successor (conditional):** [quality-packet-soft-gate](../quality-packet-soft-gate/)  
**Provenance:** skill-collaboration trilogy T1–T3A archived · Contract live  
**Index:** [skill-collaboration/README.md](../skill-collaboration/README.md)

---

## Problem

T1–T3A shipped **prose + templates**: Collaboration Contract, conditional open-assets, chapter macro VC, board quality cells. That is necessary but not sufficient:

1. Agents can still **skip filling** new board cells while declaring Accept / idle.  
2. Sit.2 may **not create** a durable board when multi-unit/L2 resume risk warrants it — or may create a **shadow board** outside book-production.  
3. Open-assets may be **cargo-culted** (empty MANIFEST) or **skipped when required**.  
4. Multi-unit chapters may stop at **unit Visual CLEAN** without **chapter macro VC**.  
5. Accept may still link a **missing or hollow quality packet** — the only honest trigger for Phase B CLI.

Without a structured dogfood pass, we either over-build CLI (process theater) or under-detect regression.

---

## Goal

1. Run a **bounded dogfood suite** against the living wire (not re-open trilogy design).  
2. Produce a **findings report** with pass/fail per scenario and concrete evidence paths.  
3. Emit an explicit **Phase B go / no-go / defer** decision with criteria.  
4. Optionally fix **only dogfood-blocking doc/template bugs** (typos, missing enum, broken link) — not new features.  
5. Harvest durable findings into runbook / orchestrator notes if small; archive track when suite done.

---

## Non-goals

| Non-goal | Where |
|---|---|
| Implement soft quality-packet CLI | **quality-packet-soft-gate** (only if GO) |
| Redefine Design/Visual CLEAN criteria | DQS + B skills (archived provenance) |
| Full production Kursbuch print drive | book-production-orchestrator ops |
| Form Lab medium craft / Pass O redo | form-lab-orchestrator |
| Migrate legacy boards en masse | Optional note only; out of scope |
| Skill-graph / mega-critic | Forbidden |

---

## Locked decisions

| # | Decision |
|---|---|
| **D1 Two tracks** | Dogfood is its own track; CLI is a **separate blocked** track. |
| **D2 Suite over scale** | Prefer **few high-signal scenarios** (sit.2 single, sit.2 multi-unit, board resume, open-assets skip vs required) over N=10 portfolio re-run. |
| **D3 Time box** | Target **1–2 agent sessions** (+ Human spot-check of PNGs/board); do not open endless revise loops. |
| **D4 Fix class** | Only **blocking hygiene** (broken template, wrong enum name) in this track; behavior gaps → findings + optional GO for CLI. |
| **D5 Phase B trigger** | GO only if dogfood shows **Accept / idle without resolvable quality_packet evidence** (or equivalent) after procedure was followed in good faith. |

---

## In scope — dogfood suite

### Scenario A — Sit.2 code-only unit (skip path)

| Item | Expectation |
|---|---|
| Setup | One schema/code unit; Media sets `open_asset_scan=skip` |
| Wire | No MANIFEST ceremony; free vision optional/n/a per track |
| Board | L0 short session: **no** durable board required |
| Fail signals | Empty MANIFEST invented; open-assets forced |

### Scenario B — Sit.2 realism unit (required path)

| Item | Expectation |
|---|---|
| Setup | Unit needs photo/icon realism; `open_asset_scan=required` |
| Wire | Design CLEAN → open-assets → MANIFEST `accepted`\|`gap` **before** free gen; gap may demote to Typst |
| Fail signals | Free gen without scan; Accept without rights outcome |

### Scenario C — Sit.2 multi-unit quality chapter + durable board

| Item | Expectation |
|---|---|
| Setup | ≥2 graphic units; autonomy L1+ multi-session **or** L2 |
| Wire | Create `toolset/orchestration/book-production/<slug>/` with `scope: single-chapter`; fill quality cells |
| Macro | After compose: **chapter macro VC** on full-page PNGs (`macro_vc=clean` or documented block) |
| Packet | `quality_packet` path or `ready` before Accept-as-done |
| Fail signals | Shadow studio board; unit CLEAN only; idle without packet/macro |

### Scenario D — Cold resume (board exists)

| Item | Expectation |
|---|---|
| Setup | Board from C with cells partially filled; new session |
| Wire | Resume owner = **book-production-orchestrator** (sit.7); route reads quality mirrors |
| Fail signals | Studio keeps parallel board; agent re-invents CLEAN from chat without cell/path check |

### Scenario E — Multi-chapter board cell adoption (sample, not full re-portfolio)

| Item | Expectation |
|---|---|
| Setup | Either **new mini board** (2 chapters) **or** retrofit **one row** of an existing board (`kursbuch-explore-2026-08` optional sample) with T3 columns |
| Wire | Chapter rollup cells + ≥1 unit subrow show correct enums |
| Fail signals | Template unusable on real board; status script noise only is OK |

### Scenario F — Accept / packet discipline (Phase B sensor)

| Item | Expectation |
|---|---|
| Setup | Reach Accept (exploration OK) for one multi-unit or one asset unit |
| Check | Accept record links packet; packet lists PNG paths that **exist on disk**; board `quality_packet` consistent |
| **GO Phase B** | If Accept/`ready`/`idle` occurs with missing packet file, missing PNG paths, or hollow packet **despite** skills loaded |
| **NO-GO** | If procedure + board cells catch it without CLI |

---

## Success criteria

| ID | Criterion |
|---|---|
| **S1** | Findings report exists under this track (`findings.md` or `reports/dogfood-YYYY-MM-DD.md`). |
| **S2** | Scenarios A–F each have status: pass \| fail \| partial \| skipped(+why). |
| **S3** | Explicit Phase B decision: **GO** \| **NO-GO** \| **DEFER** with evidence bullets. |
| **S4** | Any hygiene patches listed and limited (no new CLI, no CLEAN redefinition). |
| **S5** | skill-collaboration index + successor track entry criteria updated from decision. |
| **S6** | Track harvested (short) and archived when suite closed. |

---

## Risks

| Risk | Mitigation |
|---|---|
| Dogfood becomes full book production | Hard suite list + time box |
| False GO (one agent mistake) | Require pattern or repeated Accept-without-packet; single slip → DEFER + skill note |
| False NO-GO (agents carefully coached) | Run at least one **cold** L2-style tick without Human hand-holding mid-step |
| Legacy board migration thrash | Scenario E is sample only |

---

## Dependencies

| Depends on | Status |
|---|---|
| T1 Contract | live `toolset/skill-pack/COLLABORATION-CONTRACT.md` |
| T2 open-assets wire | live sit.2 / P4 / G0b / templates |
| T3 Phase A board cells | live book-production templates |
| Optional content pins | existing briefs/pilots under `domains/medical/` · `toolset/compose/pilots/` |

**Blocks:** [quality-packet-soft-gate](../quality-packet-soft-gate/) **must not implement** until this track records **GO**.

---

## Related paths

- `toolset/skill-pack/COLLABORATION-CONTRACT.md`  
- `toolset/skill-pack/studio/{SKILL.md,references/situations.md,routes.md}`  
- `toolset/skill-pack/book-production-orchestrator/templates/{board,route,kickoff}.template.md`  
- `domains/medical/templates/{form-spec,design-contract,quality-packet,accept-record}.template.md`  
- `domains/medical/skill/{open-assets,medical-graphics,media-brief}/`  
- `toolset/orchestration/book-production/` (runtime boards)  
- `docs/BOOK-PRODUCTION-RUNBOOK.md`  
- Archived: `devtracks/_archive/orchestration-quality-state/` (Phase B deferred notes)  
