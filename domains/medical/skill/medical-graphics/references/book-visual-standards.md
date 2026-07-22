# Book visual standards (Phase B2 refine / B1 recreate checklist)

**Load for:** prompt refine or technical recreate.  
**Do not load for:** Phase A free vision (would cage creativity).

## Palette (bookkit tokens)

| Role | Hex |
|---|---|
| Primary / teal | `#0d7377` |
| Primary dark | `#094f52` |
| Accent amber | `#d4a039` |
| Danger | `#dc2626` |
| Success | `#16a34a` |
| Warning | `#d97706` |
| Text body | `#1a1a1a` |
| Muted | `#555555` |
| BG subtle | `#f5f5f0` |

## Language & claims

- German only in production graphics (no English lane chrome).  
- No invented doses, cut-offs, ALS, anatomy “facts”.  
- Prefer claim-safe wording from Content C.  
- Hybrid: labels in Typst when possible.

## Layout / cognition

- One primary job per zone.  
- Urgency louder than sources.  
- Labels near referents (contiguity).  
- Order-critical steps look ordered.  
- Monitoring paths must show *ongoing* work (loop), not “done”.

## Production technical

- Prefer SVG / Typst over low-DPI raster for print.  
- Raster print: ≥ 300 dpi at final size (`scripts/check-image-dpi.py`).  
- Every figure: `alt` text.  
- Manifest: path, source (`ai-gen` + tool), license, role.

## What refine may fix

- Palette drift toward tokens  
- English leftovers  
- Loop/edge semantics (e.g. stabil stays on 4a)  
- Hierarchy / contrast  
- Footer claim accuracy  

## What refine must not do by default

- Attach existing SVG as “copy layout” (that is structure-transfer)  
- Rewrite Critical Claims
