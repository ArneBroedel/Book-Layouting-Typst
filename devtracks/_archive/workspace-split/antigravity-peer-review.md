# Antigravity Peer-Review — Workspace-Split

## 1. Bewertung des Grok-Plans

Der vorliegende Grok-Plan liefert eine hervorragende empirische Bestandsaufnahme des Ist-Zustands, greift jedoch in der architektonischen Zielkonstruktion teilweise zu kurz oder neigt zu Over-Engineering.

* **Starkes:**
  * **Empirische Faktenbasis:** Die Analyse der 1013 Dateien (~185 MB) zerlegt das Monolith-Problem präzise. Die Identifikation von 109 MB `dist/`-Schutt und 65 MB Raster-Assets legt den Finger genau auf die Hauptursachen der kognitiven und technischen Ueberlastung.
  * **Phasenweise Progression (Fake Multi-Repo zuerst):** Die Idee, im Monorepo in Phase 1 & 2 zuerst harte Ordnergrenzen und Artefakt-Verträge zu etablieren, bevor Git-Historien zerschnitten werden, ist extrem wertvoll und verhindert chaotische Verfruehungen.
  * **Artefaktbasierte Entkopplung:** Festhalten an entkoppelten Schnittstellen (`Media Brief` → `Feasibility` → `Accept` → `Compose` → `Validate`) gemaess `CONSENSUS-v0.md` und `PRODUCT-BOUNDARIES.md`.

* **Schwaches:**
  * **Tooling- & CLI-Explosion:** Grok schlaegt vor, für jedes Subsystem eine eigene CLI zu etablieren (`bookkit compose validate`, `graphics vision`, `media-brief lint`, `content route-card`). Das erzeugt massiven Wartungs-Overhead, vervielfacht Runtimes und verwirrt Agenten. Agenten brauchen *eine* verlässliche Plattform-CLI mit klaren Unterbefehlen.
  * **Unklare Abgrenzung von Showcase vs. Pilots:** Der Plan schlaegt vor, `src/` nach `examples/showcase-book` zu verschieben, behaelt aber parallel `pilots/kursbuch-welle-03-compose` als „Dogfooding“. Es fehlt eine saubere Trennung zwischen *Platform Smoke-Test* (Engine) und *Domain Dogfooding* (Anwendung).

* **Premature (Übereilt):**
  * **Physischer Repo-Split in Phase 3:** Der feste Zeitplan für die Abspaltung von 4 Repos (A, B, C, R) innerhalb von 1–2 Wochen ist uebereilt. Solange nur ein primäres Buchprojekt (Kursbuch Medizin) existiert, erzeugt ein physischer Split sofort den Schmerz von Cross-Repo Dependency Pinning, CI-Duplizierung und abgebrochenen Symlinks für Agenten.

* **Widerspruch zu PRODUCT-BOUNDARIES + CONSENSUS:**
  * Grok schlägt vor, `pilots/kursbuch-welle-03-compose` in Plattform Repo A zu behalten. Das steht im leichten Widerspruch zum Grundsatz, dass *Content-SoT niemals in Repo A oder B lebt*. Pilots in A dürfen ausschliesslich synthetischen Test-Content enthalten.
  * Groks Entwurf von automatisierten CLI-Visionserstellungs-Loops (`graphics refine`) droht den Konsens-Grundsatz „keine unkontrollierten Agenten-Render-Schleifen ohne Validator/Human-Gate“ zu weichen.

* **Realismus der Phasen:**
  * **Phase 1 & 2:** Sehr realistisch und von hohem Nutzen. Innerhalb von 3–5 Tagen umsetzbar.
  * **Phase 3 (Physischer Split):** Sollte strikt an *echte Trigger* gebunden werden (z. B. Beginn einer 2. Domäne oder separates Autoren-Team) und nicht starr nach Phase 2 folgen.

---

## 2. Delivery-Modelle für Layout + Grafik

Im Folgenden werden die sechs moeglichen Delivery-Modelle verglichen:

| Modell | Agent-Ergonomie | Determinismus | Testbarkeit | Distribution | Wartung | Typst-Fit |
|---|---|---|---|---|---|---|
| **A: CLI + Skills** | Hoch | Sehr hoch | Sehr hoch | Hoch (Binary/Script) | Mittel | Mittel |
| **B: Package-first** | Mittel | Hoch | Hoch | Hoch (Typst Packages) | Hoch | Sehr hoch |
| **C: MCP (Protocol)** | Mittel | Mittel | Mittel | Komplex (Daemons) | Hoch | Niedrig |
| **D: Unified Monorepo CLI** | Sehr hoch | Sehr hoch | Sehr hoch | Sehr hoch (Single Entry) | Sehr hoch | Mittel |
| **E: Skill-only** | Niedrig | Niedrig | Niedrig | Sehr einfach | Niedrig | Niedrig |
| **F: Hybrid (Empfohlen)** | **Exzellent** | **Exzellent** | **Exzellent** | **Hoch** | **Hoch** | **Exzellent** |

### Detaillierter Vergleich:
* **A (CLI+Skills):** Sehr gut für deterministische Gates (Validate, Prepress), aber ungelenk für reine Typst-Styling-Bausteine.
* **B (Package-first):** Typst-nativ (`#import "@local/bookkit:0.1.0"`). Exzellent für Typst-Komponenten und Layout-Tokens, deckt aber Validierung, Prepress und AI-Vision nicht ab.
* **C (MCP Server):** Erzeugt unnoetige Daemon-Abhaengigkeiten und Protokoll-Komplexitaet für lokale CLI-/Build-Pipelines. Agenten verlieren oft Kontext über Hintergrund-State.
* **D (Unified Monorepo CLI):** Bietet hervorragende Ergonomie für *eine* Binärdatei, droht aber Typst-spezifische Package-Dynamiken zu verdecken.
* **E (Skill-only):** Zu informell. Führt zu „Hacks“ und Script-Wildwuchs in Agenten-Prompts ohne deterministische Garantien.
* **F (Hybrid):** Die optimale Kombination aus deterministischen Tooling-Schnittstellen und Typst-Standards.

### Empfehlung: Modell F (Hybrid: Single-CLI + Typst Package-first + Skill-driven Domain)
**Begründung:**
1. **Typst-Fit & Layout (Package-first):** Die Typst-Foundation (`packages/bookkit`) und wiederverwendbare Grafik-Module (`packages/bookkit-graphics`) werden als reine, versionierte Typst-Packages geliefert.
2. **Determinismus & Pipeline (Single-CLI `bookkit`):** Alle harten, maschinellen Invarianten (`bookkit build`, `bookkit validate`, `bookkit prepress`, `bookkit vision`) werden ueber eine **einzige, kanonische Plattform-CLI** bedient.
3. **Agent-Ergonomie & Domain (Skills):** Agenten steuern die Ablaeufe ueber schlanke Markdown-Skills (`bookkit`, `media-brief`, `medical-graphics`), die ausschliesslich High-Level-Instruktionen enthalten und auf die `bookkit`-CLI verweisen.

---

## 3. Repo-Schnitt

### Wann splitten? Monorepo vs. Multi-Repo
* **Aktuelle Empfehlung:** **Modular Monorepo (Ordner-Grenzen) beibehalten.**
* **Begründung:** Solange nur ein zentrales Kernprodukt (Kursbuch Medizin) von einem kleinen Team/Agenten-Set bearbeitet wird, ueberwiegen die Nachteile eines Multi-Repo-Setups (Dependency Hell, verteilte Git-Commits, gebrochene Symlinks) die Vorteile bei Weitem.
* **Harte Split-Trigger (Erst wenn mindestens ein Punkt erfuellt ist, wird gesplittet):**
  1. **Multi-Domain-Trigger:** Eine zweite, fachlich völlig fremde Domäne (z. B. *Recht* oder *Schulbuch*) geht in Produktion.
  2. **Multi-Team-Trigger:** Externe Content-Autoren oder ein separates Grafik-Team benoetigen Schreibrechte auf ihrem Bereich, ohne Zugang zum Plattform-Engine-Code zu haben.
  3. **Performance-Trigger:** Die Git-Repository-Groeße uebersteigt trotz Git LFS / Asset-Purge 500 MB.

### B Media + Graphics zusammen?
* **JA.** Media (Media Brief) und Graphics (Decision Note & Asset-Pipelines) muessen im selben Produkt/Repo **`medical-media`** bleiben. Die Entwurfsschritte von der pädagogischen Vision zur konkreten Vektor-/Raster-Grafik sind eng gekoppelt. Eine künstliche Trennung in zwei Repos würde massiven Synchronisations-Overhead erzeugen.

### Showcase, Research, Spikes, Assets
* **Showcase:** Gehört als `examples/showcase-book` in Produkt A (Layout-Plattform). Es dient als Ende-zu-Ende-Integrationstest der `bookkit`-Packages und der CLI.
* **Research:** Kann sofort als separates Repository (`typst-ecosystem-research`) abgekoppelt oder als optionales Git-Submodule geführt werden. Es hat im default Agent-Kontext der Buchproduktion nichts zu suchen.
* **Spikes:** Strikte Quarantäne. Stabile CeTZ/Fletcher-Module gehören nach `packages/bookkit-graphics` oder `domains/medical/lib/typst/`. Flüchtige Spikes verbleiben in `.gitignore`-geschützten Experiment-Ordnern.
* **Assets:** Strikte Binary Asset Policy. Vektorgrafiken (SVG) verbleiben im Repo. AI-Vision-Raster-Entwürfe (PNG) duerfen **nicht** unbegrenzt getrackt werden; nur final akzeptierte Assets werden eingecheckt (vorzugsweise via Git LFS).

---

## 4. Top-10 Konsolidierungsaktionen

Die wichtigsten Konsolidierungen nach Impact und Risiko, bezogen auf konkrete Pfade:

| # | Aktion | Pfad | Impact | Risiko | Beschreibung |
|---|---|---|---|---|---|
| 1 | **Root-Litter Purge** | `/scratch_test.*`, `/v-*-compile.typ` | Hoch | Null | Sofortiges Löschen flüchtiger Experiment-Dateien im Root-Verzeichnis. |
| 2 | **`dist/` Gitignore & Purge** | `/dist/` | Sehr Hoch | Null | 109 MB lokal generierte Build-Artefakte löschen und `.gitignore` absolut wasserdicht machen. |
| 3 | **PDF & Vision Render Untracking** | `**/*.pdf`, `domains/medical/assets/**/vision-*.png` | Hoch | Null | Entfernen aller getrackten Compile-PDFs aus Git; Ausnahmen dokumentieren. |
| 4 | **Asset-Policy Enforcement** | `domains/medical/assets/` | Extrem Hoch | Niedrig | Säuberung von ~65 MB Bilddaten. Nur 1 accepted SVG + max. 1 Referenz-PNG pro Unit behalten. Zwischenstufen löschen/quarantänisieren. |
| 5 | **Gold-Brief-Set etablieren** | `domains/medical/briefs/` | Hoch | Niedrig | Reduktion von ~124 Brief-Dateien auf ein **Gold-Set von 8–10 Einheiten** (z. B. `iii2`, `iii5`, `iv2`, `kl-melanom`, `kl-compartment-spatial`). Rest nach `briefs/_archive/`. |
| 6 | **Spike-Harvesting & Cleanup** | `toolset/compose/spikes/graphics/` | Mittel | Niedrig | Stabile CeTZ/Fletcher-Typst-Module extrahieren; flüchtige Spike-Dateien und Render-Outputs löschen. |
| 7 | **Konsolidierung zur Single `bookkit`-CLI** | `scripts/bookkit`, `toolset/compose/validate/` | Hoch | Mittel | Bündelung aller Sub-Tools in eine strukturierte CLI `bookkit` (`build`, `validate`, `prepress`, `vision`). |
| 8 | **Showcase-Isolierung** | `/src/` → `examples/showcase-book/` | Mittel | Niedrig | Entkopplung von Foundation-Packages und Showcase-Buch; Entfernen lokaler Re-Exports. |
| 9 | **Pilot-Bereinigung** | `/pilots/` | Mittel | Null | Archivieren alter Wellen (`kursbuch-welle-03`); Erhalt von genau 1 synthetischen Plattform-Smoke-Pilot. |
| 10 | **Research & Ecosystem Quarantäne** | `/research/`, `/templates/` | Hoch | Null | Isolation von 5.2 MB Research-JSONs und Drittanbieter-Templates aus dem Agenten-Default-Kontext. |

---

## 5. Gemeinsamer Bestweg (5–8 Schritte)

### Schritte zur Umsetzung:
1. **Schritt 1: Immediate Deep Hygiene (Tag 1)**
   Durchführung der Quick Wins 1–4: Root säubern, `dist/` und PDFs untracken, Asset-Policy anwenden (~150 MB Ballast entfernen).
2. **Schritt 2: Gold-Brief & Recipe Freeze (Tag 2)**
   Konsolidierung von `domains/medical/briefs/` auf das Gold-Set (max. 10 Einheiten). Einfrieren der Schnittstellen-Formate.
3. **Schritt 3: Single-CLI Packaging (`bookkit`) (Tag 3–5)**
   Zusammenführung von Build-, Validate- und Prepress-Scripten unter der zentralen CLI `bookkit`.
4. **Schritt 4: Directory-Driven Modular Monorepo (Woche 2)**
   Etablieren klarer Produktgrenzen unter `products/` (oder Beibehaltung von `packages/`, `domains/`, `toolset/` mit strikten `OWNERSHIP.md`-Dateien per Verzeichnis).
5. **Schritt 5: Skill-Refactoring (Woche 2)**
   Anpassung der Skills (`bookkit`, `media-brief`, `medical-graphics`), sodass sie rein auf die `bookkit`-CLI und lokale Verzeichnis-Schnittstellen verweisen.
6. **Schritt 6: Research Abkopplung (Woche 3)**
   Verschieben von `research/` in ein separates Repository oder Submodule.
7. **Schritt 7: Konditioneller Repo-Split (Bei Trigger)**
   Erst bei Auslösen eines definierten Triggers (siehe Abschnitt 3) physischer Git-Split via `git subtree`.

### Keep / Change / Drop vs. Grok-Plan:
* **KEEP:** Artefaktbasierte Verträge; Phasen 1 & 2 ("Fake Multi-Repo"); Reduktion auf Gold-Briefs.
* **CHANGE:** Groks 4 Mini-CLIs werden zu **einer Unified `bookkit` CLI** zusammengefasst. Physischer Repo-Split von Phase 3 wird **von zeitbasiert auf triggerbasiert** geändert.
* **DROP:** Verfrühter Git-Split ohne Multi-Team-Bedarf; dauerhaftes Tracken von AI-Vision-PNGs; eigene CLI für Produkt C.

### Max. 5 Human-Entscheidungen (Vom Owner abzuzeichnen):
1. **Asset-Purge Freigabe:** Bestätigung zum Löschen/Quarantänisieren von ~50 MB temporären Gemini-PNG-Variants.
2. **Gold-Brief Selection:** Abnahme der 8–10 kanonischen Referenz-Einheiten für Medizin.
3. **Monorepo-Trigger-Agreement:** Verbindliche Zustimmung, dass ein physischer Repo-Split erst bei Domäne #2 oder Multi-Team erfolgt.
4. **Showcase-Verschiebung:** Freigabe zur Umstrukturierung von `src/` nach `examples/showcase-book/`.
5. **Unified CLI Spec:** Abnahme des Funktionsumfangs der konsolidierten `bookkit`-CLI.

---

## 6. Anti-Patterns

1. **Premature Multi-Repo Splitting (Das Kleinst-Repo-Chaos):**
   Das Aufspalten in 4+ Repositories, bevor Schnittstellen und Platform-Core final stabilisiert sind. Erzeugt massiven Dependency-Sync-Aufwand und Orientierungslosigkeit bei Agenten.
2. **CLI & Tooling Explosion:**
   Das Erstellen separater CLIs für jede kleine Teilrolle (`media-brief-cli`, `graphics-cli`, `content-cli`). Dies erhöht die Systemkomplexität und die Ausfallwahrscheinlichkeit bei Agenten-Aufrufen.
3. **Git as Binary Blob Store:**
   Das Einchecken von dutzenden Zwischengrafiken, Vision-Renderings (PNG/JPG) und Build-PDFs in das Haupt-Git-Repository.
4. **Content SoT Leakage into Engine:**
   Das Mischen von echten Buch-Inhalten (SoT des Autors) mit Plattform-Engine-Code oder Showcase-Demos.
5. **Autonomous Agent Loop Inflation:**
   Das Erlauben von unbegrenzten Auto-Correction- oder Refine-Schleifen zwischen Agenten ohne harte Abbruchbedingungen, deterministische Validator-Gates oder menschliche Freigaben.

---

## Executive Recommendation

Das Repository leidet nicht an struktureller Fehlausrichtung, sondern an organisch gewachsenem Daten- und Tooling-Ballast (109 MB Build-Schutt, 65 MB Raster-Assets, 124 Briefs). Der beste Weg nach vorn ist kein sofortiger, risikoreicher physischer Repo-Split, sondern eine radikale In-Place-Hygiene (Phase 1) gefolgt von der Etablierung eines modularen Monorepos mit harten Ordnergrenzen und einer einzigen, universellen `bookkit`-CLI (Phase 2). Der physische Split in getrennte Repositories sollte strikt aufgeschoben werden, bis ein harter Trigger – wie der Start einer zweiten Fachdomäne oder ein separates Autorenteam – diesen Schritt zwingend erforderlich macht.
