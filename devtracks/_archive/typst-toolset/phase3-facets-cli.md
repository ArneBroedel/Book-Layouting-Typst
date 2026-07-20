# Phase 3 — Facetten + thin CLI

Status: **done** · hängt ab von Phase 2

## Ziel

Domänen-Code optional halten; Build/Scaffold kanonisch und agent-freundlich.

## Tasks

### Facetten
- [ ] Mindestens **eine** Facette extrahieren (Empfehlung: `didactics` *oder* `figures` — je nach
  Pilot-Bedarf und sauberster Grenze aus Phase 0).
- [ ] Zweite Facette optional, wenn Aufwand gering und Showcase profitiert.
- [ ] Showcase importiert Facetten nur wo nötig; Foundation bleibt ohne schwere `@preview`-Ketten
  wo möglich.
- [ ] Facetten-Versionen und Abhängigkeiten pinnen; API-Doku je Facette (kurz).

### Thin CLI
- [ ] Executable oder `scripts/toolset` / `bookkit`-ähnlicher Einstieg:
  - `init` (aus Starter)
  - `build` / `watch` / `ua` (Flags erzwingen)
  - `doctor` (typst version, fonts/, package resolve)
- [ ] Linux + dokumentierte Windows-Parität (PowerShell-Wrapper oder gemeinsame Logik).
- [ ] Hook-Punkt `print` vorbereiten (no-op oder Hinweis), Implementierung erst nach/mit
  `prepress-pdfx`.

### Consumer-Proof
- [ ] Starter nutzt CLI; Smoke- und Pilot-Builds über CLI dokumentiert.

## Exit criteria

- Acceptance 4 + 5 aus `spec.md` (Erweiterung + Repro via CLI).
- Showcase und Pilot bauen weiter grün.

## Nicht in Phase 3

- MCP-Server.
- Universe-Publish (kann vorbereitet, muss nicht live sein).
- Vollständige Facettierung aller Module (Rest kann Folge-Tracks sein).
