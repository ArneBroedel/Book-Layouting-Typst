# Plan — Aufräumen, Konsolidieren, Aufteilen

**Status:** **Archived** (2026-07-29) — Phase 0–1, 1b, 2, 4 delivered; Phase 3 physical split **deferred** (D2 trigger-only; not started)  
**Currency audit:** 2026-07-29 — full phase delivery + archive  
**Implementer entry:** [`README.md`](README.md) · [`HANDOFF.md`](HANDOFF.md)  
**Spec:** [`spec.md`](spec.md)  
**Phase files:** [`phase1-hygiene.md`](phase1-hygiene.md) ✅ · [`phase1b-cli.md`](phase1b-cli.md) ✅ · [`phase2-boundaries.md`](phase2-boundaries.md) ✅ · [`phase3-split.md`](phase3-split.md) ⏸ · [`phase4-skills-docs.md`](phase4-skills-docs.md) ✅  
**Antigravity Review:** [`antigravity-peer-review.md`](antigravity-peer-review.md)  
**Joint Recommendation (verbindlich):** [`joint-recommendation.md`](joint-recommendation.md)  
**Decisions D1–D5 (locked):** [`decisions.md`](decisions.md)  
**Vollindex:** [`../workspace-inventory/`](../workspace-inventory/) (archived sibling) — regenerate via `python3 scripts/workspace-inventory.py`

> **Binding after peer-review + Human D1–D5:** Hybrid delivery (one `bookkit` CLI + Typst packages + skills). Repo-Split **trigger-only**. Phase 1 hygiene + **1b CLI** (`validate` / `print` / `prepress` / `graphics`) + **2 harvest** (`domains/medical/lib/typst/`) + **4 skills/docs** delivered 2026-07-29.

### Currency (what changed since the original inventur write-up)

| Item | Status |
|---|---|
| Phase 0 inventur + plan | done |
| Phase 1 hygiene (purge, archive, gitignore, tag) | **done** |
| Inventory TSVs / CATALOG | **regenerated** (post-implementation) |
| `kl-form-language`, `medical-graphics`, `content-maturity`, `agentic-adaptations` | **harvested →** `devtracks/_archive/` (skills/kits live under `domains/`) |
| Wave‑6 KL chapters + `playbook/10-kl-chapter-pipeline.md` | landed in B (ops; not open work for this track) |
| Phase **1b** unified CLI | **done** (`scripts/bookkit` v0.1.1) |
| Phase 2 / 4 | **done** · Phase 3 trigger-only (D2) · D3 showcase move deferred |

---

## 0. Inventur — Faktenlage

### 0.1 Volumen — baseline (pre Phase‑1) vs. current

| Bereich | Baseline (pre-hygiene) | **Current (inventory re-run)** | Bemerkung |
|---|---:|---:|---|
| Workspace (ohne `.git`) | ~1013 files / ~185 MB | **~851 files / ~36 MB** | Index excl. `__pycache__`, `.playwright-mcp` |
| `dist/` | 214 / ~109 MB | ~2 / ~0.1 MB | still gitignored; wipe when large |
| `domains/` | ~311 / ~66 MB | ~317 / ~26–28 MB | assets ~26 MB (was ~65 MB) |
| Rest (A+C+Meta+R) | ~490 / ~10 MB | rest of tree | code/docs/skills/research |
| Git-tracked | ~859 | ~864 | no intermediate vision bulk |

### 0.2 Extension-Mix (current index)

| Ext | n (ca.) | Rolle |
|---|---:|---|
| `.md` | ~448 | Skills, Briefs, Guides, Devtracks, Templates |
| `.typ` | ~228 | Packages, Showcase, Spikes, Pilots, Templates-Korpus |
| `.png` | ~30 | Canonical vision/refined assets (post-purge) |
| `.pdf` | few | residual local/spike; policy gitignores most |
| `.json` | ~33 | Research-Daten, Skill-Evals, Benchmarks |
| `.py` | ~34 | Compose-Validate, Research-Pipeline, DPI, inventory |
| Rest | — | sh/ps1, yaml, fonts, ICC, svg, … |

### 0.3 Wo der Fokus noch „verloren“ geht (Signal — post Phase‑1)

1. **`domains/medical/assets/` (~26 MB)** — still largest product bucket; CANONICAL policy must hold (no new intermediate PNG dumps).  
2. **`domains/medical/briefs/` (~141 files incl. archive/waves)** — gold + form-library top-level; `_archive/`, `_wave5/`, `_wave6/`, `_explorations/` for process noise.  
3. **`toolset/compose/spikes/graphics/`** — drivers remain; **stable libs harvested** to `domains/medical/lib/typst/` (Phase 2 done).  
4. **`dist/`** — local ok, never project content; nearly empty after wipe.  
5. **Skill-Workspaces** (`*-workspace/**`) — Eval-Outputs, not Runtime (gitignore residual HTML).  
6. **Doppel-Showcase:** `src/` + `packages/` + `pilots/` — consumer-first docs (Phase 4); physical `src/`→`examples/` is **D3 deferred**.  
7. **Research/Templates** — ecosystem lab with agent-context banners (not product runtime).  
8. **CLI surface** — **done** (`bookkit` v0.1.1); thin engines under `scripts/graphics-*.sh` / `run_validate.py` remain valid.

---

## 1. Datei-Index & Zweckanalyse

> **Methode:** Jede Datei steht in [`file-index.tsv`](../workspace-inventory/file-index.tsv) mit `path`, `bytes`, `ext`, `bucket`, `role`, `purpose_bucket`.  
> Unten: **vollständige** Zuordnung nach Aufgabenbereich + inhaltliche Analyse pro Cluster. Einzeldateien in großen Clustern (Briefs, dist, brilliant-cv) sind im TSV zeilenweise erfasst; hier semantisch gruppiert, damit der Plan handhabbar bleibt.

### 1.1 ROOT & Governance

| Pfad | Zweck / Inhalt |
|---|---|
| `CLAUDE.md` | Kanonische Architektur, Build, Komponenten-Inventar, Skill-Gate (sehr lang, monorepo-zentriert) |
| `AGENTS.md` | Multi-Agent Discovery, Product A/B/C, Skill-Tabelle, Linux-Build (points at this track) |
| `README.md` | Einstieg; **consumer-first** (Phase 4) — Mission A + `docs/CONSUMER.md` |
| `LICENSE` | Lizenz |
| `.gitignore` | Strengthened in Phase 1 (PDFs next to sources, eval outputs, scratch, tmp) |
| `.editorconfig` | Editor-Defaults |
| `project-tech-stack.md` | Historischer Tech-Stack-Report |
| `SETUP-WINDOWS.md` | Windows-Setup |
| ~~`scratch_test.*` / `v-*-compile.typ`~~ | **Removed** Phase 1 |

**Konsolidierung:** Governance auf **Produkt-A-Kern** schrumpfen; A/B/C-Grenzen kurz + Link. README auf Consumer-first (Phase 4).

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
| `scripts/bookkit` | CLI v0.1.1: doctor/build/watch/ua/init/brief-check + **print**, **validate**, **catalog**, **prepress**, **graphics** |
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
| `domains/medical/skill/medical-graphics/SKILL.md` + `playbook/00–10` + `references/*` + `evals/` + `examples/` | Graphics-Rolle: free vision → claim audit → recreate/hybrid/refine; **10** = KL chapter pipeline (ops after form-language harvest) |
| `*-workspace/**` | Skill-Eval Iterationen (Outputs, grading, HTML) — **nicht Runtime** |

#### Recipes & Templates

| Pfad | Zweck |
|---|---|
| `domains/medical/recipes/{notfall-karte,lerntext,fallbasiert}.*` | Genre-Minima / Intent |
| `domains/medical/templates/*.template.md` | brief, form-spec, vision, claim-audit, decision, accept |

#### Briefs (Prozess-Artefakte / Gold) — post D5 / Phase‑1 archive

Policy: [`domains/medical/briefs/INDEX.md`](../../domains/medical/briefs/INDEX.md). Approximate **top-level** counts (not `_archive/`):

| Muster | n (ca.) | Zweck |
|---|---:|---|
| `*.brief.md` | ~11 | Gold / active work briefs |
| `*.form-spec.md` | ~25 | Ambitionierte Visual-Units + form-library |
| `*.feasibility.md` | ~5 | Tech-Antwort (A-Artefakt, liegt in B) |
| `*.accept.md` | ~7 | Media Accept (incl. `kl-wave6.accept`) |
| `*.vision.md` | ~11 | Free-Vision Protokolle (gold units) |
| `*.graphics.md` | ~5 | Decision Notes |
| `*.claim-audit.md` | ~3 | Claim-Audit |
| `_archive/` | 42 | Non-gold / intermediate (Phase 1) |
| `_explorations/`, `_wave5/`, `_wave6/` | ~30 | Research/wave notes (content maps, crosscuts) |

**Gold chapter prefixes (D5):** iii2, iii5, iv2, iv4, ii1 (opt), kl-melanom*, kl-us-d, kl-stroke-fast, kl-compartment-spatial, kl-ces-saddle (opt), **kl-sepsis / kl-gicht / kl-le** (Wave‑6).

**Konsolidierung (remaining):** keep INDEX discipline; do not re-inflate top-level with intermediates; feasibility notes could later live under A compose artifacts (Phase 2 hygiene optional).

#### Assets (Raster/SVG)

| Pfad | Zweck |
|---|---|
| `domains/medical/assets/<slug>/MANIFEST.md` | Asset-Inventar pro Unit |
| `vision-free-*.png`, `vision-refined-*.png` | AI-Vision / Refine (**canonical only** after purge) |
| `iii2-bls-aed/*.{svg,png,jpg}` | Algorithmus-Vektor + Raster-Varianten |
| `kl-compartment-spatial/*` | Spatial unit — intermediates purged Phase 1 |

**Policy live:** [`domains/medical/assets/CANONICAL.md`](../../domains/medical/assets/CANONICAL.md). Restore purged PNGs only from tag `archive/assets-pre-purge-2026-07-29`.

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
| `kl-script-system/lib/`, `kl-wave5/lib/`, **`kl-wave6/lib/`** (`sepsis`, `gicht`, `le`) | Harvest candidates Phase 2 |
| `spike-*.typ`, compare/recreate/refined | Experimente |
| `_templates/` | Spike-Scaffold |
| READMEs | Navigation |

**Konsolidierung:** Stabile Module → **`domains/medical/lib/typst/`** (preferred) or `packages/bookkit-graphics`; flüchtige Spikes archivieren. Keine PDFs im Spike-Tree (one residual `iii2` spike PDF still noise-candidate).

---

### 1.4 Produkt C — Content-Reife (transitional hier)

| Pfad | Zweck |
|---|---|
| `domains/content-maturity/skill/content-review`, `content-orchestrator` | Lektorat / Routing C1–C4 |
| `checklists/core/*`, `profiles/medical/DEFERRED.md` | Review-Dimensionen |
| `templates/*` | review, freeze, proof, patch, route-card, scope, imprimatur |
| `examples/*`, `fixtures/*` | Synthetische Demos (anaphylaxis-lite, agentic) |
| `checkpoints.md`, `OWNERSHIP.md`, `MIGRATION-TO-C.md` | Prozess + Split |
| `devtracks/_archive/content-maturity/*`, `_archive/agentic-adaptations/*` | Spec/Plan/Split-Checklist (MVP archived 2026-07-29) |

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
| `devtracks/*` **active feature tracks** | **only** `workspace-split` + `workspace-inventory` (+ governance: CONSENSUS, PRODUCT-BOUNDARIES, ROLES, ORCHESTRATION, `_orchestration/`) |
| `devtracks/_archive/*` | Harvested provenance incl. **kl-form-language**, **medical-graphics**, **content-maturity**, **agentic-adaptations**, form-catalog, compose-pipeline, … |
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

### 4.1 Quick Wins (Phase 1) — **DONE** (see `phase1-hygiene.md`)

Items 1–4, 7–8 executed. Item 5 (README/AGENTS mission) deferred to **phase4** (root `README.md` still pre-toolset). Item 6 residual optional in phase2 (e.g. residual spike PDF, skill-workspace HTML).

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

1. **Gold-Briefs only:** ~~archive non-gold~~ **done** (Phase 1 + D5 INDEX). Live gold includes Wave‑6 `kl-sepsis` / `kl-gicht` / `kl-le`. Keep INDEX discipline.  
2. **Assets:**  
   - ~~Drop intermediate gemini bulk~~ **done** (tag + purge).  
   - Ongoing: accepted SVG/PDF vector + at most 1 refined raster if hybrid; no new intermediate commits.  
3. ~~**Spikes → Library**~~ **done** — `domains/medical/lib/typst/{kl-core,kl-wave5,kl-wave6}/`; spikes re-export.  
4. **Skill-Workspaces:** nur `evals/evals.json` + README; Iteration-Outputs gitignore (residual HTML still noise-candidate).  
5. **Playbook:** 00–10 behalten (Kern + KL chapter pipeline); walkthroughs optional.  
6. ~~**Ein Vision-CLI (Phase 1b)**~~ **done** — `bookkit graphics|validate|catalog|prepress|print` (v0.1.1).  

**Zielgröße B ohne Archive:** Skills+recipes+templates+gold ≪ 200 Dateien; Assets already ~26 MB (goal was <15 MB or LFS — optional further thin).

### 4.4 C — Content-Reife

1. Split-Checklist abarbeiten (`SPLIT-CHECKLIST.md`).  
2. Keine neuen medizinischen Checklists in A-Validator.  
3. Fixtures synthetisch halten.

### 4.5 Research

1. Entweder: **nicht** im Default-Clone (sparse/submodule).  
2. Oder: eigenes Repo; Layout-Repo verlinkt nur Lessons in Guides.

### 4.6 Devtracks

1. ~~Active tracks zu Ende harvesten (`kl-form-language`, `medical-graphics`, `content-maturity`, `agentic-adaptations`)~~ — **done** (2026-07-29); kits/skills live under `domains/`; ops doc `playbook/10-kl-chapter-pipeline.md`.  
2. `workspace-split`: **1b/2/4 delivered**; only Phase **3** remains (D2 trigger). Optional D3 showcase move.  
3. `_archive` optional auf Branch `archive/devtracks-2026` auslagern (nice-to-have).

---

## 5. CLI- & Skill-Zielbild (pro Produkt)

> **Normative CLI spec for implementers:** [`phase1b-cli.md`](phase1b-cli.md) (decision **D4**).  
> Do **not** create separate `graphics` / `media` / `content` binaries.

### 5.1 Single `bookkit` CLI (A entry; hosts B graphics verbs)

```text
bookkit doctor | init | build | watch | ua | print
bookkit validate …          # compose engine
bookkit catalog check
bookkit prepress dpi|pdfx
bookkit graphics vision --backend gemini|agy …
bookkit graphics refine …
bookkit graphics spike-init <slug> [recipe]
bookkit graphics manifest --unit <slug>
```

Skills call these verbs + Typst edit (`typst-writer`).  
`media-brief` does **not** generate PNGs. `medical-graphics` uses `bookkit graphics` only, with playbook caps (no auto-loop in CLI).

### 5.2 C — no dedicated CLI required

Content process remains skill-driven (`content-review`, `content-orchestrator`) + freeze artifacts. Optional later: thin helpers — not Phase 1b.

### 5.3 Skill-Provisioning

`toolset/skill-pack/provision.sh` + discovery symlinks. After physical split: per-repo provision only.

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

> **Executable checklists live in phase files.** This section is the map only.

| Phase | File | Status (re-verified 2026-07-29) |
|---|---|---|
| 0 Inventar + Plan | this file + inventory | ✅ done |
| 1 Hygiene | [`phase1-hygiene.md`](phase1-hygiene.md) | ✅ done |
| **1b CLI** | [`phase1b-cli.md`](phase1b-cli.md) | ✅ done — `scripts/bookkit` v0.1.1; smoke `toolset/tests/test_bookkit_cli.sh` PASS |
| 2 Boundaries + spike harvest | [`phase2-boundaries.md`](phase2-boundaries.md) | ✅ done — `domains/medical/lib/typst/{kl-core,kl-wave5,kl-wave6}/` |
| 3 Physical split | [`phase3-split.md`](phase3-split.md) | ⏸️ trigger-only (D2) — **only remaining structural work** |
| 4 Skills + docs | [`phase4-skills-docs.md`](phase4-skills-docs.md) | ✅ done (showcase `src/` move D3 deferred) |
| 5 Nice-to-have | below | backlog |

### Phase 5 — Langfristig / Nice-to-have

- bookkit publish (`@preview` / private registry)  
- Graphics-Module als versioniertes Typst-Package (if not only under `domains/medical/lib`)  
- LFS / object storage for accepted rasters  
- Showcase move `src/` → `examples/showcase-book/` (D3)  
- skill-creator global (not in A)  
- Optional MCP thin wrap of `bookkit` (not primary)

---

## 8. Entscheidungsmatrix

### Locked (Human 2026-07-29) — see [`decisions.md`](decisions.md)

| ID | Decision |
|---|---|
| D1 | Asset purge after tag quarantine |
| D2 | Physical split trigger-only |
| D3 | Showcase move later |
| D4 | `bookkit graphics …` namespace |
| D5 | Gold brief set per INDEX |

### Still open (decide when relevant — not blocking 1b)

| Frage | Empfehlung | When |
|---|---|---|
| B Media+Graphics one repo forever? | Yes until 2nd domain | Phase 3 |
| Research submodule vs separate repo | submodule or out-of-default | Phase 2/3 |
| Raster LFS vs external store | git SVG + LFS/rare PNG | if assets grow again |
| Spike lib path: `domains/medical/lib/typst` vs `packages/bookkit-graphics` | medical lib first | Phase 2 |
| Orchestrator home | A | keep |
| Windows ps1 mirrors | bash primary | as needed |

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

## 10. Konkrete nächste Schritte (für implementierenden Chat)

1. **Do not re-implement 1b/2/4** — verify with HANDOFF suite if unsure.  
2. **Phase 3 only** after Human confirms a D2 trigger and names target repos — [`phase3-split.md`](phase3-split.md).  
3. Optional: D3 showcase move; inventory refresh; install real Ghostscript for `bookkit print` (this shell aliases `gs` → `git status`).  
4. Track may stay **active** solely as Phase-3 home, or archive with pointer when preferred.

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
| Maschinen-Index (jede Datei) | `devtracks/_archive/workspace-inventory/file-index.tsv` |
| Gruppierter Katalog | `devtracks/_archive/workspace-inventory/CATALOG.md` |
| Bucket-Summary | `devtracks/_archive/workspace-inventory/bucket-summary.tsv` |
| Noise-Kandidaten | `devtracks/_archive/workspace-inventory/noise-candidates.tsv` |
| Bestehende Grenzen | `devtracks/PRODUCT-BOUNDARIES.md` |
| Rollen/Flow | `devtracks/CONSENSUS-v0.md` |
| C-Split | `devtracks/_archive/content-maturity/SPLIT-CHECKLIST.md` |

Zum Regenerieren des Indexes:

```bash
python3 scripts/workspace-inventory.py
```

Inventory script is already in-tree.

---

## Harvested into

| Learning / deliverable | Destination |
|---|---|
| Unified `bookkit` CLI (validate, catalog, print, prepress, graphics) | `scripts/bookkit` v0.1.1 · `toolset/tests/test_bookkit_cli.sh` |
| CLI preferred surface for agents | `toolset/skill-pack/bookkit/`, compose-chapter, medical-graphics, media-brief; `docs/CONSUMER.md` |
| Asset hygiene + gold briefs | `domains/medical/assets/CANONICAL.md`, `domains/medical/briefs/INDEX.md`, tag `archive/assets-pre-purge-2026-07-29` |
| Typst graphic module harvest | `domains/medical/lib/typst/{kl-core,kl-wave5,kl-wave6}/` (spikes re-export) |
| Folder ownership / extract readiness | `toolset/OWNERSHIP.md`, `packages/OWNERSHIP.md`, `domains/README.md`, research/templates banners |
| Pilot thinning | `pilots/kursbuch-welle-03-compose/` + `pilots/_archive/kursbuch-welle-03/` |
| Consumer-first monorepo story | root `README.md`, `AGENTS.md`, `docs/KNOWLEDGE-MAP.md` |
| Locked decisions D1–D5 + hybrid delivery model | this track (provenance) · live policy in `PRODUCT-BOUNDARIES.md` / `CONSENSUS-v0.md` |
| Phase 3 physical split checklist (deferred) | [`phase3-split.md`](phase3-split.md) under this archive; re-open only on Human D2 trigger |
| Inventory tooling | `scripts/workspace-inventory.py` · companion snapshot archived as `devtracks/_archive/workspace-inventory/` |

*Human decision 2026-07-29: no physical multi-repo split for now → archive track; modular monorepo is the lasting outcome.*
