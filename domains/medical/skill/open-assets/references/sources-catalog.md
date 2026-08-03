# Sources catalog — open-assets

**Always verify license on the individual file.** Entries are starting points, not blanket clearance.

## Search order (default)

| # | Source | Best for | Notes |
|---|---|---|---|
| 0 | Internal `domains/medical/assets/` | Reuse | Prefer accepted MANIFEST rows |
| 0b | Font Awesome 6 (project stack) | UI icons | Project credits; not clinical photo |
| 1 | [Health Icons](https://healthicons.org/) | Medical UI pictograms | **CC0**; commercial OK |
| 2 | [CDC PHIL](https://phil.cdc.gov/) | Public health / clinical photos | **Mostly** PD; **not all** — check copyright line |
| 2b | [NCI Visuals Online](https://visualsonline.cancer.gov/) | Cancer / clinical | Many HHS PD; check page |
| 2c | [HHS galleries](https://www.hhs.gov/branding/galleries/index.html) | Agency images | Often PD; verify |
| 3 | [Open-i](https://openi.nlm.nih.gov/) | OA paper figures | **Searcher only** — license on original PMC/figure |
| 4 | [Wikimedia Commons](https://commons.wikimedia.org/) | Broad clinical / historical | Per-file CC/PD; prefer BY/PD over SA |
| 5 | [Servier Medical Art](https://smart.servier.com/) | Anatomy / cell vectors | **CC BY 4.0** (confirm current terms); attribution |
| 6 | Paid stock (Adobe/iStock/Shutterstock/…) | High-control commercial | **Commercial** license; avoid Editorial-only |
| 7 | Controlled gen / Typst | When open fails | Log gap; do not fake provenance |

## Wikimedia Commons tips

- Filter by license in UI; confirm on **File:** page  
- API: `action=query&prop=imageinfo&iiprop=extmetadata`  
- Commons rejects pure NC uploads in policy — still re-read tags  
- Prefer `CC BY` / `CC0` / `Public domain` over `CC BY-SA` for hybrid books  
- Download original file, not only thumb  

Example queries:

```text
gout podagra
melanoma clinical
urticaria hives
angioedema face
seborrheic keratosis
```

## CDC PHIL tips

- Most images royalty-free with credit to CDC/photographer  
- Some third-party copyrighted — **read under image**  
- Prefer official PHIL detail page in provenance  

## Open-i / PMC tips

- Filter license type when available (Attribution vs NC)  
- Follow through to article license (CC BY vs CC BY-NC)  
- Journal figure may have separate constraints  

## Servier SMART

- Strong for **schemas** / vectors, not realistic clinic photos  
- Confirm [using-smart terms](https://smart.servier.com/) still CC BY 4.0  
- Attribution required  

## Health Icons

- https://healthicons.org/ — CC0  
- GitHub: resolvetosavelives/healthicons  
- Prefer one stroke style across a chapter  

## Paid stock (Plan B)

| Need | Do |
|---|---|
| Commercial textbook interior | License that allows **book / print / distribution** |
| Editorial-only | Default **reject** for saleable book |
| Model release | Prefer assets marked with release for recognizable people |
| Keep | Invoice + license PDF + asset id in MANIFEST |

## Avoid as clinical SoT

| Source | Why |
|---|---|
| Unsplash / Pexels / Pixabay | Tags unreliable; model/trademark caveats; not clinical SoT |
| Google Images without license filter | No rights |
| Social (X, Instagram, TikTok) | No clearance |
| App / guideline screenshots | Usually restricted |
| Random “free medical images” blogs | Often laundered rights |

## Query design

| Goal | Technique |
|---|---|
| Precision | EN clinical term + body site (`gout tophi foot`) |
| License in query | `CC BY`, `public domain` (weak filter — still verify) |
| Site-limited | `site:commons.wikimedia.org`, `site:phil.cdc.gov` |
| Avoid | beauty stock, “pain concept”, smiling patients as disease |

## German / EU book note

- Prefer explicit licenses over US fair use theory  
- Personality rights and health sensitivity remain even if CC is green  
- Keep credits in German book via short caption + full Nachweis  
