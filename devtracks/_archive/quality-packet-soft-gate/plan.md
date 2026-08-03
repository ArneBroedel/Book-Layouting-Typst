# Plan — Quality Packet Soft Gate

**Status:** **complete** 2026-08-03 · soft path gate shipped  
**Spec:** [spec.md](spec.md)  
**Predecessor dogfood:** [collab-wire-dogfood/](../collab-wire-dogfood/) (GO · findings.md)  
**Archived T3 Phase B notes:** [../_archive/orchestration-quality-state/plan.md](../_archive/orchestration-quality-state/plan.md)

---

## 0. Intent (one line)

If dogfood proves Accept-without-packet still happens, ship a **soft path-existence gate** that never pretends to be Visual CLEAN.

---

## 1. Entry gate checklist

Copy from dogfood findings when unblocking:

- [x] Findings path: `devtracks/collab-wire-dogfood/findings.md`  
- [x] Decision: **GO**  
- [x] Evidence bullets (Accept/idle + missing paths):  
  - Hollow packets after Accept; board idle without quality_packet cells; cited PNG missing (wp9 p2)  
- [x] Human OK / waiver noted: full R1+R2 charter 2026-08-03

---

## 2. Phases (only after GO)

### Phase 0 — Design flag UX (XS)

| Task | Output |
|---|---|
| Choose flag name | Prefer `--quality-packet PATH` on validate |
| Default behavior | off when flag absent |
| Severity | WARN first; document escalate path |
| Help text | non-CLEAN certification sentence |

**Exit:** Short design note in this plan or `notes-ux.md` (delete on harvest if tiny).

---

### Phase 1 — Implement module (S–M)

| Task | Detail |
|---|---|
| New module | e.g. `toolset/compose/validate/quality_packet_gate.py` |
| Parse strategy | Minimal: file read; extract path-like tokens from tables / backticks / markdown links |
| Integrate | `runner.py` + `cli.py` optional arg |
| bookkit wire | if `scripts/bookkit validate` passes through kwargs |
| Messages | prefix `quality-packet:` ; never say “Visual CLEAN” |

**Exit:** SB1 draft.

---

### Phase 2 — Tests + fixtures (S)

| Fixture | Location idea |
|---|---|
| complete stub | `toolset/compose/tests/fixtures/quality-packet/ok/` |
| missing paths | `…/broken/` |

stdlib unittest in `test_validate.py` or sibling.

**Exit:** SB2.

---

### Phase 3 — Docs + smoke (XS)

| Task | Detail |
|---|---|
| compose README | flag example |
| runbook | short “soft packet path check” |
| Smoke | validate without flag on pure A fixture still green (SB3) |

**Exit:** SB3.

---

### Phase 4 — Optional escalate (Human)

Only if soft WARN ignored in production dogfood:

| Task | Detail |
|---|---|
| production profile | path-missing → fail |
| Document | explicit Human decision date |

**Not** required for track complete.

---

### Phase 5 — Harvest & archive (XS)

| Task | Detail |
|---|---|
| Harvest footer | exact paths |
| skill-collaboration residual | Phase B done |
| Archive track | `_archive/quality-packet-soft-gate/` |

**Exit:** SB4–SB5.

---

## 3. Expected touch set

```text
toolset/compose/validate/quality_packet_gate.py   # CREATE
toolset/compose/validate/cli.py
toolset/compose/validate/runner.py
toolset/compose/scripts/run_validate.py           # if needed
toolset/compose/tests/test_validate.py
toolset/compose/tests/fixtures/quality-packet/…   # CREATE
scripts/bookkit                                   # if flag plumbing needed
toolset/compose/README.md
docs/BOOK-PRODUCTION-RUNBOOK.md
```

Avoid: packages/bookkit medical logic; board template redesign; CLEAN criteria; always-on default.

---

## 4. Acceptance scenarios

| # | Scenario | Expected |
|---|---|---|
| A | validate without `--quality-packet` | unchanged smoke |
| B | flag + complete packet + real paths | soft OK / no path WARNs |
| C | flag + missing PNG listed in packet | WARN names path; does not claim Visual CLEAN |
| D | production escalate (if enabled) | fail only on path missing, still no CLEAN wording |

---

## 5. Effort estimate

| Phase | Effort |
|---|---|
| 0–1 | S–M (~1 day) |
| 2–3 | S |
| 4 | XS optional |
| 5 | XS |
| **Total if GO** | **~1–2 days** |
| **If NO-GO** | **0** (cancel only) |

---

## 6. Status log

| Date | Note |
|---|---|
| 2026-08-03 | Track planned as conditional residual of T3 Phase B. **Blocked** on collab-wire-dogfood GO. No implementation until entry criteria met. |
| 2026-08-03 | Unblocked by dogfood GO; implemented soft gate + tests + docs; hyphen-suffix false-positive fix. |

---

## Harvested into

- `toolset/compose/validate/quality_packet_gate.py`
- `toolset/compose/validate/{cli,runner}.py`
- `toolset/compose/fixtures/quality_packet_{ok,broken}/`
- `toolset/compose/tests/test_validate.py` (TestQualityPacketGate)
- `toolset/compose/README.md`
- `docs/BOOK-PRODUCTION-RUNBOOK.md`
- `scripts/bookkit` (`--quality-packet`)
- Index: `devtracks/skill-collaboration/README.md`  

