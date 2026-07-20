# Spec: Platform Boundaries — Generalisierbare Plattform vs. Domain-Schichten

## Objective

Dieses Repository als **Produkt A (Layout-Plattform)** scharf halten und Spezialisierung
(Medizin/Kursbuch-Media) so vorbereiten, dass sie **ohne Big-Bang** in ein eigenes Repo (Produkt B)
auslagerbar ist — bei weiterhin klarem Zusammenspiel mit Content (Produkt C) über versionierte
Schnittstellen.

Siehe [`../PRODUCT-BOUNDARIES.md`](../PRODUCT-BOUNDARIES.md) und [`../CONSENSUS-v0.md`](../CONSENSUS-v0.md).

## Scope (in)

- Ownership-Matrix und „was gehört nicht hierher“.  
- Ordnerkonventionen: `toolset/form-catalog/core`, `toolset/compose`, `domains/medical`, …  
- Vorbereitende Steps in Child-Tracks (form-catalog split, media-design paths, compose generic).  
- Pinning-Policy (bookkit + catalog version).  
- Multi-root workspace example.  
- Split-Trigger und Checkliste für späteres Repo B.  
- Governance: AGENTS/CLAUDE/KNOWLEDGE-MAP.

## Scope (out)

- Sofortiges Anlegen eines zweiten Git-Remotes (kann später erfolgen).  
- Content aus Kursbuch hierher migrieren.  
- Vollständige Implementierung compose/media (andere Tracks).  

## Acceptance

1. `PRODUCT-BOUNDARIES.md` + dieser Track spezifizieren Zielbild.  
2. Scaffold-Ordner existieren und sind in README erklärt.  
3. form-catalog / media-design / compose-pipeline Plans referenzieren Grenzen und Pfade.  
4. AGENTS.md: Plattform vs. Domain vs. Content; no content SoT.  
5. Mind. eine „Split readiness“-Checkliste im Track.  
6. Kein Kursbuch-MD als SoT unter `src/` oder `packages/`.  

## Risks

- Domain-Code sickert in `packages/bookkit` → Facetten nur generisch oder klar optional.  
- „Vorbereitung“ ohne Disziplin → wieder Brei → Review-Regel: neue Medizin-Logik nur unter `domains/medical/`.  
