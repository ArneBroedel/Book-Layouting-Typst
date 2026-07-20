# Plan: Compose Pipeline

Siehe [spec.md](spec.md), CONSENSUS v0.2, [`../PRODUCT-BOUNDARIES.md`](../PRODUCT-BOUNDARIES.md).  
Status: **geplant / Engine-Scaffold**. **Produkt A** (platform engine).  
**Orchestrierung:** [`../ORCHESTRATION.md`](../ORCHESTRATION.md) → **Wave 3** (Engine), **Wave 4** (E2E).

**Pfade:**

| Was | Wo |
|---|---|
| Engine / validate / spikes | `toolset/compose/` |
| Feasibility template | `toolset/compose/templates/feasibility-note.template.md` |
| Spike rules | `toolset/compose/spikes/README.md` |
| Domain inputs | read from `domains/medical/` + external content paths — **no hardcode of Kursbuch tree in engine** |

## Phasen

### Phase 0 — Boundaries scaffold
- [x] `toolset/compose/` README + templates + spikes doc
- [x] Feasibility template generic (pins catalog_version)

### Phase 1 — Validator & Fixtures
- [ ] Implement under `toolset/compose/validate/`
- [ ] Load `toolset/form-catalog/core/forms.yaml` (+ optional domain overlay path CLI flag)
- [ ] Claims extract from **caller-supplied** content path
- [ ] Accept-record check; `EXCEPTION_NO_BRIEF` for platform smoke only
- [ ] Durable tests with fixtures (no live Kursbuch required for unit tests)

### Phase 2 — Skills
- [ ] `compose-chapter` skill in platform skill-pack (generic procedures)
- [ ] Feasibility procedures; consume domain briefs by path
- [ ] NEVER free layout primitives; pin catalog version in output headers

### Phase 3 — Pilot (full loop, consumer style)
- [ ] Content from Kursbuch path (C); brief from `domains/medical/briefs/`
- [ ] feasibility → accept → compose → validate → PDF under `dist/` or pilots consumer folder
- [ ] Report; catalog-gaps filed to core or domain overlay
- [ ] Document as **consumer** of platform, not platform SoT

## DoD

Acceptance aus spec; engine domain-agnostic; pilot proves external content + domain media.

## Explicitly not default

Self-healing re-prompt loops.
