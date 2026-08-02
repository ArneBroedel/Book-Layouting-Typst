# Playbook 11 — Visual Critique (R4–R5)

**Role:** Visual Critic (**VC**) — separate from Graphics Realizer (**GX**).  
**Template:** `domains/medical/templates/visual-critique.template.md`  
**Track:** `devtracks/design-quality-system/`

## When

After every implement or polish of a graphic unit (and after chapter embed for page context).  
**Before** Media Accept handoff.  
**Not** optional for exploration didactic PDFs.

## Prerequisites

- [ ] Design CLEAN packet exists (Form Spec + Design Contract + design-critique clean)  
- [ ] Claim audit recorded if free vision ran  
- [ ] Build produces PDF/spike  

## Steps

1. **Export PNG pages** (mandatory):

```bash
typst compile --root . --ignore-system-fonts --font-path fonts --format png --ppi 150 \
  --pages <range> <entry.typ> dist/.../pages/p{p}.png
```

2. **Open every page image** with the image/read tool (or equivalent). List paths in critique file.  
3. Run **auto-block** checklist (code-leak, overflow, uncontracted color, worse-than-simple, **sparse-sprawl / space budget**, pin-monotone, broken peel/cards).  
4. **Semantic Read** on every teaching raster/vector glyph ([prompt-and-semantic-read](../references/prompt-and-semantic-read.md)): Lesart · Job-Fit · Falsche Lehre · Claim-Trennung **without reading captions**. Also: thumbnail legibility; anti-doodle patterns (blob+hotspot, smiley-face, arc-only airway, abstract ugly-duck dots); redundant same-job stacks. FAIL → **`block`** (not nit). Caption does not clear. 
5. Write findings `block` | `should` | `nit` with page + location.  
6. Status:  
   - open blocks → **revise** (GX fixes → re-export → new VC round)  
   - zero blocks, shoulds resolved/waived → **clean**  
7. Budget: max **5** visual rounds / unit → then Human (do **not** fake clean).  
8. Handoff to Accept only when status **clean** on **latest** PNG set — **never** mark clean while Semantic Read FAIL remains open.

## Auto-block examples (from CRPS re-run negative gold)

| Defect | Class |
|---|---|
| Raw `block(width: 100%…` visible on page | code-leak |
| Text cut off / glued in CeTZ boxes | overflow |
| One table row orange without Contract atom | uncontracted-atom |
| Mechanism chain less clear than numbered list | worse-than-simple |
| Empty peel cards / partial markup | craft |
| Unit fills most of a page with few claims / large empty regions | **sparse-sprawl** (fails space budget) |
| Peel edge strips + oversized insets waste vertical space vs map-row density | sparse-sprawl / craft |
| Teaching image fails Semantic Read (wrong motif / false teaching) | **semantic-read** — regen or demote before clean |
| Caption-only “glyph” (geometry needs adjacent text to mean anything) | **semantic-read** / decorative placeholder — redraw or drop |
| Three redundant marks for one job (e.g. face + grimace + smiley) | craft — keep strongest only |

## Density (book scale) — two-sided

The monographic book is already ~hundreds of pages at tight type; print cost scales with page count. VC must ask **both**:

1. **Sparse-sprawl:** *Could the same pins live in ~¼–½ page without losing hierarchy?* If yes and the unit still wastes large empty regions → **block** densify. Ambition ≠ air.  
2. **Squish-compress (CRPS 2026-07-31):** *Did we crush margins, leading, stack gaps, or type to hit a page-count target so the page feels glued and unprofessional?* If yes → **block** or **should**: restore breathing room.  

| Success | Failure |
|---|---|
| Teaching hierarchy + readable rhythm | Empty hero chrome for thin claims |
| Honest simple form (table/cluster) that scans | Page-count vanity via micro type + 2pt stacks |
| Solid unimpressive clinical panel | Pretty wrong raster or decorative placeholder geometry |
| Compact flow (~⅓–½ page) + next section continues | **Full-page airy flow** (fat cards + fat arrows + air) for 4–5 short steps — **Human NO-GO 2026-08-01** |
| Mid-chapter pages filled to useful density | Half-empty page bottoms mid-article |

**Page-level sparse-sprawl (harder than unit crop):** After free-vision recreate, agents often ship `breakable: false` card stacks that monopolize a whole A4 page. That can look “premium” and still **fail print density**. Mark **block** and densify (`density: "compact"`, drop hero pagebreaks, share page with following content).

Page count alone is **not** success — but **wasted half-pages mid-chapter** also fail. “3 pages because we airied” and “2 pages because we squished” are both process fails.

## Macro layout scan-path (chapter pages — multi-chapter harvest 2026-08-01)

After unit chrome is OK, VC **must** re-read **full page PNG** as a reader:

| Ask | Fail if |
|---|---|
| **One clear reading path?** | Eye jumps; competing equal-weight boxes; no quiet hierarchy |
| **Section structure obvious?** | Headings/blocks blend; unclear what is next |
| **Air above section heads?** | H2 glued to previous card/body (`weak` spacing collapsed); densify without stealing section air (Human 2026-08-01) |
| **Section heads flush left?** | “1. Section” sits on list indent — reads as nested enum under bookkit list defaults |
| **Indent / alignment consistent?** | Nested insets wander; left edges jitter; tables/cards misaligned for no reason |
| **Rhythm calm enough?** | Restless patchwork of panels with no grouping (Human: “unruhig”) |
| **Flow followable?** | Protocol/TIME/stack order not visible without re-reading text |

**Pilot helper:** `domains/medical/lib/typst/explore-2026-08/section-rhythm.typ` · skills: typst-writer §7, compose-chapter §8.

| Severity | When |
|---|---|
| **block** | Structure so noisy that primary job is not findable in a calm scan |
| **should** | Indent/alignment/rhythm issues that hurt professionalism but job still recoverable |
| **nit** | Minor edge inconsistency |

**Portfolio note:** Parallel chapter workers tend to ship locally OK units and **miss** this page-level pass — run macro scan-path before Accept on the **composed chapter PNG set**, not only spike unit crops.

## Auto-block / should add-ons

| Defect | Class |
|---|---|
| Decorative color blocks / ovals pretending to be anatomy after free demote | worse-than-simple / unjustified-chrome |
| Unreadable crushed stacks / vanishing section air for “density” | **squish-compress** (craft) |
| Raster looks polished but laterality/leaders fail expert read | proximity / pedagogy (escalate; do not self-pretty-pass) |
| Restless multi-panel page / unclear structure / odd indent | **scan-path** / craft (macro layout) |
| Solid full-bleed danger/OS on every step while matrix/peers use left-bar pale | **over-intensity** / chrome inconsistency |
| More than one solid “shout” where ordinary flag chrome would suffice | over-intensity |

## Chrome ladder (print body)

| Level | Visual | When |
|---|---|---|
| quiet | left bar + pale | default OS / info |
| flag | left bar + pale danger/warning | usual RF / triage steps |
| shout | solid + white type | **exceptional** must-not-miss, easy to under-call (Default-to-Danger when *unclear*) |

SoT helpers: `domains/medical/lib/typst/explore-2026-08/chrome.typ`. Free-vision solid stacks ≠ book default.

## NEVER

- Mark clean without opening images  
- Use “validate OK” or “compile green” as visual pass  
- Builder self-CLEAN  
- Accept exploration PDF with open visual blocks  
- Treat “looks premium / airy” as success when density fails  
- Treat “page count minimized” as success when the page is squished  
- Ship teal/orange placeholder “Gegenseite / Betroffene” blobs as a free-vision fallback  
- Mark Visual CLEAN on unit spikes only while **chapter page flow** is restless or structurally unclear  

