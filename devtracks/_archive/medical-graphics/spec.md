# Spec: Mediengrafik / Didaktische Inhaltsgrafiken

**Status:** active (MVP)  
**Produkt:** B (Domain Medical) + Hooks in A (compose ladder)  
**Skill:** `medical-graphics`  
**Rolle:** **Graphics** (Mediengrafik)

## Objective

Systematisch nach dem Media Brief klären, **wie** grafische Ideal-Darstellungen realisiert werden:

1. **Code first** (Typst / bookkit / CeTZ / Fletcher / custom) — Default  
2. **Asset** (SVG bevorzugt, Raster nur wenn nötig) bewusst prüfen  
3. **Hybrid** (Asset-Form + Typst-Labels/Claims)  
4. **A/B** im Zweifel: beide Varianten spiken und **visuell** vergleichen  

Nicht primär Anatomie-Atlas: **allgemeine grafische Inhaltsvermittlung** (Flows, Mechanismen, Vergleiche, Cue-Cluster, Timelines, Relationskarten, …).

## Problem

| Heute | Lücke |
|---|---|
| Media: freies Ideal | Kein Umsetzungs-How (korrekt) |
| Tech: Realization ladder | Implizit nur Code; Asset-Pfad fehlt |
| `figures` / assets | Einbinden existierender Bilder — kein Erstellungs-/Entscheidungsprozess |

## Role boundaries

| Rolle | Tut | Tut nicht |
|---|---|---|
| **Media** | Ideal, Accept (Ideal-Nähe inkl. Grafikqualität) | Assets erzeugen; Production-`.typ` |
| **Graphics** | Visual-Units: Mode, Spikes, A/B, Decision Note, Asset-Produktion | Ideal ersetzen; Claims erfinden; Kapitel-Compose |
| **Tech** | Feasibility mit `graphic_mode`; Compose Winner; Validate | Grafik-A/B stillschweigend weglassen |

## Realization modes

| `graphic_mode` | Meaning |
|---|---|
| `code` | Nur Typst/bookkit/@preview |
| `asset` | Bilddatei als Hauptträger |
| `hybrid` | Asset + Typst-Overlay |
| `ab-test` | Beide spiken; Winner bis Accept offen |
| `none` | Kein Grafik-Objekt |

## Artifacts

| Artifact | Path convention |
|---|---|
| Skill SoT | `domains/medical/skill/medical-graphics/` |
| Decision template | `domains/medical/templates/graphic-decision.template.md` |
| Decision note | `domains/medical/briefs/<slug>.graphics.md` |
| Domain assets | `domains/medical/assets/<slug>/` |
| Spike outputs | `dist/spikes/graphics/<slug>/` (gitignored) |

## Non-goals (MVP)

- Auto-validator on `graphic_mode`  
- MCP / full AI pipeline  
- Medical genre logic inside `packages/bookkit`  
- Replacing Media or Tech roles  

## Acceptance (MVP)

1. Skill discoverable (`.github` / `.grok` symlinks).  
2. Template + heuristics/references present.  
3. Feasibility / CREATIVE-COMPOSE / compose-chapter document `graphic_mode` and Graphics handoff.  
4. Asset folder convention + license/DPI notes.  
5. Governance (ROLES, PRODUCT-BOUNDARIES, AGENTS) names the role.  

Gold A/B pilot against a real brief may follow in a later phase (not blocking skill ship).

## Related

- `media-brief`, `compose-chapter`, `CREATIVE-COMPOSE.md`  
- `devtracks/PRODUCT-BOUNDARIES.md`, `ROLES-AND-FLOW.md`, `CONSENSUS-v0.md`  
- Image embed helpers (image-flow archive / figures components)  
- `scripts/check-image-dpi.py`
