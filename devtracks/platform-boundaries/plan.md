# Plan: Platform Boundaries

Siehe [spec.md](spec.md) und [`../PRODUCT-BOUNDARIES.md`](../PRODUCT-BOUNDARIES.md).  
Status: **in Umsetzung (vorbereitende Schritte)**.  
**Orchestrierung der Gesamtumsetzung:** [`../ORCHESTRATION.md`](../ORCHESTRATION.md) (Wave 0/1/5 + parallel discipline).

## Phase 0 — Docs & Governance (diese Lieferung) ✅

- [x] `PRODUCT-BOUNDARIES.md` (Zielbild 3 Produkte, Interfaces, Split-Trigger)
- [x] Track `platform-boundaries` spec/plan
- [x] Scaffold `domains/medical/`, `toolset/form-catalog/`, `toolset/compose/`
- [x] Seed `forms.yaml`, VERSION, BASIS, notfall-karte recipe, brief/accept/feasibility templates
- [x] Child-Tracks (form-catalog, media-design, compose) mit Pfaden/Boundaries verknüpfen
- [x] AGENTS / CLAUDE / KNOWLEDGE-MAP / README / ROLES / CONSENSUS v0.2
- [x] `workspaces/kursbuch-layout.code-workspace`
- [x] Split-readiness checklist (unten)

## Phase 1 — Disziplin in laufender Feature-Arbeit (bei form-catalog / media / compose)

- [ ] form-catalog: **core** generisch vs. medical recipes unter `domains/medical/recipes/`
- [ ] media-design: Templates/Gold-Briefs/Skill-SoT unter `domains/medical/` (nicht unter packages/)
- [ ] compose: Validator/Engine unter `toolset/compose/` — domain-agnostisch; domain nur Config/Pins
- [ ] bookkit-didactics bleibt **optionale Facette** (medizin-nah), nicht Pflicht-Import der Foundation
- [ ] Jeder neue medizinische Hardcode: Code-Review-Frage „gehört das nach domains/?“

## Phase 2 — Pinning & Consumer-Doku

- [ ] README-Abschnitt „Using this platform from another repo“
- [ ] document pin: bookkit version + form-catalog version in consumer
- [ ] pilots/kursbuch-* als **consumer** markieren (Content-Pfad extern)

## Phase 3 — Optional Split (wenn Trigger greift)

- [ ] Split-checkliste abhaken
- [ ] `domains/medical` → neues Repo (subtree/history policy)
- [ ] Workspace + AGENTS in beiden Repos aktualisieren
- [ ] CI: platform tests ohne medical domain grün

## DoD Track

Phase 0 complete; Phase 1 items either done or checked off as work proceeds in sibling tracks;
Phase 2 when first external consumer path is documented.

## Split-readiness checklist (Phase 3)

- [ ] `domains/medical/` enthält skill + recipes + briefs; keine Imports aus `src/chapters`
- [ ] Platform CI läuft ohne `domains/medical` (optional path)
- [ ] form-catalog core hat keine hardcodierten Kursbuch-Pfade
- [ ] compose validator hat keine hardcodierten Kursbuch-Pfade
- [ ] Version pins documented
- [ ] OWNERSHIP.md or PRODUCT-BOUNDARIES lists post-split remotes
