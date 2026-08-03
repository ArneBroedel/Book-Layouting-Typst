# Spec — Quality Packet Soft Gate

**Status:** planned · **blocked** until [collab-wire-dogfood](../collab-wire-dogfood/) records **GO**  
**Product:** thin A (`toolset/compose/validate`, bookkit CLI) · indexes B packet paths only  
**Plan:** [plan.md](plan.md)  
**Predecessor:** collab-wire-dogfood (decision) · trilogy T3 Phase B deferred notes  
**Provenance:** `devtracks/_archive/orchestration-quality-state/` Phase B  

---

## Problem

Even with Contract + open-assets wire + board cells, multi-session agents may still **Accept or mark idle** when:

- Quality Packet file is missing  
- Packet exists but **listed PNG/MANIFEST paths do not exist on disk**  
- Board cell says `quality_packet: ready` without a resolvable path  

T3 Phase A intentionally left a **soft machine path-gate** optional. This track implements it **only if dogfood proves the gap**.

---

## Goal

1. Add optional **soft path existence checks** for a Quality Packet file (and referenced paths/PNGs).  
2. Surface results as **WARN by default** (never “Visual CLEAN certified”).  
3. Keep pure A consumer smoke **green without** medical packets.  
4. Optional: production profile may escalate path-missing to fail **only after Human OK** post-dogfood.  
5. Document in runbook / validate help that this is **presence**, not quality science.

---

## Non-goals

| Non-goal | Why |
|---|---|
| Semantic Design/Visual CLEAN via CLI | False green (DQS) |
| Claim-audit / medical correctness in validate | A/B boundary |
| Moving Quality Packet SoT to toolset | Packet remains B template under `domains/medical/` |
| Always-on flag for every `bookkit validate` | Breaks non-medical consumers |
| Replacing board cells / Contract | Resume index stays separate |
| Hard fail default on day one | Soft before hard (T3 D4) |

---

## Entry criteria (hard)

**Do not start implementation until all are true:**

1. [ ] `collab-wire-dogfood` findings report exists.  
2. [ ] Decision = **GO** with evidence of Accept/idle without resolvable packet paths (or repeated pattern).  
3. [ ] Human confirms GO (or agent documents Human waiver in findings).  

If decision is **NO-GO** or **DEFER**, this track stays blocked/cancelled — **no speculative CLI**.

---

## Locked decisions (inherit T3 + this cut)

| # | Decision |
|---|---|
| **D1 Soft default** | WARN (or soft non-zero documented); help text denies CLEAN certification. |
| **D2 Opt-in flag** | e.g. `--quality-packet PATH` and/or production profile opt-in — default off for smoke. |
| **D3 Presence only** | File exists; markdown-listed paths exist; optional required headings present. **No** “was PNG opened / was critique adversarial”. |
| **D4 A boundary** | Module under `toolset/compose/validate/`; no import of medical claim semantics. |
| **D5 Escalate later** | warn→fail only with explicit Human decision after dogfood + soft ship. |

---

## In scope

### CLI surface (indicative)

```text
./scripts/bookkit validate … --quality-packet path/to/quality-packet.md
# or production profile optional section
```

Help snippet (must appear):

> Checks that the quality packet file and referenced paths exist.  
> Does **not** certify Design CLEAN, Visual CLEAN, or Media Accept quality.

### Checks (minimum)

| Check | Severity default |
|---|---|
| Packet file missing | WARN (or fail if escalated profile) |
| Path in packet table missing on disk | WARN per path |
| Optional: empty Units table when graphics expected | WARN if detectable without medical logic |
| PNG extension path missing | WARN |

### Tests

| Fixture | Expect |
|---|---|
| Complete stub packet + existing dummy PNG paths | no WARN / exit soft-ok |
| Missing packet file | WARN (or fail if escalated) |
| Packet lists missing PNG | WARN listing path |

### Docs

- `toolset/compose/README.md` / validate help  
- `docs/BOOK-PRODUCTION-RUNBOOK.md` one subsection  
- Optional: media-brief Accept note “validate may soft-check packet paths”

---

## Success criteria

| ID | Criterion |
|---|---|
| **SB1** | Soft path gate implemented + documented as non-quality-certification. |
| **SB2** | ≥1 automated test: missing path or missing packet. |
| **SB3** | Default consumer smoke / no-flag validate still green without medical packet. |
| **SB4** | Harvest into compose docs + skill-pack pointers; track archived. |
| **SB5** | No semantic CLEAN; no always-on medical requirement for pure A. |

---

## Risks

| Risk | Mitigation |
|---|---|
| False green (“validate WARN-free = Visual CLEAN”) | Help text + Contract + runbook |
| Parse fragility of freeform packet MD | Start minimal (file exists + simple path regex / table cells); avoid full MD AST |
| Scope creep into Accept semantics | Reuse accept_gate only for existing roles; packet module separate |

---

## Dependencies

| Dependency | Why |
|---|---|
| **collab-wire-dogfood GO** | Entry gate |
| `domains/medical/templates/quality-packet.template.md` | Path/table shape |
| `toolset/compose/validate/*` | Existing runner/CLI |
| `scripts/bookkit` | Flag wiring if needed |

---

## Related paths

- `toolset/compose/validate/{cli,runner,accept_gate}.py`  
- `toolset/compose/tests/test_validate.py`  
- `toolset/compose/scripts/run_validate.py`  
- `scripts/bookkit`  
- `docs/BOOK-PRODUCTION-RUNBOOK.md`  
- `domains/medical/templates/quality-packet.template.md`  
- `devtracks/_archive/orchestration-quality-state/`  
