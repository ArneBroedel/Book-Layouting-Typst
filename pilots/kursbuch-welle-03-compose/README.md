# Kursbuch pilot compose — III-5 + III-2

Production-compose **consumer** of platform **A** (`packages/bookkit` +
`bookkit-didactics`) after Media Accept. Clinical content remains **external**
(Produkt **C** — Kursbuch staging); this tree holds layout only.

**Catalog pin:** `0.1.0` (`toolset/form-catalog/VERSION`).  
**Consumer guide:** [`docs/CONSUMER.md`](../../docs/CONSUMER.md).

## Content source (read-only, Produkt C)

```
/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/
```

Do **not** copy content SoT into this repo.

## Chapters

| Chapter | Brief chain | Compose |
|---|---|---|
| **III-5** Cauda | `domains/medical/briefs/iii5-cauda-notfallkarte.{brief,feasibility,accept}.md` | `chapters/iii5.typ` |
| **III-2** BLS/AED | `domains/medical/briefs/iii2-bls-aed.{brief,feasibility,accept}.md` | `chapters/iii2.typ` |

## Build

From studio root:

```bash
typst compile --root . --ignore-system-fonts --font-path fonts \
  pilots/kursbuch-welle-03-compose/main.typ \
  dist/pilots/compose-iii5-iii2.pdf
```

Validate one chapter:

```bash
python3 toolset/compose/scripts/run_validate.py \
  --typ pilots/kursbuch-welle-03-compose/chapters/iii2.typ \
  --content /path/to/Kursbuch5/.../chapter-iii2-bls-aed-notfallprozeduren.md \
  --catalog toolset/form-catalog/core/forms.yaml \
  --accept domains/medical/briefs/iii2-bls-aed.accept.md \
  --genre-minima domains/medical/recipes/notfall-karte.minima.yaml \
  --root . --font-path fonts
```

## Reports

- `reports/e2e-iii5-2026-07-20.md`
- `reports/e2e-iii2-2026-07-20.md`

## Notes

- Dogfood only — not a promote into Kursbuch `book/`.
- Both chapters use stable **`protocol-steps`** for ordered action sequences.
- Genre minima: `domains/medical/recipes/notfall-karte.minima.yaml`.

## Product boundary

See `devtracks/PRODUCT-BOUNDARIES.md`.
