# Graphic Harvest — <slug> / <unit_id>

> **Non-claim layout cues** from free vision to port into code/hybrid/asset.  
> Harvest **never** invents clinical labels, thresholds, or claims — only composition, weight, geometry, chrome.  
> Skill: `medical-graphics` · playbook `02` / `03` / `04` · track: free-vision-harvest

- **chapter_id / slug:**
- **unit_id:**
- **track:** free-vision-ambition
- **vision_path:** `domains/medical/assets/<slug>/vision-free-01.png`
- **form_spec_path:** `domains/medical/briefs/<slug>.form-spec.md`
- **claim_audit:** PASS | DRIFT | FAIL
- **date:**
- **author_role:** graphics

## Where this lives

| Case | Path |
|---|---|
| Single unit | Section **## Harvest** inside `domains/medical/briefs/<slug>.graphics.md` (this template body) |
| Multi-unit chapter | Dedicated `domains/medical/briefs/<slug>.harvest.md` **or** clearly headed per-unit harvest sections in one graphics file |

## Composition cues to port (non-claim)

Each cue must map to a **Design Contract atom_id**. New chrome not in the Contract → **reopen Phase D** (do not silently invent atoms at harvest).

| cue_id | atom_id | what free vision did | port to code/hybrid as | priority |
|---|---|---|---|---|
| H1 | A? | e.g. 4-tile matrix + gestalt header | grid 2×2 + header band | must |
| H2 | A? | solid bottom escape rail | full-width danger bar | must |
| H3 | A? | row-4 red outline peel | accent stroke on last mimic row | should |
| | | | | |

## Explicitly NOT porting

| free vision chrome | reason |
|---|---|
| EN titles / invented labels | claim audit |
| deep anatomy | H-Gfx pause |
| | |

## Target carrier bias

code | hybrid | asset | undecided

**Bias rule (Human D4):** hierarchy-faithful **code first**; prefer **code if ≈ equal** after harvest port; **asset/hybrid** when chrome/geometry cannot be matched fairly in code (or after A/B). Never `accept-asset` on FAIL audit.

## Port checklist (fill after recreate / hybrid)

| cue_id (must) | landed in winner? | where (module / asset / note) |
|---|---|---|
| H1 | yes / no / waived | |
| H2 | yes / no / waived | |

Waive only with reason (time-box / impossible in Typst / Human).

## Free-vision proximity (self-check before Accept)

Under scan stress, does the winner still **feel like** the free-vision job (hierarchy, rails, peel, dual-coding)?

- [ ] yes
- [ ] partial — note:
- [ ] no → **not** ready for Accept on free-vision-ambition track (pin-monotone)
