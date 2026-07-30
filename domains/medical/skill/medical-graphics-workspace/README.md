# medical-graphics eval workspace

Skill-creator evals for KL / Graphics realize path + design-quality gates.

| Iteration | Result | Viewer |
|-----------|--------|--------|
| 1 | with/without both 100% mean pass | `iteration-1/review.html` |
| 2 (pending run) | evals 4–5 design-quality | — |

Evals SoT: `../medical-graphics/evals/evals.json`  
Fixtures: `../medical-graphics/evals/fixtures/`  
Negative gold: `../medical-graphics/evals/fixtures/crps-rerun-negative-gold.md`  
Analyst: `iteration-1/ANALYST.md`

| id | eval_name | Targets |
|---|---|---|
| 1 | transfer-melanom-urgency-code | Code transfer pins |
| 2 | abcde-realize-or-vision | ABCDE letter form |
| 3 | claim-audit-fail-scenario | FAIL audit / no accept-asset |
| **4** | **visual-critic-blocks-code-leak** | Visual Critic blocks code-leak |
| **5** | **refuse-free-gen-without-design-clean** | Stop free gen without Design CLEAN |

**Finding (iter 1):** Explicit Form Specs make transfer + claim-audit highly solvable without skill load.  
**Finding (design-quality evals 4–5):** Should fail agents that ship code-on-page or free-gen without Design CLEAN — run skill-creator when ready.
