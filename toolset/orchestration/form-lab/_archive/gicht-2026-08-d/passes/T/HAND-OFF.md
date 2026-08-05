# Handoff — Pass T — `gicht-2026-08-d`

## Mandate

Reach **medium-optimum** for Pass T via **iterative** craft (build → PNG → critique → revise).  
**Not** one-shot. **Not** other passes.

**Medium:** Typography + Icons only (see `medium-rules.md`).

## Medium rules

See `medium-rules.md` in this directory. Critic enforces allow/deny.

## Content

See `../../pins.md`. No claim invention. No clinical rewrite.

**Content SoT (read-only):**  
`/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-06-kl-full/monographs/chapter-v-3-gicht.md`

## Learner jobs (must stay teachable)

1. **Danger lead:** Podagra kann septische Arthritis maskieren; Kristalle entwarnen nicht
2. **Hot joint gestalt:** MTP-I / heißes Mono-Gelenk erkennen
3. **TIME triage:** 112 vs NA vs zeitnah vs behandeln
4. **Mimic peel:** „nur Gicht“ / Distorsion / Knie-Schub
5. **Boundary:** keine Punktion/Injektion/forcierte Manipulation
6. **Mini-case:** Fieber + Podagra → NA/112, nicht mobilisieren

## Paths (wave-d only)

| kind | path |
|---|---|
| source pilot | `toolset/compose/lab/form-lab-gicht-d-T/` (**create new**; do not copy a/b/c) |
| dist | `dist/form-lab/gicht-2026-08-d/T/` |
| critiques | `critique-rNN.md` (this dir) |
| exhaustion | `exhaustion.md` (when done) |

## HARD ban

Do **not** reuse or mount:

- `toolset/compose/lab/form-lab-gicht-{T,C,V,R,S}/`
- `toolset/compose/lab/form-lab-gicht-b-*`
- `toolset/compose/lab/form-lab-gicht-c-*`
- `domains/medical/assets/form-lab/gicht-2026-08{,-b,-c}/`
- `dist/form-lab/gicht-2026-08{,-b,-c}/`

New sources and glyphs only. Pass T: no free-vision rasters; simple icons OK under medium rules.

## Caps

| cap | value |
|---|---|
| min_craft_rounds | 3 |
| max_craft_rounds | 12 |

## Current state

- **craft_round:** 3
- **status:** medium-optimum
- **open blocks:** —
- **last_png:** dist/form-lab/gicht-2026-08-d/T/p1.png · p2.png

## Loop

Follow `devtracks/_archive/chapter-form-lab/pass-craft-loop.md`.

Each round:

1. Implement (or revise from last critique)
2. Compile with repo font flags (`--ignore-system-fonts --font-path fonts`)
3. Export all pages PNG → `dist/form-lab/gicht-2026-08-d/T/p*.png`
4. Write `critique-rNN.md` (eyes on PNG; medium purity; learner jobs)
5. If blocks → next round; if optimum candidate + min rounds + empty blocks → `exhaustion.md`

## Done when

Medium-optimum gate: min rounds + empty blocks + `exhaustion.md` + latest PNGs.  
Then **stop** and return to Orchestrator (do **not** start Pass C).

## Worker start phrase

```text
Form Lab Pass T Worker.
Lab: toolset/orchestration/form-lab/gicht-2026-08-d/
Load: passes/T/HAND-OFF.md + medium-rules.md + pins.md
Goal: iterative craft to medium-optimum (min 3 rounds).
Each round: implement → PNG → critique-rNN → revise.
Do not switch medium. Hand back to Orchestrator at optimum candidate.
```
