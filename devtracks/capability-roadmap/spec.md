# Capability Roadmap — Spec (Lückenanalyse)

## Zielbild

Das Repo ist gleichzeitig **produktives Buchbau-System** und **Showcase-/Referenzbuch**
für das Typst-Ökosystem. Diese Spec hält fest, was ein modernes
**medizinpädagogisches Fach- und Lehrbuch** an Darstellungs- und Layout-Fähigkeiten
braucht, und vergleicht den Anspruch mit dem Ist-Stand (Stand: 18 Kapitel, ~28
Komponenten, Typst 0.15.0).

Der Anspruch („was muss so ein System können") gliedert sich von der Mikrotypografie
bis zur Produktion. Daraus abgeleitet wurden zwei Lücken-Klassen:

- **Klasse A — autorenseitige Didaktik-Komponenten:** wiederverwendbare Bausteine,
  mit denen Autor:innen didaktisch hochwertige Inhalte setzen (Lernziele, Merksatz,
  Klinischer Fall, Cave, MCQ, Evidenz-Badges, Score-/Normwert-Tabellen, Marginalia,
  Spreads).
- **Klasse B — visuelle Showcase-Fähigkeiten:** Diagramm- und Datenvisualisierungs-
  Typen des med. Fachbuchs (Balken-/Box-/KM-/Forest-/ROC-/Perzentil-Plots, chemische
  Strukturen, Timelines, Zyklus-/Pathway-Diagramme, Pedigrees, Index, Einheiten).

## Abgrenzung gegen bestehende Devtracks

Nicht Teil dieser Roadmap (bereits abgedeckt): `pinit-showcase` / `pinit-workflow`
(Annotationen/Leader-Lines), `additional-packages` (Kap. 11–14: Physica, Glossarium,
Alexandria/Pergamon, Biceps, Fontawesome, Diagraph, Tidy, CtxJS, Touying, Ilm,
Brilliant-CV), `template-patterns` (Kap. 15–17), `tool-updates` (Typst 0.15.0,
Paket-Bumps, native Multi-Bibliographie, PDF/UA).

## Gap-Inventar

Status: ✅ vorhanden · ◐ teilweise/generisch · ✗ fehlt.

### Klasse A — Didaktik-Komponenten & Tabellen

| Fähigkeit | Status | Heutiger Stand |
|---|---|---|
| Lernziele (Kapitelstart) | ✗ | — |
| Zusammenfassung / „In Kürze" | ✗ | — |
| Merksatz / Key Point / Memo | ◐ | nur generisches `key-concept` (Definition) |
| Klinischer Fall (strukturiert) | ✗ | — |
| Praxistipp / Clinical Pearl | ✗ | — |
| Cave / Red Flag (didaktisch) | ◐ | nur `callout(tone:"danger")` |
| Definition | ◐ | `key-concept` generisch |
| Exkurs / Vertiefung | ✗ | — |
| Mnemonic / Eselsbrücke | ✗ | — |
| MCQ / Prüfungsfrage (mit Lösung) | ✗ | — |
| Differenzialdiagnose-Box | ✗ | — |
| Evidenz-/Empfehlungs-Badge (LOE/Grad) | ✗ | nur generisches `badge`/`tag` |
| Score-Tabelle (Glasgow, APACHE …) | ✗ | — |
| Normwert-/Referenzbereich-Tabelle (Abweichung farbig) | ✗ | — |
| Mehrseitige Tabelle mit wiederholtem Header | ✗ | `styled-table` ohne Wiederholung |
| Zell-Spanning-Helfer | ✗ | — |
| Echte Marginalia (kollisionsfrei) | ◐ | `side-note` (im Fluss), `toffee-tufte` nur als Code-Beispiel |
| Zwei-Seiten-Spread (Doppelseite) | ✗ | `chapter-opener` einseitig |
| Klinischer-Fall-Spread | ✗ | — |

### Klasse B — Visuelle Fähigkeiten

| Fähigkeit | Status | Heutiger Stand |
|---|---|---|
| Flowchart / Entscheidungsbaum | ✅ | fletcher, diagraph (Kap. 08, 13) |
| Block-/Schemadiagramm | ✅ | cetz, diagraph |
| Linien-/Streudiagramm | ◐ | cetz manuell (Vitalwerte, Kap. 08) |
| Balkendiagramm | ✗ | — |
| Boxplot | ✗ | — |
| Kaplan-Meier / Überlebenskurve | ✗ | — |
| Forest Plot (Metaanalyse) | ✗ | — |
| ROC-Kurve | ✗ | — |
| Wachstums-/Perzentilkurve | ✗ | — |
| Annotierte Abbildung (Leader Lines) | ✅ | pinit (Kap. 12, 18) |
| Chemische Struktur / Skelettformel | ✗ | — (alchemist vorhanden, ungenutzt) |
| Timeline / Gantt (Verlauf/Therapie) | ✗ | — (timeliney vorhanden, ungenutzt) |
| Zyklusdiagramm (Herz-/Zellzyklus) | ✗ | — |
| Pathway (Stoffwechsel/Signal) | ◐ | nur generische Boxen/Pfeile |
| Stammbaum / Pedigree (Genetik) | ✗ | — (kein Paket; CeTZ-Eigenbau) |
| Stichwortverzeichnis / Index | ✗ | — (in-dexter vorhanden, ungenutzt) |
| Einheiten-/Bereichsformatierung (Wert + Einheit) | ◐ | manuell (zero nur Kap. 09) |
| Querverweise | ◐ | nur `@label`, nicht systematisch |

## Akzeptanzkriterium

Jede ✗/◐-Zeile wird zu ✅: als wiederverwendbare Komponente **und** im Buch
demonstriert, reproduzierbar kompiliert (`--ignore-system-fonts --font-path fonts`),
ohne neue Warnungen, ohne Regression an Kapiteln 00–18.
