# Plan: Agentic Adaptations

**Spec:** [spec.md](spec.md) · **Matrix:** [adoption-matrix.md](adoption-matrix.md)  
**Status:** **MVP implemented** (2026-07-20)  
**Depends on:** content-maturity MVP kit (`domains/content-maturity/`)  
**Product:** primarily **C** process; light A/B documentation + validate H1 footer  

---

## Goal

Land Genesis-inspired patterns **A1–A7** under `domains/content-maturity/`, without R1–R7.

---

## Phase status

| Phase | Status |
|---|---|
| 0 Lock + decisions | **done** (`decisions.md`) |
| 1 Floor + evaluate-only + checkpoints | **done** |
| 2 content-orchestrator | **done** |
| 3 Personas + surgical patches | **done** |
| 4 Clarity + A/B hooks + gold + H1 footer | **done** |
| 5 Governance + harvest | **done** |

---

## Delivered paths

| Item | Path |
|---|---|
| checkpoints H1–H5 | `domains/content-maturity/checkpoints.md` |
| content-review (modes/floor) | `domains/content-maturity/skill/content-review/SKILL.md` |
| content-orchestrator | `domains/content-maturity/skill/content-orchestrator/SKILL.md` |
| route-card template | `domains/content-maturity/templates/route-card.template.md` |
| review template meta | `domains/content-maturity/templates/review-report.template.md` |
| content-patch active | `domains/content-maturity/templates/content-patch.template.md` |
| learner-persona | `domains/content-maturity/checklists/core/learner-persona.md` |
| clarity-scan-de | `domains/content-maturity/checklists/core/clarity-scan-de.md` |
| gold | `domains/content-maturity/examples/agentic-adaptations/` |
| freeze H1 messages | `toolset/compose/validate/freeze_gate.py` |
| CONSENSUS ADRs 37–42 | `devtracks/CONSENSUS-v0.md` |

---

## Definition of Done

- [x] A1–A7 landed (A7 opt-in checklist + example)  
- [x] R1–R7 absent  
- [x] Orchestrator + evaluate-only + floor + checkpoints  
- [x] Gold artifacts  
- [x] CONSENSUS ADRs 37–42  
- [x] Split-ready under domains/content-maturity  
- [x] Tests: freeze fail includes `next_checkpoint: H1`  

---

## Harvested into

| Learning | Destination |
|---|---|
| Evaluate-only / floor / patches / personas / clarity | `domains/content-maturity/skill/content-review/SKILL.md` + checklists/templates |
| Thin orchestrator | `domains/content-maturity/skill/content-orchestrator/` |
| Checkpoint map H1–H5 | `domains/content-maturity/checkpoints.md` |
| Production freeze → H1 | `toolset/compose/validate/freeze_gate.py` |
| B/A cross-links | media-brief, compose-chapter skills |
| ADRs 37–42 | `devtracks/CONSENSUS-v0.md` |
| Gold path | `domains/content-maturity/examples/agentic-adaptations/` |

*Archive track after Human confirms; kit remains under `domains/content-maturity/` until C split.*

---

## Change log

| Date | Note |
|---|---|
| 2026-07-20 | Track opened |
| 2026-07-20 | **MVP implementation complete** |
