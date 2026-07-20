# Kursbuch pilot layout — Welle 2026-07-welle-03-final-10

Layout-only consumer of the **bookkit** toolset. Clinical Markdown sources remain
read-only under the Kursbuch repo:

`/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10`

## Build

```bash
# From studio root
python3 pilots/kursbuch-welle-03/convert_md_to_typ.py
./scripts/bookkit build --entry pilots/kursbuch-welle-03/main.typ \
  --out dist/kursbuch-pilot/kursbuch-welle-03.pdf

# All chapter PDFs + combined
./pilots/kursbuch-welle-03/build-all.sh
```

## Outputs

| Artifact | Path |
|---|---|
| Combined product | `dist/kursbuch-pilot/kursbuch-welle-03.pdf` |
| Per-chapter PDFs | `dist/kursbuch-pilot/chapters/{slug}.pdf` |
| Chapter map | `CHAPTER-MAP.md` |

## Notes

- Not a promote into Kursbuch `book/`.
- “Druckfertig” here = layout-complete, reproducible print PDFs with didactic structure — not PDF-X/bleed (`prepress-pdfx`).

## Product boundary note

This pilot is a **consumer/dogfood** of platform A + (future) domain B.  
**Content SoT** remains the Kursbuch staging path (Produkt C), not files under `src/`.  
See `devtracks/PRODUCT-BOUNDARIES.md`.
