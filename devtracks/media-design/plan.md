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
- [x] Polish brief/accept templates if needed
- [x] Gold-Brief III-5 under `domains/medical/briefs/`
- [x] Optional Gold-Brief III-2
- [x] Link content path to Kursbuch staging (read-only)

### Phase 2 — Skill
- [x] `media-brief` skill body (domain medical)
- [x] Provision paths; AGENTS skill gate
- [x] NEVER typst; NEVER claim rewrite; free ideal first

### Phase 3 — Handoff
- [x] README in domains/medical: Brief → Feasibility → Accept → Compose
- [x] Split-readiness: no hard dependency on `src/chapters`

## DoD

Acceptance aus spec; alles unter `domains/medical/` auslagerbar.

## Harvested into

| Learning | Destination |
|---|---|
| Media Brief skill + free-ideal process | `domains/medical/skill/media-brief/SKILL.md` |
| Gold briefs III-5 / III-2 + accept/feasibility | `domains/medical/briefs/` |
| Domain ownership | `domains/medical/OWNERSHIP.md`, `README.md` |
| Orchestration Wave 2 | `devtracks/_orchestration/board.md` |

*Track closable after Wave 5 final APPROVE; archive when Human confirms harvest.*
