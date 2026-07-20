# Decisions — content-maturity

**Status:** accepted for MVP v0.3 after Gemini R1+R2 (2026-07-20)  
**Provenance:** [`reviews/gemini-r1-r2-2026-07-20.md`](reviews/gemini-r1-r2-2026-07-20.md)

| ID | Decision | Rationale |
|---|---|---|
| D1 | **Freeze = Human-only sign-off.** Agent may set `ready_for_freeze: yes\|no` only. | Medical/author liability; no silent freeze |
| D2 | **`content_revision`** = `git:<short-hash>` **or** `sha256:<file-bytes-hash>`. Dates and free semver pins **invalid** for production pins. | Deterministic pin; non-git C works via file hash |
| D3 | **Validate profiles:** `--profile smoke` ignores freeze; `--profile production` hard-requires freeze + revision pin match. | Fail-fast production without blocking platform smoke |
| D4 | **MVP review depth:** core developmental-edit + claims audit + thin `safety-flags` (flag/ask, never invent guidelines). Full medical profile **v0.4**. | Reduce LLM clinical hallucination surface |
| D5 | **Proof C4 in MVP:** human-filled `proof-record` checklist only; **no** agent PDF vision. | Avoid false content↔layout triage loops |
| D6 | **Imprimatur (C5)** deferred to **v0.4** as separate hard gate. MVP print handoff = freeze + media accept + production validate (+ optional human proof). | MVP thin; long-term architecture keeps C5 |
| D7 | **Patches / language-proof / genre-hooks** deferred v0.4+. | Avoid early B coupling and overdesign |
| D8 | **C2 circuit breaker:** max **2** review rounds → mandatory Human triage. | Same spirit as Media↔Tech caps |
| D9 | **Exploration briefs** allowed pre-freeze with `brief_class: exploration`; never authorize production compose. | Parallel design without gate bypass |
| D10 | **Transitional home** remains `domains/content-maturity/`; pure data contract to A/B (`content_status`, `content_revision`). | Split-ready; no bookkit in C process |
| D11 | **Ziel-Repo C** name: placeholder `CONTENT_WORK_REPO` until Human names it. | Split not blocked on naming |

## Open (Human only, non-blocking for Phase 0 scaffold)

1. Exact name of `CONTENT_WORK_REPO`
2. Whether production validate hard-fail lands in same PR as freeze template or one wave later (plan: Phase 3 after freeze template exists)
