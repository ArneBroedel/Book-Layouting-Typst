# Pass craft loop — operational detail

Companion to [plan.md](plan.md) §3. Used by Pass Workers and Critics.

---

## Loop (mandatory)

```text
r = current craft_round (from HAND-OFF / board)

while true:
  ── BUILD (Pass Worker · Builder role) ──────────────────
  1. Read pins.md + medium-rules.md + last critique (if r>1)
  2. Implement only fixes + medium-legal improvements
     Pass R: for each new free gen —
       (a) short positive draft prompt
       (b) §1.1 jargon preflight (rewrite *atomic*/cascade/… to concrete subject language)
       (c) gen only after preflight
       (d) open image → Semantic Read before montage
       SoT: domains/medical/skill/medical-graphics/references/prompt-and-semantic-read.md
  3. Compile with repo font flags
  4. Export ALL chapter pages to PNG (overwrite dist/.../p*.png)
  5. Append run-log: PASS <id> round r BUILD done + png paths

  ── CRITIQUE (Pass Critic · separate step) ──────────────
  6. Open latest PNGs (must read images, not only typ)
  7. Fill critique-r{NN}.md:
       - medium purity (allow/deny)
       - learner jobs coverage
       - craft ceiling (what still extractable from THIS medium)
       - claim honesty
       - density / scan
       - **Semantic Read** (every teaching raster/vector glyph) — FAIL = block
       - status: revise | medium-optimum-candidate
       - blocks[] with page + required change
  8. Append run-log: CRITIQUE status

  ── GATE ────────────────────────────────────────────────
  9. if status == medium-optimum-candidate
        and r >= min_craft_rounds
        and blocks empty
        and no open Semantic Read FAIL:
          write exhaustion.md
          board pass → optimum (or candidate + H-Pass)
          STOP → return to Orchestrator
 10. if r >= max_craft_rounds:
          write exhaustion.md with residual blocks
          board pass → blocked-or-residual
          STOP → Orchestrator / Human
 11. else:
          r += 1
          update HAND-OFF current state
          continue BUILD with blocks as mandate
```

---

## critique-rNN.md template

```markdown
# Critique — Pass <ID> — round <NN>

- lab_id:
- pass:
- round:
- png_set:
- author_role: PC (not builder of this round’s implement)
- status: revise | medium-optimum-candidate

## Medium purity
- allow/deny violations:

## Semantic Read (every teaching image/glyph — hard gate)
| aspect / locus | intended job | 2s lesart | job-fit | false teaching? | verdict PASS/FAIL |
|---|---|---|---|---|---|
| | | | | | |

FAIL → **block** (regen or demote). Caption does not clear FAIL.
SoT: `domains/medical/skill/medical-graphics/references/prompt-and-semantic-read.md`

## Learner jobs
| job | present | strong | note |
|---|---|---|---|

## Craft ceiling (this medium only)
What a strong designer would still do *without leaving the medium*:
1.
2.

## Blocks
| id | severity | page | finding | required change |
|---|---|---|---|---|

## Nits
|

## Disposition
- open blocks: N (must include Semantic Read FAILs)
- if 0 and round>=min: may set medium-optimum-candidate
- **never** medium-optimum-candidate while Semantic Read FAIL is open
```

---

## exhaustion.md template

```markdown
# Exhaustion dossier — Pass <ID>

## What we tried (rounds summary)
- r1: …
- r2: …

## Peak strengths of this medium on this chapter
-

## Residual weaknesses this medium cannot fix
- (these motivate other passes)

## Explicit non-claims
- We do not claim production Accept
- We do not claim best overall chapter (that is comparison + S)

## Artifacts
- pdf:
- pngs:
- final critique:
```

---

## Builder / Critic separation

| Same physical agent? | Allowed if |
|---|---|
| Yes | Separate steps; critique file written **after** PNG export; Builder must not edit critique to erase blocks without re-export |
| No (better) | Critic subagent or second session |

Self-CLEAN in the same breath as build = **process fail**.

---

## Orchestrator checks before accepting “optimum”

1. `critique-rNN.md` exists with `medium-optimum-candidate`  
2. `NN >= min_craft_rounds`  
3. `exhaustion.md` exists  
4. PNG mtimes ≥ chapter.typ mtime  
5. Spot-check: open p1 — medium deny-list not obviously violated  
6. **Semantic Read:** critique table has no FAIL rows; Pass R/S mounts only PASS aspects  
7. Update board + route next pass or comparison  

**Pass S:** synthesizer must not reintroduce aspects that failed Semantic Read in T/C/V/R.
