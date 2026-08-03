# Comparison matrix — `melanom-abcde-2026-08-c`

Scores **1–5 = teaching power without caption** (agent PC reads latest pass PNGs).  
**Not** “medium has a mark for this job.”

SoT scoring: `domains/medical/skill/medical-graphics/references/prompt-and-semantic-read.md` §3

| learner job | T | C | V | R | winner | note |
|---|---|---|---|---|---|---|
| 1 Role (Blick + Zuweisung) | 4 | **5** | 3 | 3 | **C** | soft-cards HP-Rolle / Fehllabel; T close |
| 2 ABCDE criteria as marks | **5** | 3 | **5** | 4 | **T / V** | T type list; V schematic lesion shapes (SR PASS); C quiet chips mid; R photo gestalt not discrete A–E |
| 3 Ugly Duckling | 4 | 3 | **5** | **5** | **R** (co **V**) | R photo field strongest; V skin-field schema also PASS |
| 4 Mimics (Fleck / SK / subungual) | 4 | **5** | 3 | **4** | **C** (co **R** subungual) | C mimic peel; R subungual kachel for nail |
| 5 Urgency (112 rare; gleichtags/zeitnah) | 4 | **5** | 3 | 3 | **C** | 112 quiet + G-Z solid shout |
| 6 Boundary (no destr. measures) | 4 | **5** | 4 | 3 | **C** | scope frame; V ban glyph co |
| 7 Mini-case transfer | 4 | **5** | 3 | 3 | **C** | three answer cards |

## Scoring rules (hard)

| Rule | Application |
|---|---|
| Semantic Read **FAIL** on the mark used for that job | score **1** (or n/a); **cannot** be winner |
| Caption-dependent glyph/photo | max **2** |
| Winner / co-winner | only **PASS** marks that beat pure type for that job |
| Co-winner | only if **distinct** cues (not same face twice) |
| Prefer honest empty strength | “T wins with type” > inventing weak V |

## How scores were set

Opened `dist/form-lab/melanom-abcde-2026-08-c/{T,C,V,R}/p*.png` and scored **caption-free** teaching power under medium purity. All V glyphs and R kacheln used as winners have SR **PASS**.

## Synthesis rule (Pass S)

Pass S may only use winners / co-winners above that still have Semantic Read **PASS**.  
**Omit is a win** if a medium adds no teaching.  
**Do not** force V glyphs when R already covers recognition *unless* V supplies a *distinct* cue (here: discrete ABCDE shapes vs R multitone gestalt).

### Planned S carriers
| job | carrier |
|---|---|
| Role + Urgency + Boundary + Mini-case + Mimics text | **C** chrome |
| ABCDE discrete marks | **V** schematic shapes (co T type if needed as compact table) |
| Ugly Duckling + lesion gestalt | **R** kachel-ugly + kachel-asym |
| Subungual mimic | **R** kachel-subungual |
| Omit | rainbow C chips; duplicate face stacks; pure T-only chapter |

## Pass purity snapshot

| pass | medium-optimum | residual | open Semantic Read FAIL? |
|---|---|---|---|
| T | yes (r3) | no lesion photo | no |
| C | yes (r3) | no lesion gestalt | no |
| V | yes (r3) | no photo realism | no |
| R | yes (r3) | urgency chrome weak | no |
