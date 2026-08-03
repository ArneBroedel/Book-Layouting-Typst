# Plan — Orchestration Quality State

**Status:** **Phase A complete** (2026-08-03) · ready-to-archive · Phase B deferred optional  
**Spec:** [spec.md](spec.md) · **STATUS:** [STATUS.md](STATUS.md)  
**Predecessors:** [T1 collab-control-plane](../collab-control-plane/) · [T2 open-assets-production-wire](../open-assets-production-wire/)  
**Trilogy:** [skill-collaboration/README.md](../../skill-collaboration/README.md)

---

## 0. Intent (one line)

Make quality/open-assets/packet/**macro_vc** **resume-visible** on one board family; optionally add a **soft path gate** that never pretends to be Visual CLEAN.

---

## 1. Entry criteria

- [x] T1 Contract live (done definition + controller resume)  
- [x] T2 default-path wire live (open-assets conditional, macro VC named, bridge advisory)  
- [x] Field names in this plan match T2 template flags  

---

## 2. Phases

### Phase A0 — Template inventory (XS) ✅

| Task | Output |
|---|---|
| Read current `board.template.md`, chapter/unit row shapes | Diff plan for cells |
| Read `route.template.md` next_skill enum | Add open-assets |
| Check `book-production-status.sh` parsing assumptions | Low-risk extend for T3 key presence |

**Exit:** Concrete patch list. ✅

---

### Phase A1 — Board + kickoff + route templates (S–M) ✅

| File | Tasks |
|---|---|
| `templates/board.template.md` | scope, playbook_pin, production_bridge; chapter + unit quality cells per spec |
| `templates/kickoff.template.md` | optional pins; align allowed_skills if not already from T2 |
| `templates/route.template.md` | next_skill += open-assets; mirror CLEAN/packet/open_assets |

**Rules:** enums only; comments explain evidence stays in artifact trees under domains/medical or dist PNGs.

**Exit:** SA1, SA2, SA5. ✅

---

### Phase A2 — Orchestrator + studio policy (S) ✅

| File | Tasks |
|---|---|
| book-production `SKILL.md` | Chapter done/idle uses new cells; validate ≠ visual; open-assets routing uses unit flag |
| `phase-machine.md` / multi-chapter-explore ref | unit VC vs macro_vc vs P9 scopes |
| `references/autonomy.md` | L2 must not mark idle without packet/macro cells |
| studio situations §2 + §7 | Board create policy; resume → book-production; `scope: single-chapter` |
| runbook | Board field legend (short) |

**Exit:** SA3, SA4. ✅

---

### Phase A3 — Status script (optional S) ✅

| If | Then |
|---|---|
| Script already greps board cells | Extended for new enum key presence (best-effort) |
| Script is freeform | Also docs-only awareness |

Do not rewrite orchestration runtime architecture.

**Exit:** SA6 awareness; script change low-risk. ✅

---

### Phase A4 — Harvest Phase A (XS) ✅

| Task | Detail |
|---|---|
| Verify SA1–SA7 | Manual checklist |
| Update trilogy README | Phase A done; Phase B optional |
| Harvest footer | orchestrator + studio + runbook + status script |
| **Decision:** archive now vs keep open for Phase B | **Phase A complete**; Phase B deferred dogfood; track **ready-to-archive** |

**Exit:** Durable resume works without CLI. ✅

---

### Phase B0 — Soft quality-packet gate (M, optional) ⏸ DEFERRED

Only start if dogfood shows Accept with empty links still happening after T1–T2–A.

| Task | Detail |
|---|---|
| Design flag UX | `--quality-packet PATH` and/or production profile optional |
| Implement existence checks | file + listed paths + pngs exist |
| Help text | “Does not certify design/visual quality” |
| Tests | fixture packet complete / broken |
| Default off for pure A consumers | smoke still green |

**Exit:** SB1–SB3 (when executed).

---

### Phase B1 — Evals (optional S) ⏸ DEFERRED

| Eval idea | Pass condition |
|---|---|
| Self-Accept | Rejected when builder=AX same turn / missing packet |
| open-assets required | Free gen without MANIFEST → procedure fail |

May live under media-brief / medical-graphics evals workspaces — not a new skill.

---

### Phase B2 — Harvest full track (XS) ⏸ after Phase B if ever run

- Harvest CLI + templates into compose docs / skill-pack  
- Full `## Harvested into`  
- Archive track  
- Trilogy marked complete  

*(Phase A harvest is sufficient to archive under D3.)*

---

## 3. Expected touch set

### Phase A — touched

```text
toolset/skill-pack/book-production-orchestrator/templates/board.template.md
toolset/skill-pack/book-production-orchestrator/templates/route.template.md
toolset/skill-pack/book-production-orchestrator/templates/kickoff.template.md
toolset/skill-pack/book-production-orchestrator/SKILL.md
toolset/skill-pack/book-production-orchestrator/references/phase-machine.md
toolset/skill-pack/book-production-orchestrator/references/autonomy.md
toolset/skill-pack/book-production-orchestrator/references/multi-chapter-explore.md
toolset/skill-pack/studio/SKILL.md
toolset/skill-pack/studio/references/situations.md
docs/BOOK-PRODUCTION-RUNBOOK.md
scripts/book-production-status.sh
toolset/skill-pack/COLLABORATION-CONTRACT.md  # one-line T3 live
AGENTS.md
devtracks/skill-collaboration/README.md
devtracks/orchestration-quality-state/{spec,plan,STATUS}.md
```

### Phase B (additional) — not done

```text
toolset/compose/validate/*          # thin gate module
toolset/compose/tests/*             # fixtures
scripts/bookkit                     # flag wiring if needed
domains/medical/templates/quality-packet.template.md  # schema_version / path table only if needed
```

Avoid: packages/bookkit foundation medical logic; form-lab board redesign; skill-graph.

---

## 4. Acceptance scenarios

| # | Scenario | Expected |
|---|---|---|
| A | L2 multi-unit chapter with board | Cells show design/visual/open_assets/packet/macro_vc; idle only when done checklist met |
| B | Cold resume new session | Agent reads board + paths; does not re-invent CLEAN from chat |
| C | L0 single sit.2 hour | No mandatory board |
| D | Phase B missing PNG path in packet | WARN (or fail if Human escalated); still not “Visual CLEAN certified” — **deferred** |

---

## 5. Effort estimate

| Phase | Effort |
|---|---|
| A0–A4 | **~1–2 days** (done) |
| B0–B2 | **~1–2 days** (only if triggered) |
| **Total if A only** | **~1–2 days** |
| **Total if A+B** | **~2–4 days** |

---

## 6. Status log

| Date | Note |
|---|---|
| 2026-08-03 | Track planned; blocked on T1 then T2. Phase B optional after dogfood. |
| 2026-08-03 | **Phase A implemented** SA1–SA7. Phase B deferred. Track ready-to-archive. |
| 2026-08-03 | **Archived** with T1–T2 after orchestrated trilogy review. Phase B remains deferred residual. |

---

## Harvested into

- `toolset/skill-pack/book-production-orchestrator/templates/board.template.md`  
- `toolset/skill-pack/book-production-orchestrator/templates/route.template.md`  
- `toolset/skill-pack/book-production-orchestrator/templates/kickoff.template.md`  
- `toolset/skill-pack/book-production-orchestrator/SKILL.md`  
- `toolset/skill-pack/book-production-orchestrator/references/phase-machine.md`  
- `toolset/skill-pack/book-production-orchestrator/references/autonomy.md`  
- `toolset/skill-pack/book-production-orchestrator/references/multi-chapter-explore.md`  
- `toolset/skill-pack/studio/SKILL.md`  
- `toolset/skill-pack/studio/references/situations.md`  
- `docs/BOOK-PRODUCTION-RUNBOOK.md`  
- `scripts/book-production-status.sh`  
- `toolset/skill-pack/COLLABORATION-CONTRACT.md` (§2 one-line)  
- `AGENTS.md` (trilogy row)  
- `devtracks/skill-collaboration/README.md`  
