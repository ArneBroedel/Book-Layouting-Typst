# Design Contract — <slug> / <unit_id>

> **Phase D (Media Designer).** Justifies every non-trivial visual decision before free vision / Typst.  
> Grounding: media design + medical pedagogy. Decoration without learner job = forbidden.  
> Skill: `media-brief` · Guide: `Guides/Medical-Presentation-Forms.md`  
> Track: `devtracks/_archive/design-quality-system/`

- **chapter_id / slug:**
- **unit_id:**
- **form_spec_path:** `domains/medical/briefs/<slug>.form-spec.md`
- **brief_path:**
- **content_source:** (C, read-only)
- **author_role:** media-designer (MD)
- **date:**
- **status:** draft | in-critique | **design-clean** | blocked
- **open_asset_scan:** required | optional | skip  
  (Media SoT for G0b: realism/third-party intent → required; code/schema → skip; no empty ceremony)
- **production_bridge_seen:** n/a | path (optional awareness only — not design cage)

## Learner job (one primary)

stop | recognize | choose | execute | distinguish | understand | look up  

**Primary job in one sentence:**

## Form intensity (required — continuum, not binary)

Reference: `domains/medical/skill/media-brief/references/form-intensity-ladder.md`

Pick the **lowest** level that still earns clear teaching gain:

| L | Name |
|---|---|
| L0 | Plain prose |
| L1 | Structured text (list / numbered) |
| L2 | Formatted text (semantic color / weight / micro-emphasis) |
| L3 | Panel text (backgrounds, accent bars, compact callouts, quiet icons) |
| L4 | Schematic structure (grids/rows that encode relations) |
| L5 | Complex diagram (multi-node code geometry) |
| L6 | Pictorial / free vision / hybrid raster |

- **Chosen level:** L_  
- **Why not L−1** (concrete job/scan failure if lower):  
- **Why not L+1** (no extra gain / density / wrong tool):  

**Middle path L2–L3 is first-class** — not a failed compromise. Prefer it before L4–L6 when color/weight/panels already fix the load risk.

## Simple alternative (required)

What is the **boring** floor if we refuse theater? (usually L0–L1)

- [ ] numbered / bulleted list  
- [ ] plain prose  
- [ ] 2-column table  
- [ ] existing library module pin-swap without new chrome  
- [ ] other:

**Why not only that floor** (or: we **stay at floor** — say so):

## Space budget (required — book density)

The monographic book is **dense** (tight type, multi-column, hundreds of pages). Graphics that spend a full page on few claims are a **process failure**.

- **Teaching gain vs next-lower intensity:** none | weak | clear | essential  
- **Max vertical budget (A4 body, approx):** ☐ ~⅛ page · ☐ ~¼ page · ☐ ~⅓ page · ☐ ~½ page · ☐ ≤1 page (exception, justify)  
- **Why this budget is earned**:  
- **If gain ≤ weak → step down one level** — do not ship higher intensity chrome  

**Hard rules:** Ambition must meet space budget. **Sparse sprawl is not Design CLEAN.** Higher L is not “better quality.”

## Form choice

- **Pattern name** (hypothesis, not form-id):  
- **Intensity level:** L_ (must match section above)  
- **Media-design reason** (2–4 sentences: hierarchy, contiguity, dual coding, segmenting, signaling, **density**…):  
- **Medical-pedagogy reason** (2–4 sentences: scan under time pressure, error class avoided, job of HP/learner…):  

## Reading order (scan path under time pressure)

1.  
2.  
3.  

## Atom table (every non-default visual decision)

| atom_id | element (color / arrow / zone / type / border / badge / grid / hub / peel / chain / …) | encodes for learner | media-design principle | medical-pedagogy reason | if removed, what breaks? | reject if… |
|---|---|---|---|---|---|---|
| A1 | | | | | | |
| A2 | | | | | | |

**Rules:** No color/arrow/chrome without a row. Color maps to meaning (urgency / emphasis / genre), never “variety”. Geometry (chain/hub/cycle) only if better than simple alternative. “Library module X” is not a justification.

## Must-see (from Form Spec)

1.  
2.  
3.  

## Anti-theater (rejected chrome)

| rejected idea | why rejected |
|---|---|
| | |

## Success criterion (observable)

How does a critic know this works?

## Risk of wrong form

What learner error does a bad form cause?

## Design Critic link

- **critique_path:** `domains/medical/briefs/<slug>.design-critique.md`
- **design_clean:** no | yes (only after DC status clean)
