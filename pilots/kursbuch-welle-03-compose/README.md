# Kursbuch pilot compose — Wave 4 (III-5)

Production-compose consumer of platform **A** (`packages/bookkit` +
`bookkit-didactics`) after Media Accept. Clinical content remains **external**
(Produkt **C** — Kursbuch staging); this tree holds layout only.

## Content source (read-only)

```
/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/
```

## Brief chain (III-5)

| Artifact | Path |
|---|---|
| Brief | `domains/medical/briefs/iii5-cauda-notfallkarte.brief.md` |
| Feasibility | `domains/medical/briefs/iii5-cauda-notfallkarte.feasibility.md` |
| Accept | `domains/medical/briefs/iii5-cauda-notfallkarte.accept.md` |
| Chapter | `chapters/iii5.typ` |

## Build

From studio root:

```bash
typst compile --root . --ignore-system-fonts --font-path fonts \
  pilots/kursbuch-welle-03-compose/main.typ \
  dist/pilots/iii5-compose.pdf
```

Or via bookkit CLI:

```bash
./scripts/bookkit build --entry pilots/kursbuch-welle-03-compose/main.typ \
  --out dist/pilots/iii5-compose.pdf
```

## Notes

- **Consumer / dogfood only** — layout under platform **A**; not a promote into Kursbuch `book/`.
- **Content path external (Produkt C)** — do not clone content SoT into this repo.
- Wave-2 accept under the same brief path was a fictive shape-demo; Wave-4 accept supersedes it and authorizes compose.
- S4 uses named approx for planned `protocol-steps` (gap remains visible).

## Product boundary

See `devtracks/PRODUCT-BOUNDARIES.md`. Platform consumer guide: `docs/CONSUMER.md`.
