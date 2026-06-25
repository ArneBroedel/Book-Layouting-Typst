# Phase 0: Baseline und Reproduzierbarkeit

> **Status: COMPLETE** (2026-03-01)
> Deliverables: `debug/pinit-regression.typ` (4 test cases), `debug/pinit-issues.md` (7 documented issues).

## Ziel
Reproduzierbare Ausgangslage schaffen:
- typische Fehlerfälle sammeln
- Messkriterien definieren
- 3 Beispielseiten als Regression

## Tasks
1. Testseiten definieren
   - Identifiziere 3 Stellen im Projekt mit typischen Pinit-Problemen:
     - Pfeil zu kurz oder zu lang
     - Pfeil schneidet Text
     - Box überdeckt Text
     - Box außerhalb der Seite
   - Dupliziere diese Stellen in ein separates Testdokument:
     - `debug/pinit-regression.typ`

2. Baseline Render sichern
   - Rendere die Testseiten als PNG oder PDF.
   - Lege sie in `debug/baseline/` ab.
   - Notiere pro Seite:
     - welche Pins beteiligt sind
     - welche pinit-Funktion genutzt wird
     - welche Parameter aktuell gesetzt sind

3. Fehlerinventar erstellen
   - Erstelle `debug/pinit-issues.md`.
   - Für jeden Fehlerfall:
     - Kurzbeschreibung
     - erwartetes Verhalten
     - aktuelles Verhalten
     - welche Parameter vermutlich ursächlich sind

## Exit Criteria
- `debug/pinit-regression.typ` existiert und kompiliert.
- Baseline-Render liegt vor.
- Mindestens 6 dokumentierte Fehlerfälle.
