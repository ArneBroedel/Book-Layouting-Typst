# PDF/UA-Compliance — Spec

## Ziel

Der vollständige Build muss **fehlerfrei** sein — sowohl der Standard-PDF-Build als
auch der barrierefreie `--pdf-standard ua-1`-Build. Aktuell scheitert der PDF/UA-Build
(vorbestehend, unabhängig von der Capability-Roadmap), und der Standard-Build erzeugt
eine vermeidbare Warnung.

## Problemanalyse (diagnostiziert via `typst compile --pdf-standard ua-1`)

| # | Problem | Ursache | Ort |
|---|---|---|---|
| 1 | `PDF/UA-1 error: heading title could not be determined` (Hard-Abort) | `tidy.show-module` (default-Style) erzeugt eine „Parameters"-Überschrift mit einem `context`-Ausdruck als Titel; der UA-Tagger kann den Titel nicht statisch bestimmen | `13-wasm-meta.typ` (tidy `default.typ:166`) |
| 2 | `text "📐"/"📝"/"📋"/"ℹ️" could not be displayed with font "Libertinus Serif"` | Emoji-Glyphen fehlen in den eingebetteten Fonts | `14-templates.typ:74–77` |
| 3 | `missing alt text` (×30) | Abbildungen (CeTZ/Fletcher/Diagraph/Tablem/Code) ohne Alternativtext; PDF/UA verlangt `alt` auf jeder Grafik | alle Kapitel mit `figure(...)` |
| 4 | `warning: unknown font family: sans-serif` (Standard-Build) | DOT-Quelle setzt `fontname="sans-serif"` (unter `--ignore-system-fonts` nicht vorhanden) | `13-wasm-meta.typ:27` |

Problem 1 ist ein Hard-Error und maskiert die übrigen UA-Fehler, bis er behoben ist.

## Verifizierte Lösungsmechanismen (per Probe bestätigt)

- **Alt-Text:** `figure(..., alt: "…")` erfüllt die UA-Anforderung; ohne `alt` meldet der
  Export die exakte Quellzeile.
- **tidy:** Ein **Custom-Style** (Funktionen aus `tidy.styles.minimal`, aber
  `show-parameter-list` mit eingebettetem Mono-Font statt „Cascadia Mono") rendert
  authentische tidy-Ausgabe **ohne** Überschrift und **ohne** Font-Warnung.
- **Emoji:** Ersatz durch `@preview/fontawesome`-Icons (Fonts eingebettet, bereits in
  Kap. 12 genutzt).
- **diagraph:** DOT-`fontname` auf einen eingebetteten Font setzen.

## Akzeptanzkriterium

```bash
typst compile --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
typst compile --root . --ignore-system-fonts --font-path fonts --pdf-standard ua-1 src/main.typ dist/book-ua.pdf
```

Beide Befehle: **EXIT 0, keine Errors, keine Warnungen.** Inhaltlich/visuell keine
Regression gegenüber dem bisherigen Buch.
