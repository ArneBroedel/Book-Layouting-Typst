# domains/ — companion products (not foundation)

Specializations **above** the print layout platform (Produkt **A**).  
Full map: [`devtracks/PRODUCT-BOUNDARIES.md`](../devtracks/PRODUCT-BOUNDARIES.md) v0.3 (C/B/A + Web **W**).  
Candidates for physical extract (deferred; checklist `devtracks/_archive/workspace-split/phase3-split.md`, trigger-only D2).

| Ordner | Produkt | Inhalt |
|---|---|---|
| `medical/` | **B** — Domain media | recipes, gold briefs, assets, media-brief + medical-graphics + open-assets skills, harvested Typst libs (`lib/typst/`) |
| `content-maturity/` | **C** — editorial process kit | content-review / content-orchestrator skills, freeze/proof templates (no chapter SoT) |

Presentation channels (**A** print core, **W** web scaffold) are **not** under `domains/` — see [`channels/`](../channels/) and packages/toolset for A.

## Rules

1. **New medical-specific logic** → `domains/medical/` (not `packages/bookkit`).  
2. **Generic layout / validate / catalog** → `packages/` / `toolset/`.  
3. **Real Kursbuch content** stays **external** (Produkt C works); never SoT under `domains/`.  
4. Skills SoT live under each domain; discovery symlinks under `.github/skills/`, `.grok/skills/` only.  
5. **Shared contracts** (release package) live under [`contracts/`](../contracts/), not inside domain trees.

## Ownership

- `medical/OWNERSHIP.md`
- `content-maturity/OWNERSHIP.md`

## Related

- `devtracks/PRODUCT-BOUNDARIES.md`
- `contracts/README.md` · `./scripts/bookkit boundaries check-tree`
- `channels/web/` (Produkt W scaffold)
- `devtracks/_archive/workspace-split/` (modular monorepo delivered; physical split deferred)
