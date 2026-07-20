# Spec: Typst Toolset — generalisierbares Layout-/Design-Produkt

## Objective

Die in diesem Studio-Repo erarbeiteten **Layout-, Design- und Agent-Fähigkeiten** so
**generalisierbar verpacken**, dass menschliche Nutzer und vor allem KI-Agenten in **anderen
Workspaces** (Content-Repos, neue Bücher) anforderungskonforme Layouts erzeugen können — ohne
dieses Showcase-/Research-Monorepo als Abhängigkeit zu klonen.

Das Toolset ist das **Produkt**; dieses Repo bleibt die **Fabrik** (Showcase, Harvest, Devtracks,
Research).

Grundlage: Architektur-Konsens aus interner Analyse + Gemini-Zweitmeinung (3 Runden, 2026-07).
Kurzform des Zielbilds:

> Foundation-Package + optionale Facetten · dateibasiertes Skill-Pack · dünner Starter · thin CLI ·
> MCP nur optional als Tool-Schicht · Design-Brief-Workflow · kein RAG für harte Regeln ·
> Studio ≠ Content-Abhängigkeit.

## Background / why now

- Showcase und Komponenten sind weit fortgeschritten; Wiederverwendung passiert heute nur durch
  Kopieren oder „im selben Repo bleiben“.
- Skills (`typst-writer`, `typst-extension`, `pinit-workflow`) sind Langzeitgedächtnis, aber an
  `.github/skills/` und dieses Repo gebunden; Grok sieht sie über `.grok/skills/`-Symlinks.
- Offene Tracks `skill-reuse-pilot` und `skill-eval-baseline` testen/messen Skills **ohne**
  Produktgrenze — sie werden durch dieses Toolset **eingeordnet und genutzt**, nicht ersetzt.
- `prepress-pdfx` bleibt ein **eigenständiges Buch-Ausgabe-Feature**; später optional an CLI/`print`.

## What is transferable (five layers)

| Layer | Inhalt hier | Produktform |
|---|---|---|
| **A Runtime** | `theme`, `typography`/`page`, `components/*` | Typst-Package(s) |
| **B Agent procedures** | Skills (ALWAYS/NEVER, Debug) | Skill-Pack (Dateien) |
| **C Theory** | `Guides/` | verlinkt, nicht im Hot Path |
| **D Showcase** | Kapitel 00–25, PDF | bleibt im Studio; Mini-Examples im Package |
| **E Tooling** | Build-Flags, Fonts, Preflight | Starter + thin CLI |

## Scope (in)

### Runtime
- Extraktion eines **`@local` (später Registry/Universe) Foundation-Packages** aus
  `src/styles/` + generischen Komponenten (blocks, inline, tables, grids, layouts, spreads, …).
- **Dogfooding:** Showcase (`src/main.typ` + Kapitel) importiert das Package; kein paralleler
  Code-Fork.
- **Facetten-Packages** (optional, phasenweise): z. B. didactics, figures, charts, legal,
  page-design/art — nur was klar abgrenzbar und für Nicht-Medizin-Werke entbehrlich ist.
- Klare **öffentliche API** (`lib.typ` / dokumentierte Exports); interne Helfer privat.
- **Genre-Presets** als Theme-/Document-Defaults (z. B. medical-textbook, scientific-report,
  technical-manual, plain-book) — überschreibbar via Token-Dictionary.
- Reproduzierbare Build-Konventionen bleiben Pflicht: `--ignore-system-fonts --font-path fonts`.

### Agent layer
- **Skill-Pack:** generische Typst-Skills (writer, extension, pinit) **getrennt** von
  package-spezifischem Skill (API, Presets, Assembly-Order Cover→`setup-pages`, Anti-Patterns).
- Multi-Agent-**Provisioning** (Discovery-Pfade: `.github/skills`, `.grok/skills`, `.agents/skills`,
  `.claude/skills` …) — Source of Truth einmal, Symlinks/Copy in Consumer.
- **Design-Brief**-Schema (maschinenlesbar: Genre, Language, Constraints, Features, Brand) als
  Workflow-Contract im Starter; Fail-Fast bei fehlenden Pflichtfeldern, ohne DX zu erdrosseln.

### Delivery
- **Dünner Starter** (Template-Repo oder `toolset/starter/`): `main.typ`, Theme-Override, Fonts-Hinweis,
  Build-Skript, AGENTS/Skill-Wiring, Design-Brief-Stub — **ohne** Research-JSON, ohne 25 Kapitel.
- **Thin CLI** (Phase 3+): `init` / `build` / `watch` / `ua` / `doctor` (Fonts, Typst-Version,
  Package-Pins); später optional `print` (konsumiert Ergebnisse aus `prepress-pdfx`).
- **Optional MCP** (nur wenn messbarer Bedarf): Tools wie `compile_preview`, `component_doc`,
  `theme_schema` — **kein** Skill-Text-Dump.

### Governance in-repo
- `CLAUDE.md` / `AGENTS.md` / `docs/KNOWLEDGE-MAP.md` um Toolset-Grenzen und Consumer-Pfad ergänzen.
- Harvest-Regeln: Toolset-Learnings → Skills/Guides; Studio bleibt Harvest-Ort.

## Scope (out)

- **Kein** Klon des Studio-Repos als „SDK“ (kein `research/`, kein voller Showcase in Consumern).
- **Kein** MCP-first / MCP als primärer Skill-Container.
- **Kein** RAG/Vector-DB für harte Layout-Regeln; kein Fine-Tune als Distributionsform.
- **Kein** GUI / Web-Studio / Agent-Dashboard in den ersten Phasen.
- **Kein** Monolith-Package „Medizin + Legal + Art + alles“ als Default.
- **Keine** inhaltliche Kursbuch-/Medizin-Autorenschaft (Content-Workspaces bleiben getrennt).
- **Keine** vollständige Universe-Publish-Pflicht im MVP (`@local` reicht für Abnahme).
- Prepress/PDF-X-Implementierung selbst → Track `prepress-pdfx` (hier nur spätere CLI-Anbindung).

## Related open tracks (alignment)

| Track | Beziehung zu diesem Toolset |
|---|---|
| **`skill-eval-baseline`** | **Parallel / Enabler.** Qualitäts-Baseline + Mess-Methodik für generische Skills. Läuft ideal **vor oder parallel zu Phase 2** (Skill-Pack härten). Blockiert **nicht** Phase 1 (Package-Extraktion). Findings fließen in Skill-Pack / Descriptions. |
| **`skill-reuse-pilot`** | **Wird Exit-Kriterium von Phase 2.** Der Pilot (~6–8 Seiten, andere Domäne) baut auf **Foundation + Skills + Starter** (nicht mehr nur ad-hoc `src/components` kopieren). Track bleibt bis zum Reuse-Report offen; bei Toolset-Phase-2-Abnahme gemeinsam harvesten/archivieren. Spec des Pilots wird leicht angepasst (siehe dort). |
| **`prepress-pdfx`** | **Unabhängig.** Betrifft Showcase-Ausgabe `print`/Bleed/PDF-X. Toolset-MVP braucht das nicht. Später: CLI-Modus `print` und/oder Facette/Tooling konsumiert Prepress-Entscheidungen. Keine Scope-Überlappung erzwingen. |

### Empfohlene Reihenfolge (gesamt)

```text
                    ┌─ skill-eval-baseline (parallel ok)
Phase 0 decisions ──┤
                    └─► Phase 1 foundation package + dogfood
                              │
                              ▼
                    Phase 2 skill-pack + starter
                              │  includes skill-reuse-pilot as acceptance
                              ▼
                    Phase 3 facets + thin CLI
                              │
              ┌───────────────┼───────────────┐
              ▼               ▼               ▼
     optional MCP      prepress-pdfx     Publish/registry
     (Phase 4)         (own track;        (Phase 4)
                        later CLI hook)
```

## Acceptance (toolset overall)

Messbar „generalisierbar nutzbar“:

1. **Starter-Check:** Ein leeres/fremdes Verzeichnis (oder `pilots/<name>/`) baut mit Package + Skills
   ein valides PDF **ohne** dieses Studio zu klonen und ohne Showcase-Kapitel zu kopieren.
2. **Dogfood-Check:** Showcase kompiliert weiterhin (`dist/book.pdf`, ideal auch UA) über das Package.
3. **Trennung Runtime/Skills:** Theme-Token-Änderung ohne Skill-Umschreiben; Skill-Gotcha-Fix ohne
   Package-API-Bruch (beides dokumentiert).
4. **Erweiterungs-Check:** Mindestens eine Facette ist optional importierbar; Foundation bleibt schlank.
5. **Repro-Check:** Consumer-Build erzwingt `--ignore-system-fonts --font-path fonts` (CLI oder Skript).
6. **Reuse-Report:** Phase-2-Pilot (ehem. `skill-reuse-pilot`) liegt vor; Skill-Lücken geharvestet oder
   begründet „keine“.
7. **Governance:** Consumer-Pfad und Layer-Grenzen in `AGENTS.md`/`CLAUDE.md`/`KNOWLEDGE-MAP` beschrieben.

## Risks

- Extraktion bricht Showcase-Pfade (`image()` root-absolute, relative imports) → Dogfood früh, oft bauen.
- Zu breite „öffentliche“ API → unwartbar; zu enge → Agenten improvisieren.
- Skill-Pack-Entropie und Prompt-Drift zwischen Agenten/Modellen.
- Facetten-Abhängigkeiten auf `@preview` (CeTZ, …) → version pin, Namespace-Hygiene.
- Over-engineering CLI/MCP vor stabilem Package → strikte Phasen einhalten.
- Design-Brief zu starr → DX leidet; zu weich → Halluzination.

## Non-goals reminder (first ~6 months)

Kein GUI, keine Vector-DB, kein MCP-first, kein Monolith, kein Studio-Clone als SDK.
