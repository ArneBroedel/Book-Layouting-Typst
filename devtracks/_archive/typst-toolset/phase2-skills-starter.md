# Phase 2 — Skill-Pack, Starter, Reuse-Pilot

Status: **done** · hängt ab von Phase 1  
**Exit-Pilot:** Track [`skill-reuse-pilot`](../skill-reuse-pilot/) (angepasster Scope)

## Ziel

Agenten und Menschen können in einem **fremden/minimalen Workspace** mit Foundation + Skills ein
Dokument bauen. Das ist der Lackmustest der Meta-Werkstatt.

## Tasks

### Skill-Pack
- [ ] Generische Skills bleiben kanonisch (ggf. leichte Pfad-/Link-Anpassung); **nicht** mit
  Package-API vermischen.
- [ ] Neuer package-spezifischer Skill (Arbeitstitel `bookkit` / `<package-name>`):
  wann welches Preset, Theme-Override, Assembly-Order, Import-Snippets, Anti-Patterns.
- [ ] Optional: knapper `bookkit-brief` / Abschnitt im package-skill für Design-Brief → Preset.
- [ ] Multi-Agent-Provisioning dokumentieren + für Starter automatisieren (Symlinks/Script).
- [ ] Findings aus [`skill-eval-baseline`](../skill-eval-baseline/) einarbeiten (Trigger, Widersprüche).

### Starter
- [ ] `toolset/starter/` oder separates Template: Struktur laut spec (main, override, fonts note,
  build, AGENTS, Brief-Stub, Skill-Wiring).
- [ ] README: „so startest du ein Buch in 5 Minuten“ (Mensch) + Agent-Gate (Skills lesen).

### Design-Brief
- [ ] Schema v0 finalisieren; Beispiel-Brief für Report- und Textbook-Genre.
- [ ] Validierung: mind. dokumentierte Checkliste; optional kleines Script `doctor`/validate.

### Reuse-Pilot (Acceptance)
- [ ] Domäne ≠ Medizin (z. B. technisches Datenblatt / wissenschaftliche Kurzmitteilung), ~6–8 Seiten.
- [ ] Nur Package + Skills + Starter-Muster; eigene Token-Palette als Konfigurierbarkeits-Beweis.
- [ ] Reuse-Report: getriggerte Skills, 1:1 vs. Improvisation, Lücken, Aufwand.
- [ ] Mind. eine Skill-Verbesserung oder begründet keine Lücken.
- [ ] `skill-reuse-pilot` Track parallel abschließen (Report dort oder hier verlinken).

## Exit criteria

- Acceptance 1, 3, 5, 6 aus `spec.md` erfüllt (Starter-/Reuse-/Repro-/Trennung soweit anwendbar).
- Fremder Agent (oder frische Session) kann anhand Starter+Skills ein PDF erzeugen.

## Explizit nicht in Phase 2

- Facetten-Split (außer Foundation reicht für den Pilot).
- CLI jenseits einfacher build.sh-Kopie.
- MCP.
