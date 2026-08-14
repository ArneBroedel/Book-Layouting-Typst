# Setup (Windows)

Dieses Dokument stellt sicher, dass das Repo auf einem zweiten Windows-System schnell und reproduzierbar läuft. Linux/WSL-Checkouts nutzen dieselben Repro-Flags über `./scripts/bookkit` oder `./scripts/build.sh` — siehe [`README.md`](README.md).

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
- Mindestversionen erfüllt (Python ≥ 3.10, **Typst 0.15.0** — CI-Pin)
- `dist/book.pdf` erfolgreich erzeugt

Studio-Compiler-Pin ist **Typst 0.15.0** (CI und `packages/bookkit/typst.toml`).

## 4) Täglicher Workflow

Bevorzugt die einheitliche CLI (erzwingt Repro-Flags):

```powershell
./scripts/bookkit doctor --root .
./scripts/bookkit build  --root . --entry src/main.typ --out dist/book.pdf
./scripts/bookkit print  --root . --entry src/main.typ   # braucht Ghostscript
```

PowerShell-Wrapper (äquivalent):

- Schneller Build: `./scripts/build.ps1 -Mode fast`
- Watch: `./scripts/build.ps1 -Mode watch`
- PDF/UA-1: `./scripts/build.ps1 -Mode ua`
- Print (PDF/X-3 CMYK, braucht `gs`): `./scripts/build.ps1 -Mode print`

## 5) Fonts (wichtig für Reproduzierbarkeit)

- Build läuft absichtlich mit `--ignore-system-fonts --font-path fonts`.
- Body/Überschriften: **Libertinus Serif** (Typst-Bundle). Code: **DejaVu Sans Mono** (Bundle).
- `fonts/` im Repo hält **Font Awesome 6** (Icons). Weitere lizenzgeprüfte Schriftdateien
  gehören ebenfalls hierhin, wenn das Theme sie verlangt.
- Unterschiedliche lokale Systemfonts (Calibri, Segoe, …) beeinflussen den Build damit nicht.
