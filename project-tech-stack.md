Alles klar – wir bauen dir einen **robusten, reproduzierbaren “Publishing-Stack”** (Windows 11 + optional WSL2), der sowohl **Typst** (schnell, modern) als auch **LaTeX** (falls nötig) und eine saubere Asset-Pipeline abdeckt. Fokus: **KISS, aber production-tauglich**.

## 1) Grundsystem: das “Fundament”

### Pflicht

- **Git** (inkl. Git LFS, falls viele Bilder/Fonts)
- **VS Code**
- **Node.js LTS** (für Scripts/CI-Tools, Mermaid/Markdown-Tools, PDF-Pipelines)
- **Python 3.12+** (für kleine Helpers: Bild-Checks, Batch-Konvertierung, Linting)
- **PowerShell 7** (bessere Skripte als Windows PowerShell)

### Sehr empfohlen

- **WSL2 (Ubuntu)**: macht CLI, CI-Nähe und Font-/Tooling-Consistency viel angenehmer.
- **Docker Desktop**: nicht zwingend – aber Gold wert für _pinnbare Builds_ (z.B. typst:0.14.2), CI-Parität, “läuft überall gleich”.

**Minimal-Ansatz:** Git + VS Code + Typst CLI reicht zum Start.
**Pro-Ansatz:** + WSL2 + Docker, damit du später nicht an “läuft nur auf meinem Rechner”-Quatsch stirbst.

---

## 2) Publishing/Typesetting: Typst + (optional) LaTeX

### Typst

- **Typst CLI** (Version pinnen!)
- **Tinymist (VS Code Extension)** für Preview, LSP, Export, Formatter

### Optional: LaTeX-Fallback (wenn du wirklich brauchst)

- **TeX Live** (groß, aber komplett) **oder** **MiKTeX** (Windows-näher, dynamische Pakete)
- VS Code Extension: **LaTeX Workshop**

Ich würde Typst als Hauptstraße nehmen und LaTeX als “Notausgang” bereithalten – nicht umgekehrt.

---

## 3) VS Code: Extensions (kuratiert, nicht “Extension-Messi”)

### Must-have (Publishing)

- **Tinymist Typst**
- **Markdown All in One**
- **markdownlint**
- **EditorConfig**
- **YAML** (wenn du Daten/Glossare als YAML pflegst)
- **GitLens** (wenn du Review/History liebst)

### Must-have (Dev/Automation)

- **Docker** (wenn Docker genutzt wird)
- **Dev Containers** (wenn du Container-Workspaces willst)
- **Python** + **Pylance**
- **ESLint** (falls Node-Scripts)
- **Prettier** (für Markdown/JSON/YAML konsistent)

### Optional, aber oft hilfreich

- **Spell checker** (Deutsch + medizinische Wörterliste als Custom Dictionary)
- **PDF Viewer** (oder nutze externen Reader)

---

## 4) CLI-Tools: damit du nicht klickst wie 2009

### Pflicht

- **typst** (compile/watch)
- **git** (+ optional **git-lfs**)
- **node + npm** (oder pnpm)
- **python**

### Sehr sinnvoll für Buch-/Asset-Workflows

- **imagemagick** (Batch: resize, convert, optimize)
- **exiftool** (Metadaten killen/prüfen)
- **qpdf** (PDF sanity)
- **ghostscript** (PDF compress/normalize – vorsichtig bei Prepress)
- **pandoc** (wenn du Markdown↔Typst/LaTeX-Konvertierungsrouten testen willst)

### Optional (Qualität/Checks)

- **vale** (Prosa-Linting / Stilregeln)
- **typos** (schnelles Spellcheck-Linting)

---

## 5) Ergänzende Software (Design/Assets)

### Bilder/Diagramme

- **Inkscape** (SVG/PDF für Vektoren, Diagramme, Icons)
- **Affinity Designer/Photo** _oder_ **Adobe Illustrator/Photoshop** (falls du’s nutzt)
- **Figma** (UI-Grafiken, Diagramm-Layouts, Komponenten – Export als SVG/PDF)

### Fonts

- Ein **Font-Manager** (z.B. NexusFont) ist nett – aber wichtiger ist:
  - **Fonts im Repo speichern** (sofern Lizenz ok)
  - Builds mit `--ignore-system-fonts` + `--font-path fonts`

---

## 6) Repo-/Ordnerstruktur (bewährt für “Buch als Software”)

Hier eine Struktur, die sich für medizinische Lehrbücher mit vielen Assets bewährt:

```
book/
├─ README.md
├─ LICENSE
├─ .editorconfig
├─ .gitignore
├─ .vscode/
│  ├─ settings.json
│  └─ extensions.json
├─ fonts/                # alle Projektfonts (lizenzgeprüft)
├─ src/
│  ├─ main.typ           # Book-Driver: imports, global rules
│  ├─ templates/         # Design-System (theme, layout, components)
│  │  ├─ theme.typ
│  │  ├─ layout.typ
│  │  └─ components.typ
│  ├─ chapters/
│  │  ├─ 01-intro.typ
│  │  ├─ 02-... .typ
│  │  └─ ...
│  └─ data/              # strukturierte Inhalte (glossar, refs)
│     ├─ glossary.yml
│     └─ bibliography.bib
├─ assets/
│  ├─ figures/           # Diagramme (PDF/SVG)
│  ├─ photos/            # Fotos (PNG/JPG/TIF je nach pipeline)
│  └─ tables/            # ggf. CSV/JSON Quellen
├─ scripts/
│  ├─ build.ps1
│  ├─ build.sh
│  ├─ preflight.ps1
│  └─ preflight.sh
├─ dist/                 # Build-Artefakte (nicht committen)
└─ tools/                # optional: lokale helper configs
   ├─ vale/
   └─ dictionaries/
```

**Prinzip:** `src/` ist “Code”, `assets/` sind Rohstoffe, `templates/` ist dein Design-System, `dist/` ist wegwerfbar.

---

## 7) Templates/Starter: sauber starten statt “Legacy-Suppe”

Für Typst würde ich **nicht** mit einer riesigen Universe-Template-Welt starten, sondern:

- eigenes **Minimal-Template** (Theme + Layout + Komponenten)
- 10–20 “repräsentative Seiten” als Pilot (Kapitelstart, Boxen, Tabellen, Bildraster, Fallbeispiel)

Erst wenn das sitzt: Templates/Pakete ergänzen – nicht vorher.

---

## 8) Empfohlene “1-Stunde Setup”-Reihenfolge (praktisch)

1. Install: **Git, VS Code, Node LTS, Python, PowerShell 7**
2. Install: **Typst CLI**
3. VS Code: **Tinymist + Markdownlint + EditorConfig**
4. Repo anlegen + Ordnerstruktur + `.editorconfig` + `.vscode/extensions.json`
5. `scripts/build.ps1` + `scripts/preflight.ps1` (einheitliche Build-Kommandos)
6. Optional: **WSL2**, dann **Docker Desktop**

---

## 9) Kleine Defaults, die dir später Ärger sparen

- **Version pinnen** (Typst, Node, ggf. Docker image tag) → reproduzierbare PDFs.
- **Fonts lokal + keine Systemfonts** → keine Überraschungen.
- **Assets als PDF/SVG für Vektoren** → stabile Schärfe, gutes Scaling.
- **Automatischer Build beim Save** (Tinymist) → schneller Feedbackloop.

---

Alles klar – dann mache ich aus der bisherigen Evaluierung ein **komplettes, direkt umsetzbares Paket**: Vergleich (Typst vs. LaTeX vs. WeasyPrint vs. Paged.js), ein **VS-Code/Repo-Setup**, ein **Pilot-Testplan** (damit du nicht erst nach 300 Seiten merkst, dass PDF/X fehlt), plus **Risiken + Migrationspfade** für dein medizinisches Mischformat.

---

## 1) Typst im Direktvergleich (für _dein_ Buchprofil)

### Der Kern (ohne Marketingsprech)

- **Typst** ist stark, wenn du dein Layout als **Design-System** denkst: Raster, Komponenten, definierte Seitentypen, reproduzierbare Builds, schnelle Iteration.
- **InDesign** ist stark, wenn du **Prepress-Perfektion** brauchst (PDF/X, ICC/Output Intent, farbverbindlich, Druckerei-“passt immer”).
- **LaTeX** ist stark bei **wissenschaftlichem Textsatz**, aber bei “magazinigen” Bild/Text-Kompositionen oft frickelig (geht, aber du zahlst mit Nerven).
- **HTML/CSS → WeasyPrint** ist gut für **web-nahe Layouts** und Automatisierung, aber typografisch/seitentechnisch nicht immer auf Buch-Niveau.
- **HTML/CSS → Paged.js** kann hübsch sein, ist aber eher “Power-Web-Hack” als robuste Buchpipeline.

### Entscheidung nach 3 Fragen

1. **Muss die Druckerei PDF/X (z. B. PDF/X-1a oder X-4) _zwingend_?**
   → Wenn ja: Typst nur mit **externer Prepress-Stufe** oder nicht als finaler Druckdaten-Master.

2. **Braucht dein Layout systematisch Textumfluss um Bilder (Wrap-Figures) wie im Magazin?**
   → Wenn ja: Typst ist aktuell unglücklich; dann lieber InDesign/HTML-Layoutmodelle.

3. **Willst du maximal automatisieren (CI-Builds, Varianten, Dateneinspeisung, “book as code”)?**
   → Dann ist Typst sehr attraktiv.

---

## 2) Der “Buch-Pilot” (10–20 Seiten, aber brutal repräsentativ)

Ziel: Du testest **genau die Seiten**, die später Schmerzen machen.

**Seiten-Set (Minimum)**

1. Kapitelstart (mit großer Abbildung + Intro-Teaser)
2. Reine Fließtextseite (Blocksatz, Trennung, Mikrotypografie)
3. Seite mit 2–3 Abbildungen + Captions + Referenzen
4. Große Tabelle (quer / über Spalten)
5. “Red-Flag/Take-Home-Message”-Boxen (mehrere auf einer Seite)
6. Fallbeispiel (visuell strukturiert: Symptome → Hypothesen → Tests → Entscheidung)
7. Doppelseite mit Grid-Layout (Text links, Bildmodule rechts)
8. Literatur/Glossar-Seite (Listen, Hängungen, Mikro-Spacing)

**Messkriterien (Go/No-Go)**

- **Umbruchdrift**: Ändert ein Satz im Kapitel 3 plötzlich 40 Seiten weiter die Bildposition? (Sollte selten passieren.)
- **Bildstabilität**: Keine Überläufe, keine “Float-Überraschungen”.
- **Schrift-Reproduzierbarkeit**: CI-Build sieht identisch aus wie lokal.
- **Prepress-Risiko**: Farben/Bilder verhalten sich so, dass du ruhig schlafen kannst (oder du planst die Prepress-Stufe fest ein).

---

## 3) Repo-Struktur (sauber, skalierbar, “book as code”)

```text
book/
├─ src/
│  ├─ main.typ                 # Buch-Driver
│  ├─ styles/
│  │  ├─ theme.typ             # Tokens (Farben, Schriften, Spacing)
│  │  ├─ typography.typ        # Typografie-Regeln (Set/Show)
│  │  └─ page.typ              # Seitengeometrie, Kopf/Fuß
│  ├─ components/
│  │  ├─ blocks.typ            # Callout, Card, Blockquote, Side-Note, etc.
│  │  ├─ inline.typ            # Badge, Tag, Kbd, Icon-Text
│  │  ├─ tables.typ            # Styled-Table, Comparison-Table
│  │  ├─ grids.typ             # Gallery/Feature/Stats/Comparison-Grid
│  │  ├─ layouts.typ           # Sidebar, Magazine, Scientific-Paper, etc.
│  │  └─ spreads.typ           # Book-Cover, Chapter-Opener, Part-Page
│  ├─ chapters/
│  │  ├─ 00-cover.typ
│  │  ├─ 01-intro.typ
│  │  ├─ 02-...typ
│  │  └─ ...
│  └─ data/
│     ├─ glossary.yml
│     ├─ references.bib
│     ├─ sample-patients.json
│     └─ sample-study.csv
├─ assets/
│  ├─ figures/                 # bevorzugt PDF für Vektor
│  └─ photos/                  # PNG/JPG (vorsichtig bei CMYK)
├─ fonts/                      # alle Buchfonts lokal, reproduzierbar
├─ dist/
├─ scripts/
│  ├─ build.ps1
│  ├─ preflight.ps1
│  └─ setup.ps1
└─ .vscode/
   ├─ settings.json
   └─ tasks.json
```

---

## 4) VS Code Setup (Tinymist) + Tasks (One-Key-Build)

### `.vscode/settings.json` (empfohlen)

```json
{
  "[typst]": { "editor.formatOnSave": true },

  "tinymist.exportPdf": "onSave",
  "tinymist.rootPath": "${workspaceFolder}",
  "tinymist.systemFonts": false,

  "tinymist.previewFeature": "enable",
  "tinymist.semanticTokens": "enable"
}
```

### `.vscode/tasks.json` (Build, Watch, “Druck-Build”)

```json
{
  "version": "2.0.0",
  "tasks": [
    {
      "label": "typst: build (fast)",
      "type": "shell",
      "command": "typst compile --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf",
      "problemMatcher": []
    },
    {
      "label": "typst: watch",
      "type": "shell",
      "command": "typst watch --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf",
      "problemMatcher": []
    },
    {
      "label": "typst: build (UA-1)",
      "type": "shell",
      "command": "typst compile --root . --ignore-system-fonts --font-path fonts --pdf-standard ua-1 src/main.typ dist/book-ua.pdf",
      "problemMatcher": []
    }
  ]
}
```

---

## 5) Layout-Strategie, die Typst wirklich gut kann (und die es “buchig” macht)

### Regel 1: “Magazin-Wrap” vermeiden → Grid-Module statt Textumfluss

Typst ist gerade **sehr gut** in:

- **Grid-Layouts** (Text/Bild nebeneinander, stabile Module)
- **Block-Figures** mit Caption/Referenzen
- **Klaren Seitentypen** (z. B. Kapitelstart, Box-Seite, Tabelle-Seite)

Damit bekommst du die “modern medical literature”-Optik eher über:

- wiedererkennbare Box-Patterns (Clinical Pearl, Red Flag, Algorithmus, Merke-Kasten)
- modulare Bildspalten statt “Text umfließt Bild”

### Regel 2: Float-Policy wie ein Gesetzbuch

Definiere im Template:

- wann `placement: top/bottom` erlaubt ist,
- wann Bilder **inline** bleiben müssen,
- und wo du Floats komplett verbietest (z. B. direkt nach Kapitelüberschrift).

Das ist nicht “spießig” – das ist **Umbruch-Stabilitätsversicherung**.

### Regel 3: Fonts und Builds sind heilig

Für Buchprojekte gilt:

- Fonts **ins Repo**, system fonts ignorieren,
- CI-Build ist die Wahrheit,
- jede Ausgabe ist reproduzierbar.

---

## 6) CI Workflow (GitHub Actions) – reproduzierbarer Build

Kurzform (Docker-Image, gepinnte Version):

```yaml
name: build-book
on:
  push:
    branches: ["main"]
  pull_request:

jobs:
  pdf:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Build
        run: |
          mkdir -p dist
          docker run --rm \
            -v "$PWD:/work" -w /work \
            ghcr.io/typst/typst:0.14.2 \
            compile --root . \
            --ignore-system-fonts --font-path fonts \
            src/main.typ dist/book.pdf

      - uses: actions/upload-artifact@v4
        with:
          name: book-pdf
          path: dist/book.pdf
```

---

## 7) Prepress-Risiken (ehrlich) + robuste Gegenmaßnahmen

### Risiko A: PDF/X fehlt (oder ist noch nicht da)

**Mitigation**:

- Druckerei-Anforderungen **so früh wie möglich** einsammeln.
- Wenn PDF/X Pflicht: plane eine **Prepress-Konvertierungsstufe** fest ein (nicht “vielleicht später”).
- Alternativ: Typst = Master für Inhalt + Review, finaler Export in DTP nur für Druckdaten (Hybrid).

### Risiko B: Color Management / ICC / CMYK-Assets

**Mitigation**:

- Wenn möglich: **RGB-first** Workflow + Druckerei macht Konvertierung (klären!).
- Kritische Abbildungen als **Vektor-PDF** (Diagramme) oder als geprüfte Rasterassets.
- Früher Proof (Testdruck / Softproof), nicht erst am Ende.

### Risiko C: Mehrspalten ohne Balancierung

**Mitigation**:

- Spalten sparsam einsetzen.
- Lieber “2-Spalten-Feeling” über Grid-Module statt klassische Zeitungsspalten.

---

## 8) Migrationspfade (je nachdem, wo deine Inhalte herkommen)

### Pfad 1: Typst-first (maximale Layoutkontrolle)

- Beste Wahl, wenn du ohnehin ein “Design-System-Buch” bauen willst.
- Du schreibst direkt in Typst, Komponenten/Seitentypen sind nativ.

### Pfad 2: Markdown-first mit Typst-Backend (Schreibkomfort, weniger Migration-Stress)

- Du behältst Markdown als Quelle, wandelst nach Typst (z. B. via Pandoc-Writer) und lässt dein Typst-Template die Gestaltung erledigen.
- Gut, wenn du viel Content schon in Markdown/Websiteform hast.
- Nachteil: Für “Super-Layouts” brauchst du an manchen Stellen **Raw-Typst-Inseln**.

### Pfad 3: Hybrid Mastering

- Kapiteltext in Typst/Markdown, aber:
  - Cover und ein paar “Hero-Spreads” in InDesign
  - Rest automatisiert über Typst

- Sehr pragmatisch, wenn du 5% Seiten hast, die sonst 80% Ärger machen.

---

## 9) Konkrete Empfehlung für _dein_ medizinisches Mischformat (realistisch, nicht romantisch)

Wenn dein Ziel ist: **modern, systematisch, automatisierbar, viele Abbildungen, didaktische Boxen, klare Seitentypen** – dann ist Typst sehr plausibel als Hauptwerkzeug.

Wenn du aber absehbar brauchst:

- **PDF/X-Pflicht**, **ICC-Output Intent**, farbverbindliche Workflows ohne externe Stufe
- oder sehr viel **Textumfluss um Bilder** wie im Magazin
  … dann ist Typst aktuell eher “ja, aber mit Umwegen” – und InDesign bleibt das sichere Ende der Nahrungskette.

---

## Nächster sinnvoller Schritt (ohne Rückfragen-Marathon)

1. Lege das Repo wie oben an.
2. Baue den 10–20-Seiten-Pilot mit deinen echten Seitentypen.
3. Entscheide danach: **Typst-first** vs **Hybrid**.
