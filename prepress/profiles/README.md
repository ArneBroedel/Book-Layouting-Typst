# ICC profiles for the print pipeline

| File | Role | Origin |
|---|---|---|
| `default_cmyk.icc` | PDF/X OutputIntent (CMYK) | Ghostscript / Artifex SWOP-class profile (`iccprofiles/default_cmyk.icc`, AGPL) |
| `srgb.icc` | Source RGB reference | Ghostscript bundled sRGB |

## Production recommendation

European sheetfed offset usually expects **FOGRA39 / ISOcoated_v2_eci** (or FOGRA51/52 for newer stocks), not SWOP. Those ECI profiles are free for use but are **not redistributed in this repo** (download size / source-of-truth).

To use a press-accurate profile:

1. Download e.g. `ISOcoated_v2_300_eci.icc` from [eci.org](https://www.eci.org/).
2. Place it in this directory.
3. Run: `./scripts/print-pdfx.sh dist/book-print-rgb.pdf dist/book-print.pdf --profile prepress/profiles/ISOcoated_v2_300_eci.icc`

The build mode `print` defaults to `default_cmyk.icc` so the pipeline is self-contained for CI and local smoke tests.
