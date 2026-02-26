# Typst Missing Manual – Book Design Showcase

Dieses Projekt ist ein **Showcase-Dokument** für Typst mit Fokus auf **moderne Buchgestaltung** (Fachbuch / Medizin / Didaktik).
Es ist so aufgebaut, dass du es wie ein Softwareprojekt versionieren kannst (Git), inkl. Styles, Komponenten, Kapitel.

> Hinweis: Dieses Repo ist **offline-freundlich** (keine externen Typst-Packages nötig).
> In `main.typ` gibt es optional markierte Abschnitte, die externe Packages (z.B. CeTZ für Diagramme) nutzen können,
> falls du das willst.

## 1) Installation (lokal)

### Typst CLI
- Windows: `winget install Typst.Typst`
- macOS (Homebrew): `brew install typst`
- Linux: siehe https://typst.app/docs/installation/

Danach:
```bash
typst --version
```

### VS Code Setup (empfohlen)
- Extension: **Tinymist Typst** (PDF Live Preview, Completion, Diagnostics)
- Optional: **LTeX** (Spellchecking Deutsch), **Error Lens**, **EditorConfig**, **GitLens**

## 2) Build / Live Preview

```bash
# Live-Compile
typst watch main.typ out/book.pdf

# Einmal bauen
typst compile main.typ out/book.pdf
```

## 3) Druck/Prepress
Typst erzeugt PDF. Für viele Druckereien reicht das.
Wenn du **PDF/X, Output-Intent, CMYK-Konvertierung, TAC** usw. brauchst, ist ein zusätzlicher Prepress-Schritt üblich:

- **Ghostscript** (Automatisierung, v.a. bei PDF/A, einfachen Konvertierungen)
- **Scribus** oder **Affinity/Acrobat** (visuelle Kontrolle)
- Professionell: callas pdfToolbox / Acrobat Preflight (kostenpflichtig)

Du kannst den Workflow so halten:
Typst → PDF → (Optional Prepress-Profil/Preflight) → Druckerei.

## 4) Projektstruktur

```text
typst-missing-manual-showcase/
  main.typ
  styles/
    theme.typ
    page.typ
    typography.typ
  components/
    admonitions.typ
    figures.typ
    tables.typ
    learning.typ
  chapters/
    00-intro.typ
    01-typography.typ
    02-structure.typ
    03-layout.typ
    04-graphics.typ
    05-med-didactics.typ
    06-extreme.typ
  assets/
    images/
      placeholder.svg
    patterns/
  out/
```

## 5) Was du hier lernst

- Robuste **Trennung von Inhalt und Design**
- Wiederverwendbare „Bausteine“: Merkkästen, Warnungen, Checklisten, Lernziele, Cases
- Moderne Layouts: Kapitel-Opener, Marginalspalte, Karten, Tabellen, Infografiken
- Fortgeschritten: Overlays, Full-bleed, grid-basierte Seiten, Micro-Layouts
