# Graphic Decision Note

- **chapter_id:** III-2 / `bls-aed-notfallprozeduren`
- **brief_path:** `domains/medical/briefs/iii2-bls-aed.brief.md`
- **feasibility_path:** `domains/medical/briefs/iii2-bls-aed.feasibility.md`
- **content_source:** Kursbuch staging pilot (labels aligned to pilot `iii2.typ` / Content C)
- **content_revision:** exploration / pilot dogfood (kein Freeze-Pin)
- **author_role:** graphics
- **date:** 2026-07-22
- **vision_path:** `domains/medical/briefs/iii2-bls-aed.vision.md`
- **revision:** **v4 flow** + **free-first policy** (Nano Banana free = preferred vision)

> Gold pilot for `medical-graphics` free-first workflow.  
> **v1:** hybrid foot-legend incomplete. **v2–v3:** SVG hybrid contiguity. **v4:** correct 4a loop flow.  
> **Free vision:** Nano Banana free beats structure-referenced clone and pure code for visual quality (user).

## Phase A — Free vision

| unit_id | free vision | candidate | structure_ref | notes |
|---|---|---|---|---|
| S4 | yes | `primar-algorithmus-raster-nanobanana-free.png` | **none** | Preferred vision |
| S4 (contrast) | structure-transfer | `primar-algorithmus-raster-nanobanana.png` | SVG/`asset-p1` | Anti-pattern for creativity tests |

## Visual-Units

| unit_id | type | ideal (1 sentence) | graphic_mode | realize_path | rationale | spike_paths |
|---|---|---|---|---|---|---|
| **S4** Primär-Algorithmus | decision-flow | Branching protocol; 4a = monitor loop + escalate; 5/6 only CPR; stress-scannable | **code** (recreate) + **asset** (refined) | **recreate** + **refine** done | Free vision → B2 refined raster + B1 Typst module (pilot) | recreate · refined · compare-b2 |
| S5 AED-Kern | procedure-sequence | Eigene nummerierte Sequenz | code | n/a | Linear; protocol-steps OK | — |
| S3 Handlungstabelle | priority-landscape | 112-first urgency | none | n/a | styled-table | — |

## A/B results

| unit_id | code path | hybrid path | asset-full path | rubric notes | recommended winner |
|---|---|---|---|---|---|
| S4 | free · **refined** · **recreate** | B2 fixes loop+wording on free look; B1 Typst for print/claims | **production:** Typst module in pilot; **refined PNG** optional asset if DPI OK; free kept as provenance |

### Rubric (S4) — fair comparison after hybrid v2

| Criterion | Code (Fletcher) | Hybrid v2 (SVG + Typst on nodes) |
|---|---|---|
| **Ideal proximity** | Strong classic flowchart | **Stronger** illustrated dual-lane 4a/4b chrome matches “branching protocol” wishlist aesthetics |
| **Learner job (stress)** | Strong — labels in nodes | **Strong** — labels in nodes + color lanes separate Seitenlage vs CPR at a glance |
| **Claim safety** | Good (Typst in diagram) | **Excellent** — claims only in Typst overlays; SVG is form-only |
| **Hierarchy** | Good (red 4b pills) | **Very good** — full green/red lane panels |
| **Book fit** | Theme tokens, one file | Theme-aligned SVG + place map; document slot coordinates |
| **Maintainability** | **Best** — single `.typ` | Medium — SVG + overlay coords must stay in sync |

**v1 (invalid A/B):** hybrid = SVG + foot list → code “won” only because hybrid was incomplete.  
**v2 (valid):** both complete → **hybrid recommended** for production S4 when visual quality of lanes is valued; **code** remains first-class fallback if maintainability / single-file wins (page budget, no asset pipeline).

### Process rule harvested

> **Hybrid without node-level labels = incomplete.** Do not accept A/B until asset/hybrid has contiguity (labels at referents). Foot-legend-only is not a hybrid realization of a flowchart ideal.

## Asset manifest

| path | format | source | license | alt | role | print_ok |
|---|---|---|---|---|---|---|
| `domains/medical/assets/iii2-bls-aed/primar-algorithmus-base.svg` | svg | hand | project-internal | Strukturgrafik (Slots, ohne Claim-Text) | hybrid-base | n/a (vector) |
| `domains/medical/assets/iii2-bls-aed/primar-algorithmus-full.svg` | svg | hand | project-internal | Vollgrafik inkl. aller Schritttexte 1–6 / 4a/4b | **asset-full** | n/a (vector) |

Spike sources:

- `toolset/compose/spikes/graphics/iii2-bls-aed/spike-code.typ`
- `toolset/compose/spikes/graphics/iii2-bls-aed/spike-hybrid.typ` (SVG hybrid v3)
- `toolset/compose/spikes/graphics/iii2-bls-aed/spike-asset.typ` (full text in SVG)
- `toolset/compose/spikes/graphics/iii2-bls-aed/spike-raster-full.typ` (Imagine PNG full text)
- `toolset/compose/spikes/graphics/iii2-bls-aed/spike-raster-hybrid.typ` (Imagine PNG base + Typst)
- `toolset/compose/spikes/graphics/iii2-bls-aed/spike-nanobanana.typ` (Antigravity Nano Banana)
- Brief for agy: `toolset/compose/spikes/graphics/iii2-bls-aed/antigravity-nanobanana-brief.md`

### Raster / Imagine notes (2026-07-22)

| file | mode |
|---|---|
| `primar-algorithmus-raster-full.png` | asset-full pixel graphic (text in image) |
| `primar-algorithmus-raster-base.png` | hybrid-base empty nodes |

- Provenance: Grok Imagine `image_gen` + `image_edit`; license project-internal exploration.
- Text in raster is **approximate** AI typography — verify claims before production.
- DPI at 150 mm width ≈ 146 (below print 300) — OK for spikes/screen; print needs re-gen higher res or prefer SVG.
- Hybrid raster place-map is approximate; base layout ≠ vector layout (1\|2 side-by-side).

## Risks / Human review

- [x] no anatomy/procedure illustration risk beyond protocol structure
- [ ] **H-Gfx** not required for this unit
- [x] notes: 30:2 / 10 s copy-through from pilot content — not invented. ERC/GRC HiL remains Human/Content.

## Ready for Media Accept?

- [x] **yes** — fair A/B; recommended winner **hybrid v2**
- [ ] no — blockers:

## Compose handoff (post-Accept)

| unit_id | winner | embed pattern | asset path |
|---|---|---|---|
| S4 | **hybrid** | Port `spike-hybrid.typ` pattern: `block` + SVG background + `place` slot labels; keep claims in Typst only | `domains/medical/assets/iii2-bls-aed/primar-algorithmus-base.svg` |
| S4 fallback | code | Fletcher module from `spike-code.typ` | — |

### Suggested compose pins

```typst
// graphic_decisions: domains/medical/briefs/iii2-bls-aed.graphics.md
// tools: bookkit, fletcher:0.5.8? (fallback), hybrid-svg
// graphics: domains/medical/assets/iii2-bls-aed/
```
