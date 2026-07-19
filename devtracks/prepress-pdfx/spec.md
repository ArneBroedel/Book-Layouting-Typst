# Spec: Druckvorstufe & PDF/X (Prepress)

## Objective

Das Buch von „bildschirmfertig" auf **druckfertig** bringen: ein PDF, das eine Druckerei ohne
Nachbearbeitung annimmt — mit Beschnitt (Bleed), Schnittmarken, definiertem Farbraum und geprüfter
Bildauflösung. Bisher entsteht nur ein RGB-Bildschirm-PDF (Standard + PDF/UA-1); für echten Druck fehlen
die Prepress-Eigenschaften. tool-updates hat `page(bleed:)`/Spot-Farben/Variable-Fonts bereits als
„optional offen" vermerkt — dieser Track schließt die Lücke.

## Scope (in)

- **Beschnitt & Marken:** `set page(bleed: 3mm)` (Typst 0.15), Schnitt-/Passmarken; Vollbild-Elemente
  (Cover, Part-Pages) bis in den Beschnitt ziehen.
- **Farbraum:** Bewertung RGB → CMYK für den Druck. Typst rendert nativ in einen Farbraum; klären, was
  0.15 an CMYK/`cmyk()`-Ausgabe und ICC-Einbettung leistet, und wo ein Post-Processing-Schritt
  (Ghostscript/`gs`-PDF/X-Konvertierung) nötig ist.
- **PDF/X-Konformität:** Ziel PDF/X-4 (oder -1a) als Druckstandard — via Typst-Flag falls verfügbar,
  sonst dokumentierter Ghostscript-Postschritt. Abgrenzung zu PDF/UA-1 (Barrierefreiheit) und PDF/A
  (Archiv) sauber dokumentieren.
- **Bildauflösung:** Prüfskript/Checkliste, dass eingebettete Raster ≥ 300 dpi bei Zielgröße liegen;
  Warnung bei Unterschreitung. (Aktuell sind alle Assets SVG/vektoriell — Regel für künftige Fotos.)
- **Spot-Farben:** Machbarkeit von Sonderfarben (Pantone/Separation) in Typst 0.15 evaluieren;
  realistische Empfehlung (vermutlich: bei Bedarf via Post-Processing, nicht nativ).
- **Build-Modus:** neuer Wrapper-/CI-Modus `print` → `dist/book-print.pdf` mit Bleed + PDF/X-Pipeline,
  reproduzierbar mit denselben `--ignore-system-fonts --font-path fonts`-Flags.

## Alignment: track `typst-toolset`

**Unabhängig** vom Produktisierungs-Track [`typst-toolset`](../typst-toolset/).

- Prepress betrifft die **Showcase-Buch-Ausgabe** (Bleed, PDF/X, `print`-Build), nicht die
  Generalisierung von Komponenten/Skills.
- Toolset-MVP braucht Prepress **nicht**. Später kann die Toolset-CLI einen `print`-Modus anbieten,
  der Entscheidungen/Skripte aus *diesem* Track konsumiert — Scope hier bleibt das Buch + Build-Modus.
- Keine künstliche Blockade: Prepress und Toolset Phase 0–2 dürfen parallel laufen.

## Scope (out)

- Keine Änderung am inhaltlichen Layout/Design des Buches (nur Ausgabe-Eigenschaften).
- Keine Lizenzierung kommerzieller ICC-Profile; nur frei verfügbare/Standardprofile.
- Keine echte Druckbestellung — Ziel ist ein abnahmefähiges PDF + Preflight-Nachweis.
- Keine Package-Extraktion / kein Skill-Pack (das ist `typst-toolset`).

## Acceptance

- `dist/book-print.pdf` mit 3 mm Bleed + Schnittmarken baut reproduzierbar.
- PDF/X-4 (oder dokumentierte Begründung für die gewählte Variante) per Preflight bestätigt
  (`verapdf`/`gs`/Acrobat-Preflight-Report im Track abgelegt).
- Auflösungs-Checkliste/Skript vorhanden; Farbraum-Entscheidung dokumentiert.
- CLAUDE.md-Build-Sektion um den `print`-Modus ergänzt.

## Risiken

- Typst 0.15 deckt CMYK/PDF/X möglicherweise nicht nativ ab → Ghostscript-Postschritt als Fallback
  einplanen (Risiko: Farbverschiebungen bei RGB→CMYK ohne sauberes ICC-Management).
- Spot-Farben sind in Typst evtl. nicht erreichbar → ehrliche „geht nicht nativ"-Empfehlung statt Hack.
