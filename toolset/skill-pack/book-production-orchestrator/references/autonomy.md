# Autonomy levels & long runs

## Levels

| Level | Orchestrator does | Stops |
|---|---|---|
| L0 | Status + next only | Every step (Human drives skills) |
| L1 | Executes specialist steps in session | Every Media Accept |
| L2 | Multi-chapter P3–P8 | H1/H2/H4/H5/H-Gfx, caps, errors |
| L3 | L2 + resume-friendly; optional scheduled pulses | Same hard stops |

### L2 hard rule (multi-chapter explore 2026-08-01)

**Do not** stop after the first completed chapter (or first W1 chapter) to “wait for Human chat” when:

- autonomy is L2, and  
- `agent-only` / no hard H-Explore per wave, and  
- board still has `todo` / incomplete rows, and  
- no H-Design / H-Gfx / cap / error is open.

**Continue** until **portfolio idle** (all locked rows done) or a documented hard stop.  
A premature stop is a **process failure** (observed after Kompartment; corrected by continuing #4–#10).

Parallel workers are allowed for throughput **if** each chapter still produces full skill packets and board is reconciled before claiming idle.

### L2 idle requires quality cells (T3)

Do **not** mark a chapter row or portfolio **idle** until board-gated done is met:

```text
design_clean = clean|n/a · visual_clean rollup OK · macro_vc = clean|n/a
quality_packet = ready · accept = accepted · compose = done · pdf path present
```

`validate` OK alone is **not** idle. Missing `quality_packet` / `macro_vc=todo` (when multi-unit) / open `open_assets=needed|blocked` → keep driving or stop as blocked — never silent idle.

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
