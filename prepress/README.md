# Prepress / PDF/X pipeline

Brings the showcase book from screen-ready RGB to a **print-ready PDF** with
3 mm bleed, crop marks, CMYK process colours, and a PDF/X OutputIntent.

## Quick start

```bash
# Full pipeline → dist/book-print.pdf  (needs ghostscript on PATH)
./scripts/build.sh print

# Intermediate only (RGB + bleed + marks, no GS)
./scripts/build.sh print-rgb

# Post-step alone (after print-rgb)
./scripts/print-pdfx.sh dist/book-print-rgb.pdf dist/book-print.pdf

# Optional: press-accurate FOGRA39 profile
./scripts/print-pdfx.sh dist/book-print-rgb.pdf dist/book-print.pdf \
  --profile prepress/profiles/ISOcoated_v2_300_eci.icc

# Preflight report
./scripts/preflight-print.sh dist/book-print.pdf
python3 scripts/check-image-dpi.py
```

Windows: `scripts/build.ps1 -Mode print` and `scripts/print-pdfx.ps1`.

## Architecture

| Layer | What | Where |
|---|---|---|
| **Bleed + Schnittmarken** | Native Typst `page(bleed: 3mm)` + `foreground` crop marks | `packages/bookkit/print.typ`, wired in `page.typ` / cover / full-bleed / art-page |
| **Print mode switch** | `--input print=true` → `sys.inputs.print` | `print-mode` in `print.typ` |
| **RGB design tokens** | Unchanged (screen + UA stay RGB) | `theme.typ` |
| **CMYK + PDF/X** | Ghostscript post-step | `scripts/print-pdfx.sh` + `PDFX_def.ps` |
| **ICC OutputIntent** | Free Artifex SWOP-class default | `profiles/default_cmyk.icc` (swap for FOGRA39 in production) |
| **Image DPI preflight** | ≥ 300 dpi rule for future rasters | `scripts/check-image-dpi.py` |

### Why not native PDF/X?

Typst 0.15 `--pdf-standard` supports PDF version pins, PDF/A (`a-*`), and PDF/UA-1
(`ua-1`). **There is no `x-3` / `x-4` flag.** Bleed and `cmyk()` / `color.spot` *are*
native; the press package (CMYK OutputIntent + PDF/X metadata) is therefore a
documented Ghostscript post-step.

### PDF/X-3 (chosen) vs PDF/X-4 / X-1a

| Target | Verdict |
|---|---|
| **PDF/X-3:2003** | **Default.** Best-supported open-source path via Ghostscript `PDFX_def.ps`; ICC-based CMYK; broad press acceptance. |
| PDF/X-4 | Desirable (live transparency). Try `--pdfx 4`; commercial tools (callas, Acrobat) remain the gold standard for certified X-4. |
| PDF/X-1a | Requires flattened CMYK-only; stricter; not needed for this showcase. |

Pass `--pdfx 4` to `print-pdfx.sh` to experiment with X-4.

### Annotations

Typst emits link annotations (TOC, cross-refs). PDF/X forbids ordinary annotations.
The post-step sets `-dPreserveAnnots=false` so Ghostscript stays in PDF/X mode
instead of silently reverting to a normal PDF.

## Standards map

| Deliverable | Standard | Command |
|---|---|---|
| `dist/book.pdf` | Screen RGB (tagged) | `./scripts/build.sh fast` |
| `dist/book-ua.pdf` | PDF/UA-1 | `./scripts/build.sh ua` |
| `dist/book-print-rgb.pdf` | RGB + 3 mm bleed + crop marks + TrimBox | `./scripts/build.sh print-rgb` |
| `dist/book-print.pdf` | PDF/X-3 CMYK (post-step) | `./scripts/build.sh print` |
| PDF/A | Not produced here | Typst `--pdf-standard a-2b` / `a-2a` if needed |

PDF/UA and PDF/X are **independent** concerns.

## Spot colours

Typst 0.15: `color.spot("PANTONE 2221 C", rgb("#…")).tint(100%)`.

This book uses **process colours only** (RGB tokens → GS CMYK). Spot plates need
printer coordination and must **not** be pushed through a blind RGB→CMYK convert.

## Dependencies

- **Typst 0.15+** (bleed, TrimBox)
- **Ghostscript** (`gs` / `gswin64c`) for the PDF/X post-step
- Python 3 for `check-image-dpi.py` (stdlib only; Pillow optional for TIFF/WebP)

## Known limitations

- Ghostscript may log `error in pattern` / token repairs on complex Typst tilings;
  output still carries PDF/X markers — verify critical pages visually.
- TrimBox is written by Typst; GS may rewrite boxes. Visual crop marks remain the
  reliable trim guide for the press.
- Default ICC is SWOP-class; EU sheetfed should use FOGRA39/ISOcoated_v2 (see
  `profiles/README.md`).
- PNG/SVG export from Typst does **not** show the bleed area; inspect MediaBox via
  Acrobat/GS when checking marks.

## Layout contract for full-bleed pages

Body `width: 100%` fills the **trim** only. To paint into the bleed, put the fill in
`page(background: …)` — relative lengths in background/foreground resolve against
page size **including** bleed. Cover, `full-bleed`, and `art-page` follow this rule
when `print=true`.
