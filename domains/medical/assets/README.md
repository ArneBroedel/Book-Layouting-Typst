# Domain medical assets (Produkt B)

Graphic **image files** for medical-didactic pilots (SVG preferred).  
Owned with domain media; split-ready with `domains/medical/`.

## Layout

```text
domains/medical/assets/<slug>/
  *.svg | *.png
  optional MANIFEST.md
```

`<slug>` matches brief/pilot id (e.g. `iii5-cauda-notfallkarte`).

## Rules

1. **SVG first**; raster only when needed.  
2. Print rasters: **≥ 300 dpi** at final size — `python3 scripts/check-image-dpi.py --paths domains/medical/assets`  
3. Every production asset: **license + alt** recorded in `*.graphics.md` Decision Note (or local MANIFEST).  
4. Prefer **hybrid**: form in asset, claims/labels in Typst.  
5. Process/skill: `domains/medical/skill/medical-graphics/`  

## Not here

- Content SoT (Produkt C)  
- Showcase-only demo SVGs may stay under `src/assets/`  
- Spike throwaways: `dist/spikes/graphics/` (promote here before production compose)
