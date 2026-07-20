# Plan: Skill-Eval-Baseline

Siehe [spec.md](spec.md). Status: **geplant / nicht begonnen.**  
**Related:** Enabler für [`typst-toolset` Phase 2](../typst-toolset/phase2-skills-starter.md)
(parallel zu Toolset Phase 0–1 ok).

Lifecycle: Ergebnis ist selbst eine Methodik → bei Fertigstellung die „so misst du eine Skill"-Anleitung
ins `skill-creator`-Skill bzw. `docs/KNOWLEDGE-MAP.md` harvesten, Track nach `_archive/`.

## Phasen

- [ ] **Phase 0 — Harness-Setup.** `skill-creator/scripts/` sichten (`run_eval.py`, `run_loop.py`,
  `improve_description.py`, `quick_validate.py`); Abhängigkeiten/Voraussetzungen (inkl. evtl.
  API-Keys/Kosten) klären und dokumentieren; Fallback „nur statische Checks" festhalten.
- [ ] **Phase 1 — Baseline-Eval.** Eval/Grading über `typst-writer` + `typst-extension` laufen lassen;
  Scores + Reports nach `reports/` versionieren.
- [ ] **Phase 2 — Befunde beheben.** Schwache Trigger/Descriptions (`improve_description.py`) und
  Widersprüche zwischen §19/§10 und Bestandsabschnitten korrigieren; Re-Eval zum Nachweis.
- [ ] **Phase 3 — Methodik festschreiben.** Wiederholbare „Skill nach Harvesting messen"-Anleitung
  schreiben; in `docs/KNOWLEDGE-MAP.md` (Harvest-Gate) verlinken.

## Abnahme
- Baseline-Report im Track; erkannte Schwächen behoben; wiederholbare Mess-Anleitung verlinkt.
