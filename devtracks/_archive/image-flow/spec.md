# Specification: Bildintegration & Text-Bild-Fluss

## Objective

Das Showcase-Buch um eine saubere, token-gebundene Möglichkeit erweitern,
echte **Bilddateien** (z. B. Anatomie-Schemata) auf der Seite zu platzieren
und Bild und Fließtext zu einer Einheit zu verzahnen — vom seitlichen
Textfluss bis zum Umfließen beliebiger Konturen, inklusive beschrifteter
Anatomie und Detailvergrößerung.

## Ausgangslage

Vor diesem Track enthielt das Buch **keine einzige Rasterbild-Datei**; alle
„Bilder" waren generiert (CeTZ-Charts, `rect`, Diagramme). Es gab keine
Konvention für Bilddateien und keinen Text-Bild-Fluss. Typst kann Textfluss
um Bilder nicht nativ (Issues typst#553, #5181).

## Recherche-Ergebnis (Juni 2026)

| Bedarf | Lösung | Bewertung |
| --- | --- | --- |
| Text seitlich am Bild vorbei | `@preview/wrap-it:0.1.1` | einfach, rechteckig, links/rechts |
| Beliebige Konturen umfließen | `@preview/meander:0.4.4` | mächtigste Engine, Konturen via `contour.grid` |
| Teilbilder (a)(b)(c) | `@preview/subpar:0.2.2` | Standard für Subfigures |
| Gleitende Abbildungen | nativ `figure(placement:)` | kein Paket nötig |
| Detaillupe | **eigen** | `@preview/magnifying-glass:0.1.0` ist mit Typst-0.15-`scale()` inkompatibel |
| Anatomie-Beschriftung | **eigen** (`place`-Marker + Legende) | kein Anatomie-Paket im Ökosystem |
| Nummerierung pro Kapitel | **nativ** (statt `@preview/i-figured`) | i-figured kollidiert mit subpar-Subcountern |

Entscheidung: **Hybrid** — bestehende Pakete (`wrap-it`, `meander`, `subpar`)
unter einer einheitlichen Komponentenschicht, plus schlanke
Eigenentwicklungen, wo Pakete fehlen oder inkompatibel sind.

## Integration Requirements

- Neue Komponentendatei `src/components/figures.typ`, tokengebunden
  (`theme.typ`), keine hartkodierten Farben/Maße.
- Reproduzierbare, selbst-enthaltene Beispielbilder als SVG unter
  `src/assets/anatomy/` (keine Binär-Blobs, keine Lizenzfragen).
- Neues Kapitel `src/chapters/22-bildintegration.typ`, eingebunden in
  `src/main.typ` als Teil von **Teil VI** (medizinische Fachbuch-Fähigkeiten),
  nach Kapitel 21, vor dem Back Matter.
- Kapitel endet mit `#section-break()`, konsistent zu allen Kapiteln.
- Jede Bildkomponente reicht `alt`-Text an die Figure weiter (PDF/UA-1).
- Bildpfade werden wurzel-absolut angegeben (`/src/assets/…`), da `image()`
  relativ zur aufrufenden Datei (`figures.typ`) auflöst.

## Scope — Komponenten

1. `plate` — gleitende Voll-/Spaltenabbildung (nativ, Floats)
2. `wrap-figure` — seitlicher Textfluss (`wrap-it`)
3. `kontur-figur` — Konturumfließen, rund/rechteckig (`meander`)
4. `bildtafel` — mehrteilige Tafel mit (a)(b)(c) (`subpar`)
5. `anatomie-figur` — nummerierte Marker + Legende (eigen)
6. `bild-detail` — kreisförmige Detaillupe (eigen)
7. `setup-figure-numbering` — Abbildungsnummern pro Kapitel (nativ)

## Out of scope

- Raster-/Pixelbilder als mitgelieferte Assets (bewusst SVG für
  Reproduzierbarkeit; Komponenten akzeptieren jedoch jedes `image()`-Format).
- Umstellung der Nummerierung in bestehenden Kapiteln (opt-in pro Kapitel).

## Acceptance

- `typst compile … src/main.typ` und `--pdf-standard ua-1` bauen fehlerfrei.
- Alle sieben Komponenten rendern korrekt im A4-Buchkontext (visuell geprüft).
- Tafel-Teilbilder zeigen (a)(b); Gesamt-/Einzelnummern folgen „Abb. 22.x".
