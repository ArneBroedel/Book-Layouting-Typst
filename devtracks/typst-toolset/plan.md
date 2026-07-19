# Plan: Typst Toolset

Siehe [spec.md](spec.md). Status: **geplant / nicht begonnen.**

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

- [ ] **Phase 0** — Entscheidungen dokumentiert (ADR-artig im Track).
- [ ] **Phase 1** — Foundation importierbar; Showcase grün; API-Doku skizziert.
- [ ] **Phase 2** — Skill-Pack provisionierbar; Starter existiert; Reuse-Pilot + Report grün.
- [ ] **Phase 3** — ≥1 Facette optional; CLI `init`/`build`/`doctor`; Consumer ohne Studio.
- [ ] **Phase 4** — (optional) MCP-Tools und/oder Registry-Publish; sonst bewusst deferred.
- [ ] **Harvest** — Skills/Guides/KNOWLEDGE-MAP; Plan-Footer; Archive.

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
