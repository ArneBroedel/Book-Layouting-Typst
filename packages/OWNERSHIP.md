# Ownership — packages (Produkt A runtime)

| | |
|---|---|
| **Produkt** | **A** — Layout platform |
| **Tree** | `packages/` |
| **May change** | bookkit foundation, bookkit-didactics facet, package README/typst.toml |
| **Must not** | Import `domains/medical`, embed clinical content, free-vision / raster pipeline, host Astro/web app (Produkt **W** → `channels/web/`) |

## Packages

| Package | Role |
|---|---|
| `bookkit/` | Foundation: theme tokens, page/typography setup, generic blocks/tables/layouts/spreads |
| `bookkit-didactics/` | **Optional** medical-didactic boxes (learning-objectives, memo, cave, …). Facet only — foundation must compile without it |

## Dependency rules

| From → To | Allowed? |
|---|---|
| `packages/bookkit` → `domains/**` | **No** |
| `packages/bookkit-didactics` → `domains/**` | **No** (API only; content elsewhere) |
| Showcase `src/` → packages | Yes (re-export dogfood) |
| Domain Typst libs → packages/bookkit theme | Yes (read tokens) |

## Related

- Consumer guide: `docs/CONSUMER.md`
- Skill: `toolset/skill-pack/bookkit/`
- Boundaries: `devtracks/PRODUCT-BOUNDARIES.md`
