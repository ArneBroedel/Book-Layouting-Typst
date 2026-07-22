# Assets — iii2-bls-aed (flow v4)

## Correct clinical flow (all variants)

```text
1 → 2 → 3 (Atmung normal? max. 10 s)
           ├─ ja ──────────────► 4a  Seitenlage · 112 · überwachen
           │                      ↻  stabil · weiter überwachen (Schleife)
           │                      ↘  Verschlechterung ──► 4b
           └─ nein / unsicher ───► 4b  112 · CPR · AED holen
                                      ↓
                                     5  CPR 30:2 / nur Kompressionen · AED
                                      ↓
                                     6  Bis Übergabe RD
```

**Invariants:** exactly two exits from 3; 5/6 only on CPR path after 4b; no 4a→5.

## Files

| file | role |
|---|---|
| `primar-algorithmus-base.svg` | hybrid-base vector v4 |
| `primar-algorithmus-full.svg` | asset-full vector v4 |
| `primar-algorithmus-raster-full.png` / `.jpg` | Imagine asset-full v4 |
| `primar-algorithmus-raster-base.png` / `.jpg` | Imagine hybrid-base v4 |
| `primar-algorithmus-raster-nanobanana.png` | Nano Banana **structure-referenced** (near SVG remake; 896×1200) |
| `primar-algorithmus-raster-nanobanana-free.png` | Nano Banana **free design** — content + didactic intent only; no asset layout template (896×1200) |
| `primar-algorithmus-raster-nanobanana-refined.png` | Nano Banana **B2 refine** of free (loop on 4a, minimale Pausen, book palette; 896×1200) |

Raster sources:

- Grok Imagine + edit — project-internal exploration  
- **Antigravity CLI (`agy`) + Nano Banana**  
  - referenced: `antigravity-nanobanana-brief.md` → `nanobanana-p1.png`  
  - free: `antigravity-nanobanana-free-brief.md` → `nanobanana-free-p1.png`

Print DPI at 150 mm width is typically &lt;300 for these AI rasters — screen/spike quality unless re-gen higher res.

Spikes: `toolset/compose/spikes/graphics/iii2-bls-aed/`  
**B1 recreate (Typst):** `lib/primar-algorithmus.typ` → `spike-recreate.typ` / `recreate-p1.png` · compare `compare-p1.png` · pilot embed `pilots/kursbuch-welle-03/chapters/iii2.typ`
