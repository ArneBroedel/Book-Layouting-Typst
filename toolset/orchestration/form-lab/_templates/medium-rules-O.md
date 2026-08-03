# Medium rules — Pass O (Open Asset)

**Role:** Critic + Builder allow/deny for the **open-asset pilot** (not production default).  
**Skill:** `open-assets` (`domains/medical/skill/open-assets/SKILL.md`)  
**Policy:** `domains/medical/OPEN-ASSET-POLICY.md`

## Intent

Maximize teaching from **externally licensed open visuals** (photos, icons, vectors) under commercial-book-safe licenses. Typst owns structure, German labels, TIME chrome, credits.

## ALLOW

- Embedded rasters/SVGs with MANIFEST `status=accepted`  
- Health Icons / FA6 as open/icon stack  
- Hybrid: image + Typst caption/labels **beside or under** (not painted into foreign SA/ND files)  
- Compact credits under each figure + chapter CREDITS rollup  
- Explicit `[open-gap]` panel when scan failed (honest)

## DENY (as primary mark)

- New AI free-vision / refine gens for this pass  
- Invented clinical photo lookalikes without provenance  
- NC / ND / Editorial / unlicensed web grabs  
- Unsplash/Pexels as clinical core  
- Decorative stock that fails density / style fit  
- Claim text only inside raster without Typst duplicate of pins  

## Critic checklist (each craft round)

1. Every figure has MANIFEST accepted row + credit line  
2. License traffic light respected  
3. Pins jobs still teachable (caption-free where photo is the mark)  
4. No false clinical entity (e.g. Bell as “stroke proof”) without labeling as mimic  
5. Page density: no full-page hero for thin job  
6. Semantic Read: photo alone does not invent thresholds  

## Exhaustion / residual

Document: which jobs **cannot** be served by open archives (ethics, rarity, license) → residual for code/gen in other passes.
