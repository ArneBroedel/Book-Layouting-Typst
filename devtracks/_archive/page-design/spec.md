# Spec: Seitengestaltung & Hintergrund (Page-Design Showcase)

## Objective

Den Werkzeugkasten für die **Gestaltung der Seite selbst** (Hintergrund, nicht Inhalt) erschließen
und vollständig vorführen: farbige Flächen/Verläufe, Wasserzeichen, vollflächige Hintergründe,
durchlaufende Abschnittsflächen, Rand-Farbbänder, ein **Daumenregister/Griffregister** (der
„Ordner-Effekt", an dem Kapitelübergänge von außen am Buchschnitt sichtbar werden) sowie dekorative
Rahmen und Eck-Verzierungen.

## Scope (in)

- **Neues Komponenten-Modul** `src/components/page-design.typ` mit wiederverwendbaren, token-gebundenen
  Helfern: `watermark`, `full-bleed`, `section-background`, `margin-band`, `thumb-index`
  (+ `book-parts`), `page-frame`, `corner-ornament`, `gradient-panel`, `gradient-text`,
  `tiling-background` (+ `dot-tiling`).
- **Theme-Token** `part-colors` (Teil I–VI, geordnete Liste) und Demo-Verläufe (`wash`/`radial`/`conic`)
  in `src/styles/theme.typ`.
- **Showcase-Kapitel** `src/chapters/23-seitengestaltung.typ`, das alle Techniken mit erklärendem
  Fließtext und `index[…]`-Markern demonstriert.
- **Einbindung** als neuer **Teil VII** in `src/main.typ` (Schlusskapstein vor dem Back-Matter).

## Scope (out)

- **Showcase-only** (Nutzer-Entscheidung): kein buchweites Register/Hintergrund; das übrige Buch bleibt
  optisch unverändert. Die buchweite Register-Variante ist nur als dokumentierte Referenz im Modul
  hinterlegt (`register-active-from-headings`).
- Keine neuen Pflicht-Pakete: alles nativ (Typst 0.15). `@preview/s6t5-page-bordering` wird nur als
  Alternative *erwähnt*, nicht importiert.

## Entscheidungen (vom Nutzer bestätigt)

- **Umfang:** Showcase-only.
- **Register-Stufung:** pro Teil (Teil I–VI), 6 Farben → `part-colors`.
- **Platzierung:** neues Teil VII, ch23 als Schlusskapstein (lokal gescopte `set page`-Demos bluten so
  nicht in Folgekapitel).

## Acceptance

- `typst compile … src/main.typ dist/book.pdf` und `--pdf-standard ua-1` liefern beide EXIT 0.
- Kapitel 23 erscheint als Teil VII; alle Techniken sind sichtbar und korrekt
  (Register staffelt pro Teil, recto/verso-Spiegelung der Randelemente, Abschnitts-Hintergrund läuft
  über Seitenumbrüche).
- Dekorative Hintergrundbilder tragen Alt-Text (PDF/UA bleibt grün).

## Risiken / Gotchas

- `set page(…)` beginnt stets eine neue Seite → seitenweite Helfer je auf eigener Seite (Erklärtext
  in den Aufruf-Body legen).
- `@preview/raw`-Inline-Code auf dunklem Hintergrund erzeugt weiße Kästen → auf Full-Bleed-Seiten
  Inline-Code meiden.
- Buchweites Register: `counter(heading).at(loc)` nutzen, *nicht* einen eigenen `.where()`-Selektor-
  Zähler (wird nicht automatisch hochgezählt).
