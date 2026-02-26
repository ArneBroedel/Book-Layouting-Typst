# Book Layouting with Typst

Robustes, reproduzierbares Buch-Setup mit Typst auf Windows 11 (ohne WSL/Docker).

## Neues System in 5 Minuten

1. Repository klonen.
2. PowerShell 7 als Administrator öffnen.
3. Setup ausführen:

```powershell
./scripts/setup.ps1
```

4. Terminal neu starten.
5. Vollprüfung inkl. Test-Build:

```powershell
./scripts/preflight.ps1 -RunBuildTest
```

Danach läuft der normale Workflow sofort.

## Voraussetzungen

- Git
- VS Code
- Typst CLI
- PowerShell 7
- Node.js LTS
- Python 3.12+

## Schnellstart

1. Fonts in `fonts/` ablegen (lizenzgeprüft).
2. Kapitel in `src/chapters/` bearbeiten.
3. Build ausführen:
   - VS Code Task: `typst: build (fast)`
   - oder PowerShell: `./scripts/build.ps1`

## Wichtige Prinzipien

- Reproduzierbar: `--ignore-system-fonts --font-path fonts`
- Trennung der Zuständigkeiten:
  - `src/` = Buchlogik
  - `assets/` = Bilder/Tabellenquellen
  - `templates/` = Design-System
  - `dist/` = Build-Artefakte (nicht versionieren)

## Tasks

- `typst: build (fast)` → `dist/book.pdf`
- `typst: watch` → laufender Build
- `typst: build (UA-1)` → `dist/book-ua.pdf`

## Preflight

PowerShell-Check ausführen:

```powershell
./scripts/preflight.ps1
```

Mit Build-Test:

```powershell
./scripts/preflight.ps1 -RunBuildTest
```
