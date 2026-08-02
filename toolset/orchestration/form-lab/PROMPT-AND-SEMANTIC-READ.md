# Form Lab — Prompt craft + Semantic Read

**Canonical SoT (do not fork):**  
`domains/medical/skill/medical-graphics/references/prompt-and-semantic-read.md`

This file is a pointer only so Form Lab workers find the gate from `toolset/orchestration/form-lab/`.

| Applies to | Gate |
|---|---|
| Pass R free gens | Short positive prompt; **§1.1 jargon preflight** (no *atomic*/cascade/… in image prompt); Semantic Read before mount |
| Pass S | Only Semantic Read **PASS** aspects from T/C/V/R |
| Pass PC critiques | Semantic Read table; FAIL = block; no medium-optimum with FAIL open |
| Pass C chrome | Do not use rainbow letter chips as stand-in for clinical “Color” (ABCDE) |

**Lesson:** Form Lab “atomic” = focused single aspect. Image models hear “draw an atom”. Never put medium jargon in the gen prompt — only the concrete subject.

Loop detail: `devtracks/chapter-form-lab/pass-craft-loop.md`  
Medium rules: `_templates/medium-rules-R.md`, `medium-rules-C.md`
