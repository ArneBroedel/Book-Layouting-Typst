# Ownership — Web layout channel (Produkt W)

| | |
|---|---|
| **Produkt** | **W** — Web-Layout |
| **Heute** | Isolated Astro **PoC** under `channels/web/` |
| **Ziel** | Sibling repo *or* grow this tree; never mix into bookkit |
| **Stack** | Astro + HTML/CSS; **not** Typst / bookkit runtime |

## May change (here)

- Astro project, routes, styles  
- Web-only chrome (nav, progressive disclosure)  
- Pin loader that reads `pins/*/release.yaml`  
- Channel-local derivatives with provenance to B MANIFEST  

## Must not

- Store Kursbuch chapter Markdown as **SoT** (that is **C**) — pins are snapshots  
- Become second SoT for medical assets/rights (that is **B**)  
- Import `packages/bookkit` or showcase `src/chapters`  
- Live under `packages/bookkit`  
- Claim Print Accept or Visual CLEAN authority  
- Add Node tooling at the monorepo root  

## Pins / contracts imported

| From | What |
|---|---|
| **C** | `content_revision` (`git:…` \| `sha256:…`) after Human Freeze |
| **B** | Accept `channel_scope` includes `web` or `both` |
| **contracts/** | Chapter release package in each `pins/<id>/release.yaml` |

## Production sequence

```text
C Freeze → B Accept (channel_scope: web|both) → snapshot into pins/ → W build → C Proof (web)
```

```bash
./scripts/bookkit boundaries check-release channels/web/pins/<id>/release.yaml --check-paths
```
