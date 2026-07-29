# Adoption matrix — book-genesis patterns → our stack

**Track:** [`spec.md`](spec.md) · **Date:** 2026-07-20  

Legend: **Adapt** = implement this track · **Have** = already in content-maturity / CONSENSUS · **Reject** = must not land.

---

## Adapt (implement)

| ID | Source pattern | Our implementation | Product | Priority |
|---|---|---|---|---|
| A1 | Independent evaluator | `content-review` mode `evaluate-only` | C | P0 |
| A2 | Floor = weakest link | `floor_status` / block_count; no vanity scores | C | P0 |
| A3 | Surgical edit | Active content-patch per finding_id | C | P1 |
| A4 | Pipeline orchestrator | Thin `content-orchestrator` skill + route card | C | P0 |
| A5 | Beta readers | `learner-persona.md` (3 didactic personas) | C | P1 |
| A6 | Human checkpoints | `checkpoints.md` + skill/CLI links | C (+A/B links) | P0 |
| A7 | Anti-AI prose scan | Optional `clarity-scan-de.md` (Lehrtext) | C | P2 |

---

## Already have (document only)

| Pattern | Where today |
|---|---|
| Max iteration caps | Media↔Tech 2; C2 review 2 (D8) |
| Human freeze | D1, freeze-record, freeze_gate |
| Smoke vs production | validate `--profile` |
| Separate Media vs Tech | media-brief / compose-chapter |
| Fail-fast, no compose auto-heal | CONSENSUS ADR |
| Claims copy-through | compose validate |

---

## Reject (do not implement)

| ID | Pattern | Reason |
|---|---|---|
| R1 | Full book from one sentence | Breaks C expert SoT / product C |
| R2 | Score-gated auto-revision loops | Claim risk; no-auto-heal |
| R3 | Chaos engine in body text | Unsafe for didactic/medical |
| R4 | Genesis Score / CVI release gates | Wrong quality axes |
| R5 | 8–21 agent swarm for one work | Role explosion vs CONSENSUS |
| R6 | Query letter / market package in A | Not layout platform |
| R7 | Monolith “one skill whole book” | A/B/C boundaries |

---

## Dependency sketch

```text
A2 floor fields ──► A1 evaluate-only reports
       │
       ▼
A3 patches (optional) ──► A1 re-evaluate
       │
A5 personas ──► content-review steps
A7 clarity ──► optional step
       │
A4 orchestrator routes all of the above + Freeze/Media/Proof
       │
A6 checkpoints make Human stops visible across C/B/A
```
