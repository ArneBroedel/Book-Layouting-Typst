# Asset pipeline

## Paths

| Class | Path |
|---|---|
| Domain pilots (B) | `domains/medical/assets/<slug>/` |
| Studio showcase | `src/assets/<topic>/` |
| Spike intermediates | `dist/spikes/graphics/<slug>/` (usually gitignored) |
| External consumer | consumer `assets/` + compose header pin |

Prefer one slug folder per chapter/pilot graphic set. Co-locate a short `MANIFEST.md` or rows in `*.graphics.md`.

## Format policy

1. **SVG first** — scalable, reproducible, print-friendly.  
2. **Raster** (PNG/JPEG) only when needed; print target **≥ 300 dpi** at final size.  
3. Preflight: `python3 scripts/check-image-dpi.py --paths domains/medical/assets`  
4. Every production figure needs **`alt`** text (PDF/UA).  

## Manifest fields (required per production asset)

| Field | Example |
|---|---|
| `path` | `domains/medical/assets/iii5/gatekeeper-icon.svg` |
| `format` | svg / png |
| `source` | hand / inkscape / ai-gen / open-license URL |
| `license` | CC0 / project-internal / … |
| `alt` | German short description for accessibility |
| `role` | main | hybrid-base | icon |
| `print_ok` | yes / dpi-checked / n/a (vector) |

## Embed (Tech compose)

Use bookkit/showcase figure helpers when available (`plate`, `wrap-figure`, `anatomie-figur`, …) or native `figure(image(...), alt: ..., caption: ...)`.

Image paths: root-absolute when helpers resolve from package/component files (e.g. `/domains/medical/assets/...` or `/src/assets/...` depending on consumer root).

## Hybrid layout pattern

```text
#image(asset)  +  Typst text/legend/pins on top or beside
```

Never put Critical Claim-only information solely inside a non-text raster without a Typst duplicate if claims validation must see them in the chapter text stream (claims copy-through rules still apply to body text).

## Promote path

Exploration/spike assets may live under `dist/spikes/…`. Before production compose: copy/promote into `domains/medical/assets/<slug>/` (or consumer assets), update Decision Note paths, re-run DPI check.
