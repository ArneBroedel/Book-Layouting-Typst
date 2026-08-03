# Comparison matrix — `schlaganfall-2026-08-c`

Scores **1–5 = teaching power without caption** (agent PC reads latest pass PNGs).  
**Not** “medium has a mark for this job.”

SoT scoring: `domains/medical/skill/medical-graphics/references/prompt-and-semantic-read.md` §3

| learner job | T | C | V | R | winner | note |
|---|---|---|---|---|---|---|
| 1 Danger lead 112 / Stroke-Unit | 4 | **5** | 4 | 3 | **C** | C danger band + TIME 112 slab; V phone glyph co-strong; T type line solid |
| 2 FAST / BE-FAST | 4 | 4 | **5** | **5** | **V+R** | R face+arm photo recognition; V full F/A/S/T glyph set + BE-FAST; T letter row mnemonic |
| 3 Last seen normal + Lysefenster | **5** | 4 | **5** | 2 | **T+V** | T/V clock + explicit <4,5 h type; R clock still-life alone ≤2 |
| 4 TIA = Notfall remittiert | 4 | **5** | **5** | 3 | **C+V** | C Verlauf card + TIME; V tia-fade solid→dashed with ban ring |
| 5 Mimics HWS/Fazialis/Migräne/Schulter-Arm | 4 | **5** | 3 | 3 | **C** | C amber mimic rows; T enum solid; V text residual |
| 6 Boundary no HWS manip | 4 | 4 | **5** | 3 | **V** | V ban-hws glyph thumbnail-legible; T/C type + danger |
| 7 Mini-case transfer → 112 | 4 | **5** | 4 | 4 | **C** | C transfer cards + situation block; R face anchor helps gestalt |

## Scoring rules (hard)

| Rule | Application |
|---|---|
| Semantic Read **FAIL** on the mark used for that job | score **1** (or n/a); **cannot** be winner |
| Caption-dependent glyph/photo | max **2** |
| Winner / co-winner | only **PASS** marks that beat pure type for that job |
| Co-winner | only if **distinct** cues (not same face twice) |
| Prefer honest empty strength | “T wins with type” > inventing weak V |

## How scores were set

Opened `dist/form-lab/schlaganfall-2026-08-c/{T,C,V,R}/p*.png` and scored **caption-free** teaching power under medium purity.

## Synthesis rule (Pass S)

Pass S may only use winners / co-winners above that still have Semantic Read **PASS**.  
**Omit is a win** if a medium adds no teaching.  
Do **not** force weak R speech; V carries Speech.  
Do **not** stack R face + V face for same job — pick one primary per job.

## Pass purity snapshot

| pass | medium-optimum | residual | open Semantic Read FAIL? |
|---|---|---|---|
| T | yes (r3) | recognition photos | no |
| C | yes (r3) | face/arm gestalt | no |
| V | yes (r3) | photoreal | no |
| R | yes (r3) | Speech photo | no mounted FAIL |
