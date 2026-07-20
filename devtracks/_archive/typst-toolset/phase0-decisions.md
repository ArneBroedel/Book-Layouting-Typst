# Phase 0 — Architektur- und Produktentscheidungen

Status: **entschieden** (2026-07-19)

Ziel: Alle Weichen, die teure Fehl-Extraktion verhindern, **schriftlich** festnageln.

## Kurz-ADR

### ADR-01 — Naming

| | |
|---|---|
| **Kontext** | Package und Skill-Pack brauchen stabile Identifiers für Import, Provisioning und Docs. |
| **Optionen** | `bookkit` · Firmenname · `typst-book-layout` |
| **Wahl** | **`bookkit`** (Runtime-Package), Facette **`bookkit-didactics`**, Skill-Pack-Ordner **`toolset/skill-pack/`**, package-skill **`bookkit`**. |
| **Konsequenzen** | Import `@local/bookkit:0.1.0` / monorepo `/packages/bookkit/lib.typ`; CLI-Binary/Skript `bookkit` / `scripts/bookkit`. |

### ADR-02 — Package-Ort & Import-Pfad

| | |
|---|---|
| **Kontext** | Package muss ohne Studio-Klon konsumierbar sein; Showcase muss dogfooden. |
| **Optionen** | Nur `~/.local/share/typst/packages` · monorepo `packages/` mit `@local` via `--package-path` · reine Root-absolute Imports |
| **Wahl** | **`packages/bookkit/`** und **`packages/bookkit-didactics/`** im Repo (self-contained, inkl. `typst.toml`). Showcase und Consumers importieren mit **`#import "/packages/bookkit/lib.typ"`** (root-absolute, `--root` = Studio- oder Consumer-Root das die packages-Kopie/Link enthält) **oder** `@local/bookkit:0.1.0` mit `--package-path packages` und Layout `packages/local/bookkit/0.1.0` (CLI installiert Symlink/Tree). Primärer MVP-Pfad: monorepo-root-absolute + Starter kopiert/verlinkt `packages/`. |
| **Konsequenzen** | Consumer braucht Package-Tree + Fonts + Build-Flags, **nicht** `src/chapters` / `research/`. |

### ADR-03 — Foundation-Schnitt

**Foundation (`bookkit`)** — generische Buch-Runtime:

| Modul | Inhalt |
|---|---|
| `theme.typ` | palette, gradients, part-colors, type-scale, space, fonts, **didactics/evidence/legal token-dicts** (Daten, keine Boxen) |
| `typography.typ` | `setup-typography()` |
| `page.typ` | `setup-pages()` (+ hydra) |
| `components/blocks.typ` | callout, card, blockquote, … |
| `components/inline.typ` | badge, tag, kbd, evidence-badge, qty, … |
| `components/tables.typ` | styled tables, score-table, long-table, … |
| `components/grids.typ` | gallery/grid helpers |
| `components/layouts.typ` | sidebar/magazine/scientific, margin-note (marginalia) |
| `components/spreads.typ` | book-cover, chapter-opener, section-break, feature-spread, part-page, spread-start (**ohne** clinical-case-spread) |
| `lib.typ` | öffentliche Re-Exports |

**Facet `bookkit-didactics`** (erste optionale Facette):

| Modul | Inhalt |
|---|---|
| `didactics.typ` | didactic-box family, learning-objectives, cave, memo, … |
| `exam.typ` | mc-question, solution-key |
| `spreads-extra.typ` | `clinical-case-spread` (braucht clinical-case) |
| `lib.typ` | öffentliche Exports |

**Showcase-only / spätere Facetten:** charts, diagrams, pedigree, figures, legal, page-design, art; Research-Pipeline; Kapitel-Inhalte; templates-Corpus.

### ADR-04 — Genre-Presets (v0)

| Preset-ID | Defaults (Tokens / Setup) |
|---|---|
| `plain-book` | Standard-Palette teal/amber, A4 inside/outside, serif body |
| `medical-textbook` | = plain-book + didactics facet empfohlen + German medical labels |
| `scientific-report` | engere Type-scale lead, kein Cover-Zwang; callout-lastig |
| `technical-manual` | mono-lastigere Inline-Hilfen; accent eher info-blau |

Presets sind **Dictionary-Overrides** auf Theme-Tokens (+ dokumentierte Import-Empfehlung), keine separaten Compiler-Modi.

### ADR-05 — Design-Brief Schema (v0)

Pflichtfelder (YAML `design-brief.yaml` im Starter):

```yaml
title: string          # Pflicht
genre: plain-book|medical-textbook|scientific-report|technical-manual  # Pflicht
language: de|en        # Pflicht
author: string         # Pflicht
```

Optional: `subtitle`, `features[]` (didactics, exam, figures, …), `brand.primary`, `brand.accent`, `constraints[]`, `page.paper`.

**Fail-Fast:** CLI `doctor` / `brief-check` warnt bei fehlenden Pflichtfeldern; Build bricht nur ab wenn `--strict-brief` gesetzt (DX: warnen default).

### ADR-06 — Skill-Pack Source of Truth

| | |
|---|---|
| **Source** | Generische Skills bleiben **`.github/skills/{typst-writer,typst-extension,pinit-workflow}`**. Package-skill: **`toolset/skill-pack/bookkit/`** (+ Kopie/Sync nach `.github/skills/bookkit` für Studio-Agenten). |
| **Deploy (Consumer)** | Symlinks/Copies nach `.agents/skills`, `.claude/skills`, `.grok/skills`, `.github/skills` via `toolset/skill-pack/provision.sh`. |
| **Regel** | Deploy-Ziel ≠ Source; nie Skill-Bodies forken. |

### ADR-07 — Agent-Matrix (Phase 2 Pflicht)

| Agent | Discovery-Pfad |
|---|---|
| Grok | `.grok/skills/` → SoT |
| Claude Code | `.claude/skills/` oder `.agents/skills/` |
| GitHub Copilot / generic | `.github/skills/` |

### ADR-08 — Prepress-Abgrenzung

**Nicht im Toolset-MVP.** CLI-Subcommand `print` ist Hook/Stub: verweist auf Track `prepress-pdfx`. Kein Bleed/PDF-X hier.

### ADR-09 — Theme-Override-Pattern

```typst
#import "/packages/bookkit/lib.typ": palette, setup-typography, setup-pages, …
// Consumer darf Tokens ersetzen indem er eigene theme-override.typ importiert
// und setup mit den überschriebenen Namen nutzt — oder package theme re-exports
// und lokale `#let palette = ( ..base-palette, primary: rgb("…") )` im Entry.
```

MVP: Consumer hält `theme-override.typ` das package-Tokens importiert und selektiv neu bindet; Komponenten die `palette` aus dem Package importieren sehen Overrides nur wenn der Consumer über package-interne override-API geht. **Pragmatisch v0:** Showcase dogfooded package defaults; Pilot beweist Override indem er **eigene** `main`/lokale Farben für Cover/Headings setzt und package-callouts mit named `accent:`/`tone:` nutzt; volles deep-merge theme injection ist Folgearbeit (dokumentiert als known limit).

## Deliverables checklist

- [x] Naming
- [x] Foundation-Schnitt
- [x] Import-Pfad & Version (`0.1.0`)
- [x] Genre-Presets v0
- [x] Design-Brief Schema v0
- [x] Skill-Pack SoT
- [x] Agent-Matrix
- [x] Prepress-Abgrenzung
- [x] Kurz-ADR

## Exit criteria

Phase 1 startet mit Naming `bookkit`, Ort `packages/bookkit/`, Foundation-Schnitt wie oben.
