# Produkt W — Web layout (scaffold)

**Status:** Grenzvertrag implemented; **Astro app not started**.

This directory is the reserved home for the **web presentation channel** so task separation is structural, not only documentary:

| Concern | Owner |
|---|---|
| Fachtext / Freeze | **C** (external content repo) |
| Brief, assets, Accept | **B** (`domains/medical/`) |
| Print PDF | **A** (`packages/`, `toolset/`) |
| Web site | **W** (this tree or sibling repo) |

## When starting the pilot

1. Pin a frozen `content_revision` from C.  
2. Require Media Accept with `channel_scope: web` or `both`.  
3. Reference B assets by slug (no silent copy without provenance).  
4. Fill a chapter release package from `contracts/templates/chapter-release.template.yaml`.  
5. Validate: `./scripts/bookkit boundaries check-release …`.  
6. Scaffold Astro **here** or in a sibling repo; update `workspaces/kursbuch-layout.code-workspace` with a **W** root if separate checkout.

## Do not

- Put the web app under `packages/bookkit`  
- Fork content into this tree as SoT  
- Treat showcase `src/chapters` as Kursbuch content  

See `OWNERSHIP.md` and `devtracks/PRODUCT-BOUNDARIES.md`.  
