# Plan — Tool- & Paket-Aktualisierung

Priorisierte, risikogestaffelte Roadmap. Begründungen/Details siehe [spec.md](spec.md).
Jeder Build mit den Reproduzierbarkeits-Flags: `--ignore-system-fonts --font-path fonts`.

## Umsetzungsstand (2026-06-24, Branch `feature/tool-updates-2026`)

Umgesetzt **und auf Typst 0.15.0 grün gebaut + visuell verifiziert** (85 Seiten, nur die
harmlose diagraph-`sans-serif`-Warnung):

- ✅ **Phase 1** — Compiler/Tooling: CI-Workflow mit Typst 0.15.0 (`.github/workflows/build.yml`),
  `tinymist.formatterMode: "typstyle"`, SETUP-WINDOWS.md + project-tech-stack.md auf 0.15.0.
- ✅ **Phase 2** — Pre-Bump-Audit: keine `path(`/`state.display`/`pdf.embed`/Backslash-Pfade im Live-Code.
- ✅ **Phase 3+4** — Bumps: cetz 0.5.2, fletcher 0.5.8 (+ node-inset 8→4pt), **codly 1.3.0**
  (`1.3.1` existiert nicht — korrigiert; blockierte zuvor den gesamten Build auf 0.15!),
  tablem 0.3.0, glossarium 0.5.10, tidy 0.4.3, diagraph 0.3.7. Figuren visuell geprüft.
- ✅ **Phase 5** — fontawesome 0.6.1 + `fa-version("6")` (nutzt die gebündelten FA6-Fonts
  deterministisch; **keine** FA7-Font-Abhängigkeit nötig). 8 Icons verifiziert.
- ✅ **Phase 6** — ctxjs 0.5.0: `new-context()` + `(ctx, value)`-Tupel destrukturiert; Ergebnis 1.63 verifiziert.
- ✅ **Phase 7** — Doku-Snippets: ilm 2.1.1 (`author`→`authors`), touying 0.7.4, pergamon 0.8.0 (API korrigiert),
  brilliant-cv-Hinweis; biceps/fontawesome-Inkonsistenzen in devtracks korrigiert.
- ✅ **Phase 8 (Teil)** — `par.justification-limits` (Character-Level-Blocksatz); **hydra 0.6.3**
  Running-Header (Hybrid: hydra-Titelauswahl + explizite Kapitel-Start-Unterdrückung).
- ✅ **Phase 9** — Skills/Docs: typst-extension PDF/UA-Flag-Fix (`ua-1`), typst-writer
  Paragraph-Modell + hydra/within-Header, pinit-workflow Location-API, Prepress-Prosa.
- ✅ **Bonus** — latenter Bug behoben: eingerückte Tidy-Docstring (Kap. 13) ergab leere
  API-Abbildung; Docstring auf Spalte 0 → rendert jetzt korrekt.

Nachträglich umgesetzt (Erweiterung „b", real kompiliert + verifiziert, 86 Seiten):

- ✅ **Native Mehrfach-Bibliographien (0.15)** in Kap. 11 — echtes, kompiliertes Demo (Zitation
  bindet ans nächste folgende Verzeichnis, unabhängige Nummerierung). Die Alexandria-Didaktik
  bleibt erhalten, neu eingeordnet als **Pre-0.15-Alternative** (Präfix-Ansatz).
- ✅ **zero-Pilot** in Kap. 09 — `ztable` mit Dezimalpunkt-Ausrichtung der numerischen
  CSV-Studienspalten, daten-getrieben aus denselben `study-rows`.

**Weiterhin optional offen (kein akuter Bedarf):**

- ⏸ **page(bleed:)/Spot-Farben/Variable Fonts/divider** — optionale 0.15-Erweiterungen für
  Prepress bzw. Repo-Verschlankung; bei konkretem Druck-/Font-Bedarf nachziehen.

---

> **Voraussetzung für die Umsetzung:** In dieser Umgebung (WSL) ist `typst` aktuell **nicht**
> installiert. Für die Verifikations-Schritte (Kompilieren + visueller Diff) muss Typst
> verfügbar sein oder über die Windows-Seite gebaut werden.

## Phase 1 — Compiler & Tooling pinnen (höchster Hebel)

Macht alle weiteren Schritte reproduzierbar, entsperrt die Compiler-Gates (codly, diagraph)
und schließt zugleich eine **Sicherheitslücke**: Typst 0.14.2 behebt eine Use-after-free in der
WASM-Runtime (`wasmi`) — relevant für die Plugin-Kapitel 13 (ctxjs, diagraph) und 17 (badformer,
soviet-matrix). 0.15.0 enthält den Fix. Vor dem Pinnen die Tinymist-Version verifizieren
(Workflow: 0.15.2 vs. Perplexity: 0.14.25 — siehe spec.md/Kreuzvalidierung).

1. **Typst 0.15.0 festlegen** und überall pinnen:
   - Root-`typst.toml` mit dokumentierter Compiler-Anforderung.
   - CI/Docker: `ghcr.io/typst/typst`-Tag in `project-tech-stack.md` von `0.14.2` → `0.15.0`.
   - GitHub-Actions-Step `typst-community/setup-typst@v4` mit `typst-version: 0.15.0`.
   - `SETUP-WINDOWS.md` (aktuell „≥ 0.14.2") + Guides (0.12.0/0.14.2) auf 0.15.0.
   - *Fallback:* 0.14.2 nur, falls eine 0.15-Regression auftritt — dann 0.15-only-Features nicht nutzen.
2. **Tinymist:** auf latest bleiben; `tinymist.formatterMode: "typstyle"` explizit in
   `.vscode/settings.json` setzen; optional Linter (`tinymist.lint.enabled: true`).

## Phase 2 — Pre-Bump-Audit (vor dem Compiler-Wechsel)

Codebase greppen und ggf. migrieren, **bevor** auf 0.15 gehoben wird:

- `path(` → `curve(` (in 0.15 entfernt)
- `state.display`, `location:`/positionelles Location-Argument an `query`/`counter.at`/`state.at`
- `pdf.embed` → `pdf.attach`
- `--make-deps` → `--deps --deps-format make`
- Backslash-Pfade in `#import`/`image` (in 0.15 verboten)

> Laut Recherche ist der Live-Code weitgehend forward-kompatibel (outline top-level,
> `measure()` bereits context-basiert, keine Live-`path()`/`pattern`/`pdf.embed`-Nutzung).

## Phase 3 — Versions-Inkonsistenzen bereinigen (1 Commit)

- glossarium Code `0.5.4` → `0.5.10` (11-academic.typ:63, :88)
- fontawesome `0.5.0` → `0.6.1` + `devtracks/` angleichen
- biceps `devtracks/` `0.2.0` → `0.0.1` (0.2.0 existiert nicht)
- brilliant-cv Snippet-String vs. `versions.txt` abgleichen
- Compiler-Version über die drei Doku-Stellen vereinheitlichen

## Phase 4 — Sichere Pin-Bumps (batch, je Figur visuell prüfen)

Alle drop-in, nur visuelle Deltas zum Nachsehen:

| Bump | Datei | Nachprüfen |
|---|---|---|
| cetz 0.3.4 → 0.5.2 | 08-packages.typ | 2 CeTZ-Figuren, v. a. bidirektionale Pfeil-Marks |
| fletcher 0.5.7 → 0.5.8 | 08-packages.typ:13, 18-pinit-showcase.typ:168 | **`node-inset` 8pt → ~4pt** (Z. 189); mehrzeilige Labels |
| tablem 0.2.0 → 0.3.0 | 08-packages.typ:328 | Vitalzeichen-Tabelle (Auto-Header) |
| tidy 0.4.2 → 0.4.3 | 13-wasm-meta.typ | API-Tabelle (DE-Labels) |
| diagraph 0.3.1 → 0.3.7 | 13-wasm-meta.typ:21 | Entscheidungsbaum-Figur |
| codly 1.2.0 → 1.3.1 | 08-packages.typ:227 | JSON-Codefigur (nach Compiler-Pin ≥ 0.13.1) |
| glossarium 0.5.10 | 11-academic.typ | Glossar (bereits in Phase 3) |

## Phase 5 — fontawesome 0.6.1 (Environment-Abhängigkeit)

1. **FA7-Desktop-Fonts** in Build/CI-Umgebung installieren (Paket rendert aus installierten Fonts).
2. Pin in 12-beyond-flow.typ:100 auf `0.6.1`.
3. Die acht medizinischen Icons einmal visuell prüfen (kein FA7-Restyle).

## Phase 6 — ctxjs 0.3.2 → 0.5.0 (einzige Breaking-Migration)

In `src/chapters/13-wasm-meta.typ` (2 Call-Sites + angezeigtes Snippet synchron halten):

- Z. 81: `new-context()` braucht ein geladenes Modul-Argument.
- Z. 86: `ctx.eval()` gibt nun ein `(context, value)`-Tupel zurück → destrukturieren.
- Verifizieren: Mathe-Ergebnis (~1.63) rendert weiterhin.

## Phase 7 — Doku-Snippets auffrischen (kein Build-Risiko)

pergamon 0.8.0 (+ Beispiel korrigieren), brilliant-cv 4.0.1 (Profil-Modell),
ilm 2.1.1 (`author:` → `authors:`), touying 0.7.4, layout-ltd-Prosa korrigieren.

## Phase 8 — Neue 0.15-Features adoptieren (inkrementell)

In Nutzwert-Reihenfolge:

1. **`@preview/hydra` (0.6.x) / `within`-Selektor (0.15)** für kapitelweise Running-Header
   (ersetzt das fragile Idiom in `styles/page.typ`). — größter Einzelnutzen, von beiden
   Recherchequellen empfohlen.
2. **Native Mehrfach-Bibliographien (0.15)** in 11-academic.typ — ersetzt den Alexandria-Workaround;
   passt zu den vier `.bib`-Dateien des Buches (grundlagen/klinisch/pergamon/references).
3. **`par.justification-limits` (0.14)** für den Blocksatz-Body.
4. **PDF/UA-1 + PDF/A-2a gleichzeitig (0.15)** — Accessibility + Langzeitarchivierung für den
   medizinischen Kontext in einem Export.
5. Optional: **`page(bleed:)` + Spot-Farben** (Prepress), **Variable Fonts**, **`divider`-Element**
   (semantische Abschnittstrenner für die Section-Break-Spreads).

### Neue Universe-Pakete evaluieren (aus Kreuzvalidierung)

- **hydra** — siehe Punkt 1 (höchste Priorität).
- **zero** — Dezimal-Ausrichtung für die Vital-/Laborwert-Tabellen; Pilot an einer Tabelle in Kap. 08.
- **alchemist** (cetz-basiert) — Strukturformeln, falls Pharmakologie/Biochemie-Inhalte geplant sind.
- **timeliney** — Zeitachsen/Therapiepläne, niedrige Priorität.

## Phase 9 — Projekteigene Skills/Docs nachziehen

- `typst-extension` §7: PDF/UA-Flag korrigieren (`ua-1` statt `a-2b`; Tagging = Default seit 0.14).
- `typst-writer`: Paragraph-Modell-Hinweis (§2/§6); Header-Idiom auf `hydra`/`within` (§8);
  Paket-Pins aktualisieren.
- `pinit-workflow`: Hinweis auf Wegfall der Location-Passing-Introspection-APIs.
- `project-tech-stack.md`: Compiler-Tag → 0.15.x; Prepress-„Risiko"-Abschnitte mit 0.15
  (Bleed/Spot-Farben) relativieren.

---

### Reihenfolge auf einen Blick

**1** Compiler/Tooling pinnen → **2** Pre-Bump-Audit → **3** Inkonsistenzen → **4** sichere Bumps
→ **5** fontawesome → **6** ctxjs → **7** Doku-Snippets → **8** 0.15-Features → **9** Skills/Docs.

Es gibt **keine** sicherheitskritischen oder build-brechenden Notfälle — dies ist eine
Aufräum- und Modernisierungs-Roadmap.
