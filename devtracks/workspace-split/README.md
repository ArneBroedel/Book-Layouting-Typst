# Devtrack: workspace-split

**Status:** active — Phase 0–1 **done**; implement from Phase 1b onward  
**Currency:** 2026-07-29 plan/inventory refresh; only open *structure* track left (B feature tracks archived)  
**Product impact:** A (layout platform focus) + B/C boundaries + delivery model  
**Do not confuse with:** content-maturity split checklist (C only, archived track), medical-graphics skill (B runtime under `domains/medical/skill/`)

---

## Start here (implementing agent)

1. Read **this file** end-to-end.  
2. Read [`HANDOFF.md`](HANDOFF.md) — current state, order of work, verification, anti-goals.  
3. Read [`decisions.md`](decisions.md) — **locked** human decisions D1–D5 (do not re-litigate).  
4. Read [`joint-recommendation.md`](joint-recommendation.md) — architecture consensus (Grok + Antigravity).  
5. Open the **next open phase file** and execute only that phase’s checklist.  
6. Keep [`plan.md`](plan.md) as deep background (inventory, mapping); prefer phase files for tasks.

### Document map

| File | Role |
|---|---|
| [`spec.md`](spec.md) | Problem, goals, non-goals, success criteria |
| [`plan.md`](plan.md) | Full analysis, product mapping, consolidation ideas (long) |
| [`joint-recommendation.md`](joint-recommendation.md) | **Binding** architecture after peer-review |
| [`antigravity-peer-review.md`](antigravity-peer-review.md) | External critique provenance |
| [`decisions.md`](decisions.md) | Locked D1–D5 |
| [`HANDOFF.md`](HANDOFF.md) | Implementer brief + git state + verification |
| [`phase1-hygiene.md`](phase1-hygiene.md) | Phase 1 checklist (**DONE**) |
| [`phase1b-cli.md`](phase1b-cli.md) | **NEXT** — unified `bookkit` CLI surface |
| [`phase2-boundaries.md`](phase2-boundaries.md) | Modular monorepo, spike harvest, skills, pilots |
| [`phase3-split.md`](phase3-split.md) | Deferred physical repo split (triggers only) |
| [`phase4-skills-docs.md`](phase4-skills-docs.md) | Skill rewiring, consumer docs, CLAUDE shrink |
| [`phase1-hygiene-log.md`](phase1-hygiene-log.md) | What Phase 1 actually changed |
| Inventory | [`../workspace-inventory/`](../workspace-inventory/) |

### Related (do not fork)

| Topic | Canonical path |
|---|---|
| Product A/B/C | `devtracks/PRODUCT-BOUNDARIES.md` |
| Roles / Accept / no auto-heal | `devtracks/CONSENSUS-v0.md` |
| C extract checklist | `devtracks/_archive/content-maturity/SPLIT-CHECKLIST.md` |
| Gold briefs | `domains/medical/briefs/INDEX.md` |
| Asset policy | `domains/medical/assets/CANONICAL.md` |
| Compose policy | `toolset/compose/CREATIVE-COMPOSE.md` |

### Progress snapshot

| Phase | Status |
|---|---|
| 0 Inventar + Plan | **done** (inventory re-run 2026-07-29; ~851 files) |
| 1 Hygiene (purge, archive, gitignore, tag) | **done** (`b437aad` purge/archive, `2c97faf` policy/inventory; tag `archive/assets-pre-purge-2026-07-29` → `093442c`) |
| 1b Unified CLI | **open — start here** (`bookkit` still doctor/build/watch/ua/init/brief-check; print stub; no graphics/validate) |
| 2 Boundaries + harvest | open (incl. `kl-wave6/lib`) |
| 3 Physical split | **blocked** until trigger (D2) |
| 4 Skills + docs polish | open (can parallel 1b/2; root README still pre-toolset) |
| 5 Nice-to-have | backlog |

### Governance rule for implementers

- **Minimal diffs.** Touch only phase checklist items.  
- **No physical multi-repo split** without Human confirming a trigger (D2).  
- **No new intermediate PNG commits** without MANIFEST `accepted` (CANONICAL.md).  
- **Do not invent second CLIs** — extend `scripts/bookkit` only (D4).  
- After substantive phase: update this README progress table + HANDOFF “done” section.
