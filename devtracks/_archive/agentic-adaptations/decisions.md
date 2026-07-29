# Decisions — agentic-adaptations

**Status:** defaults locked for implementation (override by Human anytime)  
**Date:** 2026-07-20  
**Spec:** [spec.md](spec.md)

| ID | Decision | Default |
|---|---|---|
| AD1 | R1–R7 remain **rejected** | reject all |
| AD2 | Learner personas in standard review | **include_personas: true** |
| AD3 | Clarity scan | **include_clarity_scan: false** (opt-in) |
| AD4 | Numeric 0–10 quality scores as gates | **forbidden** |
| AD5 | Patches | only for `block` / `should`; never auto-merge to SoT |
| AD6 | evaluate-only | no patch bodies; preferred for round-2 recheck |
| AD7 | validate production freeze fail message | include `next_checkpoint: H1` |
| AD8 | content-orchestrator may draft Media Brief body | **no** — only handoff |
| AD9 | Implementation home | `domains/content-maturity/` only for C process |

## Open (non-blocking)

1. Whether clarity-scan default flips to on after first pilot feedback  
2. CONTENT_WORK_REPO name (owned by content-maturity D11)  
