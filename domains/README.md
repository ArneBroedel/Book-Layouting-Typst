# domains/ — companion products (not foundation)

Specializations **above** the layout platform (Produkt **A**).  
Candidates for physical extract (workspace-split Phase 3, trigger-only).

| Ordner | Produkt | Inhalt |
|---|---|---|
| `medical/` | **B** — Domain media | recipes, gold briefs, assets, media-brief + medical-graphics skills, harvested Typst libs (`lib/typst/`) |
| `content-maturity/` | **C** — editorial process kit | content-review / content-orchestrator skills, freeze/proof templates (no chapter SoT) |

## Rules

1. **New medical-specific logic** → `domains/medical/` (not `packages/bookkit`).  
2. **Generic layout / validate / catalog** → `packages/` / `toolset/`.  
3. **Real Kursbuch content** stays **external** (Produkt C works); never SoT under `domains/`.  
4. Skills SoT live under each domain; discovery symlinks under `.github/skills/`, `.grok/skills/` only.

## Ownership

- `medical/OWNERSHIP.md`
- `content-maturity/OWNERSHIP.md`

## Related

- `devtracks/PRODUCT-BOUNDARIES.md`
- `devtracks/workspace-split/` (modular monorepo; split deferred)
