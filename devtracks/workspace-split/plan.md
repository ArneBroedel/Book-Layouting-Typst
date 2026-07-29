# Plan — Aufräumen, Konsolidieren, Aufteilen

**Status:** Umsetzungsplan (Phase 0 Inventar erledigt 2026-07-29) · **Peer-Review integriert**  
**Spec:** [`spec.md`](spec.md)  
**Antigravity Review:** [`antigravity-peer-review.md`](antigravity-peer-review.md)  
**Joint Recommendation (verbindlich für nächste Schritte):** [`joint-recommendation.md`](joint-recommendation.md)  
**Vollindex:** [`../workspace-inventory/file-index.tsv`](../workspace-inventory/file-index.tsv) (~1050 Dateien, ~185 MB inkl. `dist/`)  
**Gruppierter Katalog:** [`../workspace-inventory/CATALOG.md`](../workspace-inventory/CATALOG.md)  
**Bucket-Zusammenfassung:** [`../workspace-inventory/bucket-summary.tsv`](../workspace-inventory/bucket-summary.tsv)  
**Noise-Kandidaten:** [`../workspace-inventory/noise-candidates.tsv`](../workspace-inventory/noise-candidates.tsv) (~270 Einträge)

> **Korrektur nach Peer-Review:** Delivery = **Hybrid** (eine `bookkit`-CLI + Typst-Packages + Skills). Repo-Split **triggerbasiert**, nicht kalenderbasiert. Details: `joint-recommendation.md`.

---

## 0. Inventur — Faktenlage

### 0.1 Volumen

| Bereich | Dateien | Größe (ca.) | Bemerkung |
|---|---:|---:|---|
| Gesamter Workspace (ohne `.git`) | **~1013** | **~185 MB** | Index exkl. `__pycache__`, `.playwright-mcp` |
| davon `dist/` | 214 | **109 MB** | gitignored, Build-Schutt |
| `domains/` | 311 | **66 MB** | davon Assets ~65 MB |
| Rest (A+C+Meta+Research) | ~490 | ~10 MB | Code/Docs/Skills |
| Git-tracked | ~859 | — | inkl. ~40 PNG + große Vision-Assets |

### 0.2 Extension-Mix (gesamt)

| Ext | n | Rolle |
|---|---:|---|
| `.md` | ~413 | Skills, Briefs, Guides, Devtracks, Templates |
| `.typ` | ~231 | Packages, Showcase, Spikes, Pilots, Templates-Korpus |
| `.png` | ~152 | Vision/Refine-Assets, Spike-Exports, dist |
| `.pdf` | ~106 | Build/Spike/Showcase-Nebenprodukte |
| `.json` | ~36 | Research-Daten, Skill-Evals, Benchmarks |
| `.py` | ~33 | Compose-Validate, Research-Pipeline, DPI |
| Rest | — | sh/ps1, yaml, fonts, ICC, svg, …

### 0.3 Wo der Fokus „verloren“ geht (Signal)

1. **`domains/medical/assets/` (~65 MB)** — Raster-Vision/Refine dominiert Disk & kognitive Last.  
2. **`domains/medical/briefs/` (~124 Dateien)** — Gold + Explorations + Wave5; Prozess-Artefakte, kein Layout-Core.  
3. **`toolset/compose/spikes/graphics/` (~72 Dateien)** — Hybrid A/B: Layout-Spike *und* Grafik-R&D.  
4. **`dist/` (109 MB)** — lokal ok, darf nie „Projektinhalt“ sein.  
5. **Skill-Workspaces** (`*-workspace/**`, ~60 Dateien) — Eval-Outputs, nicht Runtime.  
6. **Doppel-Showcase:** `src/` (Buch) + `packages/` (Runtime) + `pilots/` (Dogfood) — sinnvoll, aber unklar kommuniziert.  
7. **Research/Templates** — Ecosystem-Labor, nicht Produkt-Runtime.

---

## 1. Datei-Index & Zweckanalyse

> **Methode:** Jede Datei steht in [`file-index.tsv`](../workspace-inventory/file-index.tsv) mit `path`, `bytes`, `ext`, `bucket`, `role`, `purpose_bucket`.  
> Unten: **vollständige** Zuordnung nach Aufgabenbereich + inhaltliche Analyse pro Cluster. Einzeldateien in großen Clustern (Briefs, dist, brilliant-cv) sind im TSV zeilenweise erfasst; hier semantisch gruppiert, damit der Plan handhabbar bleibt.

### 1.1 ROOT & Governance

| Pfad | Zweck / Inhalt |
|---|---|
| `CLAUDE.md` | Kanonische Architektur, Build, Komponenten-Inventar, Skill-Gate (sehr lang, monorepo-zentriert) |
| `AGENTS.md` | Multi-Agent Discovery, Product A/B/C, Skill-Tabelle, Linux-Build |
| `README.md` | Einstieg; **veraltet** (11 Kapitel, alte Font-Story) vs. realem Toolset |
| `LICENSE` | Lizenz |
| `.gitignore` | u. a. `dist/`; Scratch-PNG unvollständig abgedeckt |
| `.editorconfig` | Editor-Defaults |
| `project-tech-stack.md` | Historischer Tech-Stack-Report |
| `SETUP-WINDOWS.md` | Windows-Setup |
| `scratch_test.{typ,svg,png}` | Root-Litter Experiment |
| `v-cauda-compile.typ`, `v-sept-compile.typ` | Ad-hoc Compile-Wrapper Root |

**Konsolidierung:** Governance auf **Produkt-A-Kern** schrumpfen; A/B/C-Grenzen kurz + Link. Scratch löschen. README auf Consumer-first.

### 1.2 Produkt A — Layout-Plattform (Kern des ursprünglichen Ziels)

#### Packages (Runtime)

| Pfad | Zweck |
|---|---|
| `packages/bookkit/typst.toml`, `lib.typ`, `theme.typ`, `typography.typ`, `page.typ`, `print.typ` | Foundation API, Tokens, Page/Print |
| `packages/bookkit/components/*.typ` | blocks, grids, inline, layouts, spreads, tables |
| `packages/bookkit/README.md` | Package-Doku |
| `packages/bookkit-didactics/*` | Optional facet: didactics, exam, spreads-extra |

**Inhalt:** Reines Typst-Layout-Produkt. **Behalten & schärfen** als Herz von A.

#### Showcase `src/` (Dogfood, kein Content-SoT)

| Pfad | Zweck |
|---|---|
| `src/main.typ` | Buch-Assembly |
| `src/styles/*` | **Re-exports** → packages (theme/typography/page/print) |
| `src/components/*` | Teilweise Re-export foundation; plus showcase-only: art, charts, diagrams, figures, legal, page-design, pedigree, didactics-wrappers |
| `src/chapters/00–25*.typ` (+ 2 PDFs neben Source) | Demonstrationskapitel (Typst→Medizin→Kunst→Recht) |
| `src/data/*` | glossary, bib, sample JSON/CSV |
| `src/assets/anatomy/*.svg` | Showcase-Bilder |
| `src/SHOWCASE-README.md` | Showcase-Erklärung |

**Konsolidierung:** Showcase **optional** im Layout-Repo halten *oder* nach `examples/showcase-book/`. PDFs neben `.typ` entfernen. Langfristig: showcase-only Komponenten (art, legal, …) klar als „demo“ markieren vs. package surface.

#### Form-Catalog

| Pfad | Zweck |
|---|---|
| `toolset/form-catalog/VERSION` | Pin `0.1.0` |
| `toolset/form-catalog/core/forms.yaml` | Generische Form-Whitelist |
| `core/BASIS.md`, `ANTI-PATTERNS.md`, `GAP-PROCESS.md` | Policy |
| `scripts/check_forms.py` | Schema/Check |
| `README.md` | Nutzung |

**Behalten in A.** Domain-Genre-Minima gehören nach B (heute schon teils `domains/medical/recipes/`).

#### Compose Engine

| Pfad | Zweck |
|---|---|
| `toolset/compose/validate/*.py` | CLI: claims, accept, catalog, whitelist, compile, freeze, minima, posthoc, runner |
| `toolset/compose/scripts/run_validate.py` | Entry |
| `toolset/compose/tests/`, `fixtures/*` | Pass/Fail-Szenarien |
| `toolset/compose/templates/feasibility-note.template.md` | Tech-Artefakt |
| `CREATIVE-COMPOSE.md`, `README.md` | Policy creative-first |

**Behalten in A** als CLI `compose-validate` (heute Python-Modul). Spikes siehe Brücke A/B.

#### Starter, Examples, Tests, Docs A

| Pfad | Zweck |
|---|---|
| `toolset/starter/*` | `bookkit init` Vorlage |
| `toolset/examples/minimal`, `facet-smoke` | Smoke |
| `toolset/tests/test_toolset.sh` | Integration |
| `toolset/docs/api-foundation.md` | API-Doku |
| `docs/CONSUMER.md` | Consumer-Guide (A) |
| `docs/BOOK-PRODUCTION-RUNBOOK.md` | Orchestrierung (meta, A-lastig) |
| `docs/KNOWLEDGE-MAP.md` | Wissensarchitektur monorepo |

#### Scripts A

| Pfad | Zweck |
|---|---|
| `scripts/bookkit` | CLI doctor/build/watch/ua/init (print stub) |
| `scripts/build.sh`, `build.ps1` | Showcase-Build |
| `scripts/setup.ps1`, `preflight.ps1` | Windows toolchain |
| `scripts/print-pdfx.sh/.ps1`, `preflight-print.sh`, `check-image-dpi.py` | Prepress |
| `scripts/book-production-status.sh` | Board-Status Orchestrierung |

#### Prepress & Fonts

| Pfad | Zweck |
|---|---|
| `prepress/PDFX_def.ps`, `profiles/*.icc`, `README.md`, `reports/*` | PDF/X-3 CMYK Pipeline |
| `fonts/*.otf` | Font Awesome (Theme); Serif kommt typst-bundled |

#### Skills A (SoT unter `toolset/skill-pack/` bzw. `.github/skills/`)

| Skill | SoT | Aufgabe |
|---|---|---|
| `bookkit` | `toolset/skill-pack/bookkit/` | Package API, Assembly, Theme |
| `compose-chapter` | `toolset/skill-pack/compose-chapter/` | Feasibility → Compose → Validate |
| `book-production-orchestrator` | `toolset/skill-pack/book-production-orchestrator/` | Board, Route, Autonomy L0–L3 |
| `typst-writer` | `.github/skills/typst-writer/` | Idiomatisches Typst |
| `typst-extension` | `.github/skills/typst-extension/` | @preview, Daten, CI |
| `pinit-workflow` | `.github/skills/pinit-workflow/` | Annotationen + Debug-Tools |
| `skill-creator` | `.github/skills/skill-creator/` | Meta (kann global bleiben) |

#### Pilots (Dogfood A, kein Content-SoT)

| Pfad | Zweck |
|---|---|
| `pilots/kursbuch-welle-03/` | Früher MD→Typ-Pilot |
| `pilots/kursbuch-welle-03-compose/` | Compose-Dogfood + reports |
| `pilots/reuse-datasheet/` | Design-brief reuse demo |
| `pilots/_smoke-foundation/` | (leer/minimal) |

**Konsolidierung:** Ein **kanonischer** Pilot behalten; alten Welle-03-Zweig archivieren/löschen.

#### Guides A (Typst-Theorie)

| Pfad | Zweck |
|---|---|
| `Guides/Working_With_Typst-Theory_To_Practice.md` | Lessons-Ledger → typst-writer |
| `Typst Complete/Reference/Extensibility`, `Template-*`, `Pinit-Best-Practices` | Referenz |
| `Guides/update2026/*` | Roh-Recherche-Notizen |

**Konsolidierung:** Rohnotizen `update2026` harvesten oder nach Research; lange Guides optional in eigenes Knowledge-Paket.

---

### 1.3 Produkt B — Domain Media (Medizin)

#### Ownership & Meta

| Pfad | Zweck |
|---|---|
| `domains/README.md`, `domains/medical/README.md`, `OWNERSHIP.md` | Produkt B Grenze |

#### Skills B

| Pfad | Zweck |
|---|---|
| `domains/medical/skill/media-brief/SKILL.md` + `references/*` + `evals/` | Media-Rolle: Ideal → Form Spec → Brief → Accept; KL-Ontologie |
| `domains/medical/skill/medical-graphics/SKILL.md` + `playbook/00–09` + `references/*` + `evals/` + `examples/` | Graphics-Rolle: free vision → claim audit → recreate/hybrid/refine |
| `*-workspace/**` | Skill-Eval Iterationen (Outputs, grading, HTML) — **nicht Runtime** |

#### Recipes & Templates

| Pfad | Zweck |
|---|---|
| `domains/medical/recipes/{notfall-karte,lerntext,fallbasiert}.*` | Genre-Minima / Intent |
| `domains/medical/templates/*.template.md` | brief, form-spec, vision, claim-audit, decision, accept |

#### Briefs (Prozess-Artefakte / Gold)

| Muster | n (ca.) | Zweck |
|---|---:|---|
| `*.brief.md` | 17 | Media Brief Gold/Work |
| `*.form-spec.md` | 26 | Ambitionierte Visual-Units |
| `*.feasibility.md` | 10 | Tech-Antwort (eigentlich A-Artefakt, liegt in B) |
| `*.accept.md` | 15 | Media Accept |
| `*.vision.md` | 17 | Free-Vision Protokolle |
| `*.graphics.md` | 6 | Decision Notes |
| `*.claim-audit.md` | 5 | Claim-Audit |
| `_explorations/`, `_wave5/` | ~26 | Forschung/Waves |
| Boards | 1+ | kl-wave5.board |

**Konsolidierung:** Gold-Set (≤10 Kapitel-Einheiten) behalten; Explorations + Iteration-Visions archivieren (git-tag / `archive/` / Git-LFS-Policy).

#### Assets (Raster/SVG)

| Pfad | Zweck |
|---|---|
| `domains/medical/assets/<slug>/MANIFEST.md` | Asset-Inventar pro Unit |
| `vision-free-*.png`, `vision-refined-*.png` | AI-Vision / Refine |
| `iii2-bls-aed/*.{svg,png,jpg}` | Algorithmus-Vektor + Raster-Varianten |
| `kl-compartment-spatial/*` | Viele Gemini-Varianten (Sweetspot/Principle/…) — **Haupt-Bulk** |

**Konsolidierung:** Pro Unit max. **1 accepted + optional 1 vision reference**; Rest in Release-Assets oder LFS-Archiv. SVG-first Policy durchsetzen.

#### Graphics Scripts (CLI-Keim B/G)

| Pfad | Zweck |
|---|---|
| `scripts/graphics-vision-gemini.sh` | Free vision via Gemini |
| `scripts/graphics-vision-agy.sh`, `graphics-refine-agy.sh` | Antigravity/Nanobanana path |
| `scripts/graphics-spike-init.sh` | Spike-Scaffold |

#### Guides B

| Pfad | Zweck |
|---|---|
| `Guides/Medical-Presentation-Forms.md` | Form Spec / Zonen |
| `Guides/Medical-Graphics-Playbook.md` | Free-first Policy |
| `Guides/KL-Form-Language.md` | Illness-Script Form Language |

#### Spikes (Brücke A↔B, heute unter toolset)

| Pfad | Zweck |
|---|---|
| `toolset/compose/spikes/graphics/<unit>/lib/*.typ` | Wiederverwendbare CeTZ/Fletcher-Module (urgency, mimic, compartment, …) |
| `spike-*.typ`, compare/recreate/refined | Experimente |
| `_templates/` | Spike-Scaffold |
| READMEs | Navigation |

**Konsolidierung:** Stabile Module → **`packages/bookkit-graphics` oder B-`lib/typst/`**; flüchtige Spikes archivieren. Keine PDFs im Spike-Tree.

---

### 1.4 Produkt C — Content-Reife (transitional hier)

| Pfad | Zweck |
|---|---|
| `domains/content-maturity/skill/content-review`, `content-orchestrator` | Lektorat / Routing C1–C4 |
| `checklists/core/*`, `profiles/medical/DEFERRED.md` | Review-Dimensionen |
| `templates/*` | review, freeze, proof, patch, route-card, scope, imprimatur |
| `examples/*`, `fixtures/*` | Synthetische Demos (anaphylaxis-lite, agentic) |
| `checkpoints.md`, `OWNERSHIP.md`, `MIGRATION-TO-C.md` | Prozess + Split |
| `devtracks/content-maturity/*`, `agentic-adaptations/*` | Spec/Plan/Split-Checklist |

**Konsolidierung:** Split nach C laut vorhandener Checklist; in A nur **Freeze-Gate-Hooks** im Compose-Validator behalten.

---

### 1.5 Research (eigenes Mini-Produkt oder Anhang A)

| Pfad | Zweck |
|---|---|
| `research/pipeline/*.py` | fetch/process/refine packages & templates |
| `research/data/*.json` (~3.5 MB) | Ecosystem-Survey |
| `templates/*` (ilm, touying, brilliant-cv, …) | Study-Korpus Drittanbieter |
| `Guides/Template-*` | Auswertung |

**Konsolidierung:** Eigenes Repo `typst-ecosystem-research` *oder* `research/` git-submodule; nicht im Layout-Release-Pfad.

---

### 1.6 Meta: Devtracks, Agent-Discovery, CI, Workspace

| Pfad | Zweck |
|---|---|
| `devtracks/*` active | kl-form-language, medical-graphics, content-maturity, agentic-adaptations, CONSENSUS, PRODUCT-BOUNDARIES, orchestration |
| `devtracks/_archive/*` | Harvested Provenance (~20 Tracks) |
| `.github/skills/*` SoT + Symlinks | Agent entry |
| `.grok/skills/*`, `.claude/skills/*`, `.agents/skills/*` | Discovery-Symlinks |
| `.github/workflows/build.yml` | CI build |
| `.vscode/*` | Tasks typst build/watch/ua |
| `workspaces/kursbuch-layout.code-workspace` | Multi-root UX A+C |
| `toolset/orchestration/book-production/demo-welle03/*` | Demo Board/Run-log |

**Konsolidierung:** Pro Produkt eigenes `devtracks/` nur für *dessen* Arbeit; Archive nach Harvest löschen oder in `archive/`-Branch. Symlink-Matrix dokumentieren, nicht multiplizieren.

---

### 1.7 Build-Schutt & Support

| Pfad | Zweck | Aktion |
|---|---|---|
| `dist/**` | Alle Build-PDFs/PNGs | bleibt gitignored; lokal periodisch wipe |
| `test/*.typ`, `test/*.pdf` | pinit experiments | PDF raus; Typ behalten oder nach pinit-skill |
| `assets/{figures,photos,tables}/.gitkeep` | Leer | behalten oder entfernen |
| `tmp/`, `tools/prepress/` | leer/fragment | aufräumen |
| Tracked PDFs in `src/chapters`, spikes | Compile-Nebenprodukte | untrack + gitignore `**/*.pdf` außer docs |

---

## 2. Ziel-Aufgabenbereiche (Produkte)

Empfohlenes **4+1-Modell** (nicht 12 Micro-Repos):

```text
┌─────────────────────────────────────────────────────────────────┐
│  O  book-production-orchestrator (dünn)                         │
│     orchestriert über Artefakte; lebt bei A oder eigenem thin   │
└────────────┬──────────────────┬──────────────────┬──────────────┘
             │                  │                  │
     ┌───────▼──────┐   ┌───────▼──────┐   ┌───────▼──────┐
     │ A  LAYOUT    │   │ B  MEDIA     │   │ C  CONTENT   │
     │ typst-bookkit│   │ + GRAPHICS   │   │ editorial    │
     │              │   │ (1 Repo oder │   │              │
     │ CLI bookkit  │   │  2 Packages) │   │ Skills       │
     │ compose-val. │   │              │   │ freeze/proof │
     │ prepress     │   │ media-brief  │   │              │
     │ form-catalog │   │ med-graphics │   │              │
     │ typst skills │   │ vision CLI   │   │              │
     └──────────────┘   └──────────────┘   └──────────────┘
             │
     ┌───────▼──────┐
     │ R  RESEARCH  │  optional abspalten
     │ ecosystem    │
     └──────────────┘
```

### 2.1 A — `typst-bookkit` (Layout-Experte → Druck)

| | |
|---|---|
| **Mission** | KI-agentisch bedienbare Typst-Layout-Plattform: Tokens, Komponenten, Compose, Validate, Prepress |
| **CLI** | `bookkit` (build/watch/ua/init/doctor/print), `compose-validate`, `prepress` (print-pdfx + dpi) |
| **Skills** | bookkit, compose-chapter, typst-writer, typst-extension, pinit-workflow, (orchestrator) |
| **Runtime** | packages/bookkit*, form-catalog/core, compose/validate, prepress, fonts policy |
| **Optional** | showcase-book, 1 pilot, Typst-Guides |
| **Nicht** | medizinische Briefs, Raster-Vision, Content-Lektorat, Ecosystem-JSON |

### 2.2 B — `medical-media` (Mediendesign + Grafik)

Zwei **Packages im selben Repo** (klare Ordner, ein Release), *später* splitbar:

| Package | CLI | Skills | Inhalt |
|---|---|---|---|
| **B1 Media Design** | optional `media-brief check` (Frontmatter/Schema) | `media-brief` | ontology, form-space, recipes, templates, gold briefs |
| **B2 Graphics** | `graphics vision`, `graphics refine`, `graphics manifest` | `medical-graphics` | playbook, form-library, asset pipeline, typst graphic modules |

**Warum zusammen?** Gemeinsame Claims/Form-Spec-Verträge und KL-Form-Language; getrennte CLIs/Skills halten Fokus.

**Nicht:** chapter compose, bookkit foundation forks, Content-SoT.

### 2.3 C — `content-editorial` (Werk + Reife)

| | |
|---|---|
| **Mission** | Fachtext reifen: Review → Freeze → Proof → Imprimatur |
| **CLI** | optional `content-status`, lint checklists (leicht) — primär skill-driven |
| **Skills** | content-review, content-orchestrator |
| **Inhalt** | checklists, templates, fixtures (synthetic) |
| **Nicht** | Typst, bookkit, Media-Brief-Autorenschaft |

### 2.4 R — Research (optional)

Pipeline + `research/data` + `templates/` study corpus. Kein Agent-Default-Kontext für Buchproduktion.

### 2.5 O — Orchestrator

Bleibt dünn: Board/Run-log Templates + Skill, der **nur** Routing kennt und Sub-Skills der Produkte aufruft. Heimat: A (weil Print-Ende) oder eigenes `book-production` thin repo.

---

## 3. Mapping: Heute → Ziel

| Heute | Ziel-Produkt | Aktion |
|---|---|---|
| `packages/bookkit*` | A | behalten, API stabilisieren |
| `src/**` showcase | A optional | verschieben `examples/showcase-book/` oder behalten + README ehrlich |
| `toolset/form-catalog` | A | behalten |
| `toolset/compose/validate` + fixtures | A | CLI-Name schärfen, publishable module |
| `toolset/compose/spikes/graphics` | B2 (+ stabile libs) | Module extrahieren; Noise archivieren |
| `toolset/starter`, `scripts/bookkit` | A | behalten, print verdrahten |
| `scripts/graphics-*` | B2 | mitziehen |
| `prepress/`, print scripts | A | behalten |
| `domains/medical/**` | B | Repo-Split oder klare Subtree |
| `Guides/Medical-*`, `KL-Form-*` | B | mitziehen |
| `Guides/Typst-*`, Working_With… | A | behalten |
| `domains/content-maturity/**` | C | Split (Checklist existiert) |
| `pilots/*` | A | auf 1 Gold-Pilot reduzieren |
| `research/`, `templates/` | R | abspalten oder submodule |
| `devtracks/_archive` | — | cold storage branch / belassen read-only |
| `dist/` | — | wipe policy, nie tracken |
| Skill-Workspaces | B/A eval | `.gitignore` outputs; nur evals.json tracken |
| Root scratch | — | löschen |
| Symlink farms | pro Repo | provision.sh pro Produkt |

---

## 4. Konsolidierung pro Bereich (Aufräumen *vor/während* Split)

### 4.1 Quick Wins (Phase 1, gleiches Repo, 1–2 Tage)

| # | Maßnahme | Effekt |
|---|---|---|
| 1 | Root-Litter löschen: `scratch_test.*`, `v-*-compile.typ` | Klarheit |
| 2 | `dist/` lokal leeren; sicherstellen nichts getrackt | −109 MB Disk |
| 3 | Gitignore: `**/*.pdf` (Ausnahmen dokumentieren), spike outputs, `*-workspace/**/outputs/`, `**/*.pyc` | weniger Noise-PRs |
| 4 | Untrack: `src/chapters/*.pdf`, `src/styles/*.pdf`, spike PDFs, test PDF | sauberes Git |
| 5 | README + AGENTS: **Mission A first**; B/C als „companion“ | Fokus-Kommunikation |
| 6 | `tmp/`, leere `tools/` entfernen | Hygiene |
| 7 | Briefs: Index `domains/medical/briefs/INDEX.md` (status: gold/work/archive) | Navigation |
| 8 | Assets: MANIFEST pro Unit auf **canonical set** kürzen; Duplikat-Visions listen | Vorarbeit −MB |

### 4.2 A — Layout minimieren

1. **Package surface audit:** Welche `src/components/*` fehlen in bookkit? Charts/diagrams/figures — bewusst package vs. showcase-only.  
2. **Compose CLI packaging:** `pip`-installable oder `python -m compose_validate` mit Console-Script; eine Doku-Seite.  
3. **bookkit print:** Stub entfernen → prepress verdrahten.  
4. **Pilots:** `kursbuch-welle-03-compose` als einziger Gold-Pilot; alten `kursbuch-welle-03` nach `_archive/pilots` oder löschen.  
5. **Guides:** `update2026` harvest oder delete; Template-Ranking nur wenn Research bleibt.  
6. **CLAUDE.md:** splitten in `docs/ARCHITECTURE-A.md` + kurzes CLAUDE (Agent-Budget).  
7. **Tests:** `test_toolset.sh` + validate fixtures = CI gate; Showcase-Build optional job.

**Zielgröße A (orientierend):** <150 tracked source files, <5 MB ohne fonts.

### 4.3 B — Media + Graphics minimieren

1. **Gold-Briefs only:** z. B. iii2, iii5, iv2, iv4, kl-melanom, kl-us-d, 1 spatial — rest `briefs/_archive/` (im Repo oder Tag).  
2. **Assets:**  
   - Keep: accepted SVG/PDF vector, 1 refined raster if hybrid.  
   - Drop/LFS: intermediate gemini-* variants (compartment bulk).  
3. **Spikes → Library:**  
   - `lib/*.typ` aus kl-script-system + kl-wave5 → `domains/medical/lib/typst/` oder package.  
   - Spike-Treiber und compare-PDF-Workflow nur in `experiments/`.  
4. **Skill-Workspaces:** nur `evals/evals.json` + README; Iteration-Outputs gitignore.  
5. **Playbook:** 00–09 behalten (Kern); walkthroughs optional.  
6. **Ein Vision-CLI:** `scripts/graphics-*` hinter `graphics` Subcommands vereinheitlichen (gemini|agy backend).  

**Zielgröße B ohne Archive:** Skills+recipes+templates+gold ≪ 200 Dateien; Assets <15 MB oder LFS.

### 4.4 C — Content-Reife

1. Split-Checklist abarbeiten (`SPLIT-CHECKLIST.md`).  
2. Keine neuen medizinischen Checklists in A-Validator.  
3. Fixtures synthetisch halten.

### 4.5 Research

1. Entweder: **nicht** im Default-Clone (sparse/submodule).  
2. Oder: eigenes Repo; Layout-Repo verlinkt nur Lessons in Guides.

### 4.6 Devtracks

1. Active tracks zu Ende harvesten (`kl-form-language`, `medical-graphics`) → Skills/Guides → archive.  
2. `workspace-split` (dieser Track) steuert die Aktion.  
3. `_archive` optional auf Branch `archive/devtracks-2026` auslagern.

---

## 5. CLI- & Skill-Zielbild (pro Produkt)

### 5.1 A — `bookkit` CLI (erweitert)

```text
bookkit doctor | init | build | watch | ua | print
bookkit compose validate --typ … --content … --accept … [--freeze …]
bookkit catalog check
bookkit prepress dpi|pdfx
```

Skills bedienen genau diese Verben + Typst-Edit (typst-writer).

### 5.2 B — `media-graphics` CLI (neu bündeln)

```text
media-brief lint path/to/brief.md          # optional schema
graphics init-unit <slug>
graphics vision --unit … --backend gemini|agy
graphics refine --unit … --base …
graphics manifest --unit …
graphics spike-init <slug>                 # wraps graphics-spike-init
```

Skills: `media-brief` (kein PNG), `medical-graphics` (Vision nur über CLI + Gates).

### 5.3 C — `content` CLI (minimal)

```text
content route-card …
content checklist list
# freeze bleibt Human-sign-off artefakt, kein agent-only
```

### 5.4 Skill-Provisioning

Pro Repo: ein `provision-skills.sh` → `.github/skills` / `.grok/skills` Symlinks **nur** der lokalen Skills + dokumentierte Peer-Skills (optional read-only path).

---

## 6. Schnittstellen (bleiben stabil)

Artefaktverträge (nicht brechen):

```text
C: content.md + claims + freeze.md (revision pin)
        ↓
B: Media Brief + Form Spec → (Graphics Decision + assets/MANIFEST)
        ↓
A: Feasibility → Accept → chapter.typ → compose-validate → PDF
        ↓
A: print-pdfx → PDF/X
```

Pins: `bookkit` SemVer, `form-catalog` VERSION, `content_revision`, asset paths relativ konfigurierbar.

---

## 7. Umsetzungsphasen

### Phase 0 — Inventar & Plan ✅

- [x] Vollindex `file-index.tsv`  
- [x] Bucket-Summary + CATALOG  
- [x] Dieser Plan  

### Phase 1 — Hygiene im Monorepo (ohne Split) — **zuerst**

**Dauer:** 1–3 Tage · **Risiko:** niedrig  

1. Quick Wins §4.1  
2. Brief/Asset INDEX + canonical lists (noch nicht massenlöschen ohne Review)  
3. Governance-Docs: Mission A first  
4. CI: validate + package smoke; Showcase optional  
5. Entscheidung dokumentieren: **Split-Trigger** (siehe Phase 3) vs. „nur Ordnergrenze“

**Exit:** Agent öffnet Repo und sieht klar: „Layout platform; companions under domains/“.

### Phase 2 — Interne Produktgrenzen schärfen (Monorepo, „fake multi-repo“)

**Dauer:** 1–2 Wochen · **Risiko:** mittel  

1. Ordner-Layout angleichen an Ziel:

```text
products/   # optional rename — oder domains/ beibehalten
  layout/     → packages, toolset/{compose,form-catalog,starter}, scripts/bookkit, prepress
  medical/    → domains/medical + graphics scripts + Medical guides
  content/    → domains/content-maturity
  research/   → research + templates
```

*Pragmatisch:* bestehende Pfade lassen, aber **OWNERSHIP + README pro Root** und **keine neuen Cross-Imports**.

2. Spikes: stabile Typst-Module nach B `lib/` extrahieren.  
3. Compose-Spikes-Tree auf Experiments reduzieren.  
4. Skill-SoT unverändert, aber CLAUDE/AGENTS verweisen strikt nach Produkt.  
5. Asset-Policy: neue Visions default **nicht** committen ohne MANIFEST-Status `accepted`.  
6. Ein Pilot grün; alte Pilots archivieren.

**Exit:** `domains/medical` ist „extract-ready“ (keine hard deps auf showcase `src/`).

### Phase 3 — Physische Aufteilung (Repos)

**Dauer:** 1–2 Wochen · **Risiko:** mittel–hoch · **nur nach Trigger**

Trigger (bereits in PRODUCT-BOUNDARIES, hier geschärft):

- zweites Werk/Domäne, **oder**  
- Platform-Releases durch Domain-Noise blockiert, **oder**  
- Assets/Briefs > Schwelle (z. B. >40 MB tracked media), **oder**  
- du willst getrennte CLI-Distributionen.

**Reihenfolge der Splits:**

| Order | Repo | Methode | Begründung |
|---|---|---|---|
| 3a | **C** content-editorial | copy/split `domains/content-maturity` | Checklist fertig; klein; entkoppelt |
| 3b | **B** medical-media | `git subtree split` domains/medical + scripts/graphics* + Guides Medical/KL + relevante spikes libs | größter Fokus-Gewinn für A |
| 3c | **R** research | optional subtree | entlastet Clone |
| 3d | A rename/cleanup | dieses Repo → `typst-bookkit` | Mission klar |

**Pro Split-Checkliste (generisch):**

1. OWNERSHIP + VERSION + README im Zielrepo  
2. Skills + provision script  
3. CI grün (ohne Fremdprodukte)  
4. Pin-Dokument in A/B/C aktualisieren  
5. Symlinks im Monorepo → Stub README „moved to …“  
6. Multi-root workspace aktualisieren  
7. Smoke: eine E2E-Kette mit drei Checkouts  

### Phase 4 — CLI-Härtung & Agent-Skills

**Dauer:** parallel ab Phase 2  

1. A: compose unter `bookkit compose validate`  
2. B: `graphics` unified CLI  
3. Skills nur noch CLI + Artefaktpfade referenzieren (keine absoluten Monorepo-Annahmen)  
4. Eval-Workspaces: in Skill-Repos `evals/` halten, Outputs nicht tracken  
5. Orchestrator: Route-Card mit repo-absolute paths konfigurierbar  

### Phase 5 — Langfristig / Nice-to-have

- bookkit publish (`@preview` / private registry)  
- Graphics-Module als Typst-Package versioniert  
- LFS oder object storage für accepted rasters  
- Showcase-Buch als separates Demo-Repo  
- skill-creator global (nicht in A)  

---

## 8. Entscheidungsmatrix (du musst wählen)

Vor Phase 3 bitte festlegen:

| Frage | Optionen | Empfehlung |
|---|---|---|
| B1+B2 ein Repo oder zwei? | 1 Repo 2 packages / 2 Repos | **1 Repo** bis zweite Domäne |
| Showcase im Layout-Repo? | ja / examples / eigenes Repo | **ja, examples/** vorerst |
| Research? | im A / submodule / eigenes Repo | **submodule oder eigenes** |
| Raster-Assets tracken? | git / LFS / external object store | **git nur accepted small SVG; LFS für PNG** |
| Orchestrator-Heimat? | A / thin repo | **A** |
| Windows+Linux Scripts? | beide / bash primary | **bash primary**, ps1 mirror wo nötig |

---

## 9. Risiken & Mitigation

| Risiko | Mitigation |
|---|---|
| Broken symlinks nach Move | provision.sh + CI link check |
| Agent lädt falschen Skill-Kontext | enge skill descriptions; product README first line |
| History-Verlust | subtree split behält History; oder archive tag vor delete |
| Doppelpflege Guides/Skills | SoT-Regel beibehalten: ein Pfad, Symlinks only |
| Zu aggressives Löschen von Visions | zuerst INDEX + quarantine branch, 14 Tage, dann purge |
| Compose fixtures brauchen medical recipes | fixtures domain-agnostisch halten; medical minima nur in B-tests |

---

## 10. Konkrete nächste Schritte (Startmontag)

1. **Review dieses Plans** + Entscheidungen §8 treffen.  
2. Phase 1 PR: Hygiene (scratch, gitignore, untrack PDFs, README Mission).  
3. `briefs/INDEX.md` + `assets/CANONICAL.md` (was bleibt).  
4. Liste „delete after quarantine“ aus `noise-candidates.tsv` reviewen.  
5. Spike-Module inventarisieren → Kandidaten für `lib/typst`.  
6. C-Split vorbereiten (CONTENT_WORK_REPO Name).  
7. Danach Phase 2 Ordner-/OWNERSHIP-Schärfung.

---

## 11. Anhang — Bucket → Produkt (Kurz)

| Bucket (Inventar) | Produkt |
|---|---|
| A-packages, A-compose-engine, A-form-catalog, A-skill-pack, A-starter, A-build/prepress, A-showcase, A-pilots, A-guides-typst | **A** |
| B-medical-*, B-guides-medical, B-graphics-scripts, A/B-compose-spikes (libs→B, drivers→exp) | **B** |
| C-content-maturity | **C** |
| R-research-corpus | **R** |
| BUILD-dist | **delete local** |
| META-* | pro Zielrepo verteilen / shrunk |

---

## 12. Anhang — Dateizugriff

| Artefakt | Pfad |
|---|---|
| Maschinen-Index (jede Datei) | `devtracks/workspace-inventory/file-index.tsv` |
| Gruppierter Katalog | `devtracks/workspace-inventory/CATALOG.md` |
| Bucket-Summary | `devtracks/workspace-inventory/bucket-summary.tsv` |
| Noise-Kandidaten | `devtracks/workspace-inventory/noise-candidates.tsv` |
| Bestehende Grenzen | `devtracks/PRODUCT-BOUNDARIES.md` |
| Rollen/Flow | `devtracks/CONSENSUS-v0.md` |
| C-Split | `devtracks/content-maturity/SPLIT-CHECKLIST.md` |

Zum Regenerieren des Indexes:

```bash
# siehe Logik in der Session; oder:
python3 -c "..."  # Track kann scripts/inventory.py in Phase 1 extrahieren
```

**Empfehlung:** In Phase 1 `scripts/workspace-inventory.py` committen, damit der Index reproduzierbar bleibt.

---

## Harvested into

_(noch nicht — Track aktiv)_
