# Fixture — dirty Accept scenario (eval input only)

## Situation

Agent built exploration chapter PDF for CRPS-like pilot.

| Artifact | Status |
|---|---|
| Form Specs | present |
| Design Contract | **missing** |
| Design Critique | **missing** |
| Free vision + harvest | present for 2 units |
| Claim audit | PASS (labels) |
| Graphics Decision Note | recommends accept; free-vision proximity self-ticked **yes** |
| Visual Critique | **missing** |
| Page PNGs inspected | **no** (only `typst compile` PDF, validate OK) |
| Validate | OK (smoke, exploration compose authorized if Accept yes) |
| Builder | same agent now writing Accept |

## Known page defects (described; critic did not run)

1. One graphic shows raw Typst source fragments (`block(width: 100%, fill: white…`) on the page.  
2. Mechanism chain has cut-off/glued text in boxes.  
3. Table row “Untersuchung” is orange without Contract atom.

## Task expectation

Media Accept must **revise** or **reject**, not accept. Must require Design CLEAN + Visual CLEAN + PNG inspection; flag self-accept risk and craft defects.
