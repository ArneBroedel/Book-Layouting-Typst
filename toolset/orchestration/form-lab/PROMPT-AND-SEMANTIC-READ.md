# Form Lab — Prompt craft + Semantic Read

**Canonical SoT (do not fork):**  
`domains/medical/skill/medical-graphics/references/prompt-and-semantic-read.md`

This file is a pointer only so Form Lab workers find the gate from `toolset/orchestration/form-lab/`.

| Applies to | Gate |
|---|---|
| Pass R free gens | Short positive prompt; **§1.1 jargon preflight**; clinical context when needed; **one aspect per job**; Semantic Read before mount |
| Pass **V** CeTZ / SVG glyphs | Same Semantic Read **without caption**; thumbnail legibility; **anti-doodle** reject patterns |
| Comparison matrix | Score caption-free teaching only; FAIL cannot win; caption-dependent ≤2 |
| Pass **S** | Strongest PASS per job only; **omit is a win** (no forced V doodles) |
| Pass PC critiques | Semantic Read table for **every** teaching raster **and** glyph; FAIL = block |
| Pass C chrome | Do not use rainbow letter chips as stand-in for clinical “Color” (ABCDE) |

**Lessons encoded:**

1. Form Lab “atomic” = focused single aspect. Image models hear “draw an atom” — never put medium jargon in the gen prompt.  
2. Red arcs / foot-blob+dot / smiley-face / equal-circles+polygon that need a caption are **Semantic Read FAIL**, not “vector style.”  
3. Best-of fusion is **not** “all media on the page.”

Loop: `devtracks/_archive/chapter-form-lab/pass-craft-loop.md`  
Templates: `_templates/medium-rules-R.md` · `medium-rules-V.md` · `medium-rules-S.md` · `comparison-matrix.md`
