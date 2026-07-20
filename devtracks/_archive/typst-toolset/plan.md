# Plan: Typst Toolset

Siehe [spec.md](spec.md). Status: **implementiert (MVP 0.1.0)** · 2026-07-19

Lifecycle: bei Fertigstellung harvesten (Package-API-Regeln → package-spezifischer Skill +
`typst-extension`; Layout-Gotchas → `typst-writer`; „warum Schichten/Phasen“ →
`Guides/Working_With_Typst-Theory_To_Practice.md` + `docs/KNOWLEDGE-MAP.md`), dann
`git mv` nach `devtracks/_archive/typst-toolset/`.

Verwandte Tracks: `skill-eval-baseline`, `skill-reuse-pilot` (Phase-2-Exit), `prepress-pdfx`
(unabhängig; siehe spec § Related).

## Phasenübersicht

| Phase | Datei | Ziel | Abhängigkeiten |
|---|---|---|---|
| **0** | [phase0-decisions.md](phase0-decisions.md) | API-Schnitt, Naming, Presets, Skill-Pack-Ort, Brief-Schema | — |
| **1** | [phase1-foundation.md](phase1-foundation.md) | Foundation-Package + Showcase-Dogfood | Phase 0 |
| **2** | [phase2-skills-starter.md](phase2-skills-starter.md) | Skill-Pack, Starter, Reuse-Pilot | Phase 1; ideal: Eval-Baseline-Findings |
| **3** | [phase3-facets-cli.md](phase3-facets-cli.md) | Erste Facetten + thin CLI | Phase 2 |
| **4** | [phase4-mcp-publish.md](phase4-mcp-publish.md) | Optional MCP-Tools + Publish-Pfad | Phase 3; nur bei Bedarf |

## Checkliste (High level)

- [x] **Phase 0** — Entscheidungen dokumentiert (ADR-artig im Track).
- [x] **Phase 1** — Foundation importierbar; Showcase grün; API-Doku skizziert.
- [x] **Phase 2** — Skill-Pack provisionierbar; Starter existiert; Reuse-Pilot + Report grün.
- [x] **Phase 3** — ≥1 Facette optional; CLI `init`/`build`/`doctor`; Consumer ohne Studio.
- [x] **Phase 4** — (optional) MCP-Tools und/oder Registry-Publish; sonst bewusst deferred.
- [x] **Harvest** — Skills/Guides/KNOWLEDGE-MAP; Plan-Footer; Archive.

## Arbeitsprinzipien (aus Architektur-Konsens)

1. **Ein Medium pro Schicht:** Package = Code, Skills = Prozeduren, CLI = Orchestrierung, MCP = Live-Tools.
2. **File-first für Agent-Wissen**; MCP nie als Markdown-Müllhalde.
3. **Foundation schlank**; Domäne in Facetten.
4. **Tokens im Theme**, Skills steuern Nutzung — nicht umgekehrt.
5. **Minimal diffs im Showcase** während Extraktion; Verhalten vor Refactor-Schönheit.
6. Skills vor `.typ`-Arbeit laden (`typst-writer` / `typst-extension` / später package-skill).

## Definition of Done (Track)

Alle Acceptance-Kriterien aus `spec.md`; verwandte Anpassungen an `skill-reuse-pilot` erledigt;
Governance-Docs aktualisiert; Harvest-Footer gesetzt.


## Harvested into

- `packages/bookkit/` + `packages/bookkit-didactics/` — runtime product
- `toolset/skill-pack/bookkit/SKILL.md` (+ `.github/skills/bookkit` symlink) — package agent procedures
- `toolset/starter/`, `scripts/bookkit`, `toolset/docs/api-foundation.md`, `toolset/tests/test_toolset.sh`
- `devtracks/skill-reuse-pilot/reports/reuse-report-2026-07-19.md`
- `devtracks/skill-eval-baseline/reports/static-baseline-2026-07-19.md`
- Governance: `AGENTS.md`, `CLAUDE.md`, `docs/KNOWLEDGE-MAP.md` consumer path / layers
- Pilots: `pilots/reuse-datasheet/`, `pilots/kursbuch-welle-03/` (layout consumer; Kursbuch MD read-only)
- Phase 4 MCP/Universe publish: **deferred** (file-first skills + in-repo packages sufficient for MVP)

## Archive readiness

Track is harvest-complete for MVP. Archive with:

```bash
git mv devtracks/typst-toolset devtracks/_archive/typst-toolset
# optional co-archive:
# git mv devtracks/skill-reuse-pilot devtracks/_archive/skill-reuse-pilot
# git mv devtracks/skill-eval-baseline devtracks/_archive/skill-eval-baseline
```

Keep `prepress-pdfx` open (independent).
