# Rollen & Ablauf (v0.2) — Kurzüberblick

Ausführlich: [`CONSENSUS-v0.md`](CONSENSUS-v0.md) · Grenzen: [`PRODUCT-BOUNDARIES.md`](PRODUCT-BOUNDARIES.md)

## Produkte

| ID | Produkt | Heimat |
|---|---|---|
| A | Layout-Plattform | **dieses Repo** (`packages/`, `toolset/`) |
| B | Domain-Media (Medizin) | `domains/medical/` → später eigenes Repo |
| C | Content | externes Werk-Repo (Kursbuch) |

## Rollen

| Rolle | Track / Ort | Tut | Tut nicht |
|---|---|---|---|
| **Autor** | C extern | Fachtext, Claims | Layout |
| **Media** | B `media-design` / `domains/medical/` | Freier Brief, Accept | Production-`.typ` |
| **Tech** | A `compose-pipeline` / `toolset/compose/` | Feasibility, Spike, Compose | Ideal kleinreden |
| **Validator** | A Script | Whitelist, Claims, Compile | Auto-Heal |
| **Katalog** | A core + B recipes | Forms / Rezepte | Media-Denkverbot |

## Ablauf

```text
C Content → B Media Brief → A Feasibility ↔ Spike → B Accept
         → A Compose → A Validate → PDF
```

Multi-root UX: `workspaces/kursbuch-layout.code-workspace`.
