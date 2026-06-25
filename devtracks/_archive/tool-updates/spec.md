# Spec — Tool- & Paket-Aktualisierung

**Status:** Recherche abgeschlossen (Report-Phase) · **Datum:** 2026-06-24
**Art:** Reine Recherche/Report-Devtrack — **keine Code-Änderungen** in diesem Schritt.

## Ziel

Alle zugrunde liegenden Tools (Typst-Compiler, Tinymist) und alle real eingebundenen
`@preview`-Pakete des Buches auf den neuesten Stand bringen, die aktuellsten Features
nutzbar machen und Best Practices (Stand Mitte 2026) übernehmen. Dieses Dokument hält
den **Ist-Stand** und die **Delta-Analyse** fest; die priorisierte Umsetzung steht in
[plan.md](plan.md).

## Scope

- Typst-Compiler (CLI) + Tinymist (VS Code).
- Die 27 in `src/`/`test/` per `@preview/...:<version>` eingebundenen Pakete.
- Best-Practices-Abgleich gegen die projekteigenen Skills und `project-tech-stack.md`.
- **Nicht** im Scope: der Ecosystem-Survey (`all_packages.json` etc.), Template-Ordner.

## Methodik

Multi-Agent-Recherche (31 Agenten, ~555k Tokens, 354 Web-Abrufe): pro Ziel ein Agent,
der die neueste Version auf Typst Universe / im Registry-Index verifiziert, den Changelog
zwischen aktueller und neuester Version liest und den Impact **gegen die reale Nutzung**
im jeweiligen Kapitel bewertet — plus ein Best-Practices-Scan und eine Synthese.
Versionsnummern wurden live belegt (nicht aus Modellwissen).

## Kern-Erkenntnis

Die meisten „veralteten" Pakete sind **nur Dokumentations-Snippets in ```typ-Codeblöcken**
(pergamon, brilliant-cv, ilm, touying, layout-ltd, tieffiction, wonderous-book, mantys,
toffee-tufte, aspirationally, badformer, caidan, soviet-matrix) — sie werden nie kompiliert
und tragen **null Build-Risiko**, nur Doku-Aktualität. Die real kompilierten Abhängigkeiten
konzentrieren sich auf die Kapitel 08, 11, 12, 13. Der größte tatsächliche Hebel ist das
**Pinnen des Compilers** (aktuell nirgends gepinnt; neueste Version 0.15.0). Nur **eine**
kompilierte Abhängigkeit erfordert echte Code-Änderungen: **ctxjs**.

## Ist-Stand: Compiler & Tooling

| Ziel | Aktuell im Projekt | Neueste | Status |
|---|---|---|---|
| **Typst CLI** | ungepinnt (Docs nennen 0.12.0 / 0.14.2) | **0.15.0** (2026-06-15) | nicht reproduzierbar — größte Lücke |
| **Tinymist** | ungepinnt (kein Version-Constraint) | **0.15.2** (2026-06-22) ⚠️ siehe Kreuzvalidierung | floatet auf latest; OK, aber `formatterMode` implizit |

> **Sicherheits-Hinweis (cross-validiert):** Typst **0.14.2** (2025-12-12) ist ein Security-Release,
> das eine **Use-after-free-Lücke in der WASM-Runtime (`wasmi`, memory-grow)** schließt. 0.13.1 und
> älter sind **nicht** betroffen — die Lücke wurde also mit der 0.14-Plugin-Runtime eingeführt.
> Für dieses Projekt **direkt relevant**, weil mehrere Kapitel WASM-Plugin-Pakete kompilieren/zeigen
> (ctxjs, diagraph in Kap. 13; badformer, soviet-matrix in Kap. 17). Das hebt „Compiler pinnen" von
> reiner Reproduzierbarkeit auf **Reproduzierbarkeit + Sicherheit**. 0.15.0 enthält den Fix.

## Ist-Stand: Pakete

### Kompiliert & veraltet → Aktion nötig

| Paket | Aktuell | Neueste | Risiko | Aufwand | Kern-Impact |
|---|---|---|---|---|---|
| cetz | 0.3.4 | **0.5.2** | low | trivial | nur 2D-Primitive mit benannten Ankern → Breaking-Changes praktisch ohne Wirkung; Pfeil-Marks prüfen |
| fletcher | 0.5.7 | **0.5.8** | low | trivial | `node-inset`-Halbierungs-Fix → `8pt` auf `~4pt` setzen (08-packages.typ:189); Label-Auto-Wrap prüfen |
| codly | 1.2.0 | **1.3.1** | medium | trivial | kein API-Bruch, aber **benötigt Typst ≥ 0.13.1** (Compiler-Gate) |
| tablem | 0.2.0 | **0.3.0** | low | trivial | Auto-Header erkennt `|---|`-Zeile → Vitalzeichen-Tabelle visuell prüfen (i. d. R. Verbesserung) |
| glossarium | 0.5.4 | **0.5.10** | low | trivial | reiner Pin-Bump; API unverändert; gleicht `versions.txt` an |
| fontawesome | 0.5.0 | **0.6.1** | low | trivial | API-kompatibel, aber **FA7-Desktop-Fonts in Build/CI nötig** |
| ctxjs | 0.3.2 | **0.5.0** | **medium** | **small** | **Breaking:** `new-context()` + `ctx.eval()`-Tupel → 2 Call-Sites in 13-wasm-meta.typ umschreiben (+ Snippet) |
| diagraph | 0.3.1 | **0.3.7** | low | trivial | `raw-render`-Signatur unverändert; benötigt Typst ≥ 0.13.0 |
| tidy | 0.4.2 | **0.4.3** | low | trivial | nur kosmetisch: Auto-Lokalisierung der API-Tabellen-Labels (DE) |

### Kompiliert & aktuell → keine Aktion

`showybox 2.0.4`, `physica 0.9.8`, `pinit 0.2.2`, `biceps 0.0.1`, `alexandria 0.2.2`
(tatsächlicher Bibliographie-Backend) — bereits auf der jeweils neuesten Version.

### Nur Doku-Snippet/Prosa (nicht kompiliert) → optional kosmetisch

| Paket | Aktuell | Neueste | Hinweis |
|---|---|---|---|
| pergamon | 0.2.0 | 0.8.0 | Snippet zeigt ungültige API → bei Update auch Beispiel korrigieren |
| brilliant-cv | 2.1.0 | 4.0.1 | v4 = profilbasiert; Snippet zeigt Legacy-Root-Metadata |
| ilm | 2.0.0 | 2.1.1 | `author:` entfernt → im Snippet zu `authors:` ändern |
| touying | 0.6.1 | 0.7.4 | reiner Versions-String im Codeblock |
| layout-ltd | 0.1.0 | 0.1.0 | aktuell; Prosa beschreibt Paket aber falsch (kein CPU-Limiter) |
| tieffiction / wonderous-book / mantys / toffee-tufte / aspirationally / badformer / caidan / soviet-matrix | — | aktuell | nur Prosa-Erwähnung; nichts zu tun |

## Versions-Inkonsistenzen (in einem Commit bereinigen)

- **fontawesome:** `src/` pinnt `0.5.0`, `devtracks/` `0.6.0` (neueste `0.6.1`) → auf `0.6.1` vereinheitlichen.
- **biceps:** `devtracks/` referenziert `0.2.0` — **existiert nicht** in keinem Registry → auf `0.0.1` korrigieren.
- **glossarium:** Code `0.5.4` vs. `versions.txt` `0.5.10` → Code angleichen.
- **brilliant-cv:** Snippet `2.1.0` vs. `versions.txt` `3.1.2` (neueste `4.0.1`) → Versions-String abgleichen.
- **Compiler:** ungepinnt; drei verschiedene dokumentierte Versionen (0.12.0 / 0.14.2 / „≥ 0.14.2").
- **Tinymist:** ohne Version; `project-tech-stack.md` nimmt noch 0.14.x an; `formatterMode` implizit.

## Best Practices: relevante Änderungen seit 0.13

- **Paragraph-Modell (0.13):** `set par(...)` (first-line-indent, leading) wirkt nur noch auf
  echte Absätze — **nicht** auf inline-only Komponenten-Bodies (Badges, einzeilige Cards, Side-Notes).
  Betrifft viele Komponenten dieses Buches; `typst-writer`-Skill ist hier veraltet.
- **Running-Header:** Das manuelle `query(heading…).before(here())` (in `styles/page.typ` und
  `typst-writer` §8) ist fragil bei nummerierten/verschachtelten Headings. Best Practice:
  `@preview/hydra` (0.6.x) oder der **`within`-Selektor (0.15)**.
- **Introspection (0.13):** `state.display`, `location`-Argument von `query`/`counter.at`/`state.at`,
  `measure(styles:)`, `style`-Funktion entfernt — nur in `context` erlaubt.
- **Outline (0.13):** komplett überarbeitet (`outline.entry`, `fill` verschoben, neue Methoden).
- **`path()` → `curve()`:** in 0.13 deprecated, in **0.15 entfernt**.
- **PDF-Tagging (0.14):** barrierefreie/getaggte PDFs **standardmäßig** — `--no-pdf-tags` deaktiviert;
  bestehende `test.pdf`-Baselines unterscheiden sich byteweise. PDF/UA bleibt `--pdf-standard ua-1`.
- **0.15-Pfade:** Backslashes in Dateipfaden verboten (relevant auf diesem Windows/WSL-Projekt).

## Neue Features mit hohem Nutzen für dieses Buch (0.14/0.15)

- **`within`-Selektor (0.15)** → saubere kapitelweise Header/Seitenzahlen/Queries.
- **Native Mehrfach-Bibliographien (0.15)** + „nächstes folgendes `bibliography()`" → pro-Kapitel-Literatur,
  vereinfacht 11-academic.typ (ersetzt den Alexandria-Workaround).
- **`par.justification-limits` (0.14)** → bessere Blocksatz-Typografie, quasi gratis.
- **`page(bleed: …)` + Spot/Separation-Farben (0.15)** → schließt die in `project-tech-stack.md`
  benannte Prepress-Lücke (PDF/X, Beschnitt, Offset).
- **Variable-Font-Support (0.15)** → eine Variable-Font-Datei je Familie statt vieler statischer Schnitte.

## Veraltete Stellen in den projekteigenen Skills (mitziehen)

- `typst-extension` §7: **falsche** PDF/UA-Anweisung (`--pdf-standard a-2b` ist PDF/A-2b, **nicht** UA);
  korrekt ist `--pdf-standard ua-1`. Außerdem: Tagging ist seit 0.14 Default.
- `typst-writer` §2/§6: `set par(...)` als universell dargestellt → Paragraph-Modell-Hinweis fehlt.
- `typst-writer` §8: manuelles Header-Idiom als kanonisch → `hydra`/`within` fehlt.
- Alle Skills: eingefrorene Paket-Pins (Stand früh/mitte 2025); kein Hinweis auf 0.15.

## Kreuzvalidierung mit externer Recherche (Perplexity Deep Research)

Zwei unabhängige Perplexity-Recherchen (`Guides/update2026/`) wurden gegen die Workflow-Recherche
abgeglichen.

**Bestätigt (beide Quellen identisch):** Compiler 0.15.0 (2026-06-15); alle Kern-Versionssprünge
(cetz 0.5.2, fletcher 0.5.8, codly 1.3.0, tablem 0.3.0 *breaking*, glossarium 0.5.10, tidy 0.4.3,
touying 0.7.4, fontawesome 0.6.1, pergamon 0.8.0); showybox/physica/pinit/alexandria up-to-date;
die Feature-Liste 0.13–0.15 (Variable Fonts, Bundle-Export, native Mehrfach-Bibliographien, PDF/UA+PDF/A
gleichzeitig, `within`-Selektor, MathML/HTML).

**Nur die Workflow-Recherche fand (Perplexity übersah):**
- **ctxjs 0.3.2 → 0.5.0 (einzige Breaking-Code-Migration!)** — fiel in Perplexity durch einen Tippfehler
  in der Paketliste komplett heraus. Darf nicht verloren gehen.
- **fletcher `node-inset`-Halbierungs-Fix** — Perplexity stuft 0.5.8 als „nicht breaking" ein, übersieht
  aber die Layout-verschiebende Inset-Korrektur (→ `8pt` auf `~4pt`).
- **codly Compiler-Gate (≥ 0.13.1)** — Perplexity nennt 0.5.8 non-breaking ohne die Compiler-Kopplung.
- **biceps 0.0.1 = latest** (Perplexity „unklar"); **soviet-matrix/badformer** korrekt aufgelöst.

**Divergenzen — vor dem Pinnen verifizieren:**
- **Tinymist-Version:** Workflow `0.15.2` (2026-06-22) vs. Perplexity `0.14.25` (~2026-06-10).
  Beide aus realen Listings; ändert die Empfehlung nicht (latest + `formatterMode` explizit),
  aber die konkrete Nummer vor einem dokumentierten Minimum prüfen.
- **ilm:** Workflow `2.1.1` (2026-06-04) vs. Perplexity `1.4.2`. Workflow ist plausibler
  (2.1.1 > 2.0.0); ilm ist hier ohnehin nur Doku-Snippet, also unkritisch.

**Perplexity steuerte zusätzlich bei (eingearbeitet):** den 0.14.2-Security-Kontext (siehe oben)
und mehrere neue/featured Universe-Pakete (siehe nächster Abschnitt).

## Neue Universe-Pakete zum Evaluieren (aus Perplexity, projektrelevant gefiltert)

| Paket | Nutzen für *dieses* Buch | Priorität |
|---|---|---|
| **hydra** (0.6.x) | Laufende Kolumnentitel — ersetzt das fragile Handroll-Idiom in `styles/page.typ`. **Von beiden Quellen empfohlen.** | hoch |
| **zero** | Numerisches Formatting/Dezimal-Ausrichtung in Tabellen — passt direkt zu den Vital-/Laborwert-Tabellen des medizinischen Buches. | mittel |
| **alchemist** (cetz-basiert) | Chemische Strukturformeln (Skelettformeln) — relevant für Pharmakologie/Biochemie-Inhalte. | mittel (inhaltsabhängig) |
| **timeliney** | Gantt-/Zeitachsen — für didaktische Abläufe/Therapiepläne. | niedrig |
| umbra / pavemat / quill / suiji | Drop-Shadows / Matrix-Styling / Quantenschaltkreise / Seed-RNG — geringer Bezug zum aktuellen Inhalt. | niedrig |

## Quellen

Pro Paket in den Agenten-Findings dokumentiert (Typst Universe, GitHub Releases/CHANGELOG,
`packages.typst.org/preview/index.json`). Compiler/Best-Practices:
`typst.app/docs/changelog/{0.13,0.14,0.15}`, `typst.app/blog/2026/typst-0.15`,
`typst.app/universe/package/hydra`. Externe Kreuzvalidierung:
`Guides/update2026/` (2× Perplexity Deep Research, 2026-06-24).
