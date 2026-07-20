# Phase 0 — Architecture decisions (prepress-pdfx)

Status: **decided** (2026-07-19). Typst 0.15.0.

## Capability matrix (Typst 0.15)

| Feature | Native? | Notes |
|---|---|---|
| `page(bleed:)` + PDF `TrimBox` | **Yes** | Single length or sides dict; bg/fg `%` includes bleed |
| Crop / registration marks | **DIY** | No built-in marks; draw in `page(foreground:)` |
| `cmyk()` process colours | **Yes** | Device CMYK; not for PDF/A |
| `color.spot` separations | **Yes** | Name + RGB fallback + `.tint()`; printer-coordinated |
| ICC embedding / OutputIntent | **No** | Not exposed for PDF/X |
| `--pdf-standard x-3` / `x-4` | **No** | Flags: PDF 1.4–2.0, `a-*`, `ua-1` only |
| PDF/UA-1 | **Yes** | `--pdf-standard ua-1` (independent of print) |

## Decisions

1. **Bleed & marks = native Typst**  
   `packages/bookkit/print.typ` gates on `--input print=true`.  
   `setup-pages`, cover, `full-bleed`, `art-page` set `bleed: 3mm` + crop-mark foreground.

2. **Colour strategy = RGB tokens + GS CMYK convert**  
   Design system stays RGB for screen/UA. Print pipeline converts DeviceRGB→DeviceCMYK
   with an ICC OutputIntent. No dual-token CMYK palette (would diverge screen/print).

3. **PDF/X target = PDF/X-3:2003 via Ghostscript**  
   Best open-source path (`PDFX_def.ps`, `-dPDFX=3`). PDF/X-4 optional (`--pdfx 4`);
   certified X-4 still best with commercial preflight. X-1a not required.

4. **Annotations stripped in post-step**  
   Typst link annotations force GS to leave PDF/X mode unless `-dPreserveAnnots=false`.

5. **Default ICC = bundled Artifex `default_cmyk.icc` (SWOP-class)**  
   Self-contained for CI/smoke. Production EU: swap FOGRA39/ISOcoated_v2 (documented,
   not redistributed).

6. **Spot colours = available, not used in showcase**  
   Document `color.spot`; process-only book. Never GS-convert a spot plate.

7. **Independence from typst-toolset**  
   Prepress is showcase-output. bookkit hosts `print.typ` as shared page geometry;
   toolset CLI may later call `print` mode. No MVP dependency either way.

## Acceptance evidence

- `dist/book-print-rgb.pdf` — TrimBox on all pages; MediaBox = trim + 2×3 mm  
- `dist/book-print.pdf` — `GTS_PDFXVersion(PDF/X-3:2003)`, OutputIntent, DeviceCMYK  
- `prepress/reports/preflight-print.md`, `image-dpi.md`  
- Crop marks visible when rendering MediaBox (GS PNG of cover)
