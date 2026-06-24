# Capability Roadmap — Plan (Roadmap-Tabellen)

Umsetzung **ohne Priorisierung**: alle Lücken aus `spec.md` werden vollständig gebaut
und im Buch demonstriert. Reihenfolge nur nach technischer Abhängigkeit (Wellen).

Zielort-Kürzel: `theme` = `src/styles/theme.typ`; neue Komponentendateien unter
`src/components/`; „Kap." = Showcase-Kapitel. Art: **K** = Komponente, **S** =
Showcase-Demo, **K+S** = beides.

## Klasse A — Roadmap

| Fähigkeit | Paket/Ansatz | Zielort | Art | Abhängigkeiten | Verifikation |
|---|---|---|---|---|---|
| Lernziele | nativ (Box + Icon) | `components/didactics.typ`, Tokens in `theme` | K+S | theme-Tokens | isoliert kompilieren, Box rendert |
| Zusammenfassung / „In Kürze" | nativ | `didactics.typ` | K+S | — | wie oben |
| Merksatz / Memo | nativ | `didactics.typ` | K+S | — | wie oben |
| Klinischer Fall (Anamnese/Befund/Diagnose/Therapie) | nativ (strukturierte Felder) | `didactics.typ` | K+S | — | Felder umbruchsicher |
| Praxistipp / Clinical Pearl | nativ | `didactics.typ` | K+S | — | wie oben |
| Cave / Red Flag | nativ (eigene Optik) | `didactics.typ` | K+S | — | optisch vs. Callout klar getrennt |
| Definition (formal) | `key-concept` vereinheitlichen | `didactics.typ` | K+S | blocks.typ | bestehende Nutzung bleibt grün |
| Exkurs / Vertiefung | nativ (abgesetzt) | `didactics.typ` | K+S | — | wie oben |
| Mnemonic / Eselsbrücke | nativ (verspielt) | `didactics.typ` | K+S | — | wie oben |
| MCQ / Prüfungsfrage | nativ; Antwort via `state()`/Lösungsschlüssel | `components/exam.typ` | K+S | introspection | Frage + auflösbare Lösung |
| Differenzialdiagnose | Tabelle + Box | `didactics.typ` / `tables.typ` | K+S | tables | rendert |
| Evidenz-/Empfehlungs-Badge | nativ (LOE 1–5, Grad A–D) | `components/inline.typ` | K+S | theme-Semantikfarben | inline-Bündigkeit |
| Score-Tabelle | nativ über `styled-table` | `components/tables.typ` | K+S | — | Punktsumme korrekt |
| Normwert-Tabelle (Abweichung farbig) | nativ; Schwellen-Highlight | `tables.typ` | K+S | theme danger/warning | abnorme Werte farbig |
| Mehrseitiger Header | Typst 0.15 `table.header(repeat:)` | `tables.typ` | K | 0.15 | Header auf Folgeseite |
| Zell-Spanning-Helfer | `table.cell(colspan/rowspan)` Wrapper | `tables.typ` | K | — | Span rendert |
| Marginalia (kollisionsfrei) | `@preview/marginalia` (Alt: `drafting`) | `components/layouts.typ` | K+S | Paket; mit `page.typ` abstimmen | keine Überlappung |
| Zwei-Seiten-Spread | nativ (`context`, Seitenparität) | `components/spreads.typ` | K+S | page.typ-Geometrie | links/rechts korrekt |
| Klinischer-Fall-Spread | nativ (Fall/Diff/Diskussion) | `spreads.typ` | S | Klin.-Fall-Box | rendert |

## Klasse B — Roadmap

| Fähigkeit | Paket/Ansatz | Zielort | Art | Abhängigkeiten | Verifikation |
|---|---|---|---|---|---|
| Balkendiagramm | `lilaq` (Alt: `cetz-plot`) | `components/charts.typ` + Kap. | K+S | lilaq/cetz-kompat. | Achsen/Balken |
| Boxplot | `lilaq` / CeTZ | charts.typ + Kap. | K+S | wie oben | Quartile sichtbar |
| Kaplan-Meier | Step-Plot (lilaq/CeTZ) | charts.typ + Kap. | K+S | — | Stufen + Zensur-Ticks |
| Forest Plot | CeTZ-Eigenbau (Punkt+CI) | charts.typ + Kap. | K+S | cetz | Effekt + CI + Null-Linie |
| ROC-Kurve | lilaq/CeTZ (Diagonale + AUC) | charts.typ + Kap. | K+S | — | Kurve + Referenzdiagonale |
| Wachstums-/Perzentilkurve | lilaq/CeTZ (mehrere Perzentile) | charts.typ + Kap. | K+S | — | P3..P97 Bänder |
| Chemische Struktur | `@preview/alchemist` | Kap. | S | cetz-Basis | Skelettformel rendert |
| Timeline / Gantt | `@preview/timeliney` | Kap. | S | Paket | Verlauf rendert |
| Zyklusdiagramm | CeTZ-Eigenbau (Kreis + Pfeile) | `components/diagrams.typ` + Kap. | K+S | cetz | Zyklus geschlossen |
| Pathway-Diagramm | fletcher/CeTZ | diagrams.typ + Kap. | K+S | fletcher | Knoten/Kanten |
| Pedigree / Stammbaum | CeTZ-Eigenbau (□/○, Linien) | `components/pedigree.typ` + Kap. | K+S | cetz | Symbole + Generationslinien |
| Stichwortverzeichnis | `@preview/in-dexter` | `main.typ`, Marker in Kapiteln | K+S | über Kapitel verteilt | Index sammelt Einträge |
| Einheiten-/Bereichsformat | `@preview/unify` (Alt: `zero`) | `components/inline.typ` | K+S | Paket | `5 mg`, `80–120 mmHg` |
| Querverweise systematisch | nativ `ref`/Label-Konvention | quer | K+S | — | Verweise auflösen |

## Umsetzungs-Wellen (abhängigkeitssortiert)

0. Roadmap-Docs (diese Dateien).
1. Tokens + Didaktik-Kit (`didactics.typ`, `exam.typ`, Evidenz-Badges).
2. Klinische Tabellen (`tables.typ`).
3. Marginalia & Spreads (`layouts.typ`, `spreads.typ`).
4. Datenvisualisierung (`charts.typ` + Kapitel).
5. Med. Diagramme (`diagrams.typ`, `pedigree.typ`, alchemist, timeliney + Kapitel).
6. Navigation (in-dexter Index, unify Einheiten).
7. Konsolidierung (Konsistenz, CLAUDE.md/Skills, PDF/UA-Gate).

## Wiederkehrender Qualitäts-Loop

Nach jeder Komponente/jedem Kapitel und am Wellen-Ende: isoliert kompilieren →
Gesamtbuch kompilieren → Sichtprüfung → nachbessern → wiederholen, bis sauber.
Kein Item gilt als fertig, solange Warnungen/Defekte bestehen. Regressionscheck:
Kapitel 00–18 müssen grün bleiben. Wellen-Gate: Gesamtbuch + PDF/UA fehlerfrei.

## Status

- [x] Welle 0 — Roadmap-Docs
- [x] Welle 1 — Didaktik-Kit + Evidenz-Badges (`didactics.typ`, `exam.typ`, inline badges; Kap. 19)
- [x] Welle 2 — Klinische Tabellen (`score-table`, `reference-table`, `long-table`, span helpers)
- [x] Welle 3 — Marginalia & Spreads (`margin-note`/`margin-setup`, `feature-spread`/`clinical-case-spread`)
- [x] Welle 4 — Datenvisualisierung (`charts.typ`: 6 Typen; Kap. 20)
- [x] Welle 5 — Med. Diagramme (`diagrams.typ`, `pedigree.typ`, alchemist, timeliney; Kap. 21)
- [x] Welle 6 — Navigation (in-dexter Index in Back Matter, `qty`/`qty-range`)
- [x] Welle 7 — Konsolidierung (Komponentenverzeichnis, CLAUDE.md, Gates)

Alle Lücken aus `spec.md` sind umgesetzt **und** im Buch demonstriert. Der
Standard-Build (102 S.) kompiliert ohne neue Warnungen (nur die vorbestehende
`diagraph`-Schriftwarnung); Kapitel 00–18 unverändert.

**PDF/UA-1:** scheitert bereits **vor** dieser Arbeit (vorbestehend) — Emoji-Glyph,
fehlende Alt-Texte auf bestehenden CeTZ/Codly-Abbildungen und ein `tidy`-Heading in
Kap. 13. Volle PDF/UA-Konformität ist eine buchweite Barrierefreiheits-Aufgabe
(Alt-Texte für alle Abbildungen, Emoji-Ersatz, `tidy`-Fix) und gehört in einen
eigenen Track (vgl. `tool-updates`), nicht in diese Capability-Roadmap.

### Hinzugefügte @preview-Pakete
`marginalia` (Randnotizen), `in-dexter` (Index), `alchemist` (Strukturformeln),
`timeliney` (Zeitleisten). Charts/Diagramme/Pedigree als CeTZ-Eigenbau für eine
konsistente visuelle Sprache (keine neuen Plot-Abhängigkeiten).
