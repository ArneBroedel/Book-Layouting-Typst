---
name: content-review
description: "ALWAYS use for Content-Reife / Lektorat on manuscript: draft review, evaluate-only pass, Critical Claims audit, safety-flags, learner personas, optional clarity-scan, surgical patches, Review-Report, freeze recommendation (floor: any block blocks freeze). Produkt C (domains/content-maturity). Do NOT use for Media Brief, compose .typ, claim silent-edit, agent-only freeze, or content-orchestrator routing-only."
---

# content-review (Produkt C — Content maturity + agentic adaptations)

Executable procedure for **Content-Review** (Q1/Q2 lite) before production Media/Compose.

**SoT:** `domains/content-maturity/skill/content-review/`  
**Decisions:** `devtracks/content-maturity/decisions.md`, `devtracks/agentic-adaptations/decisions.md`  
**Checkpoints:** `domains/content-maturity/checkpoints.md`  
**Not** Media (B). **Not** Tech compose (A). **Not** pure routing (`content-orchestrator`).

## When to use

- Reviewing chapter Markdown before freeze  
- **evaluate-only** recheck after author edits  
- **review-with-patches** for surgical Before/After on `block`/`should`  
- Claims audit, safety-flags, learner personas, optional clarity-scan  
- Recommending `ready_for_freeze` (never signing freeze alone — **H1**)

## When NOT to use

| Situation | Use instead |
|---|---|
| Only decide next phase / route card | `content-orchestrator` |
| Media Brief / Accept | `media-brief` |
| Feasibility, compose `.typ`, validate | `compose-chapter` |
| Signing Freeze / Proof / Imprimatur | **Human** (H1/H4/H5) |
| Silent SoT rewrite | Author merges patches |

## Pass modes

| `pass` | May draft patches? | Typical use |
|---|---|---|
| **`evaluate-only`** | **No** | Independent judge; round-2 recheck; after merges |
| **`standard`** | No dedicated patch files (findings + recommendations only) | Default first pass |
| **`review-with-patches`** | **Yes** for `block`/`should` via `content-patch.template.md` | Author asked for diffs |

Same session: if you wrote patches last turn, prefer a **new** evaluate-only report file for recheck.

## Floor semantics (no vanity scores)

- `floor_status: blocked` if **any** finding has severity `block`  
- `floor_status: clear` only if `block_count == 0`  
- `ready_for_freeze: yes` / `yes_with_nits` **only if** floor clear  
- **Never** use 0–10 “Genesis” scores as freeze gates  

## Inputs

| Input | Required |
|---|---|
| Content path | yes |
| `pass` mode | default `standard` |
| `include_personas` | default **true** |
| `include_clarity_scan` | default **false** (opt-in) |
| Prior review / patches | if round ≥ 2 |

## Process

1. Load content. Set `round` (1 or 2). If already **2** open without freeze → **H3** Human triage; stop agent loop.  
2. Checklists (order):
   - `developmental-edit.md` (includes lean didactic reduction / emphasis — content-side only)
   - `claims-audit.md`
   - `safety-flags.md` (includes oversimplification that can mislead)
   - if `include_personas`: `learner-persona.md`
   - if `include_clarity_scan`: `clarity-scan-de.md`
   - **Not** Media layout loudness, form ids, or presentation ideals → `media-brief`
3. Findings: severity + tags + location + recommendation (+ `persona:P*` when from A5).  
4. Claims + safety-flags tables (questions only — no invented clinic).  
5. Set `floor_status`, counts, `ready_for_freeze`.  
6. If `review-with-patches`: for each `block`/`should`, optional patch file; link `patch_ref`.  
7. If `evaluate-only`: **no** Before/After patch bodies.  
8. Emit `templates/review-report.template.md`.  
9. If freeze-ready → point Human to freeze template + **H1** (`checkpoints.md`).  
10. **Do not** fill Human name on freeze record.

## Circuit breaker

| Round | Action |
|---|---|
| 1–2 | Agent review ↔ Author |
| \>2 | **H3 Stop** → Human |

## ALWAYS / NEVER

| ALWAYS | NEVER |
|---|---|
| Write Review Report file | Production `.typ` / bookkit |
| Floor fields + block_count | Numeric release scores 0–10 |
| Severity + location | Silent SoT edit |
| Questions instead of invented clinic | Fake guidelines/doses |
| evaluate-only: no patches | Agent-only freeze (H1) |
| Stop after 2 rounds → H3 | Layout form-ids / visual hierarchy as lektorat (→ `media-brief`) |
| Flag lead vs. body safety gaps | “Fix” by inventing clinic or rewriting claims silently |

## Boundary

| content-review | content-orchestrator | media-brief | compose-chapter |
|---|---|---|---|
| Q1/Q2 findings | Route card only | Q3 presentation | Layout / validate |
| Patches optional | No body rewrite | No claims edit | Claims copy-through |

## Related paths

| Artifact | Path |
|---|---|
| Checkpoints | `domains/content-maturity/checkpoints.md` |
| Templates | `templates/review-report`, `content-patch`, `freeze-record` |
| Checklists | `checklists/core/*` |
| Gold | `examples/demo-anaphylaxis-lite/`, `examples/agentic-adaptations/` |
| Tracks | `devtracks/content-maturity/`, `devtracks/agentic-adaptations/` |
