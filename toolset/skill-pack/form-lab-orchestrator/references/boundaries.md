# Boundaries — Form Lab vs production vs studio

## Product placement

| Layer | Form Lab role |
|---|---|
| **A** platform | Thin: Typst/bookkit compose pilots, board pattern |
| **B** medical media | Primary: medium craft, SR, free vision atoms, vector glyphs |
| **C** content | Read-only pins; no claim rewrite |

## Hard separations

### Form Lab ≠ studio situation 2

Situation 2 (one chapter production path) runs:

`content → freeze? → media-brief → Design CLEAN → medical-graphics → Visual CLEAN → Accept → compose`

Form Lab runs:

`pins freeze → T → C → V → R → matrix → S → harvest`

Different goals. Do not fold Form Lab into situation 2 as “more thorough compose.”

### Form Lab ≠ book-production-orchestrator

| | Form Lab | Book production |
|---|---|---|
| Board root | `toolset/orchestration/form-lab/` | `toolset/orchestration/book-production/` |
| Phases | L0–L7 medium passes | P0–P11 book lifecycle |
| Success | vocabulary + bridge + lab PDFs | print-ready multi-chapter PDF |
| Autonomy | serial passes; new session/pass | L0–L3 chapter rows |

### Studio role

| Studio may | Studio must not |
|---|---|
| Detect Form Lab intent (situation **9**) | Execute full T→C→V→R craft stack **inside studio** (handoff instead) |
| Hand off with lab_id / content pins + **default L2 autodrive** | Instruct route-only unless user asked |
| Point to form-lab-orchestrator resume | Treat Form Lab as default when user says “layout chapter” |
| | Mark Form Lab COMPLETE itself |

After handoff, **form-lab-orchestrator** defaults to autodrive-to-complete (full craft + S fusion + harvest).

## Output consumers

Harvest `production-bridge.md` may **inform** later production carrier choice. It does **not**:

- replace Media Accept  
- raise production free-vision caps  
- waive Design CLEAN / Visual CLEAN  
- become content SoT  

## Wave history policy

- Waves a/b craft COMPLETE may lack harvest — do not rewrite as failed.  
- New labs after skill establishment: harvest required.  
- Portfolio-level harvest (e.g. `portfolio-2026-08-c/harvest/`) satisfies L7 for listed labs.
