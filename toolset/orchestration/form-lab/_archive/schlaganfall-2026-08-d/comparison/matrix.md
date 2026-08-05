# Comparison matrix — `schlaganfall-2026-08-d`

Scores 1–5 caption-free teaching (agent PC on dist PNGs).

| learner job | T | C | V | R | winner | note |
|---|---|---|---|---|---|---|
| 1 Danger lead | 4 | 5 | 3 | 3 | **C** | danger band shout |
| 2 FAST / BE-FAST recognition | 3 | 4 | 4 | 5 | **R** | face/arm/balance photos |
| 3 TIME / Last seen normal | 4 | 5 | 3 | 4 | **C** | ladder + clock support R |
| 4 TIA = Notfall | 4 | 5 | 3 | 3 | **C** | TIA tier chrome |
| 5 Mimic peel | 4 | 5 | 3 | 3 | **C** | peel cards (T close) |
| 6 Boundary (no HWS) | 4 | 4 | 3 | 5 | **R** | ban photo strong |
| 7 Mini-case | 4 | 4 | 3 | 5 | **R** | neck + hand + 112 |

## Pass purity
| pass | medium-optimum | residual | open SR FAIL |
|---|---|---|---|
| T | yes | photo gestalt | no |
| C | yes | photo gestalt | no |
| V | yes | photo > vector on face | no (speech omitted) |
| R | yes | speech raster omitted by design | no mounted FAIL |

## Synthesis rule
S uses **C** danger/TIME/TIA/mimic peel + **R** recognition (face, arm, balance, clock, ban, 112) + type speech claim.  
**V omitted** (omit-is-win — R covers recognition).  
Speech grimace never mounted.
