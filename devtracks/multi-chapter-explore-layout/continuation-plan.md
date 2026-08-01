# Continuation plan — after portfolio idle (2026-08-01)

**Status:** Phase 2 (W0+W1) **complete** · portfolio idle  
**Verification:** [verification-2026-08-01.md](verification-2026-08-01.md)

---

## Where we are

```text
P0 Kickoff ────────────── done
P1 Portfolio lock ─────── done (N=10 Mix)
P2 Wave execution ─────── done (10/10 pilots)
P3 Optional assembly ──── deferred (D8)
P4 Harvest (process) ──── done 2026-08-01 · archive deferred
Human layout evaluation ─ open (indent / structure / scan-path)
```

Board: `toolset/orchestration/book-production/kursbuch-explore-2026-08/` · route: **portfolio idle**

---

## Branching options (Human chooses)

### Option A — **Harvest now** (recommended default if quality “good enough”)

**Goal:** Close the track’s *process* work; encode multi-chapter lessons; archive or keep board for later W2.

| Step | Action | Owner |
|---|---|---|
| A1 | Optional: Human sample 4–5 PDFs (see verification) | Human |
| A2 | Write short retro (what scaled, monotony, parallel-worker risks) | Agent |
| A3 | Execute [phase4-harvest.md](phase4-harvest.md): deltas to orchestrator/studio only if new | Agent |
| A4 | Fill board unit-detail gaps lightly (optional) | Agent |
| A5 | Footer `## Harvested into` on plan.md | Agent |
| A6 | Keep board **idle** for future W2 **or** archive track if no W2 planned | Human |

**Do not** force P7 assembly unless Human reopens D8.

---

### Option B — **Human H-Explore first**, then harvest or revise

| Step | Action |
|---|---|
| B1 | Human opens sample PDFs (genre cross-cut) |
| B2 | For each: `go` / `revise` / `note` |
| B3a | All go → Option A harvest |
| B3b | Revise list → reopen board cells; new SESSION-START session for **only** revise chapters (regular skill path) |

---

### Option C — **W2 expansion** (more chapters)

Only after A or B.

| Step | Action |
|---|---|
| C1 | Human adds rows to [portfolio.md](portfolio.md) W2 |
| C2 | Board rows + route next_skill |
| C3 | New session: SESSION-START resume L2 for W2 only |

Suggested W2 themes (not locked): more quiet KL; IV leitsymptom; one legal/I-chapter; avoid pure volume dump.

---

### Option D — **Promote subset to production** (later track or same board mode switch)

Out of current exploration charter:

- H1 freeze per chapter  
- production Accept H2  
- possibly P7–P11  

Requires **explicit** Human decision + likely new `brief_class: production` board or row flags — **not** silent upgrade of exploration accepts.

---

### Option E — **P7 explore-band assembly** (reopen D8)

| Step | Action |
|---|---|
| E1 | Human: D8 = ship assembly |
| E2 | [phase3-optional-assembly.md](phase3-optional-assembly.md) |
| E3 | Spot P9 on band PDF only |

---

## Recommended sequence (default) — updated after harvest

```text
1. You: H-Explore / layout craft sample (indent, structure, flow)
2. Optional: layout revise wave on named chapters (regular skill path, new session)
3. When quality evaluation complete → archive track OR open W2
```

Process harvest is **done**. Remaining work is **quality**, not “more pipeline volume” unless you expand portfolio.

---

## Harvest deltas to expect (draft)

| Lesson | Likely home |
|---|---|
| L2 must not stop after first W1 chapter without board idle | book-production-orchestrator autonomy / SESSION-START |
| Parallel workers OK if board reconcile + full per-chapter packets | orchestrator references |
| Selective free vision across portfolio works | medical-graphics (already mostly true) — note multi-chapter evidence |
| Genre mix (KL / III / IV / II) in one board is viable | studio / track README |
| Agent-only D4 still wants optional Human sample at portfolio end | checkpoints / SESSION-START |

---

## Explicit non-actions until Human says so

- No full-book assembly  
- No production freeze of all 10  
- No automatic W2  
- No re-running all chapters “for consistency” without revise list  

---

## Immediate agent tasks when you say “harvest”

1. Retro 1–2 pages in track  
2. Patch SESSION-START / orchestrator if L2-stop lesson missing  
3. plan.md Harvested into footer  
4. Update portfolio.md all rows `done`  
5. Leave route idle with next Human decision menu  
