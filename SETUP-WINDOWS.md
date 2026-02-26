# Setup (Windows, ohne WSL/Docker)

Dieses Dokument stellt sicher, dass das Repo auf einem zweiten System schnell und reproduzierbar läuft.

## 1) Voraussetzungen

- Windows 11
- Internetzugang für `winget`
- PowerShell 7

## 2) Einmaliges Setup

Im Repo-Root als Administrator ausführen:

```powershell
./scripts/setup.ps1
```

Optionale Tools (z. B. Git LFS zusätzlich erzwingen):

```powershell
./scripts/setup.ps1 -IncludeOptionalTools
```

Nach dem Setup: Terminal neu öffnen.

## 3) Verifikation

```powershell
./scripts/preflight.ps1 -RunBuildTest
```

Erwartetes Ergebnis:

- Alle Pflicht-Tools gefunden
- Mindestversionen erfüllt
- `dist/book.pdf` erfolgreich erzeugt

## 4) Täglicher Workflow

- Schneller Build: `./scripts/build.ps1 -Mode fast`
- Watch: `./scripts/build.ps1 -Mode watch`
- PDF/UA-1 Build: `./scripts/build.ps1 -Mode ua`

## 5) Fonts (wichtig für Reproduzierbarkeit)

- Schriftdateien in `fonts/` im Repo ablegen (lizenzgeprüft).
- Build läuft absichtlich mit `--ignore-system-fonts --font-path fonts`.
- Unterschiedliche lokale Systemfonts beeinflussen den Build damit nicht.
