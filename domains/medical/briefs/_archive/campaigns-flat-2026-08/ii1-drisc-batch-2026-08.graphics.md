# Graphics Decision Note — `ii1-drisc-batch-2026-08`

- **date:** 2026-08-01
- **design_clean:** yes
- **visual_clean:** yes

## Units

| unit | track | carrier | realize_path |
|---|---|---|---|
| U-pflichtsequenz | grammar-only | **code** | `pflichtsequenz-risc(layout: "vertical", density: "compact")` |
| body | L2–L3 | **code** | `chapter.typ` (RISC cards, tables, examples) |

## Caps

Free gens: **0 / 2** (none used)

## Sequence lock

**R → I → S → C → Safety-Netting** (Akronym). NEW module — not `explore-2026-08/pflichtsequenz.typ` (R→S→I).

## Module / pilot

| artifact | path |
|---|---|
| Module | `domains/medical/lib/typst/d-risc-batch-2026-08/pflichtsequenz.typ` |
| Pilot | `toolset/compose/pilots/ii1-drisc-batch-2026-08/chapter.typ` |
| PDF | `dist/pilots/ii1-drisc-batch-2026-08/chapter.pdf` |
| PNG | `dist/pilots/ii1-drisc-batch-2026-08/p{1,2,3}.png` |
