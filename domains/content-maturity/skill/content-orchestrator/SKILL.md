---
name: content-orchestrator
description: "ALWAYS use to route Content-Reife phases C1–C4: draft/review/freeze/proof handoff, emit route card, pick next skill (content-review, human freeze, media-brief, medical-graphics when visual units, compose-chapter, book-production-orchestrator for full-book layout/print drive, human proof), enforce max 2 review rounds and checkpoints H1–H5 (optional H-Gfx). Produkt C process. Do NOT write production .typ, rewrite claims, author full Media Brief body, or replace content-review findings."
---

# content-orchestrator (Produkt C — thin router)

**Route only.** Emits a **route card**; does not replace specialist skills.  
For **full-book production** (Form Spec → graphics → compose → print), prefer **`book-production-orchestrator`** after freeze.  
If the user is **unsure of the overall path**, start with **`studio`** (`/studio`) — it routes here for C-only work.

**SoT:** `domains/content-maturity/skill/content-orchestrator/`  
**Checkpoints:** `domains/content-maturity/checkpoints.md`  
**Template:** `domains/content-maturity/templates/route-card.template.md`

## When to use

- User asks “what’s next?” on a chapter in the maturity pipeline  
- Starting or resuming C1–C4 without knowing which skill  
- After review/freeze/compose to pick the next Human or agent step  

## When NOT to use

| Situation | Use instead |
|---|---|
| Actually review the manuscript | `content-review` |
| Write Media Brief / Accept | `media-brief` |
| Code vs asset / A/B didactic graphics | `medical-graphics` |
| Feasibility / compose / validate | `compose-chapter` |
| Sign freeze/proof | **Human** |

## Routing table

| Observed state | next_skill | checkpoint | next_artifact |
|---|---|---|---|
| draft / no review | `content-review` | — | review-report template |
| review with `floor_status: blocked`, round \< 2 | author fixes → `content-review` | — | prior report |
| review blocked, round ≥ 2 | `human-triage` | **H3** | stop_reason: circuit breaker |
| `ready_for_freeze` yes/nits, no freeze file | `human-freeze` | **H1** | freeze-record template |
| frozen, no production brief | handoff `media-brief` **or** `book-production-orchestrator` | H1 done | brief / form-spec; full-book board if multi-chapter |
| brief with visual ambition, no form-spec / graphics | handoff `book-production-orchestrator` (P3–P4) or `media-brief` + `medical-graphics` | — | form-spec + graphics playbook |
| brief+feasibility, no accept | `media-brief` (accept) | **H2** | accept template (+ graphic winners if any) |
| accept yes, no production typ/pdf | `compose-chapter` | H2 | compose + `--profile production` |
| multi-chapter layout/print drive | **`book-production-orchestrator`** | H1–H5 as board says | `toolset/orchestration/book-production/<book-id>/` |
| PDF exists, no proof | `human-proof` | **H4** | proof-record template |
| proofed; release | `human-triage` / stop | **H5** v0.4 | imprimatur stub |

## Process

1. Collect paths: content, latest review, freeze, brief, accept, typ, pdf, proof.  
2. Infer `content_status`, `round`, `floor_status` from artifacts (do not invent freeze).  
3. Apply routing table.  
4. Write **route card** from template.  
5. Stop. Tell user which skill to load next — do not silently become that skill unless user asks.

## ALWAYS / NEVER

| ALWAYS | NEVER |
|---|---|
| Emit route card file or explicit card in reply + path | Production `.typ` |
| Point at H1–H5 when Human required | Rewrite claims/body |
| Enforce max 2 review rounds → H3 | Full Media Brief body while “only orchestrating” |
| Handoff freeze to Human | Agent-only freeze sign-off |
| Keep A/B/C boundaries | Genesis score loops / auto-polish |

## Related

| Skill / doc | Path |
|---|---|
| content-review | `skill/content-review/` |
| checkpoints | `checkpoints.md` |
| media-brief | `domains/medical/skill/media-brief/` |
| medical-graphics | `domains/medical/skill/medical-graphics/` |
| compose-chapter | `toolset/skill-pack/compose-chapter/` |
| **studio** (guided intake / slash front door) | `toolset/skill-pack/studio/` |
| **book-production-orchestrator** (full book → print) | `toolset/skill-pack/book-production-orchestrator/` |
| Track (archived) | `devtracks/_archive/agentic-adaptations/` |
