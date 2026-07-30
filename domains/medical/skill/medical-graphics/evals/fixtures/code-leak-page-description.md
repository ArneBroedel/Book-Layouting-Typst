# Fixture — page description with code-leak (eval input only)

> Stand-in for a PNG the Visual Critic must treat as if opened.

## Unit

`U-mimic-peel` — title “Trügerische Erklärungen”

## Page description (what the PNG shows)

Four card columns intended as peel cards. Instead of clean frame/danger halves, each card shows **literal Typst source** mixed with fragments of German labels, for example visible strings:

```text
block( width: 100%, fill: white, inset: (x: 5pt, y: 7pt), stroke: (bottom: 0.8pt + palette.border), )[
„Normaler Heilungsschmerz“
] block( width: 100%, fill: luma(30), inset: (x: 5pt, y: 7pt), )[
```

Fourth card has a red outline and a lone “!”; bottom dark danger text is missing or truncated.

## Design Contract (for this fixture)

- Simple alternative: 4-row table Frame | Danger  
- Atoms: 4 peel cards; frame white top / danger dark bottom; card-4 alert border for Infekt  
- No atom allows showing source code

## Expected Visual Critic outcome

- status: **revise** (not clean)  
- at least one **block** finding class `code-leak`  
- required change: fix Typst content-mode (`#block` nesting); re-export PNG; re-critique  
