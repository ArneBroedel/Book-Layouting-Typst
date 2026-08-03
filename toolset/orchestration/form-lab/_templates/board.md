# Form Lab board — `<lab-id>`

- **lab_id:** `<lab-id>`
- **chapter / content pin:** (see pins.md)
- **mission_class:** lab-learning
- **last_updated:**
- **orchestrator_mode:** autodrive | route-only | pulse  
  (default **autodrive** = L2 full program to COMPLETE)
- **terminal_status:** in-progress | COMPLETE | COMPLETE-with-waiver
- **skill:** form-lab-orchestrator

## Lab cells

| cell | status | notes |
|---|---|---|
| pins | open \| frozen | |
| pass_T | todo \| in-progress \| round-N \| optimum \| residual \| blocked | |
| pass_C | todo | |
| pass_V | todo | |
| pass_R | todo | |
| pass_D | waived \| todo | optional |
| comparison | todo | |
| synthesis_S | todo | |
| harvest | todo \| done \| waived | **required for COMPLETE** (form-vocabulary + production-bridge) |
| human_s_rank | open \| waived \| signed | optional; see human-s-rank.md |

## Terminal COMPLETE gate

All must hold (or documented waiver on board):

- [ ] Active passes at medium-optimum (or residual + OR note)
- [ ] comparison matrix filled for S
- [ ] synthesis_S done (or waived with residual)
- [ ] **harvest = done** (form-vocabulary + production-bridge under lab or portfolio `harvest/`)
- [ ] No open “must remount FAIL” on S carriers

PDF/PNG alone ≠ COMPLETE.

## Pass detail

| pass | craft_round | last_png | last_critique | medium_optimum | worker_note |
|---|---|---|---|---|---|
| T | 0 | — | — | no | |
| C | 0 | — | — | no | |
| V | 0 | — | — | no | |
| R | 0 | — | — | no | |
| S | 0 | — | — | no | |

## Caps (from kickoff)

| cap | value |
|---|---|
| min_craft_rounds | 3 |
| max_craft_rounds | 12 |
| pass_R_atom_gens | (D8) |

## Harvest paths

| deliverable | path |
|---|---|
| form-vocabulary | `harvest/form-vocabulary.md` or portfolio `…/harvest/` |
| production-bridge | `harvest/production-bridge.md` |
| human-s-rank | `comparison/human-s-rank.md` (optional) |
| sr-log | `passes/V|R/sr-log.md` (optional) |
