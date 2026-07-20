> **SUPERSEDED** (v0.1) — see `SUPERSEDED.md` and `devtracks/CONSENSUS-v0.md`.

> **SUPERSEDED** — siehe `devtracks/CONSENSUS-v0.md` und `SUPERSEDED.md`.

# Plan: Plan-Driven Layout

Siehe [spec.md](spec.md). Status: **geplant / nicht begonnen.**

Depends on: [`form-catalog`](../form-catalog/) mapping; [`didactic-media`](../didactic-media/) schema + gold plans.  
Scaffold (Ordner, CLI-hook) kann nach Katalog-v0 parallel starten; **Assembly-Abnahme** erst mit Gold-Plänen.

## Phasen

### Phase 1 — Scaffold
- [ ] Zielordner-Konvention (generated vs legacy) mit Umbrella abstimmen.
- [ ] Assembler-Entrypoint spezifizieren (Python oder Typst-datengesteuert — Entscheidung dokumentieren).
- [ ] Fail-fast bei unknown form.

### Phase 2 — Mapping runtime
- [ ] form-catalog laden; Dispatch table form → emitter function.
- [ ] Content resolution für Gold-Plan-Anker (pragmatisch v0).
- [ ] Emit chapter module + optional single-chapter wrapper.

### Phase 3 — Build & QA
- [ ] `bookkit build` Integration.
- [ ] Tests: gold plan → PDF.
- [ ] Strukturcheck optional (Blöcke vs Plan).
- [ ] layout-gap Report-Format.

### Phase 4 — Skills & deprecation
- [ ] bookkit-Skill: Abschnitt Plan-Assembly; oder eigener Dünn-Skill.
- [ ] Legacy-Converter README-Warnung.
- [ ] Handoff E2E an presentation-pipeline.

## DoD

Acceptance aus spec; III-5/III-2 plan-driven PDFs grün; Tests im Repo.

## Harvest (später)

- Assembler-Code + Tests = Produkt unter `toolset/` oder `pilots/…/tools/`.
- Skill-Regeln → bookkit / plan-assembly.
- Gotchas → typst-writer nur wenn typst-spezifisch.
