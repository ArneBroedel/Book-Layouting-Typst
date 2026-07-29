# Devtrack: workspace-split

**Status:** **implemented** (Phase 0–1, 1b, 2, 4) — Phase 3 physical split remains **trigger-only (D2)**  
**Currency:** 2026-07-29 full implementation  
**Product impact:** A (layout platform focus) + B/C boundaries + unified CLI delivery model  
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
| [`phase1b-cli.md`](phase1b-cli.md) | Unified `bookkit` CLI (**DONE**) |
| [`phase2-boundaries.md`](phase2-boundaries.md) | Modular monorepo, spike harvest, skills, pilots (**DONE**) |
| [`phase3-split.md`](phase3-split.md) | Deferred physical repo split (triggers only) |
| [`phase4-skills-docs.md`](phase4-skills-docs.md) | Skill rewiring, consumer docs (**DONE**; showcase move D3 deferred) |
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
| Harvested Typst libs | `domains/medical/lib/typst/` |

### Progress snapshot

| Phase | Status |
|---|---|
| 0 Inventar + Plan | **done** |
| 1 Hygiene (purge, archive, gitignore, tag) | **done** |
| 1b Unified CLI | **done** — `scripts/bookkit` v0.1.1: validate, catalog, print, prepress, graphics |
| 2 Boundaries + harvest | **done** — OWNERSHIP, `domains/medical/lib/typst/`, pilots archive, research banners |
| 3 Physical split | **blocked** until trigger (D2) |
| 4 Skills + docs polish | **done** (showcase `src/` move D3 deferred — document-only) |
| 5 Nice-to-have | backlog |

### Governance rule for implementers

- **Minimal diffs.** Touch only phase checklist items.  
- **No physical multi-repo split** without Human confirming a trigger (D2).  
- **No new intermediate PNG commits** without MANIFEST `accepted` (CANONICAL.md).  
- **Do not invent second CLIs** — extend `scripts/bookkit` only (D4).  
- After substantive phase: update this README progress table + HANDOFF “done” section.

### Harvest note (when archiving this track)

Phase 3 remains intentionally open forever until a D2 trigger. This track can stay **active** as the home for Phase 3 checklists, or be archived with a pointer that Phase 3 lives under PRODUCT-BOUNDARIES / a new track when triggered. Prefer keeping it active as long as Phase 3 is the documented next *possible* structural step.
