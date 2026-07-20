> **SUPERSEDED** (v0.1) — see `SUPERSEDED.md` and `devtracks/CONSENSUS-v0.md`.

> **SUPERSEDED** — siehe `devtracks/CONSENSUS-v0.md` und `SUPERSEDED.md`.

# Plan: Didactic Media Layer

Siehe [spec.md](spec.md). Status: **geplant / nicht begonnen.**

Depends on: [`form-catalog`](../form-catalog/) v0 (stable IDs + notfall-karte recipe).  
Feeds: [`plan-driven-layout`](../plan-driven-layout/), E2E in [`presentation-pipeline`](../presentation-pipeline/).

## Phasen

### Phase 1 — Schema & Validator
- [ ] `presentation-plan` Schema finalisieren (YAML + optional JSON Schema).
- [ ] Validator-Script: Schema + form-catalog membership.
- [ ] Fixture: invalid plan fails, valid plan passes (durable test).

### Phase 2 — Skill
- [ ] `toolset/skill-pack/didactic-media/` (oder `.github/skills/…`) SKILL.md.
- [ ] Trigger-Description: Content→Plan, **nicht** Typst.
- [ ] Einbinden: Genre-Rezepte, Anti-Patterns, Output-only-Plan, Gap-Protokoll.
- [ ] Provisioning analog bookkit (Symlinks) dokumentieren.

### Phase 3 — Gold plans (Pilot)
- [ ] Plan für III-5 Cauda-Notfallkarte.
- [ ] Plan für III-2 BLS/AED.
- [ ] Kurzbegründung je Plan (warum welche Form) in Comments oder `rationale.md`.
- [ ] Validator grün.

### Phase 4 — Handoff
- [ ] README: „So übergibst du an Layout“.
- [ ] Abnahme an Umbrella; Stretch: semi-automatische Plan-Skizze aus Meta+Headings.

## DoD

Acceptance aus spec; Gold-Pläne ready for plan-driven-layout assembly.

## Harvest (später)

- Skill bleibt Produkt; Schema unter `toolset/presentation/` o.ä.
- Learnings → skill + optional Guide „Editorial design for agents“.
