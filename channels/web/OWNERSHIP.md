# Ownership — Web layout channel (Produkt W)

| | |
|---|---|
| **Produkt** | **W** — Web-Layout |
| **Heute** | Scaffold under `channels/web/` in the layout monorepo |
| **Ziel** | Sibling repo (e.g. `kursbuch-web`) **or** grow this tree when Web pilot starts |
| **Stack (intent)** | Astro + HTML/CSS (or equivalent); **not** Typst/bookkit runtime |

## May change (here)

- Astro project scaffold, components, routes, styles  
- Web-only presentation chrome (nav, progressive disclosure)  
- Build config that **pins** `content_revision` + B asset release  
- Channel-local derivatives with provenance to B MANIFEST  

## Must not

- Store Kursbuch chapter Markdown as **SoT** (that is **C**)  
- Become second SoT for medical assets/rights (that is **B**)  
- Import or embed clinical claims rewrites  
- Live under `packages/bookkit` foundation  
- Claim Print Accept or Visual CLEAN authority  

## Pins / contracts imported

| From | What |
|---|---|
| **C** | `content_revision` (`git:…` \| `sha256:…`) after Human Freeze |
| **B** | accepted asset IDs + MANIFEST/license sidecars; Accept `channel_scope` includes `web` or `both` |
| **contracts/** | Chapter release package (`schema_version: "1"`) |

## Production sequence

```text
C Freeze → B Accept (channel_scope: web|both) → W build → C Proof (web)
```

Validate release package:

```bash
./scripts/bookkit boundaries check-release path/to/chapter.release.yaml
```

## Related

- `devtracks/PRODUCT-BOUNDARIES.md` (ADR 50–59, 56)  
- `channels/README.md`  
- `contracts/templates/chapter-release.template.yaml`  
