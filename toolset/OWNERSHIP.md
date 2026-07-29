# Ownership — toolset (Produkt A)

| | |
|---|---|
| **Produkt** | **A** — Layout platform |
| **Tree** | `toolset/` |
| **May change** | compose engine, form-catalog core, starter, skill-pack (platform skills), examples, tests, orchestration board helpers |
| **Must not** | Medical content SoT, domain free-vision policy, clinical claims, Kursbuch chapter Markdown |
| **Primary CLI** | `./scripts/bookkit` (repo root) — build, validate, catalog, prepress, graphics wrappers |

## Dependency rules

| From → To | Allowed? |
|---|---|
| toolset/compose → `domains/medical` | **No** hardcoded; only caller-supplied paths |
| toolset/form-catalog core → medical recipes | **No** (genre minima via CLI path) |
| skill-pack (A) → packages/bookkit | Yes (document API) |
| skill-pack (A) → medical skill SoT | Link only; do not fork |

## Subtrees

| Path | Role |
|---|---|
| `compose/` | Validate engine + spikes (spikes may dogfood B assets) |
| `form-catalog/` | Generic form whitelist pin (`VERSION`) |
| `starter/` | `bookkit init` template |
| `skill-pack/` | Platform skills SoT (bookkit, compose-chapter, orchestrator) |
| `examples/` | Synthetic A-only smoke consumers |
| `tests/` | Shell + integration smokes |

## Related

- `packages/OWNERSHIP.md` — foundation packages  
- `domains/medical/OWNERSHIP.md` — Produkt B  
- `devtracks/PRODUCT-BOUNDARIES.md`
