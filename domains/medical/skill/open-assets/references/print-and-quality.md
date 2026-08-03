# Print and quality — open-assets

## DPI rule of thumb

At **300 dpi** print:

```text
max_width_mm = (width_px / 300) * 25.4
```

| width_px | max_width_mm @300dpi |
|---|---|
| 180 | ~15 mm (icon-sized only) |
| 640 | ~54 mm (small column figure) |
| 1200 | ~102 mm |
| 2500 | ~212 mm (half page+) |

If the layout places the image **wider** than `max_print_width_mm`, either:

- shrink the figure, or  
- find higher resolution, or  
- reject for print production  

Screen PDF exploration may tolerate lower effective dpi; **production print** should not.

Script:

```bash
python3 domains/medical/skill/open-assets/scripts/print_size_check.py path/to/image.jpg
```

## Style fit

Open photos often break a pure Typst design system:

- Prefer **hybrid**: photo + typographic frame/caption in book colors  
- Avoid full-bleed stock chrome  
- Prefer consistent lighting/background within a chapter when possible  

Density: do not ship a sparse hero photo for a thin claim (space-budget doctrine from media-brief).

## Clinical quality

- Correct entity (site, stage, laterality if claimed)  
- Not a cartoon/placeholder mis-tagged as clinical  
- Mimics labeled  
- Caption does not over-claim diagnosis beyond pins  

## One mark per job

Multiple open photos of the same teaching job reduce clarity and waste space. Keep extras as `candidate` only.
