# Multi-root workspaces (UX only)

These files help open the product roots side by side. They are **not** a fifth product:
no business logic, no source of truth.

Policy: [`devtracks/PRODUCT-BOUNDARIES.md`](../devtracks/PRODUCT-BOUNDARIES.md) v0.3.

| File | Folders |
|---|---|
| `kursbuch-layout.code-workspace` | **A** repo root · **B** `domains/medical` · **C** Kursbuch5 sibling · **W** `channels/web` scaffold |

## Roots

| Name | Produkt | Path (default) |
|---|---|---|
| A — Print layout platform | **A** | this repo (`..` from `workspaces/`) |
| B — Media & assets | **B** | `../domains/medical` (same clone until B-split) |
| C — Kursbuch content | **C** | `../../Kursbuch5` (adjust if your clone differs) |
| W — Web layout (scaffold) | **W** | `../channels/web` |

When B or W move to sibling repos, update the `path` entries only — contracts stay in `contracts/` + `bookkit boundaries`.

## Related CLI

```bash
./scripts/bookkit boundaries check-tree
./scripts/bookkit boundaries check-release contracts/fixtures/pass_print_minimal.yaml
```
