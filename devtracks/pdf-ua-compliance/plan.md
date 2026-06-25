# PDF/UA-Compliance — Plan

## Arbeitsschritte

1. **Devtrack-Docs** (diese Dateien).
2. **`13-wasm-meta.typ`:**
   - DOT `fontname="sans-serif"` → `"Libertinus Serif"` (behebt Problem 4).
   - tidy: lokalen `ua-style` definieren (minimal-Funktionen + `show-parameter-list`
     mit `DejaVu Sans Mono`) und `show-module(..., style: ua-style, show-module-name: false)`
     aufrufen (behebt Problem 1).
   - `alt:` auf alle 3 Abbildungen.
3. **`14-templates.typ`:** `@preview/fontawesome` importieren, `fa-version("6")`,
   Emoji 📐📝📋ℹ️ → `fa-*`-Icons (behebt Problem 2).
4. **Alt-Texte (Problem 3):** `alt:` auf jede `figure()` in Kap. 8, 9, 12, 13, 15, 16,
   19, 20, 21. Getrieben durch die UA-Fehlerliste (exakte Quellzeilen), bis keine
   `missing alt text`-Fehler mehr auftreten.
5. **Iterativer Qualitäts-Loop:** nach jedem Schritt UA-Build erneut laufen lassen,
   neue/verbleibende Fehler beheben, wiederholen, bis EXIT 0 ohne Warnungen. Danach
   Standard-Build prüfen (ebenfalls warnungsfrei) und visuelle Stichprobe.

## Verifikation

Siehe `spec.md` (Akzeptanzkriterium). Zusätzlich: Stichproben-Render der geänderten
Seiten (Kap. 13 tidy/diagraph, Kap. 14 Icons) zur Sicherstellung, dass die Optik
erhalten bleibt.

## Status

- [x] 1 Devtrack-Docs
- [x] 2 ch13 — `_ua-tidy-style` (heading-frei, Mono-Font), DOT `fontname="Libertinus Serif"`, alt auf 3 Figures
- [x] 3 ch14 — Emoji → fontawesome (`fa-table-cells`, `fa-font`, `fa-list`, `fa-circle-info`)
- [x] 4 Alt-Texte — `alt:` auf alle Inhalts-Figures (Kap. 8,11,12,18,19,20,21); ch11/ch18-Formeln in `figure(numbering: none, alt:)` gewrappt; `$"SpO"_2$` → `SpO#sub[2]`
- [x] 5 Gates — beide Builds **EXIT 0, 0 Errors, 0 Warnings**

### Schlüssel-Lösung für Paket-interne Grafiken

codly/zero/glossarium erzeugen intern Figures/Equations ohne `alt`, die nicht direkt
erreichbar sind. Globaler Fallback in `setup-typography()`:

```typ
set figure(alt: "Abbildung.")
set math.equation(alt: "Mathematische Formel.")
```

Eigene Inhalts-Figures setzen weiterhin spezifischen `alt`, der den Default überschreibt.

## Ergebnis

```
typst compile … src/main.typ dist/book.pdf                      → EXIT 0, 0 W
typst compile … --pdf-standard ua-1 src/main.typ dist/book-ua.pdf → EXIT 0, 0 W
```

Visuell ohne Regression (Stichproben: pinit-Formel & -Radial, diagraph, tidy,
fontawesome-Icons, Physica-Boxen).
