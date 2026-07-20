# Phase 4 — Optional MCP + Publish-Pfad

Status: **deferred** (MCP not needed for MVP; @local packages ship in-repo) · hängt ab von Phase 3

## Wann diese Phase starten?

Nur wenn nach Phase 2–3 **messbar** eines gilt:

- Agenten halluzinieren Package-APIs trotz Skills → `component_doc` / `theme_schema` lohnt.
- Visuelle QA braucht standardisiertes Preview-Tool → `compile_preview(pages, ppi)`.
- Mehrere Teams brauchen Registry statt `@local`.

Sonst: Phase 4 als **deferred** im Plan markieren und Track ohne MCP abschließen (Publish optional
minimal: getaggte `@local`-Version + Changelog).

## Tasks (MCP, optional)

- [ ] MCP-Server mit **Tools only** (keine vollen Skill-Bodies):
  - `compile_preview`
  - `list_components` / `component_doc`
  - `theme_schema` / `doctor`
- [ ] Anbindung an 1–2 Agent-Clients verifizieren (z. B. Grok MCP + ein weiterer).
- [ ] Doku: was MCP ersetzt **nicht** (Skills bleiben file-first).

## Tasks (Publish)

- [ ] Versionierungs- und Changelog-Policy (SemVer; Breaking = major).
- [ ] `@local` Installationsanleitung final; optional privates Git-Package oder Typst Universe.
- [ ] Migration note: Showcase/Studio → Consumer.

## Exit criteria

- Entweder: MCP-Tools live + dokumentiert **oder** schriftliches „deferred + Begründung“.
- Publish-Pfad (auch wenn nur `@local` + Tag) ist für Außenstehende nachvollziehbar.

## Harvest vor Archive

- Package-API- und Facetten-Regeln → package-skill + `typst-extension`.
- Agent-Provisioning und Brief-Workflow → package-skill / AGENTS.
- Architektur-„warum“ → Lessons-Ledger + KNOWLEDGE-MAP.
- Footer `## Harvested into` in `plan.md`.
