# Playbook 04 — Typst recreate (G3 R1)

## Goal

Claim-safe **hierarchy-faithful code** carrier: ports free-vision **harvest** cues + Form Spec pins; bookkit tokens + FA6.  
Not a pin dump / pin-monotone table.

## Steps

1. Open harvest (`## Harvest` in `*.graphics.md` or `*.harvest.md`). If track was free-vision-ambition and free vision ran with **no** harvest → **stop and write harvest first**.  
2. Scaffold (or use init script):

```text
toolset/compose/spikes/graphics/<slug>/
  lib/<module>.typ          # or domains/medical/lib/typst/…
  spike-recreate.typ
  spike-compare.typ
```

3. Import:

```typst
#import "/packages/bookkit/theme.typ": palette
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")
```

4. **Port harvest `must` cues first** (zones, weight, rails, peel chrome, dual-coding geometry) — non-claim only.  
5. Encode Form Spec zones with **claim pins only** (copy-through C).  
6. Match free vision hierarchy (loud cards, arrows, banners) without inventing text.  
6b. **Print density after hierarchy port (required):** free vision is often *airy* (large cards, fat arrows, full-bleed step height). For **chapter body ship**, provide a **`density: "compact"`** default (thin left-accent bands, tight gutters, no fat inter-step arrows) that keeps scan order + dual-coding. Keep `density: "airy"` only for free-vs-recreate comparison spikes. **Do not** embed airy full-page stack as book default — Human 2026-08-01: print cost + content volume make sparse full-page flows a **NO-GO**.  
7. Compile always:

```bash
typst compile --root . --ignore-system-fonts --font-path fonts \
  toolset/compose/spikes/graphics/<slug>/spike-recreate.typ \
  dist/spikes/graphics/<slug>/recreate.pdf
typst compile --root . --ignore-system-fonts --font-path fonts \
  --format png --ppi 200 …/spike-recreate.typ …/recreate-p1.png
```

8. Compare free vs recreate (`spike-compare.typ`) when free PNG exists.  
9. Export function e.g. `#entscheidungs-flow-…()` for pilot embed.  
10. Update Decision Note: `harvest_must_ported?`, free-vision proximity self-check, which cues landed.

## Definition of done (hierarchy-faithful)

- [ ] All harvest **must** cues present in spike (or waived with reason)  
- [ ] Claim pins copy-through  
- [ ] Optional: side-by-side free vs recreate when free PNG exists  
- [ ] `*.graphics.md` lists `harvest_path` (or section) + which cues landed  
- [ ] Winner is **not** pin-monotone on free-vision-ambition track  
- [ ] **Ship path is print-dense** (`compact` default); airy not the only/only-export mode  
- [ ] Embedded in chapter: unit does **not** force a mostly-empty hero page

**Carrier bias (Human D4):** prefer **code if ≈ equal** after harvest port; asset/hybrid when chrome cannot match fairly.

## When free vision FAILED (demotion landing)

If claim audit is **FAIL** (or Human rejects pretty FAIL):

1. **Do not** invent decorative placeholder geometry (colored blocks, oval “limbs”) as a “honest schematic”.  
2. **Step down intensity** to Form Spec **simple alternative** or L2–L4 clinical typography: recognition cluster, Seitenvergleich table, map-rows, cue chips with real C pins.  
3. That step-down can be the **Accept winner** (simple-alternative success) — solid unimpressive > pretty wrong (CRPS 2026-07-31).  
4. Keep free PNG as **provenance only**; name carrier `code` in Decision Note.

## Patterns

| Need | Pattern |
|---|---|
| Hard stop | solid `palette.danger` card |
| Framework OS | teal header; danger only on R-first |
| R/I/S trio | 3-column subcards |
| Default-to-Danger | danger sub-banner |
| Dual layout | `layout: "vertical" \| "landscape"` (II-1 recipe) |
| Harvest tile matrix | `#grid` / stack matching free-vision zones |
| Escape rail | full-width danger/quiet band from harvest H* |

## Stub

`toolset/compose/spikes/graphics/_templates/lib/module.typ`

## Cap

1 solid recreate + polish (icons, chips) — not endless redesign.  
After DRIFT: choose **one** primary path (refine **or** recreate-with-harvest), not both to cap exhaustion.

## Anti-patterns

| Forbidden | Why |
|---|---|
| Free vision → DRIFT → “just make a table with pins” | kills harvest; fails free-vision proximity Accept |
| Port only pins, ignore hierarchy/rails/peel | pin-monotone |
| Invent clinical labels while “matching” free vision | claim audit |
