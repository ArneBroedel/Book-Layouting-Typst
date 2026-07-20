# Plan: Form Catalog

Siehe [spec.md](spec.md), [`../CONSENSUS-v0.md`](../CONSENSUS-v0.md) v0.2, [`../PRODUCT-BOUNDARIES.md`](../PRODUCT-BOUNDARIES.md).  
Status: **geplant / Scaffold da**. **Track 1 — Shared spine (Produkt A core).**  
**Orchestrierung:** [`../ORCHESTRATION.md`](../ORCHESTRATION.md) → **Wave 1**.

**Pfade:**

| Was | Wo |
|---|---|
| Core forms + VERSION | `toolset/form-catalog/core/`, `toolset/form-catalog/VERSION` |
| Allowed basis | `toolset/form-catalog/core/BASIS.md` |
| Medical genre recipes | `domains/medical/recipes/` (Produkt B) — **nicht** in core vermischen |

Stub `forms.yaml` already seeded — expand, do not invent parallel catalogs.

## Phasen

### Phase 0 — Boundaries (done with platform-boundaries)
- [x] Core path vs domain recipes path documented
- [x] Seed `forms.yaml` + VERSION

### Phase 1 — Inventar & Kuration (core)
- [x] Complete public API list from bookkit + bookkit-didactics
- [x] Fill `forms.yaml` (purpose, api, package, status) for ≥12 stable
- [x] Document mini-basis (BASIS.md refine)
- [x] planned entries for known gaps (e.g. protocol-steps)

### Phase 2 — Recipes & anti-patterns
- [x] Expand `domains/medical/recipes/notfall-karte.md` + validator minima YAML if needed
- [x] Stubs for other medical genres under `domains/medical/recipes/`
- [x] Anti-patterns file (core or domain — domain-specific under medical/)
- [x] Gap process: domain files issue → core `planned` → `stable`

### Phase 3 — Integration
- [x] compose validator loads core (+ optional `domains/medical/catalog-overlay.yaml`)
- [x] Consumer pin docs (VERSION)
- [x] Abnahme (Wave 1 review + Wave 5 final)

## DoD

Acceptance aus spec; media/compose paths match PRODUCT-BOUNDARIES.

## Harvested into

| Learning | Destination |
|---|---|
| Form whitelist shape (stable/planned/api/package) | `toolset/form-catalog/core/forms.yaml`, `GAP-PROCESS.md`, `ANTI-PATTERNS.md` |
| Genre minima (notfall-karte) | `domains/medical/recipes/notfall-karte.md` + `.minima.yaml` |
| Consumer pin policy | `toolset/form-catalog/README.md`, `docs/CONSUMER.md` |
| Orchestration Wave 1 | `devtracks/ORCHESTRATION.md` / `_orchestration/board.md` |

*Track closable after Wave 5 final APPROVE; archive when Human confirms harvest.*
