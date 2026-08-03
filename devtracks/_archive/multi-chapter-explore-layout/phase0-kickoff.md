# Phase 0 — Kickoff + board

**Track:** multi-chapter-explore-layout  
**Exit:** board exists; decisions D1–D8 resolved or deferred in writing; Human “go W0”

---

## Goals

1. Create durable orchestration for multi-chapter exploration.  
2. Freeze operating parameters (N, autonomy, H-Explore depth).  
3. Banner **exploration** so agents never claim production compose.

---

## Steps

1. Resolve open items in [decisions.md](decisions.md) with Human.  
2. Create:

```text
toolset/orchestration/book-production/<book_id>/
  kickoff.md
  board.md
  run-log.md
  route.md
  notes.md          # Human decisions, portfolio pointer
```

3. Kickoff fields (minimum):

| Field | Value |
|---|---|
| book_id | from D5 |
| brief_class | **exploration** |
| autonomy | D3 |
| print_target | screen |
| content_roots | D6 |
| portfolio_path | `devtracks/multi-chapter-explore-layout/portfolio.md` |
| quality_norms | design-quality-system + CRPS process-review |
| human_gates | H-Explore per wave; H-Design/H-Gfx as needed; **no** default H1/H2 |

4. Seed board chapter rows from portfolio (even if titles TBD).  
5. First route: Phase 1 portfolio lock **or** W0 first transfer if portfolio already locked.  
6. Log `### [ISO] P0 — DONE` in run-log.

---

## Templates

- Orchestrator templates: `toolset/skill-pack/book-production-orchestrator/templates/`  
- Runbook: `docs/BOOK-PRODUCTION-RUNBOOK.md`

---

## Exit checklist

- [ ] decisions.md has resolved D1–D6 (D7–D8 ok deferred with default)  
- [ ] board + kickoff + run-log on disk  
- [ ] exploration banner in kickoff + board header  
- [ ] Human confirmed autonomy + H-Explore depth  
- [ ] Next: Phase 1  
