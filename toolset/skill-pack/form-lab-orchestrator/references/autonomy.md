# Autonomy — Form Lab

## Default

| Level | Name | Behavior |
|---|---|---|
| **L2** | **autodrive-to-complete** | **Default.** Kickoff (if needed) then full program without pausing for user between passes/labs. OR executes PW/PC/CM/SY in-session with durable artifacts. Stops only on hard block, non-waived Human gate, or portfolio COMPLETE. |

## Opt-in lower levels

| Level | Name | When | Behavior |
|---|---|---|---|
| **L0** | guided / route-only | User says route-only, Orchestrator only, stop after handoff | Board + HAND-OFF only; user/agent starts each worker explicitly |
| **L1** | semi | User asks step confirmation per pass | Run one pass (or one lab) then status pulse; wait for “continue” |
| **L2** | autodrive-to-complete | **Default** / user says drive, full program, alles ausarbeiten | Full T→C→V→R→matrix→S→(next lab)→harvest |
| **L3** | long-run | Explicit multi-hour / leave running | L2 + emphasize board durability across sessions; on cold resume continue L2 |

## Autodrive rules (L2/L3)

1. **No stop after L0 HAND-OFF.** Writing HAND-OFF is a logging step, not a session end.  
2. **Full medium program per lab:** T, C, V, R each to medium-optimum (min rounds, PNG, critique, exhaustion).  
3. **Then** L5 matrix → L6 Pass S **best-of fusion** using prepared winning assets.  
4. **Portfolio depth-first:** finish lab N through S before scaffolding lab N+1 craft (scaffold may be pre-created).  
5. **L7 harvest** once after all labs S (portfolio-level OK).  
6. **New session preferred** is **waived** under L2 — in-session craft is correct.  
7. **H-Pass / Human S-rank:** honor kickoff waiver; do not invent a Human stop when waived.  
8. **Clean restart:** if kickoff bans prior-wave assets, enforce on every pass including S.

## What “monologue” still forbids (even under L2)

| Forbidden | Required instead |
|---|---|
| One draft per pass → ship | ≥ min craft rounds + PNG + critique-rNN |
| All media in one undirected edit | Serial T then C then V then R with medium rules |
| S without matrix | Matrix first, then fusion |
| Chat-only state | board + run-log + route on disk every step |

## Studio

Studio situation **9** hands off to this skill; it does **not** run the medium stack itself. After handoff, **this skill’s default is L2 autodrive** — studio must not instruct “route-only” unless the user asked for that.
