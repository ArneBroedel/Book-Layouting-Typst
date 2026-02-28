# Book Layouting with Typst

Robustes, reproduzierbares Buch-Setup mit Typst auf Windows 11 (ohne WSL/Docker).

Enthält ein vollständiges medizinisch-didaktisches Showcase-Buch mit 11 Kapiteln, 28 Komponenten und 15 Layout-Patterns.

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
- Python 3.10+

## Projektstruktur

```
src/
  main.typ              ← Einstiegsdatei
  styles/               ← Design-Tokens, Typografie, Seitengeometrie
    theme.typ
    typography.typ
    page.typ
  components/            ← Wiederverwendbare Bausteine (28 Komponenten)
    blocks.typ           ← Callout, Card, Blockquote, Pull-Quote, Side-Note, Code-Block, Key-Concept
    inline.typ           ← Badge, Tag, Highlight-Text, Kbd, Icon-Text
    tables.typ           ← Styled-Table, Comparison-Table
    grids.typ            ← Gallery-Grid, Feature-Grid, Stats-Grid, Comparison-Grid
    layouts.typ          ← Sidebar, Magazine, Scientific-Paper, Comparison, Adaptive, Breakout
    spreads.typ          ← Book-Cover, Chapter-Opener, Section-Break, Part-Page
  chapters/              ← 11 Kapitel (00-cover bis 10-tooling)
  data/                  ← Glossar, Literatur, JSON/CSV-Beispieldaten
scripts/                 ← Build-Automatisierung (PowerShell)
assets/                  ← Bilder/Tabellenquellen
fonts/                   ← Schriftdateien (lizenzgeprüft)
Guides/                  ← Typst-Referenzmaterial
```

## Schnellstart

1. Fonts in `fonts/` ablegen (lizenzgeprüft).
2. Kapitel in `src/chapters/` bearbeiten.
3. Build ausführen:
   - VS Code Task: `typst: build (fast)`
   - oder PowerShell: `./scripts/build.ps1`

## Wichtige Prinzipien

- Reproduzierbar: `--ignore-system-fonts --font-path fonts`
- Trennung der Zuständigkeiten:
  - `src/` = Buchlogik (Kapitel, Komponenten, Styles, Daten)
  - `assets/` = Bilder/Tabellenquellen
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

## Design-System

- **Farben**: Teal-Primär (#0d7377), Amber-Akzent (#d4a039), semantische Töne (Info, Success, Warning, Danger)
- **Schriften**: Libertinus Serif (Fließtext), Calibri/Segoe UI (Sans), Inconsolata (Mono)
- **Kapitel 01–07**: Keine externen Abhängigkeiten
- **Kapitel 08–10**: Demonstrieren optionale @preview-Pakete (CeTZ, Fletcher, Codly, Showybox, Tablem)
