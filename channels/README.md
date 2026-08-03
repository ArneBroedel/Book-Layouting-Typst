# channels/ — presentation shells (not content, not media SoT)

Print layout lives in **Produkt A** (`packages/`, `toolset/`, showcase `src/`).  
Additional **presentation channels** that consume the same **C** freeze pin and **B** accepted assets live here (or in a sibling repo — see PRODUCT-BOUNDARIES).

| Path | Produkt | Status |
|---|---|---|
| *(this monorepo core)* | **A** Print (Typst) | implemented |
| `web/` | **W** Web (Astro o. ä.) | **scaffold only** — no runtime yet |

## Rules

1. Channels **consume** `content_revision` + accepted asset IDs; they do **not** own chapter prose or B asset SoT.  
2. Do **not** put Astro/web app code under `packages/bookkit`.  
3. Derivatives (WebP, resized PNG) may live under the channel build output with **provenance** back to B MANIFEST.  
4. Production gate: Freeze (C) → Accept with matching `channel_scope` (B) → channel build (A and/or W).  
5. Shared contract: `contracts/` + `bookkit boundaries check-release`.

## Related

- [`devtracks/PRODUCT-BOUNDARIES.md`](../devtracks/PRODUCT-BOUNDARIES.md)  
- [`contracts/README.md`](../contracts/README.md)  
- [`workspaces/`](../workspaces/) multi-root UX  
