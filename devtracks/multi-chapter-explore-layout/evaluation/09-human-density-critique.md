# Human density critique → densify pass (2026-08-01)

**Human feedback (paraphrase):**  
- II-1 **p1** layout good.  
- II-1 **p2** optically OK but **extreme space waste** — full page, little content → **print NO-GO**.  
- IV-2 **p2** same: pretty flow, too much page for too little content.  
- IV-2 **p1** form good; half page empty should be filled unless chapter ends.  
- KL-Gicht **p1** relatively good; slightly tight around headings.

**Root cause:** Free-vision recreates (`pflichtsequenz`, `entscheidungs-flow`) shipped as **airy** dual-header cards + fat arrows + `breakable: false` / forced pagebreaks → full-page sparse heroes. Skills already forbade sparse-sprawl at *unit* level; agents still failed at *page* level after “pretty” revise.

---

## Concrete fixes applied

| Target | Change |
|---|---|
| `domains/medical/lib/typst/explore-2026-08/pflichtsequenz.typ` | `density: "compact"` **default** — thin left-accent bands, tight gutters, no fat arrows; `airy` kept for spikes only |
| `domains/medical/lib/typst/explore-2026-08/entscheidungs-flow.typ` | same |
| `toolset/compose/pilots/ii1-drisc-2026-08-01/chapter.typ` | compact flow; **removed** pagebreak before C-Muster |
| `toolset/compose/pilots/iv2-ruecken-2026-08-01/chapter.typ` | compact matrix + compact flow; **removed** hero pagebreak; RF continues same stream |
| `toolset/compose/pilots/kl-gicht-2026-08-01/chapter.typ` | slightly more H2 air (anti-tight) |

**Page count after densify:**

| Chapter | Before (airy) | After (compact) |
|---|---|---|
| II-1 D-RISC | 3 | **2** |
| IV-2 Rücken | 3 | **2** |
| KL Gicht | 3 | 3 (heading air only) |

---

## General principles (harvest)

### P1 — Space is a claim on print budget
Every half-page of air mid-chapter costs real pages over the full book. Prefer **scannable density** over “premium airy dashboard” aesthetics for body text.

### P2 — Two-sided density (unchanged, reinforced)
| Fail | Meaning |
|---|---|
| **sparse-sprawl** | Few claims, large empty / fat chrome / full-page hero for thin steps |
| **squish-compress** | Crushed type/gaps to fake fewer pages |

Success = high information density **and** calm scan-path.

### P3 — Free vision ≠ print default
| Mode | Use |
|---|---|
| `density: "airy"` | free-vision comparison, posters, optional full-bleed inserts |
| `density: "compact"` | **chapter body default** |

Hierarchy (order, danger weight, dual-coding) must survive compact; fat arrows and dual-header cards are optional chrome.

### P4 — No forced hero pages for flows
Do not `#pagebreak()` solely to give a flow a clean full page. Flow must **share** the page with C-Muster / RF table / next section.

### P5 — Mid-chapter bottoms must fill
Half-empty bottoms OK only at **true chapter end**. Otherwise pack next section or densify previous unit.

### P6 — PNG question before Visual CLEAN
> *Could this page hold ~30–50% more useful content without losing the scan-path?*  
If yes and large white remains mid-chapter → densify before CLEAN.

### P7 — Gicht-class “good dense” is the model
Tight clinical panels + continuous prose + recognition cluster ≈ right band. Nudge heading air if slightly glued — do **not** open into airy flow sprawl.

---

## Skill patches

| File | Patch |
|---|---|
| `toolset/skill-pack/compose-chapter/SKILL.md` | §9 print density + ALWAYS/NEVER rows |
| `domains/medical/skill/medical-graphics/playbook/11-visual-critique.md` | page-level sparse-sprawl block |
| `domains/medical/skill/medical-graphics/playbook/04-recreate-typst.md` | compact default after hierarchy port |

---

## Human open commands

```bash
code dist/pilots/ii1-drisc-2026-08-01/p1.png
code dist/pilots/ii1-drisc-2026-08-01/p2.png
code dist/pilots/iv2-ruecken-2026-08-01/p1.png
code dist/pilots/iv2-ruecken-2026-08-01/p2.png
code dist/pilots/kl-gicht-2026-08-01/p1.png
```
