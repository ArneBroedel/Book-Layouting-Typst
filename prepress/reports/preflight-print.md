# Print preflight report

Generated: 2026-07-19T15:05:45+02:00
PDF: `dist/book-print.pdf`

## 1. Image DPI (src/assets)


See also `prepress/reports/image-dpi.md`.

## 2. PDF presence

- **OK** — `dist/book-print.pdf` (24002797 bytes)

## 3. PDF structure smoke checks

- **OK** — page boxes (TrimBox/BleedBox/CropBox) present in PDF stream
- **OK** — PDF/X identifier (GTS_PDFX / PDF/X) found
- **OK** — OutputIntent / DestOutputProfile markers present
- **OK** — CMYK markers present

## 4. Standards map (this project)

| Deliverable | Standard | How |
|---|---|---|
| `dist/book.pdf` | Screen RGB (tagged) | `./scripts/build.sh fast` |
| `dist/book-ua.pdf` | PDF/UA-1 | `./scripts/build.sh ua` |
| `dist/book-print.pdf` | PDF/X-3 (CMYK) + 3 mm bleed + crop marks | `./scripts/build.sh print` |
| PDF/A archival | not produced here | Typst `--pdf-standard a-2b` / `a-2a` if needed |

PDF/UA (accessibility) and PDF/X (print) are **independent**. Combining them in one file is possible in theory but not required by this track.

## 5. Spot colours

Typst 0.15 supports `color.spot("PANTONE …", fallback)` natively. This showcase uses process RGB tokens + GS CMYK conversion — **no spot plates**. For a brand spot, define it with `color.spot` and coordinate the plate name with the printer; do **not** run that separation through a blind RGB→CMYK convert.
