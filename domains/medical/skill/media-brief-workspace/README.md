# media-brief eval workspace

Skill-creator evals for KL / Media procedures + design-quality gates.

| Iteration | Result | Viewer |
|-----------|--------|--------|
| 1 | with/without both 100% mean pass | `iteration-1/review.html` |
| 2 (pending run) | evals 4–5 design-quality | — |

Evals SoT: `../media-brief/evals/evals.json`  
Fixtures: `../media-brief/evals/fixtures/`  
Analyst: `iteration-1/ANALYST.md`

| id | eval_name | Targets |
|---|---|---|
| 1 | kl-transfer-urgency-form-spec | Form Spec structure |
| 2 | kl-ambition-abcde-form-space | Form-Space + ambition |
| 3 | accept-rubric-no-monotony | Accept revise monotony/KL |
| **4** | **design-critic-blocks-unjustified-chrome** | Design Critic blocks unjustified color |
| **5** | **accept-requires-design-visual-clean** | Accept refuses dirty packet |

**Finding (iter 1):** With explicit monograph + task wording, baseline agents also pass. Skill still needed for process vocabulary and Accept discipline.  
**Finding (design-quality evals 4–5):** Discrimination should fail agents that self-accept or approve unjustified chrome — run skill-creator when ready.
