# Spec: Skill-Eval-Baseline

## Objective

Die zuletzt stark erweiterten Skills (`typst-writer` §19, `typst-extension` §10 — beide durch das
Devtrack-Harvesting gewachsen) **messbar qualitätssichern**: mit dem vorhandenen `skill-creator`-
Harness eine Baseline an Eval-/Grading-Werten erzeugen, schwache Beschreibungen/Trigger und
widersprüchliche Regeln aufdecken und beheben. Bisher wurden die Skills nur leichtgewichtig
gelintet (`quick_validate.py` = „valid"); eine echte Qualitäts-Baseline fehlt.

Das schließt die im Knowledge-Lifecycle vorgesehene „gestufte Harvest-Rigorosität" für substanzielle
Skill-Änderungen tatsächlich ab (statt nur als Empfehlung im Plan zu stehen).

## Scope (in)

- **Eval-Lauf** des `skill-creator`-Harness (`.github/skills/skill-creator/scripts/run_eval.py` u. a.)
  über mindestens `typst-writer` und `typst-extension`; optional `pinit-workflow`.
- **Trigger-/Description-Analyse:** prüfen, ob die §19/§10-Erweiterungen die Auslöse-Genauigkeit
  (Description) verwässert haben; ggf. `improve_description.py` nutzen.
- **Baseline ablegen:** Scores/Reports versioniert im Track (`reports/`), als Referenz für künftige
  Regressionsprüfungen nach weiterem Harvesting.
- **Konsistenz-Check:** Widersprüche zwischen den neuen Harvest-Regeln und Bestands-Abschnitten
  derselben Skills finden und auflösen.
- **Setup-Doku:** was der Eval-Harness braucht (Abhängigkeiten, evtl. API-Keys/Kosten) ehrlich
  dokumentieren — inkl. „ohne Key nur statische Checks"-Fallback.

## Scope (out)

- Keine Neuschreibung der Skills, nur gezielte Korrekturen aus Eval-Befunden.
- Kein Dauer-CI-Gate in diesem Track (nur Baseline + Methodik; Automatisierung optional später).

## Acceptance

- Eval-Baseline-Report für `typst-writer` + `typst-extension` liegt im Track (`reports/`).
- Mindestens die als schwach erkannten Trigger/Widersprüche sind behoben (oder als „kein Befund" belegt).
- Eine wiederholbare Anleitung „so misst du eine Skill nach Harvesting" steht im Track und ist in
  `docs/KNOWLEDGE-MAP.md` (Harvest-Gate, gestufte Rigorosität) verlinkt.

## Risiken
- `skill-creator`-Eval kann API-Zugriff/Kosten erfordern → Fallback auf statische Validierung
  dokumentieren, damit der Track auch headless einen Wert liefert.
