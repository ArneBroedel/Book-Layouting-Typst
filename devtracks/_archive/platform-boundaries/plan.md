# Plan: Platform Boundaries

Siehe [spec.md](spec.md) und [`../PRODUCT-BOUNDARIES.md`](../PRODUCT-BOUNDARIES.md).  
Status: **Phase 1+2 done (Wave 5.2 audit); Phase 3 DEFERRED.**  
**Orchestrierung der Gesamtumsetzung:** [`../ORCHESTRATION.md`](../ORCHESTRATION.md) (Wave 0/1/5 + parallel discipline).  
**Audit:** [`../_orchestration/boundaries-audit-w5.md`](../_orchestration/boundaries-audit-w5.md) (2026-07-20).

## Phase 0 — Docs & Governance (diese Lieferung) ✅

- [x] `PRODUCT-BOUNDARIES.md` (Zielbild 3 Produkte, Interfaces, Split-Trigger)
- [x] Track `platform-boundaries` spec/plan
- [x] Scaffold `domains/medical/`, `toolset/form-catalog/`, `toolset/compose/`
- [x] Seed `forms.yaml`, VERSION, BASIS, notfall-karte recipe, brief/accept/feasibility templates
- [x] Child-Tracks (form-catalog, media-design, compose) mit Pfaden/Boundaries verknüpfen
- [x] AGENTS / CLAUDE / KNOWLEDGE-MAP / README / ROLES / CONSENSUS v0.2
- [x] `workspaces/kursbuch-layout.code-workspace`
- [x] Split-readiness checklist (unten)

## Phase 1 — Disziplin in laufender Feature-Arbeit (bei form-catalog / media / compose) ✅

- [x] form-catalog: **core** generisch vs. medical recipes unter `domains/medical/recipes/`
- [x] media-design: Templates/Gold-Briefs/Skill-SoT unter `domains/medical/` (nicht unter packages/)
- [x] compose: Validator/Engine unter `toolset/compose/` — domain-agnostisch; domain nur Config/Pins
- [x] bookkit-didactics bleibt **optionale Facette** (medizin-nah), nicht Pflicht-Import der Foundation
- [x] Jeder neue medizinische Hardcode: Code-Review-Frage „gehört das nach domains/?“  
  *(Disziplin etabliert in Wave-Reviews + PRODUCT-BOUNDARIES; ongoing gate, no residual hardcode in A core)*

## Phase 2 — Pinning & Consumer-Doku ✅

- [x] README-Abschnitt „Using this platform from another repo“  
  → root `README.md` + full guide [`docs/CONSUMER.md`](../../docs/CONSUMER.md)
- [x] document pin: bookkit version + form-catalog version in consumer  
  → `docs/CONSUMER.md` § Pin versions; `toolset/form-catalog/README.md` § VERSION / pin policy
- [x] pilots/kursbuch-* als **consumer** markieren (Content-Pfad extern)  
  → `pilots/kursbuch-welle-03/README.md`, `pilots/kursbuch-welle-03-compose/README.md`

## Phase 3 — Optional Split — **DEFERRED** (Trigger nicht erfüllt)

- [ ] Split-checkliste abhaken
- [ ] `domains/medical` → neues Repo (subtree/history policy)
- [ ] Workspace + AGENTS in beiden Repos aktualisieren
- [ ] CI: platform tests ohne medical domain grün

### Why deferred (Wave 5.2)

Split-Trigger aus [`PRODUCT-BOUNDARIES.md`](../PRODUCT-BOUNDARIES.md) greifen **nicht**:

| Trigger | Status 2026-07-20 |
|---|---|
| Zweites Werk / **zweite Domäne** startet | **Nein** — nur `domains/medical/` |
| `domains/medical/` stabile Skills + ≥2 Gold-Briefs + **eigene CI-Bedürfnisse** | Skills + Briefs vorhanden; **keine** domain-CI die Platform-Releases blockiert |
| Platform-Releases durch **Domain-Noise** blockiert | **Nein** — CI (`.github/workflows/build.yml`) path-filter nur `src/**`/`fonts/**`; engine/catalog ungekoppelt |

**Folge:** Ordnergrenze + Ownership beibehalten; **kein** `git subtree split` / zweites Remote in dieser Orchestrierung.  
Re-evaluate when a second domain lands, domain CI appears, or platform release is blocked by B.

Detail note: [`PHASE3-DEFERRED.md`](PHASE3-DEFERRED.md).

## Harvested into

| Learning | Destination |
|---|---|
| Product A/B/C paths | `PRODUCT-BOUNDARIES.md`, `docs/CONSUMER.md` |
| Phase 3 split deferral | `PHASE3-DEFERRED.md` |
| Wave 5 audit | `devtracks/_orchestration/boundaries-audit-w5.md` |

## DoD Track

Phase 0 complete; Phase 1 items either done or checked off as work proceeds in sibling tracks;
Phase 2 when first external consumer path is documented.

**Wave 5.2:** Phase 0–2 **met**; Phase 3 **deferred with reason** (E10).

## Split-readiness checklist (Phase 3 prep — preconditions, not split execution)

- [x] `domains/medical/` enthält skill + recipes + briefs; keine Imports aus `src/chapters`
- [x] Platform CI läuft ohne `domains/medical` (optional path) — build.yml does not depend on domain tree
- [x] form-catalog core hat keine hardcodierten Kursbuch-Pfade
- [x] compose validator hat keine hardcodierten Kursbuch-Pfade
- [x] Version pins documented (`docs/CONSUMER.md`, form-catalog README)
- [ ] OWNERSHIP.md or PRODUCT-BOUNDARIES lists post-split remotes  
  *(OWNERSHIP has target-name TBD only — fill when split is scheduled)*
