# Phase 0 — Architektur- und Produktentscheidungen

Status: **offen**

Ziel: Alle Weichen, die teure Fehl-Extraktion verhindern, **schriftlich** festnageln, bevor Code wandert.

## Deliverables

- [ ] **Naming:** Package-Präfix (Arbeitstitel z. B. `bookkit` / Firmenname) und Skill-Pack-Name.
- [ ] **Foundation-Schnitt:** Liste der Module/Funktionen in Foundation vs. Facetten vs. Showcase-only.
  Ausgangspunkt:
  - **Foundation-Kandidaten:** `theme` (generische Tokens), `typography`, `page`, `blocks`, `inline`,
    `tables`, `grids`, `layouts`, `spreads` (cover/chapter/part ohne Medizin-Semantik).
  - **Facetten-Kandidaten:** `didactics`, `exam`, `charts`, `diagrams`, `pedigree`, `figures`,
    `legal`, `page-design`, `art`.
  - **Showcase-only / später:** Research-Pipeline, Kapitel-Inhalte, templates/-Corpus.
- [ ] **Import-Pfad & Version:** `@local/<name>:<version>` Layout; wo das Package im Repo lebt
  (Vorschlag: `packages/<name>/` oder `toolset/packages/…`) und wie Showcase es referenziert.
- [ ] **Genre-Presets (v0):** 3–5 Presets mit Token-Defaults (nicht mehr).
- [ ] **Design-Brief-Schema (v0):** Pflicht- vs. optionale Felder (YAML oder Markdown-Frontmatter);
  Fail-Fast-Regel scharf aber DX-tauglich.
- [ ] **Skill-Pack Source of Truth:** Kanonischer Ort (Empfehlung: im Studio unter
  `toolset/skill-pack/` oder Erweiterung von `.github/skills/` + package-skill; Consumer via
  Provisioning). Entscheidung: *Deploy-Ziel* (`.agents/skills` o. Ä.) ≠ *Source*.
- [ ] **Agent-Matrix:** Welche Discovery-Pfade in Phase 2 Pflicht sind (Grok/Claude/Copilot min.).
- [ ] **Abgrenzung prepress:** schriftlich „nicht in MVP“; Hook-Punkt für CLI `print` notiert.
- [ ] **Kurz-ADR** im Track (`decisions.md` oder Abschnitt hier): je Entscheidung Kontext / Optionen /
  Wahl / Konsequenzen.

## Exit criteria

Phase 1 darf starten, wenn Foundation-Schnitt und Package-Ort + Naming fest sind. Brief/Presets
dürfen in Phase 1 als Stub starten, müssen aber in Phase 2 final nutzbar sein.

## Notes

Gemini-Konsens zu Skill-Distribution: lokal im Starter starten ist ok als **Deploy**; für Multi-Workspace
lieber früh kanonische Quelle + Provisioning (wie `sh-skill-provisioner` / bestehende Symlink-Praxis).
