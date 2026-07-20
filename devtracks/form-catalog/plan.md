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
- [ ] Complete public API list from bookkit + bookkit-didactics
- [ ] Fill `forms.yaml` (purpose, api, package, status) for ≥12 stable
- [ ] Document mini-basis (BASIS.md refine)
- [ ] planned entries for known gaps (e.g. protocol-steps)

### Phase 2 — Recipes & anti-patterns
- [ ] Expand `domains/medical/recipes/notfall-karte.md` + validator minima YAML if needed
- [ ] Stubs for other medical genres under `domains/medical/recipes/`
- [ ] Anti-patterns file (core or domain — domain-specific under medical/)
- [ ] Gap process: domain files issue → core `planned` → `stable`

### Phase 3 — Integration
- [ ] compose validator loads core (+ optional `domains/medical/catalog-overlay.yaml`)
- [ ] Consumer pin docs (VERSION)
- [ ] Abnahme

## DoD

Acceptance aus spec; media/compose paths match PRODUCT-BOUNDARIES.
