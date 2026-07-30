# Spec — Free-Vision Harvest (Ausschöpfung, nicht Drosselung)

**Status:** implemented (2026-07-30) — policy/skills/templates  
**Product:** B (medical graphics) · touches A (compose embed) · C claims read-only  
**Trigger:** CRPS pilot review — free vision ran, DRIFT → code pins, hierarchy/chrome not harvested into final PDF

## Problem

Free vision is already in the pipeline (G1→G2→G3). In practice agents often:

1. Generate free vision (costly)  
2. Claim-audit DRIFT  
3. Fall back to **pin-faithful code tables** that ignore free-vision composition  
4. Never embed free vision; never document what was *visually* learned  

So free vision looks “unused” even when it had didactic value (hierarchy, escape rails, peel chrome, tile layout).

## Goal (one sentence)

Make free vision a **first-class design engine**: when ambition chooses free vision, the **accepted winner in the chapter must visibly inherit free-vision composition** (asset/hybrid **or** hierarchy-faithful code recreate) — not pin-text alone.

## Non-goals

- Reduce free vision frequency as the primary fix  
- Change claim-audit safety (still no invent; no accept-asset on FAIL)  
- Reopen anatomy free vision without H-Gfx  
- Auto-embed DRIFT PNGs as claim carriers  
- Rewrite clinical content (C)  
- Implement other mid-term process items (content-check, L2 stop, pilot template, INDEX) in this track  

## Success criteria

| # | Criterion |
|---|---|
| S1 | Per unit, **track** is explicit: `grammar-only` \| `free-vision-ambition` before G1; **default posture** for real visual units is **`free-vision-ambition`** (no chapter/genre-wide grammar-only default; grammar-only is opt-in only) |
| S2 | On `free-vision-ambition`, free vision runs (unless Human skip / H-Gfx block) |
| S3 | After free vision, a **Harvest note** lists transferable hierarchy/chrome (independent of audit verdict) |
| S4 | DRIFT ≠ “discard composition”; default next step is refine **or** recreate-with-harvest |
| S5 | Code recreate documents **harvest checklist** (which free-vision layout cues were ported) |
| S6 | Media Accept has **free-vision proximity** check; fail → revise if ambition track and winner is pin-monotone |
| S7 | Compose embed path names winner (module path and/or asset) so Tech cannot “forget” graphics |
| S8 | CRPS (or one gold unit) can be used as **retrofit example** optional later — not required for harvest policy ship |

## Constraints

- Caps stay: max 2 free gens, 2 refine, 1 solid recreate (+ polish)  
- Prefer `./scripts/bookkit graphics`  
- Exploration vs production Accept levels stay as after P4  
- Intermediate PNGs: commit only with MANIFEST accepted (existing policy)  
- **No** chapter-wide or kl-kurz-wide default of `grammar-only` (Human 2026-07-30)  

## Decisions (Human 2026-07-30)

1. Default track posture for real visual units: **`free-vision-ambition`**; `grammar-only` only when consciously chosen.  
2. Harvest: section in `*.graphics.md` (single unit) or dedicated multi-unit harvest file.  
3. Ship policy first; CRPS retrofit optional later.  
4. Carrier: hierarchy-faithful code first; code if ≈ equal after harvest; asset when code cannot match chrome.  

## Actors

| Role | Owns |
|---|---|
| Media (`media-brief`) | ambition flag per unit; Accept proximity incl. free-vision harvest |
| Graphics (`medical-graphics`) | G0 track decision, G1–G4 harvest artifacts |
| Tech (`compose-chapter`) | embed Accept winners only |
| Studio | route card: surface track decision; do not invent skip |
