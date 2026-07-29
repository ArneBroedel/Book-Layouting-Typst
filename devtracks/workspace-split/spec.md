# Spec — Workspace-Aufteilung & Konsolidierung

**Status:** active implementation track (2026-07-29) — Phase 0–1 done; next = Phase 1b  
**Currency:** inventur + plan re-aligned 2026-07-29 (post-hygiene ~851 files / ~36 MB; B feature tracks archived)  
**Entry for implementers:** [`README.md`](README.md) · [`HANDOFF.md`](HANDOFF.md)  
**Trigger:** organisch gewachsener Monolith; Fokus „Typst Layout-Experte → druckreif“ verdünnt durch Graphics/Raster/Domain-Prozesse  
**Inventar:** [`../workspace-inventory/`](../workspace-inventory/) (`file-index.tsv`, `CATALOG.md`, `bucket-summary.tsv`) — regenerate with `python3 scripts/workspace-inventory.py`  
**Locked decisions:** [`decisions.md`](decisions.md) (D1–D5)  
**Binding architecture:** [`joint-recommendation.md`](joint-recommendation.md)

---

## Problem

Dieses Repo war gedacht als **KI-gestütztes Typst-Layout-Tool** (Layout-Experte → optimales Buchlayout → druckreif). Es hat organisch aufgenommen:

1. Typst-Foundation + Showcase-Buch  
2. Compose-Pipeline / Form-Catalog / Validator  
3. Mediendesign (Media Brief, Form Spec, Illness-Script-Ontologie)  
4. Mediengrafik inkl. **Raster/AI-Vision** (nicht nur Typst)  
5. Content-Reife (Lektorat/Freeze/Proof)  
6. Ecosystem-Research + Template-Korpus  
7. Orchestrierung End-to-End Buchproduktion  

Alles ist nützlich — aber **ein** Workspace + **ein** kognitiver Kontext für Agenten vermischt Rollen, CLIs und Artefakte. Fokus und Wartbarkeit leiden. **Pre-hygiene baseline:** ~65 MB assets, ~109 MB `dist/`, ~120 brief files. **After Phase 1:** assets ~26 MB, `dist/` wiped, gold briefs + `_archive/`; remaining focus diluters are research corpus, spikes, multi-role skills, and still-fragmented CLI surface (Phase 1b).

## Zielbild

Mehrere **klar getrennte Produkte**, jeweils:

| Schicht | Inhalt |
|---|---|
| **CLI** | deterministische Werkzeuge (build, validate, vision, prepress, inventory) |
| **Skill(s)** | agentische Prozeduren, die die CLI + Artefaktverträge bedienen |
| **Runtime/Libs** | Typst-Pakete, Python-Module, Form-Catalog, Playbooks |
| **Fixtures/Gold** | minimale Belege — keine Produktions-SoT fremder Werke |

Grenzen und Schnittstellen bleiben **artefaktbasiert** (Brief, Accept, Freeze, PDF, Manifest) — siehe bestehendes [`CONSENSUS-v0.md`](../CONSENSUS-v0.md) und [`PRODUCT-BOUNDARIES.md`](../PRODUCT-BOUNDARIES.md).

## Nicht-Ziele

- Micro-Repos pro Skill (Chaos)  
- Inhalt von Kursbuch (C) als SoT in A speichern  
- Alle historischen Spikes/Evals unbesehen löschen (Provenance braucht Archiv-Policy)  
- Ein „Super-Agent“ ohne Rollen

## Success criteria

1. **Fokus A:** Layout-Repo startet in <5 min als Consumer-Layout-Plattform (docs + CLI + packages), ohne 60 MB Raster-Noise.  
2. **Jedes Produkt** hat: README, OWNERSHIP, Version/Pin, 1 primäre CLI (oder bewusst „skill-only“), Skills, Tests.  
3. **Dateimenge** pro Produkt um messbaren Anteil reduziert (Noise, Duplikate, Build-Artefakte, tote Scratch).  
4. **Agent-Kontext:** Skills referenzieren nur ihr Produkt + Interface-Verträge; keine Cross-Repo-Internals.  
5. **Pipeline** A←B←C bleibt lauffähig über Pins und Artefaktpfade (Multi-root Workspace optional).
