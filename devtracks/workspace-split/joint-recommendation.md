# Joint Recommendation — Grok + Antigravity Peer-Review

**Datum:** 2026-07-29  
**Quellen:** [`plan.md`](plan.md) · [`antigravity-peer-review.md`](antigravity-peer-review.md) · [`PRODUCT-BOUNDARIES.md`](../PRODUCT-BOUNDARIES.md) · [`CONSENSUS-v0.md`](../CONSENSUS-v0.md)

---

## Konsens (beide Seiten)

| Punkt | Einigkeit |
|---|---|
| Inventar korrekt; Ballast = `dist/` + Raster-Assets + Brief-Masse | Ja |
| Artefaktverträge (Brief → Accept → Compose → Validate) beibehalten | Ja |
| Phase 1 Hygiene **sofort**, vor jedem Split | Ja |
| Media + Graphics **zusammen** (ein Produkt B) | Ja |
| Gold-Brief-Set (≈8–10), nicht 124 Work-Artefakte im Fokus | Ja |
| Research aus Default-Agent-Kontext raus | Ja |
| Kein Micro-Repo-Chaos, kein Super-Agent, keine Auto-Heal-Loops | Ja |
| Skills steuern Agenten-Prozeduren; maschinelle Gates deterministisch | Ja |

## Gezielte Korrekturen am Grok-Plan (Antigravity + Zustimmung)

| Grok-Plan | Korrektur | Begründung |
|---|---|---|
| Mehrere CLIs (`bookkit`, `graphics`, `media-brief`, `content`) | **Eine kanonische `bookkit`-CLI** mit Subcommands (`build`, `validate`, `prepress`, `vision` …) | Weniger Wartung, bessere Agent-Ergonomie; Domain-Skills rufen Subcommands, nicht 4 Binaries |
| Phase-3-Repo-Split zeitnah nach Phase 2 | **Triggerbasiert**, nicht kalenderbasiert | Cross-Repo-Pins/CI/Symlinks lohnen erst bei 2. Domäne, Multi-Team oder Größen-Trigger |
| Delivery „CLI + Skills“ pur | **Hybrid F:** Typst-**Packages** (Layout + Grafik-Module) + **eine** CLI (Gates/Pipeline) + **Skills** (Rollen) | Package-first für Typst-Fit; CLI für Determinismus; Skills für Kreativ/Rollen-Flow |
| `graphics refine` als freies CLI-Loop | Nur hinter **Gates** (claim audit, budget, Human/Accept) | CONSENSUS: keine unkontrollierten Render-Schleifen |
| Pilots mit Kursbuch-Charakter in A | Nur **synthetischer** Smoke-Pilot in A; Domain-Dogfood bleibt B-Artefakte + externe C-Pfade | Content-SoT-Leakage vermeiden |
| Showcase optional verschieben | Sinnvoll, aber **nicht** Tag-1; nach Hygiene und CLI-Konsolidierung | Vermeidet unnötigen Path-Churn früh |

## Delivery-Modell (verbindliche Empfehlung)

```text
┌─────────────────────────────────────────────────────────────┐
│  Skills (agentisch, rollenbasiert)                          │
│  bookkit · compose-chapter · media-brief · medical-graphics │
│  content-review · orchestrator                              │
└──────────────────────────┬──────────────────────────────────┘
                           │ ruft nur dokumentierte Verben
                           ▼
┌─────────────────────────────────────────────────────────────┐
│  bookkit CLI (eine Entry, Subcommands)                      │
│  doctor · init · build · watch · ua                         │
│  validate (compose gates) · prepress · catalog              │
│  vision | refine   ← optional backends, budgetiert, gated   │
└───────────────┬─────────────────────────────┬───────────────┘
                │                             │
                ▼                             ▼
┌───────────────────────────┐   ┌─────────────────────────────┐
│ Typst Packages            │   │ Python/Shell engines        │
│ bookkit foundation        │   │ compose/validate            │
│ bookkit-didactics         │   │ print-pdfx, dpi             │
│ bookkit-graphics (neu,    │   │ graphics-vision backends    │
│   aus Spike-libs)         │   │                             │
└───────────────────────────┘   └─────────────────────────────┘
```

**Warum nicht reines Skill-only?** Zu wenig Determinismus; Agents erfinden Flags.  
**Warum nicht MCP zuerst?** Extra Daemon/Protokoll ohne Mehrwert für lokale Typst-Builds (später optional als dünne CLI-Hülle).  
**Warum nicht 4 CLIs?** Agent- und User-Cognitive-Load; doppelte Doctor/Version-Pfade.

## Repo-Strategie

```text
JETZT → Modular Monorepo (harte OWNERSHIP + Ordnergrenzen)
SPÄTER → subtree split nur bei Trigger:
         • 2. Fachdomäne in Produktion, oder
         • externes Autoren-/Grafik-Team mit getrennten Rechten, oder
         • Repo trotz LFS/Purge > ~500 MB tracked
```

C (`content-maturity`) bleibt **extract-ready** (Checklist existiert); physischer Move sobald `CONTENT_WORK_REPO` feststeht — kein künstlicher Parallel-Zwang mit B.

## Bestweg (nächste 2–4 Wochen)

| Schritt | Wann | Inhalt |
|---:|---|---|
| **1** | Tag 1 | Deep Hygiene: Root-Litter, `dist/` wipe, PDF untrack, gitignore wasserdicht |
| **2** | Tag 1–2 | Asset-Quarantine-Liste + Human OK zum Purge der Gemini-Zwischen-PNGs |
| **3** | Tag 2 | Gold-Brief-Set (8–10) + `briefs/_archive/`; INDEX |
| **4** | Tag 3–5 | **Unified `bookkit` CLI**: validate + prepress unter ein Dach; vision als Subcommand-Hülle um bestehende scripts |
| **5** | Woche 2 | Spike-Harvest → `packages/bookkit-graphics` oder `domains/medical/lib/typst/`; flüchtige Spikes thin |
| **6** | Woche 2 | Skills refactor: nur CLI-Verben + Artefaktpfade; keine Monorepo-Magic |
| **7** | Woche 3 | Research quarantine (submodule/out-of-default) |
| **8** | später | Showcase → `examples/` optional; Repo-Split nur bei Trigger |

## Human-Entscheidungen — **entschieden 2026-07-29**

Siehe [`decisions.md`](decisions.md).

| # | Decision |
|---|---|
| D1 | Asset-Purge: Tag-Quarantäne + Purge intermediate PNGs |
| D2 | Repo-Split nur triggerbasiert |
| D3 | Showcase später → `examples/` |
| D4 | CLI: `bookkit graphics vision\|refine` |
| D5 | Gold-Set-Vorschlag übernommen |

Phase-1 Hygiene ausgeführt (Root-Litter, gitignore, PDF-Untrack, dist wipe, Asset-Purge, Brief-Archive).  
CLI-Wiring (`bookkit graphics …`) = nächster Schritt (Phase 1b).

## Executive one-liner

**Nicht 4 Repos und 4 CLIs bauen — Ballast raus, eine `bookkit`-CLI + Typst-Packages + Rollen-Skills, Split nur wenn ein echter Trigger greift.**
