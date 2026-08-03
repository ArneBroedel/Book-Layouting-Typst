# Plan — Open-Assets Production Wire

**Status:** **complete** (2026-08-03) · ready-to-archive  
**Spec:** [spec.md](spec.md)  
**Predecessor:** [collab-control-plane](../collab-control-plane/)  
**Successor:** [orchestration-quality-state](../orchestration-quality-state/)  
**Trilogy:** [skill-collaboration/README.md](../../skill-collaboration/README.md)

---

## 0. Intent (one line)

Close the **half-wire**: default production/chapter paths must decide open-assets **required|optional|skip**, consult production-bridge without caging, and require **chapter macro VC** for multi-unit quality PDFs.

---

## 1. Entry criteria

- [x] T1 Collaboration Contract merged and linked from studio / book-production  
- [x] Contract names unit VC · chapter macro VC · book P9  
- [x] Implementer loads open-assets SKILL + OPEN-ASSET-POLICY + G0b text before editing  

---

## 2. Phases

### Phase 0 — Inventory current strings (XS) ✅

| Task | Output |
|---|---|
| Grep sit.2 / phase-machine / kickoff / G0b for open-assets | Gap list (sit.2 jump Design CLEAN→free vision; kickoff missing open-assets; P4 no conditional) |
| Locate quality-packet + accept templates rights fields | Added open_asset_scan + MANIFEST rights rows |
| Sample production-bridge from form-lab harvest | `portfolio-2026-08-d/harvest/production-bridge.md` |

**Exit:** Known edit points; no blind rewrites.

---

### Phase 1 — Studio sit.2 + routes (S) ✅

| File | Tasks |
|---|---|
| `studio/references/situations.md` §2 | Insert open-assets branch; multi-unit macro VC; link Contract done |
| `studio/SKILL.md` | ALWAYS/NEVER: no free vision when scan required without Pass O outcome; no chapter done without macro VC when multi-unit |
| `studio/references/routes.md` | Pasteable open-assets handoff; bridge advisory line; sit.2 route steps |

**Exit:** S1, partial S5–S6.

---

### Phase 2 — book-production + runbook (S) ✅

| File | Tasks |
|---|---|
| `phase-machine.md` | P4 subsection: Design CLEAN → conditional open-assets → free vision; explicit “not a fixed P3.5” |
| `book-production-orchestrator/SKILL.md` | Routing table / next-skill bullets; allowed specialist open-assets |
| `templates/kickoff.template.md` | `allowed_skills` += open-assets |
| `docs/BOOK-PRODUCTION-RUNBOOK.md` | P4 / Related skills |

**Exit:** S2.

---

### Phase 3 — B skills + templates (S–M) ✅

| File | Tasks |
|---|---|
| `medical-graphics/SKILL.md` (+ playbook G0) | Hard gate when `open_asset_scan=required`; Decision Note fields; bridge cite line |
| `media-brief` SKILL | How Media sets scan need from realism / third-party intent |
| `design-contract.template.md` and form-spec template | `open_asset_scan` field |
| `accept-record.template.md` / quality-packet (minimal) | Rights / MANIFEST when asset carrier |
| `open-assets/SKILL.md` | Production callers: sit.2, book-prod, G0b |

**Exit:** S3, S4.

---

### Phase 4 — production-bridge + chapter macro VC finish (S) ✅

| File | Tasks |
|---|---|
| `compose-chapter/SKILL.md` | Bridge read-if-present (not whitelist); multi-unit macro VC before “quality done” |
| `medical-graphics` Decision Note guidance | Cite bridge or override |
| studio / compose ALWAYS | Macro VC cap pointer (2 rounds / H-Explore) |

**Exit:** S5, S6.

---

### Phase 5 — Verify + harvest (XS) ✅

| Check | Method | Result |
|---|---|---|
| Cold read sit.2 | Cannot skip open-assets decision before free vision in prose | pass |
| Code-only path | skip/n/a still valid without MANIFEST ceremony | pass |
| Asset path | Accept blocked without rights outcome in procedure | pass |
| Grep | No always-on P3.5 phase; no board.template mass edit; no validate CLI | pass |
| Harvest footer | List skills | done |

**Exit:** S7–S8; trilogy README → T2 done; T3 unblocked.

---

## 3. Expected touch set (implemented)

```text
toolset/skill-pack/studio/SKILL.md
toolset/skill-pack/studio/references/situations.md
toolset/skill-pack/studio/references/routes.md
toolset/skill-pack/book-production-orchestrator/SKILL.md
toolset/skill-pack/book-production-orchestrator/references/phase-machine.md
toolset/skill-pack/book-production-orchestrator/templates/kickoff.template.md
toolset/skill-pack/compose-chapter/SKILL.md
toolset/skill-pack/COLLABORATION-CONTRACT.md   # §2 one-line T2 live
docs/BOOK-PRODUCTION-RUNBOOK.md
domains/medical/skill/medical-graphics/SKILL.md
domains/medical/skill/medical-graphics/playbook/{00-overview,01-from-form-spec,08-accept-handoff}.md
domains/medical/skill/media-brief/SKILL.md
domains/medical/skill/open-assets/SKILL.md
domains/medical/templates/design-contract.template.md
domains/medical/templates/form-spec.template.md
domains/medical/templates/accept-record.template.md
domains/medical/templates/quality-packet.template.md
domains/medical/templates/graphic-decision.template.md
```

Avoided: `board.template.md` (T3), `toolset/compose/validate/**` (T3B), form-lab craft phases, packages/bookkit.

---

## 4. Acceptance scenarios (procedure-level)

| # | Scenario | Expected procedure | Status |
|---|---|---|---|
| A | Schema-only urgency ladder, code carrier | `open_asset_scan=skip`; no MANIFEST; free vision optional per track | procedure ready |
| B | Disease photo essential | `required` → source scan → MANIFEST accepted or gap; gap → Typst alternative; no silent AI-as-photo | procedure ready |
| C | Multi-unit KL chapter quality PDF | unit VC each + chapter macro VC after assemble before Accept-as-done | procedure ready |
| D | Harvest bridge exists for job class | GX Decision Note cites or overrides; Media does not start from form-id shopping | procedure ready |

---

## 5. Effort estimate

| Phase | Effort |
|---|---|
| P0 | XS |
| P1–P2 | S–M (~1 day) |
| P3 | S–M (~1 day) |
| P4–P5 | S |
| **Total** | **~2–3 days** |

---

## 6. Status log

| Date | Note |
|---|---|
| 2026-08-03 | Track planned; implementation blocked on T1. |
| 2026-08-03 | **T2 implemented** — all phases 0–5; S1–S8 pass; T3 unblocked. |
| 2026-08-03 | **Archived** with T1–T3 after orchestrated trilogy review. |

---

## Harvested into

- `toolset/skill-pack/studio/SKILL.md` + `references/situations.md` + `references/routes.md`
- `toolset/skill-pack/book-production-orchestrator/SKILL.md` + `references/phase-machine.md` + `templates/kickoff.template.md`
- `toolset/skill-pack/compose-chapter/SKILL.md`
- `toolset/skill-pack/COLLABORATION-CONTRACT.md` (§2 T2 live pointer)
- `docs/BOOK-PRODUCTION-RUNBOOK.md`
- `domains/medical/skill/medical-graphics/SKILL.md` + playbook `00-overview.md`, `01-from-form-spec.md`, `08-accept-handoff.md`
- `domains/medical/skill/media-brief/SKILL.md`
- `domains/medical/skill/open-assets/SKILL.md` (Production entry)
- `domains/medical/templates/form-spec.template.md`
- `domains/medical/templates/design-contract.template.md`
- `domains/medical/templates/accept-record.template.md`
- `domains/medical/templates/quality-packet.template.md`
- `domains/medical/templates/graphic-decision.template.md`
- `devtracks/skill-collaboration/README.md` (T2 done · T3 unblocked)
