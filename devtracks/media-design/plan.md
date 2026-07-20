# Plan: Media Design

Siehe [spec.md](spec.md), CONSENSUS v0.2, [`../PRODUCT-BOUNDARIES.md`](../PRODUCT-BOUNDARIES.md).  
Status: **geplant / Templates gescoped**. **Produkt B** (Domain medical).  
**Orchestrierung:** [`../ORCHESTRATION.md`](../ORCHESTRATION.md) → **Wave 2** (Draft parallel zu Wave 1 ok).

**Pfade (nicht unter packages/):**

| Was | Wo |
|---|---|
| Templates | `domains/medical/templates/` |
| Gold briefs | `domains/medical/briefs/` |
| Recipes (functional) | `domains/medical/recipes/` |
| Skill SoT | `domains/medical/skill/` or `toolset/skill-pack/media-brief` **with note: domain-owned** |

Content MD bleibt **extern** (Kursbuch). Briefs referenzieren Pfade, kopieren keine SoT.

## Phasen

### Phase 0 — Boundaries scaffold
- [x] `domains/medical/` tree + templates + notfall-karte recipe stub
- [x] Ownership documented

### Phase 1 — Schema & Gold briefs
- [ ] Polish brief/accept templates if needed
- [ ] Gold-Brief III-5 under `domains/medical/briefs/`
- [ ] Optional Gold-Brief III-2
- [ ] Link content path to Kursbuch staging (read-only)

### Phase 2 — Skill
- [ ] `media-brief` skill body (domain medical)
- [ ] Provision paths; AGENTS skill gate
- [ ] NEVER typst; NEVER claim rewrite; free ideal first

### Phase 3 — Handoff
- [ ] README in domains/medical: Brief → Feasibility → Accept → Compose
- [ ] Split-readiness: no hard dependency on `src/chapters`

## DoD

Acceptance aus spec; alles unter `domains/medical/` auslagerbar.
