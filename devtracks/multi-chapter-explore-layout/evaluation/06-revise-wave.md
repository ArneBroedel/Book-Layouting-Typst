# Layout revise wave — implementation log

**Date:** 2026-08-01  
**Trigger:** [04-synthesis.md](04-synthesis.md) Option R — worst 4: DRISC, Rücken, Kompartment, Gicht  
**Constraint:** layout/chrome only · no Critical Claims rewrite · regular compose path  
**Outputs:** recompiled pilots under `dist/pilots/<slug>/` (PDF + PNG p1…pn)

---

## 1. Targets vs 4b priorities

| Prio (4b) | Target | Action taken |
|---|---|---|
| **P2** box overload | `kl-kompartment-2026-08-01` | Quieter **2×2 criteria** + side safety cards in `domains/medical/lib/typst/kl-wave6/kompartment-2026-08-01.typ` (replaces loud multi-orange stack hop) |
| **P3** table walls | `ii1-drisc-2026-08-01` | **A/B/C axis cards** + compact R/I/S stage chips instead of triple table wall on p1 |
| **P3** table walls | `iv2-ruecken-2026-08-01` | **R4→R1 compact bands** instead of dense matrix table; **Entscheidungs-Flow** as operational core on own page |
| **P7** hybrid stock | `kl-gicht-2026-08-01` | Ship **`hot-joint-gicht(mode: "code")`** only; free PNG remains provenance; remove second identical danger band |
| (craft) | all 4 | Heavier flow arrows in `explore-2026-08/{pflichtsequenz,entscheidungs-flow}.typ`; Vier-Kanäle as quiet 2×2 cards (Gicht/Kompartment) |
| (craft) | DRISC | `#pagebreak()` before C-Muster table (no orphan header after tall Pflichtsequenz) |
| (craft) | Rücken | p1 fill: matrix + scan-path card; flow on p2 (`breakable: false` component); **3 pages** (was empty p1 + orphan p4) |
| (craft) | Kompartment | `#pagebreak()` before Vier Kanäle (no orphan H at p1 bottom) |

---

## 2. Files touched

| Path | Role |
|---|---|
| `toolset/compose/pilots/ii1-drisc-2026-08-01/chapter.typ` | Card OS + pagebreak C-Muster |
| `toolset/compose/pilots/iv2-ruecken-2026-08-01/chapter.typ` | Matrix-on-p1 · flow-own-page · bands |
| `toolset/compose/pilots/kl-kompartment-2026-08-01/chapter.typ` | Vier-Kanäle cards + pagebreak |
| `toolset/compose/pilots/kl-gicht-2026-08-01/chapter.typ` | Code hot-joint · Vier-Kanäle cards |
| `domains/medical/lib/typst/kl-wave6/kompartment-2026-08-01.typ` | `criteria-acs()` rewrite |
| `domains/medical/lib/typst/kl-wave6/gicht-2026-08-01.typ` | Drop duplicate danger in code panel |
| `domains/medical/lib/typst/explore-2026-08/pflichtsequenz.typ` | Heavier arrows |
| `domains/medical/lib/typst/explore-2026-08/entscheidungs-flow.typ` | Heavier arrows |

---

## 3. Build evidence (post-fix)

```text
ii1-drisc-2026-08-01     3 pages  dist/pilots/ii1-drisc-2026-08-01/
iv2-ruecken-2026-08-01   3 pages  dist/pilots/iv2-ruecken-2026-08-01/
kl-kompartment-2026-08-01 3 pages dist/pilots/kl-kompartment-2026-08-01/
kl-gicht-2026-08-01      3 pages  dist/pilots/kl-gicht-2026-08-01/
```

Compile flags (always):

```bash
typst compile --root . --ignore-system-fonts --font-path fonts \
  toolset/compose/pilots/<slug>/chapter.typ dist/pilots/<slug>/chapter.pdf
typst compile --root . --ignore-system-fonts --font-path fonts --format png --ppi 150 \
  toolset/compose/pilots/<slug>/chapter.typ dist/pilots/<slug>/p{n}.png
```

---

## 4. Open residual (not fixed this wave)

| Issue | Notes |
|---|---|
| KL shell monotony (other 5 KL) | LE/MI/Osteo/Stroke/CRPS not re-touched |
| BLS type size under stress | P8 deferred |
| Stroke BE-FAST footer | P6 deferred |
| Flow red density at book scale | Rücken/DRISC intentional gatekeeper chrome; may tire at 50× |
| Rücken p1 residual white | Better than empty; still not “tight magazine” |
| Kompartment Big Picture triptych | Still three equal BP cards — quieter than before, not minimal |

---

## 5. Human open commands

```bash
code dist/pilots/ii1-drisc-2026-08-01/p1.png
code dist/pilots/ii1-drisc-2026-08-01/p2.png
code dist/pilots/iv2-ruecken-2026-08-01/p1.png
code dist/pilots/iv2-ruecken-2026-08-01/p2.png
code dist/pilots/kl-kompartment-2026-08-01/p1.png
code dist/pilots/kl-gicht-2026-08-01/p1.png
```
