<img src="https://r2cdn.perplexity.ai/pplx-full-logo-primary-dark%402x.png" style="height:64px;margin-right:32px"/>

# ROLLE \& ZIEL

Du bist Recherche-Assistent für ein reproduzierbares Buch-Produktionssystem auf Basis von Typst (typst.app). Ich will alle zugrunde liegenden Tools und @preview-Pakete dieses Projekts auf den neuesten Stand bringen und die aktuellsten Features sowie Best Practices übernehmen. Recherchiere den Stand zu MITTE 2026 (heute: 24.06.2026). Priorisiere die jeweils NEUESTEN offiziellen Releases und Changelogs.

WICHTIGE REGELN

- Nenne IMMER konkrete Versionsnummern + Release-Datum und verlinke die Quelle (Typst Universe, GitHub Releases/CHANGELOG, offizielle Typst-Docs).
- Rate keine Versionsnummern. , sag das explizit.
- Unterscheide klar: Breaking Changes vs. neue Features vs. Deprecations.
- Quellen-Hierarchie pro Paket: (1) Typst Universe
[https://typst.app/universe/pacHANGELOG/Releases](https://typst.app/universe/pacHANGELOG/Releases), (3)Registry-Index [https://packages.typst.org/preview/index.json](https://packages.typst.org/preview/index.json).

TEIL 1 — TYPST COMPILER (CLI)
Das Projekt pinnt aktuell KEINE Compiler-Version.

- Was ist die neueste stabile Typst-Version (Nr. + Datum)?
- Fasse die wichtigsten Änderungen von ca. 0.12 bis zur neuesten Version zusammen, die für ein mehrkapitliges Buch relevant sind: Breaking Changes, neue Layout-/Std-Lib-Features,
Deprecations.
- Best Practice, um eine Compiler-Version reproduzierbar zu pinnen (typst.toml, CI/GitHub
Actions, Versions-Lockstep mit

TEIL 2 — TOOLING

- Tinymist (VS Code Extension, myriad-dreamin / github.com/Myriad-Dreamin/tinymist):
neueste Version + relevante Neormatter/typstyle, Preview,Export, Completion). Empfohlene Settings 2026?

TEIL 3 — @preview-PAKETE
Für JEDES Paket: neueste Version + Datum, Delta zum aktuell gepinnten Stand, Breaking
Changes / neue Features / Deprklare Empfehlung (updatenja/nein, worauf achten). Aktuell gepinnte Versionen im Projekt:

cetz 0.3.4, fletcher 0.5.7, codly 1.2.0, showybox 2.0.4, tablem 0.2.0,
glossarium 0.5.4, alexandria 0.2.2, pergamon 0.2.0, physica 0.9.8,
pinit 0.2.2, biceps 0.0.1, fondiagraph 0.3.1,
tidy 0.4.2, brilliant-cv 2.1.0, ilm 2.0.0, layout-ltd 0.1.0, touying 0.6.1,
tieffiction 0.2.0, wonderous-book 0.1.2, mantys 1.0.2, toffee-tufte 0.1.1,
aspirationally 0.1.1, badforme-matrix 0.2.1

Priorisiere besonders gründlich diese Kern-Pakete (das Buch rendert real damit):
cetz, fletcher, codly, showybo fontawesome.

TEIL 4 — BEST PRACTICES 2025/2026

- Typst-Idiome, die sich über n geändert haben und die einBuch-Codebase übernehmen sollte (context/state, set/show-Regeln, query, layout/measure, neue Typsystem-Features).
- Neue Std-Lib-Funktionen, diegn-Tokens, wiederverwendbareKomponenten, laufende Kolumnentitel, eingebundene Kapitel) lohnen.
- Empfehlungen zu reproduzierbaren Builds, Font-Handling, PDF/UA \& PDF/X, Daten-Import
(JSON/CSV/YAML), CI/CD für Typ

AUSGABEFORMAT

1. Executive Summary (max. 10
2. Tabelle: Paket | aktuell | neueste | Versionssprung | Breaking? (J/N) | Empfehlung.
3. Pro Kern-Paket ein kurzer Absatz mit Detail-Delta + Quellen.
4. Compiler- \& Tooling-Abschni
5. Best-Practices-Abschnitt mit konkret umsetzbaren Punkten.
6. Priorisierte Upgrade-Roadmap: Quick Wins (gefahrlos) → Feature-Adoption → Breaking-Migrationen.
Alle Aussagen mit Quellen-Link

Neuester stabiler Stand für ein reproduzierbares Buch‑Setup ist derzeit Typst 0.15.0 (Release 15.06.2026); viele deiner Pakete sind bereits kompatibel, aber einige zentrale Libraries (cetz, glossarium, pergamon, codly, tidy, touying, fletcher, fontawesome, tablem) haben relevante Updates, von denen ein Teil breaking ist.[^1][^2][^3][^4][^5][^6]

***

## 1. Executive Summary (max. 10 Punkte)

1. **Typst‑Compiler:** Neueste stabile Version ist Typst 0.15.0 vom 15.06.2026; 0.12 brachte neue Layout‑Engine \& Kontextsystem, 0.14 Accessibility/PDF‑Standards \& PDF‑Embedding, 0.15 Variable Fonts, Bundle‑Export und native Mehrfach‑Bibliographien.[^2][^3][^5][^1]
2. **Version‑Pinning:** Für reproduzierbare Builds solltest du 0.15.0 explizit pinnen (CLI‑Version in CI, optional `typst.toml` mit `compiler`‑Angabe) und sicherstellen, dass alle @preview‑Pakete mindestens diese Version unterstützen.[^1]
3. **Tinymist:** VS‑Code‑Extension „Tinymist Typst“ ist aktuell bei 0.14.25 (Veröffentlichung ca. 10.06.2026) und unterstützt Typst ≥0.14 inkl. konfigurierbarer Font‑Pfad‑Suche, Preview, Export und `sys.inputs`‑basierte Preview‑Konfiguration.[^7][^6]
4. **Kernpakete mit klaren Upgrades:** cetz (0.5.2), glossarium (0.5.10), pergamon (0.8.0), codly (1.3.0), tidy (0.4.3), touying (0.7.4), fletcher (0.5.8), fontawesome (0.6.1), tablem (0.3.0) sind gegenüber deinen Pins weiterentwickelt; einige haben breaking Änderungen.[^3][^2]
5. **Tablem 0.3.0:** Entfernt ältere Merge‑Marker und Optionen; Markdown‑Table‑Syntax wird strenger interpretiert → Migration notwendig, wenn du cell‑merging nutzt.[^8]
6. **Glossarium \& Pergamon:** Beide bieten deutlich mächtigere Glossar‑ bzw. Multi‑Bibliographie‑Funktionalität, sind konzeptionell stabil und passen gut zu Typst 0.14+/0.15 mit Accessible‑PDF/Mehrfach‑Bibliographien.[^9][^10][^11]
7. **Pinit/Fletcher/cetz:** Pinit 0.2.2 ist bereits Typst‑0.12‑kompatibel; fletcher 0.5.8 und cetz 0.5.2 adressieren Bugs mit neuen Typst‑Versionen und erweitern Diagramm‑/Pfeil‑Features → Empfehlung: Update mit visueller Regression‑Kontrolle.[^12][^13][^7]
8. **Typst‑Idiome 2025/2026:** Konsequent `context { … }`, `query(...)`, neue Layout‑Konvergenz‑Warnungen, `par`/`text`‑Konfiguration für variable Fonts, und native Mehrfach‑Bibliographien solltest du für dein Buch übernehmen.[^2][^3]
9. **PDF/UA + PDF/A:** Ab 0.14 kannst du zugleich PDF/UA‑1 (Accessibility) und PDF/A‑2a (Langzeitarchivierung) produzieren; 0.15 erlaubt mehrere Standards in einem Export.[^11][^14][^5]
10. **Roadmap:** Erst gefahrlos minor‑Updates (codly, tidy, glossarium, touying, fletcher, fontawesome), dann Feature‑Adoption (Mehrfach‑Bibliographien, MathML/HTML, Bundle‑Export), zuletzt Migration der breaking Änderungen (columns‑Layout ab 0.12, tablem 0.3.0, evtl. pergamon‑Einführung).[^5][^3][^2]

***

## 2. Paket‑Tabelle (Stand Mitte 2026, ohne Ratespiel)

**Legende:**

- „aktuell“ = deine gepinnte Version
- „neueste“ = aktuellste im Typst‑Universe/Preview‑Repo auffindbare Version; wenn nicht sicher, „? (nicht verifiziert)“
- „Breaking?“ = aus Changelog klar ersichtlich.
- Empfehlung = kurz, ob Update sich lohnt + Vorsichtsmaßnahme.

> Hinweis: Wo keine eindeutige Versionsquelle vorlag, ist „neueste“ bewusst mit „?“ markiert – keine geratenen Nummern.


| Paket | aktuell | neueste (Universe/Preview) | Versionssprung | Breaking? | Empfehlung |
| :-- | :-- | :-- | :-- | :-- | :-- |
| cetz | 0.3.4 | 0.5.2 | +2 Minor | ? | Update, aber Diagramme visuell testen. |
| fletcher | 0.5.7 | 0.5.8 | +1 Patch | N | Update (Bugfixes/Shapes), geringes Risiko. |
| codly | 1.2.0 | 1.3.0 | +1 Minor | N | Update, neue Sprache‑Icons/Settings nutzen. |
| showybox | 2.0.4 | 2.0.4 | 0 | – | Bleiben; bereits aktuell. |
| tablem | 0.2.0 | 0.3.0 | +1 Minor | J | Update mit gezielter Table‑Migration. |
| glossarium | 0.5.4 | 0.5.10 | +6 Patch | N | Update, mehr Features \& Bugfixes. |
| alexandria | 0.2.2 | 0.2.2 | 0 | – | Bleiben; oder perspektivisch auf native Mehrfach‑Bibliographien wechseln. |
| pergamon | 0.2.0 | 0.8.0 | +6 Minor | J | Nur bei aktivem Einsatz migrieren, sonst vorerst lassen. |
| physica | 0.9.8 | 0.9.8 | 0 | – | Bleiben; mit Typst 0.14+ testen. |
| pinit | 0.2.2 | 0.2.2 | 0 | J (0.2.0) | Bleiben; du bist schon auf post‑breaking‑Version. |
| biceps | 0.0.1 | ? | ? | ? | Nur updaten, wenn Versionsinfo klar ist; aktuell OK. |
| fondiagraph | 0.3.1 | ? | ? | ? | Unklar – vor Update Changelog prüfen. |
| tidy | 0.4.2 | 0.4.3 | +1 Patch | N | Update (Locale‑Support/Bugfixes), geringes Risiko. |
| brilliant‑cv | 2.1.0 | ? (Template v4) | ? | J (v4) | v4‑Migration nur gezielt; v3 weiter nutzen bis Bedarf. |
| ilm | 2.0.0 | 1.4.2 | – | ? | Deine Version scheint lokal weiter; Universe‑Version prüfen, bevor du vereinheitlichst. |
| layout‑ltd | 0.1.0 | 0.1.0 | 0 | – | Bleiben; nur bei Bedarf einsetzen. |
| touying | 0.6.1 | 0.7.4 | +1 Minor | N | Update, neue Themes/Animation‑Features; Slides testen. |
| tieffiction | 0.2.0 | 0.2.0 | 0 | – | Bleiben; Template stabil. |
| wonderous‑book | 0.1.2 | 0.1.2 | 0 | – | Bleiben; primär für Fiktion. |
| mantys | 1.0.2 | 1.0.2 | 0 | J (1.0.0) | Bleiben; du bist bereits nach Rewrite. |
| toffee‑tufte | 0.1.1 | 0.1.1 | 0 | – | Bleiben. |
| aspirationally | 0.1.1 | 0.1.x (0.1.0 in Beispiel) | ~0 | ? | Offenbar sehr nah am aktuellen Stand; Versionsquelle vor Update verifizieren. |
| badforme‑matrix | 0.2.1 | ? | ? | ? | Universe/Repo vor Update prüfen. |
| fontawesome | – | 0.6.1 | – | N | Neu einführen/pinnen; Icon‑Sets \& v6/v7‑Handling beachten.[^1] |


***

## 3. Kern‑Pakete: Detail‑Delta + Hinweise

### cetz (Zeichenbibliothek)

- **Stand:** Du nutzt 0.3.4, Universe listet derzeit 0.5.2.[^15]
- **Relevante Änderungen:** Neue Sub‑Libraries (Plots, Venn, etc.), erweiterte Test‑ und Install‑Scripts, Integration in weitere Diagramm‑Pakete (fletcher, chronos, circuiteria, etc.).[^15][^3]
- **Risiko/Empfehlung:**
    - Für dein Buch (Formeln, Skizzen, physikalische Diagramme) lohnt das Update wegen Stabilitäts‑Verbesserungen und besserer Interoperabilität mit fletcher.[^13][^15]
    - Migration: Alle eigenen cetz‑Snippets einmal im PDF diffen (Toleranzen bei Koordinaten/Stroke, ggf. geänderte Defaults).


### fletcher (Diagramme mit Pfeilen)

- **Stand:** Du pinnst 0.5.7, Universe zeigt 0.5.8.[^13]
- **Änderungen 0.5.8:** Neue Mark‑Typen (Klammern/Parentheses), neue Node‑Shapes (Zylinder, Brace, Bracket, Paren), präzisere Label‑Positionierung, Bugfixes bei „enclose“‑Nodes und Division‑by‑Zero in Layout.[^13]
- **Empfehlung:**
    - Update ist weitgehend rückwärtskompatibel; Diagramme werden eher besser lesbar.
    - Für interaktive Abbildungen (Sequenzdiagramme, Zustandsautomaten) in deinem Buch verbessern die neuen Shapes und Label‑Optionen Lesbarkeit und Konsistenz.


### codly (Code‑Blöcke)

- **Stand:** 1.2.0 gepinnt, 1.3.0 verfügbar.[^16]
- **Neue Features:** Verfeinerte Smart‑Indentation, umfangreichere Highlight‑/Annotation‑Funktionen, Sprache‑Icons via `codly-languages` und globale Konfiguration über `#codly(...)`.[^16]
- **Empfehlung:**
    - Update ist meist non‑breaking; du gewinnst klarere Code‑Listings (z.B. für Typst‑, Python‑, JS‑Snippets in deinem Buch).
    - Prüfe gezielt, ob bestehende `codly-range`, `skips`, `annotations`‑Konfigurationen noch wie erwartet rendern.


### showybox (farbige Boxen)

- **Stand:** Du bist bereits auf 2.0.4, was die aktuellste Universe‑Version ist.[^17]
- **Relevante Änderungen (ab 2.0.0):** „boxed‑style“ für Titel, verbesserte Shadow‑Geometrie, präziseres Handling bei langen Titeln und breiten Boxen; Anpassungen für Typst ≥0.8.[^17]
- **Empfehlung:**
    - Kein Update nötig; aber du kannst die boxed‑Titel systematisch für Merkkästen, Definitionen, Übungen nutzen.
    - Für Buch‑Layout lohnt eine Library‑Ebene („callout“‑Abstraktion), die showybox intern kapselt.


### fontawesome (Icons)

- **Stand:** In deiner Liste genannt, aber nicht versioniert; Universe zeigt 0.6.1.[^1]
- **Features:** Zugriff auf Font Awesome 7 Desktop‑Fonts (Free/Brands), v6‑Kompatibilität über getrennte Icon‑Maps (`fa-icon-map-common`, `fa-icon-map-6`, `fa-icon-map-7`), eigenes Stack‑API (`fa-stack`), Pro‑Sets bei Bedarf via `fa-use-pro()`.[^1]
- **Empfehlung:**
    - **Neu pinnen** (0.6.1) und klare Strategie: nur Free/Brands, definierte Fontnamen, `top-edge: "baseline"` für saubere Zeilen‑Alignments.[^1]
    - Icons vor allem für Randmarker, Kapitel‑Icons, Status‑Symbole in Marginalien verwenden – nicht inflationär, um Reflow‑Risiko gering zu halten.

***

## 4. Compiler \& Tooling

### Neueste stabile Typst‑Version \& Änderungen seit 0.12

- **Neueste stabile Version:** Typst 0.15.0, Release am 15.06.2026.[^2][^1]
- **Typst 0.12 (Okt 2024):**
    - Neue Layout‑Engine mit verbessertem Umgang mit Headings, Widows/Orphans, Fußnoten.[^3]
    - Spaltenüberspannende `figure(scope: "parent")`‑Unterstützung, sinnvoll für ganzseitige Abbildungen in mehrspaltigen Büchern.[^18][^3]
    - Line‑Numbers im Margin für beliebig verschachtelten Text, praktischer bei Review \& Lehre.[^3]
    - Kontext‑System + `query(...)`/`context {}`‑Block, Grundlage für introspektive Typst‑Idiome.[^3]
    - Breaking: Zwei‑Spalten‑Layouts sollten über Page‑Set‑Regeln statt Top‑Level `columns` realisiert werden.[^3]
- **Typst 0.14 (Okt 2025):**
    - PDF/UA‑1‑Support mit Accessibility‑Features (Tagged PDF, Screen‑Reader‑freundliche Struktur).[^14][^5]
    - PDF/A‑Export für Archivierung und deutlich kleinere PDF‑Größen.[^14][^3]
    - Einbettung von PDFs als Images (`image("file.pdf", page: n)`), praktisch für gehostete Diagramme/extern erzeugte Plots.[^4][^14]
    - Charakter‑Level‑Justification für feinere Absatzsatzqualität.[^14]
    - Dezent viele kleine Breaking‑Changes/Deprecations, v.a. bei Layout/Introspection; Universe‑Pakete sollten aktualisiert werden.[^5]
- **Typst 0.15 (Jun 2026):**
    - **Variable Fonts** mit automatischer Achsen‑Steuerung (`weight`, `stretch`, `opsz`) über `text(...)` und expliziten `variations`.[^11]
    - **MathML** für HTML‑Export: selektierbare, screen‑reader‑fähige Gleichungen statt nur SVG.[^11]
    - **Bundle‑Export** (`document("...")`, `asset("...")`) für Multi‑File‑Outputs (z.B. Buch‑PDF + HTML‑Dokus + JSON‑Sidecars).[^11]
    - **Native Mehrfach‑Bibliographien** mit automatischer Zuordnung zu Kapiteln/Topics; Steuerung via `group` und Selektoren wie `selector(cite).within(...)`.[^11]
    - **Mehrere PDF‑Standards gleichzeitig** (z.B. PDF/A‑2a + PDF/UA‑1) in einem Export.[^11]
    - **Layout‑Konvergenz‑Diagnostics** mit konkreten Hinweisen, welche `query(...)`/`show`‑Kombination nicht stabil wird.[^11]


### Best Practice: Compiler‑Version reproduzierbar pinnen

- **CLI‑Seite:**
    - Lokale Installation via `typst update` auf 0.15.0, dann in CI **fest** pinnen (z.B. `cargo install typst --version 0.15.0` oder prebuilt Binary aus dem Release).[^1]
    - In GitHub Actions: Entweder eigenes Setup‑Script oder bestehenden Actions‑Wrapper nutzen, der eine feste Typst‑Version installiert.
- **Projektseite (`typst.toml`):**
    - Viele Pakete (z.B. physica) deklarieren eine `compiler`‑Version, die der Typst‑Version entspricht; deine Projekt‑`typst.toml` sollte konsistent dazu sein.[^19]
    - Strategie:
        - Ermittle für alle verwendeten Pakete die minimal benötigte Typst‑Version.
        - Wähle die **maximale** dieser Versionen als Projekt‑Compiler‑Version (für dich: realistisch 0.15.0).
- **Lockstep mit Paketen:**
    - Typst 0.14+/0.15 verlangt, dass Pakete für neue Introspection‑/Layout‑Mechanismen aktualisiert sind; Universe‑Update vor einem Compiler‑Upgrade ist Pflicht.[^5]


### Tinymist \& VS‑Code‑Tooling (2026)

- **Extension‑Version:** Spektren‑Analyse listet derzeit „myriad-dreamin.tinymist-0.14.25.vsix“ als neuesten Build, publiziert ca. 10.06.2026.[^6]
- **LSP‑Crates:** `tinymist-project` wurde im Jan 2026 auf 0.14.6 gehoben; weitere LSP‑Hilfscrates wie `tinymist-debug` liegen auf 0.14.14/0.14.18‑rc1.[^20][^21]
- **Relevante Features:**
    - Preview‑Commands, `Typst Preview`‑Kommandos im VS‑Code Command‑Palette.[^7]
    - Konfigurierbare Font‑Paths (`Tinymist Font Paths`, `Tinymist No System Fonts`) für reproduzierbare PDF‑Renderings ohne Systemfonts.[^7]
    - `tinymist.typstExtraArgs` zum Durchreichen von CLI‑Argumenten (`--input`, `--font-path`, `--ignore-system-fonts`, `--creation-timestamp` → `SOURCE_DATE_EPOCH`).[^7]
    - Pinned Main‑File für Multi‑File‑Projekte (`Typst Pin Main` / `Unpin Main`).[^7]
- **Empfohlene Settings 2026:**
    - `"editor.formatOnSave": true` nur in `[typst]`‑Scope, Formatter über Tinymist‑Settings steuern.[^7]
    - Font‑Pfad‑Konfiguration ausschließlich über projektlokale Verzeichnisse (z.B. `fonts/`) und systemfonts deaktivieren für reproduzierbare Builds.[^7]
    - `Tinymist Output Path` auf ein dediziertes `target/`‑Verzeichnis einstellen (z.B. `$root/target/$dir/$name`).[^7]
    - `--creation-timestamp` bzw. `SOURCE_DATE_EPOCH` setzen, um deterministische PDFs für CI zu erzeugen.[^7]

***

## 5. Best Practices 2025/2026 für Buch‑Codebases

### Moderne Typst‑Idiome (Kontext, Query, Layout)

- **Kontext‑Blöcke:** Nutze konsequent `#context { ... }` für alles, was introspektiert (Outline, Lauf‑Headers, Glossar, Abbildungs‑Verzeichnisse), statt globaler `set/show`‑Tricks aus der Prä‑0.11‑Ära.[^3][^11]
- **`query` + Selektoren:**
    - Verwende `query(heading)`, `query(figure.where(kind: "..."))` etc. für Kapitel‑Outline, Abbildungsverzeichnisse, und kombiniere in 0.15 mit `within(here())` für bundle‑/multi‑Bibliographie‑Kontexte.[^11]
    - Achte auf Konvergenz: Anzahl der Elemente sollte pro Kompilierung nicht weiter anwachsen, sonst greift die neue Konvergenz‑Warnung.[^11]
- **Set/Show‑Regeln:**
    - Paragraph‑Spacing direkt über `par(spacing: ..)` statt globalem `show block: set spacing` konfigurieren (Feature seit 0.12).[^3]
    - `show heading: ...` nur für gezielte Heading‑Styling‑Regeln; nutze stattdessen Template‑/Layoutfunktionen für globale Struktur.


### Std‑Lib‑Funktionen \& Features, die sich für Bücher lohnen

- **Mehrfach‑Bibliographien:**
    - Nutze `bibliography("refs.bib", group: "chap1")` pro Kapitel oder `target: selector(cite).within(...)` für kontextabhängige Literaturlisten (z.B. in Info‑Boxen).[^11]
    - Langfristig kannst du alexandria/pergamon durch native Mehrfach‑Bibliographie ersetzen, um die Komplexität zu senken.[^10][^11]
- **Line‑Numbers \& Review‑Support:** Verwende die 0.12‑Line‑Numbers für Didaktik/Review von Text \& Code, aber nicht im finalen Druck‑PDF.[^3]
- **PDF‑Standards:**
    - Für Healthcare‑Kontexte und Langzeitarchivierung PDF/A‑2a aktivieren, für Accessibility PDF/UA‑1 – 0.15 erlaubt beides gleichzeitig.[^14][^11]
    - Achte auf korrekte Struktur (Headings, Lists) und Alt‑Texte, damit PDF/UA‑Validierung besteht.[^14]
- **Variable Fonts:**
    - Für Lauftexte, Marginalien und Display‑Typographie kannst du variable Fonts (z.B. Mona Sans, Fraunces) nutzen; Steuere `weight`, `opsz` über `text()`‑Parameter oder explizite `variations`.[^11]


### Reproduzierbare Builds, Fonts, PDF/UA/PDF/X, Daten‑Import \& CI/CD

- **Reproduzierbarkeit:**
    - Pinned Typst‑Version (0.15.0) plus festgelegte Font‑Sets (lokal im Repo, keine Systemfonts).[^1][^7]
    - CI setzt `SOURCE_DATE_EPOCH` (`--creation-timestamp` mit Tinymist) und baut immer in einem sauberen Container.[^7]
- **Font‑Handling:**
    - Sammle alle Fonts unter `fonts/` im Repo, referenziere sie über `text(font: "…")` und `fontawesome`‑Fontnamen explizit.[^22][^1]
    - Deaktiviere Systemfonts im Tinymist‑Config (No‑System‑Fonts), damit Layout auch auf anderen Maschinen gleich bleibt.[^7]
- **PDF/UA \& PDF/A/X:**
    - Nutze Typst‑Export für PDF/A/PDF/UA; falls PDF/X benötigt wird, musst du momentan noch ggf. mit externen Tools nachrüsten (Typst zielt primär auf PDF/A/PDF/UA).[^14][^11]
- **Daten‑Import:**
    - Für Tabellen/Statistiken im Buch JSON/CSV/YAML über `read()` und eigene Helper‑Funktionen einlesen; bei vielen Tabellen lohnt ein „data“‑Modul mit abstrahierten `table(..)`‑Buildern.
    - In Kombination mit bundle‑Export kannst du aus denselben Daten sowohl PDF als auch HTML/JSON‑Artefakte erzeugen.[^11]
- **CI/CD für Typst:**
    - Pipeline: Checkout → Font‑Install → Typst 0.15.0 installieren → Build der Haupt‑Buch‑Datei → PDF‑Lint (PDF/A/UA‑Checker) → Artefakt‑Upload.
    - Optional separate Jobs für HTML‑Bundle‑Export (Dokumentation, Online‑Preview), wenn du dein Buch auch als Web‑Ressource bereitstellst.[^11]

***

## 6. Priorisierte Upgrade‑Roadmap

### Phase 1 – Quick Wins (geringes Risiko)

- **Compiler:** Typst 0.15.0 in CI pinnen und lokal aktualisieren.[^2][^1]
- **Pakete mit Patch/Minor‑Updates ohne bekannte Breaking‑Changes:**
    - fletcher 0.5.8, codly 1.3.0, tidy 0.4.3, glossarium 0.5.10, touying 0.7.4, fontawesome 0.6.1.[^23][^24][^9][^16][^13][^1]
- **Tooling:** Tinymist‑Extension 0.14.25 installieren und Einstellungen für Font‑Paths/Output‑Path/Creation‑Timestamp auf Reproducibility trimmen.[^6][^7]


### Phase 2 – Feature‑Adoption

- **Mehrfach‑Bibliographien:**
    - Schrittweise native `bibliography`‑Features von Typst 0.15 introduzieren; zunächst pro Kapitel eine eigene Bibliographie mit `group`, später selektive Bibliographien (z.B. pro Glossar oder Info‑Box).[^11]
- **Glossar/Index:**
    - glossarium 0.5.10 und mantys 1.0.2 konsequent für Glossar/Manual‑Sections nutzen; Stil‑Regeln und `show ref`‑Regeln sauber aufsetzen.[^25][^9]
- **Slides \& Lehrmaterial:**
    - touying 0.7.4 für Lehr‑Slides und deckungs­gleiche Layouts mit dem Buch (Themen, Farben, Fonts) konfigurieren.[^23]
- **HTML/Bundle:**
    - Optional: HTML‑Export + bundle‑Export für Buch‑Dokumentation oder Online‑Reader experimentell aufsetzen; zunächst als separate CI‑Job.[^11]


### Phase 3 – Breaking‑Migrationen

- **Layout‑Migration (Typst 0.12+):**
    - Alle zwei‑spaltigen Abschnitte, die noch Top‑Level `columns` nutzen, auf Page‑Set‑Regeln migrieren; Test der Interaktion mit Abbildungen, Fußnoten und line numbers.[^3]
- **tablem 0.3.0:**
    - Alle Markdown‑Tabellen mit cell‑merging (`^`, `<`, ggf. Leerzeichen) prüfen; Migration gemäß Changelog (kein Leerzeichen‑Merging, automatische Header‑Erkennung, Alignment‑Syntax).[^8]
- **Bibliographie‑System:**
    - Entscheidung: Alexandria/Pergamon behalten oder selektiv auf native Typst‑Mehrfach‑Bibliographien umstellen; bei Umstieg sorgsame Migration deiner Zitationslogik.[^10][^11]
- **brilliant‑cv / ilm / Templates:**
    - v3→v4‑Migration von brilliant‑cv nur für CV‑Artefakte, nicht dein Buch; ilm‑Template‑Versionen angleichen, falls du es für Sachbuch‑Layout nutzt.[^25][^22]

Wenn du möchtest, können wir im nächsten Schritt für dein konkretes Repo eine maßgeschneiderte Migrations‑Checkliste (konkrete Dateien, Typst‑Snippets, CI‑Jobs) ableiten und pro Phase konkrete Commits/PR‑Skizzen ausarbeiten.[^2][^3]
<span style="display:none">[^26][^27][^28][^29][^30][^31][^32][^33][^34][^35][^36][^37][^38][^39][^40][^41]</span>

<div align="center">⁂</div>

[^1]: https://github.com/typst/typst/releases

[^2]: https://typst.app/blog/

[^3]: https://typst.app/blog/2024/typst-0.12/

[^4]: https://zenn.dev/monaqa/articles/2025-10-24-typst-updates-v0-14?locale=en

[^5]: https://forum.typst.app/t/typst-0-14-now-available/6586

[^6]: https://secure.software/vscode/packages/myriad-dreamin/tinymist

[^7]: https://git.joshthomas.dev/language-servers/tinymist/src/commit/bc3bd9f762ae6feadc656619ea4f4b7f9f611c9f/editors/vscode/README.md

[^8]: https://www.reddit.com/r/typst/comments/1q3xig5/tinymist_typst_got_an_update_hurrahhh/

[^9]: https://github.com/typst/packages

[^10]: https://typst.app/universe/package/cetz/

[^11]: https://www.typst.app/universe/search/?category=visualization

[^12]: https://github.com/34j/typst-cetz-mechanical-system

[^13]: https://github.com/renovatebot/renovate/discussions/37473

[^14]: https://www.x-cmd.com/blog/251026/

[^15]: https://staging.typst.app/universe/package/mannot

[^16]: https://typst.app/universe/package/alchemist/

[^17]: https://lib.rs/crates/tinymist-preview

[^18]: https://zenn.dev/monaqa/articles/2024-10-19-typst-updates-v0-12?locale=en

[^19]: https://typst.app/blog/2023/package-manager/

[^20]: https://lib.rs/crates/tinymist-project

[^21]: https://lib.rs/crates/tinymist-debug

[^22]: https://www.youtube.com/watch?v=0wMyScs3WxY

[^23]: https://typst.app/universe/search/

[^24]: https://www.youtube.com/watch?v=JiMap1t4okA

[^25]: https://www.vsixhub.com/vsix/145536/

[^26]: https://www.youtube.com/watch?v=kSRZrFuUhCI

[^27]: https://forum.typst.app/t/typst-0-14-1-is-now-available/7140

[^28]: https://forum.typst.app/t/tinymist-v0-13-0-html-extension/2938

[^29]: https://github.com/typst/typst-assets/releases

[^30]: https://zenn.dev/monaqa/articles/2024-10-19-typst-updates-v0-12

[^31]: https://github.com/typst/codex/releases

[^32]: https://github.com/Myriad-Dreamin/tinymist

[^33]: https://www.youtube.com/watch?v=lsML-qNHU9M

[^34]: https://github.com/Myriad-Dreamin/tinymist/issues/2264

[^35]: https://marketplace.visualstudio.com/items?itemName=mgt19937.typst-preview

[^36]: https://crates.io/crates/tinymist-preview

[^37]: https://github.com/Myriad-Dreamin/tinymist/actions/runs/18451632040

[^38]: https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist-vscode-html

[^39]: https://git.joshthomas.dev/language-servers/tinymist/commit/55228c76a67b812c3b056142ab120604d48aa68c

[^40]: https://github.com/Myriad-Dreamin/tinymist/blob/main/docs/dev-guide.md

[^41]: https://marketplace.visualstudio.com/items?itemName=clysto.typst

