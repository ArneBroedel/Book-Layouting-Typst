# Resume & handoff phrases

## Default — autodrive-to-complete

```text
Resume Form Lab board <lab-id|portfolio-id> autonomy L2 autodrive-to-complete.
Skill: form-lab-orchestrator.
Read board.md + run-log.md + route.md.
Continue full program to COMPLETE (T→C→V→R→matrix→S best-of → next lab → harvest).
Do not stop after handoff. Execute PW/PC craft in this session.
```

## Kickoff (new portfolio / lab)

```text
Skill: form-lab-orchestrator
autonomy: L2 autodrive-to-complete
mission_class: lab-learning
portfolio / lab_ids: <…>
content pins: <paths>
D1–D8: <or defaults>
HARD clean restart: no prior-wave pilot/asset/dist reuse (if applicable).
Run full program per lab then portfolio harvest → COMPLETE. Do not stop after L0.
```

## Orchestrator only (opt-out)

```text
Resume Form Lab board <lab-id> as Orchestrator only (route-only).
Skill: form-lab-orchestrator.
Read board.md + run-log.md + route.md.
Do not implement pass craft. Route or spawn next worker handoff only.
```

## Pass Worker (single pass / cold start)

```text
Form Lab Pass <T|C|V|R> Worker.
Lab: toolset/orchestration/form-lab/<lab-id>/
Load: passes/<P>/HAND-OFF.md + medium-rules.md + ../../pins.md
SoT SR: domains/medical/skill/medical-graphics/references/prompt-and-semantic-read.md
Goal: iterative craft to medium-optimum (min 3 rounds).
Each round: implement → PNG under dist/form-lab/<lab-id>/<P>/ → critique-rNN → revise.
Do not switch medium. Do not mark optimum before min rounds + empty blocks + exhaustion.md.
Under L2 portfolio drive: after optimum, OR continues to next pass without user pause.
```

## Pass S best-of fusion

```text
Form Lab Pass S Synthesis (best-of fusion).
Lab: toolset/orchestration/form-lab/<lab-id>/
Load: comparison/matrix.md + medium-rules-S.md + HAND-OFF.md
Use only matrix winners with Semantic Read PASS and prepared assets from this lab’s T/C/V/R.
Omit is a win. One primary mark per job. Iterate to synthesis-clean.
```

## Pass Critic only

```text
Form Lab Pass Critic for <lab-id> pass <P> round <N>.
Read latest dist/form-lab/<lab-id>/<P>/p*.png and medium-rules.md.
Write passes/<P>/critique-rNN.md with blocks/nits and required fixes.
Do not implement.
```

## Harvest only

```text
Form Lab L7 harvest for <lab-id|portfolio-id>.
Skill: form-lab-orchestrator.
Templates: toolset/orchestration/form-lab/_templates/form-vocabulary.md + production-bridge.md
Sources: comparison matrices + dist (no re-craft).
Write harvest docs; set board harvest=done; log DONE.
```

## Studio handoff (situation 9)

Studio emits route card then hands off (Studio does **not** craft):

```text
Skill: form-lab-orchestrator
lab_id / portfolio: <slug>
content pins: <paths>
mission_class: lab-learning
autonomy: L2 autodrive-to-complete
Kickoff if new; else resume. Full program to COMPLETE; do not stop after L0 handoff.
```
