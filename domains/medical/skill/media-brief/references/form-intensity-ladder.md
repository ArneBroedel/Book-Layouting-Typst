# Form intensity ladder (presentation continuum)

**Load when:** Design Contract, Design Critic, unit hypothesis, Accept density check.  
**Product:** B · design-quality-system  
**Goal:** Pick the **lowest intensity that still earns clear teaching gain** under book page budget.

---

## Ladder (low → high)

| Level | Name | What it is | Typical tools | Space default |
|---|---|---|---|---|
| **L0** | Plain prose | Continuous German text, minimal markup | `par`, italics for terms | minimal |
| **L1** | Structured text | Lists, numbered steps, short definition runs | bullets, enum, tight `stack` | minimal–⅛ p |
| **L2** | Formatted text | Semantic **color / weight / size** on pins; optional micro-badges | `text(fill:)`, bold, small chips | ~⅛ p |
| **L3** | Panel text | Backgrounds, left accent bars, compact callouts, quiet icons | `block` fill/stroke, FA icons | ~⅛–¼ p |
| **L4** | Schematic structure | Clear zones/rows/grids that encode relations (frame→danger, fork, matrix) | `grid`/`stack`, dual-band rows | ~¼–⅓ p |
| **L5** | Complex diagram | Multi-node causality, flows, spatial schema (code-first) | CeTZ, Fletcher, custom canvas | ~⅓–½ p (justify) |
| **L6** | Pictorial / free vision | Raster or hybrid with free-vision harvest; claim audit | AI gen + recreate/hybrid | gated; budget + H-Gfx if anatomy |

**Not a ranking of “quality”.** Higher is **not better** — only when lower cannot deliver the learner job.

---

## Decision rule (mandatory)

```text
1. State learner job + must-see pins
2. Ask: what is the LOWEST L that makes the job reliably scannable?
3. State teaching gain vs L−1 (none | weak | clear | essential)
4. If gain ≤ weak → stay at L−1 (or L0)
5. Fit space budget (book density)
6. Climb one step only if residual job failure is concrete
```

**Climb with purpose:** each step up must buy a named cognitive win (e.g. dual coding of mask vs truth, order under stress, spatial gestalt) — not “looks more designed”.

**Descend with honesty:** if Human or DC finds no Mehrwert, **step down** (WP9d mechanism → L0/L1 is success).

---

## Middle path (L2–L3) — first-class, not a compromise of failure

Between “bare text” and “diagram/raster” lives the **default production band** for most KL units:

| Need | Prefer |
|---|---|
| Stress one phrase in a paragraph | **L2** color/weight on that pin only |
| Separate “frame” vs “danger” without a figure | **L3** dual fill or left-bar rows, dense |
| Four equal traps scannable | **L4** dual-band map (not L5 peel theater) |
| Multi-pathway *if* prose fails Human | try **L2–L3** before L4–L5 |
| True spatial / free-vision job | **L5–L6** after Design CLEAN + space budget |

L2–L3 must still obey: color = meaning, density, no unjustified chrome.

---

## Mapping unit types (defaults, not cages)

| Unit type | Start at | Climb only if |
|---|---|---|
| mechanism / orientation | L0–L1 | co-action/fork still missed under scan |
| reference / BP quiet | L0–L1 | — |
| discrimination / mimic error | L3–L4 | hierarchy still flat |
| urgency / TIME | L3–L4 | tiers not scannable |
| spatial / criteria-by-picture | L5–L6 | pins need drawing |
| procedure | L1–L3 | order critical + branching |

---

## Anti-patterns

| Bad | Why |
|---|---|
| Jump L0 → L5 because “graphic chapter” | wastes pages; weak gain |
| L6 free vision for orientation mechanism | wrong tool |
| L2 rainbow colors without meaning | dual-coding fail |
| L4 sparse full-page for four short pins | sparse-sprawl |
| “Simple vs complex” binary only | misses L2–L3 middle path |

---

## Contract fields (use in Design Contract)

- **Intensity level:** L0 … L6  
- **Why not L−1:** one concrete scan/job failure  
- **Why not L+1:** density / no extra gain / wrong tool  
- **Space budget** + teaching gain (unchanged hard rules)  

## Critic attacks

- **over-intensity:** level higher than job needs  
- **under-intensity:** job fails because form too flat (only if evidence)  
- **sparse-sprawl** / **worse-than-simple** still apply at every level  
