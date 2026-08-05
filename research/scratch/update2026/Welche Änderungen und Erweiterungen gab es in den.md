<img src="https://r2cdn.perplexity.ai/pplx-full-logo-primary-dark%402x.png" style="height:64px;margin-right:32px"/>

# Welche Änderungen und Erweiterungen gab es in den letzten sechs Monaten bei [https://github.com/typst/typst](https://github.com/typst/typst) Und auch in Bezug auf besonders beliebte oder hochwertige Erweiterungen [https://typst.app/universe/](https://typst.app/universe/)

In den letzten sechs Monaten gab es vor allem den großen Sprung zu Typst 0.15 sowie ein wichtiges Sicherheits‑Update 0.14.2; bei Universe sind u.a. Präsentations‑Frameworks wie `touying`, Diagramm‑Libraries wie `fletcher` und Visualisierungspakete wie `alchemist` und `umbra` besonders hervorgehoben.[^1]

## Typst‑Core (GitHub‑Repo typst/typst)

### Releases im Zeitraum ca. Dez 2025 – Juni 2026

- **0.15.0 (15.06.2026)** – aktuelles Major‑Release mit vielen Sprach‑, Layout‑ und Export‑Erweiterungen.[^2]
- **0.15.0‑rc.1 (09.06.2026)** – Vorabversion mit dem gleichen Funktionsumfang, diente als Release‑Candidate.
- **0.14.2 (12.12.2025)** – Sicherheits‑Release vor allem für das Plugin‑System (`wasmi`‑Runtime) plus kleinere Diagnostics‑Verbesserungen.

0.14.1 (03.12.2025) liegt ein paar Tage außerhalb eines „exakten“ 6‑Monats‑Fensters, ist aber praktisch Teil der aktuellen Wartungslinie (Bugfixes rund um PDF/HTML‑Export, Math, `array.sorted`, Plugin‑Runtime etc.).

### Wichtige Neuerungen in Typst 0.15

**Typografie \& Text**

- **Variable Fonts**: Typst unterstützt jetzt Variationsachsen wie `wght`, `wdth`, `ital`, `slnt`, `opsz`; diese werden aus `text(weight, stretch, style, size)` automatisch gemappt, zusätzliche Achsen über `variations`. Suffixe wie „Variable/Var/VF“ werden intern abgestrippt, sodass statische und variable Schnitte als eine Familie erscheinen.
- **Verbesserte Textfeatures**: `text.alternates` akzeptiert nun auch Integer für Stylistic Sets; Feature‑Tags in `text.features` werden strenger validiert.

**Sprache/Std‑Library**

- Neuer **Datei‑Pfad‑Typ (`path`)**, der überall dort verwendet werden kann, wo bisher reine Strings als Pfad dienten (Import, `image`, Paket‑APIs). Pfade können zwischen Dateien und über Paketgrenzen hinweg weitergereicht werden; das Verhalten ist immer relativ zur Ursprungsdatei.
- Erweiterungen im `calc`‑Modul (u.a. `asinh`, `acosh`, `atanh`, `erf`) sowie deterministische Floating‑Point‑Berechnungen über Plattformen hinweg.

**Layout \& Model**

- Einführung des **`divider`‑Elements** als semantische Abschnittstrennlinie, die Templates gezielt stylen können.
- Verbesserter **List‑Layout** mit `list.marker-align` und korrigierter Marker‑/Item‑Baseline‑Ausrichtung; mehrere alte Layout‑Edgecases wurden behoben.
- Erweiterte **Bibliografie‑Unterstützung**: mehrere Bibliografien pro Dokument, `target` und `group`‑Parameter für feingranulare Zitations‑Zuordnung und Nummernverteilung; bessere CSL‑Interoperabilität (siehe Hayagriva 0.10.0).

**Math**

- Präzisere Anwendung „cramped“ Styles (TeX/MathML‑konform), konsistente Behandlung von `lr(size)` inkl. Mittel‑Delimiter, Korrekturen bei Stretching, Under/Over‑Elementen und `math.cancel`. Einige Funktionen wie `class` verhalten sich jetzt restriktiver (wirkt nur noch auf direkten Body).**

**Export**

- Neuer **Bundle‑Export**: ein Typst‑Projekt kann mehrere Outputs (HTML‑Pages, PDFs, PNGs, SVGs, Assets) in einem „Bundle“ erzeugen, gesteuert u.a. über den `document`‑Typ mit `path`/`format` und einen experimentellen `asset`‑Typ.
- **HTML‑Export**:
    - Math wird künftig standardmäßig als **MathML** ausgegeben (ggf. statt SVG‑Workarounds via `html.frame`), was Accessibility deutlich verbessert.
    - Überarbeitete Paragraph‑Gruppierungslogik: `box`/`block` definieren, ob etwas inline‑ oder block‑level ist; bestimmte Typst‑Blockelemente erzwingen Absatzbildung, wodurch unerwartete `<p>`‑Blöcke reduziert werden.
    - `html.elem(attrs: ..)` „foldet“ Attribute über mehrere Set‑Rules; `html.script`/`html.style` nehmen jetzt nur noch Strings an.
- **PDF‑Export**:
    - Gleichzeitige Zielsetzung mehrerer Standards (z.B. **PDF/UA‑1 + PDF/A‑2a**) möglich, bessere Tagging‑ und Bildunterstützung (JPX, JBIG2, Blend Modes), optimierte Dateigröße (mit `--pretty` für lesbare Ausgabe).
- **SVG/PNG‑Export**:
    - Standardmäßig minifizierte SVGs; Entfernen einiger interne Klassen wie `typst-shape`; diverse Fixes für Gradients, Tilings, Farb‑Bitmap‑Glyphs, deterministische Ausgabe.

**CLI \& Tooling**

- Neuer **`typst eval`**‑Subcommand als genereller Ersatz für `typst query` (Expressions vom CLI aus auswerten).
- `typst fonts --variants` zeigt jetzt ausführlich Font‑Dateipfade und Variationsachsen, Font‑Discovery ist lazily (schneller bei Operationen ohne Fonts).
- `--pretty` Flag für menschenlesbare HTML/SVG/PDF‑Ausgabe, verbesserte Fehlerdiagnostik (z.B. Layout‑Konvergenz), kompaktere Tracebacks.


### Sicherheits‑Update 0.14.2

- Update der verwendeten **WebAssembly‑Runtime (`wasmi`)** wegen einer Use‑after‑free‑Schwachstelle beim Memory‑Grow; Exploitation gilt als schwer, aber Upgrade wird dringend empfohlen, insbesondere lokal. 0.13.1 und älter sind nicht betroffen.
- Zusätzliche Hinweise für `array.sorted`, wenn Paare nicht vergleichbar sind – löst Diagnostikprobleme aus 0.14.1.


## Typst Universe – hervorstechende Pakete

Universe selbst liefert keine öffentlichen Downloadzahlen, aber curated Sektionen („Essential packages“, „New \& Hot“, „It’s showtime“, „At the forefront“) sowie **Featured‑Badges** im Forum, was gute Proxies für Qualität und Popularität sind.[^3][^1]

### Visualisierung \& Diagramme

- **`fletcher`** – Commutative Diagrams mit Knoten und Pfeilen, im Universe‑Banner „Draw attention“ als zentrales Diagramm‑Tool genannt.[^3]
- **`quill`** – Quanten‑Schaltkreisdiagramme; interessant für technisch/wissenschaftliche Unterlagen.[^3]
- **`timeliney`** – Gantt‑Charts; nützlich für Projektpläne und Lehrveranstaltungs‑Zeitachsen.[^3]
- **`alchemist`** – chemische Strukturformeln (Skelettformeln) auf Basis von `cetz`; vom Typst‑Team als Featured‑Package hervorgehoben.[^1][^3]
- **`umbra`** – Paket für eindrucksvolle Drop‑Shadows, ebenfalls explizit als Featured markiert.[^1]


### Strukturierte Dokumente \& Zahlen

- **`zero`** – nummerisches Formatting und Ausrichtung von Zahlen in Tabellen; als Featured‑Package speziell für typographisch saubere Tabellen genannt.[^1]
- **`pavemat`** – Matrix‑Styling mit Feld‑abhängigen Strokes/Fills; geeignet für mathematische/technische Texte.[^1]
- **`hydra`** – erzeugt Abschnittsüberschriften im Seitenkopf, praktisch für Skripte und Bücher mit laufenden Headers.[^1]
- **`suiji`** – deterministische Zufallszahlen (Seed‑basiert), nützlich für reproduzierbare Beispiele und Übungsaufgaben.[^1]


### Präsentation \& „Slides in Typst“

- **`touying`** – leistungsfähiges Präsentationsframework, aktuell auf der Universe‑Startseite/Banner und im Forum als „big one“ hervorgehoben; besticht durch UX, Funktionsumfang und gute Doku.[^3][^1]
- **`polylux`** – weiteres Präsentationspaket; gemeinsam mit `touying` vom Typst‑Team als Grundlage für Präsentations‑Themes empfohlen.[^1]
- **`diatypst`** – „Easy slides with Typst“, Template mit sinnvollen Defaults und einfacher Syntax; Featured‑Template für Präsentationen.[^3][^1]
- **`minimal-presentation`** und **`touying-aqua`** – moderne Präsentations‑Themes; direkt in der Sektion „It’s showtime“ auf der Universe‑Startseite gelistet.[^3]


### CV/Resume‑Templates („Get that bag“)

- **`basic-resume`** – ATS‑freundlicher Standard‑Lebenslauf, vom Universe‑Team als universal einsetzbare Basis hervorgehoben.[^3][^1]
- **`brilliant-cv`, `pesha`, `vercanard`** – verschiedene stilisierte Lebenslauf‑Templates; Universe bewirbt diese explizit in der CV‑Sektion.[^3]
- **`classy-german-invoice`** – Template für deutsche Freelancer‑Rechnungen, Featured‑Status im Forum; für deinen Kontext in DE besonders relevant.[^1]


### Paper‑ und Journal‑Vorlagen

- **`clear-iclr`** – ICLR‑Paper‑Template (ML/AI), Featured; gute Basis für wissenschaftliche Arbeiten im AI‑Bereich.[^1]
- **`splendid-mdpi`, `graceful-genetics`, `springer-spaniel`, `arkheion`, `superb-pci`** – Konferenz/Journal‑Templates (MDPI, Springer, PCI, arXiv‑Stil), teilweise prominent in „At the forefront“ und Forum‑Liste.[^3][^1]


## Popularität \& Qualitätsmetriken in Universe

- Featured‑Badges („Featured packages/templates“) werden manuell kuratiert und basieren u.a. auf **Nützlichkeit, Dokuqualität, Design und Community‑Traktion**.[^1]
- Im Forum wird ein **Star/Upvote‑System mit zeitabnehmender „Popularity“‑Metrik (ähnlich Arch AUR)** diskutiert, um zwischen „dauerhaft beliebt“ und „aktuell trendend“ zu unterscheiden; das ist eher konzeptionell und ergänzt die kuratierten Listen.[^1]

Wenn du magst, kann ich dir als nächstes eine kleine „Best of Universe“‑Selektion speziell für deinen Use‑Case (Skripte für Heilpraktiker‑/Therapie‑Fortbildungen, Prüfungsdesign, technische Slides) zusammenstellen und direkt mit Typst‑Codebeispielen kombinieren.
<span style="display:none">[^10][^11][^12][^13][^14][^4][^5][^6][^7][^8][^9]</span>

<div align="center">⁂</div>

[^1]: https://forum.typst.app/t/new-featured-packages-on-universe/524

[^2]: https://typst.app/blog/2026/typst-0.15/

[^3]: https://github.com/typst/codex/blob/main/CHANGELOG.md

[^4]: https://github.com/typst/typst-assets/releases

[^5]: https://github.com/typst/typst/tags

[^6]: https://docs.rs/crate/typst-as-lib/0.15.4/source/CHANGELOG.md

[^7]: https://staging.typst.app/universe/search/?category=scripting

[^8]: https://typst-community.github.io/dev-builds/

[^9]: https://typst.app/blog/

[^10]: https://github.com/typst-community/setup-typst/releases

[^11]: https://www.reddit.com/r/typst/comments/1q1wd4c/unofficial_typst_2026_bingo/

[^12]: https://glama.ai/mcp/servers/@W1seGit/Typst-Universe-MCP

[^13]: https://github.com/typst/packages/actions

[^14]: https://docs.oicana.com/templates/helpful-packages

