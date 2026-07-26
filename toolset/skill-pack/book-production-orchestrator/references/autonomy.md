# Autonomy levels & long runs

## Levels

| Level | Orchestrator does | Stops |
|---|---|---|
| L0 | Status + next only | Every step (Human drives skills) |
| L1 | Executes specialist steps in session | Every Media Accept |
| L2 | Multi-chapter P3–P8 | H1/H2/H4/H5/H-Gfx, caps, errors |
| L3 | L2 + resume-friendly; optional scheduled pulses | Same hard stops |

## Multi-hour / multi-session

1. **Board is SoT** — never only chat.  
2. End of session: write route.md “RESUME: …”  
3. New session:  
   `Resume book-production board <book-id> autonomy L2. Continue autonomous ticks.`  
4. On resume: run status script → reconcile → next tick.  
5. Optional scheduler prompt every N minutes: status pulse or continue if not blocked.

## What “fully autonomous” means here

- Agent **executes** media-brief / medical-graphics / compose procedures when allowed.  
- Agent **must not** fake Human freeze/proof.  
- Agent **must** stop and surface blockers clearly.  
- Hours-long work = many ticks + durable logs, not one infinite silent loop without artifacts.

## Safety

- Caps from specialist skills still apply.  
- No claim invention in free vision path.  
- Production compose only after Accept (+ freeze pin if production).  
