# Phase 3: KI-Anleitung und Korrektur-Loop

> **Status: COMPLETE** (2026-03-01)
> Deliverables: `docs/pinit-ai-playbook.md` — 6 copy-paste prompts, error classification table,
> parameter groups, iteration rules (max 6, switch to Recipe B after 3 failures).

## Ziel
Eine präzise Anleitung für eine KI, damit sie:
- Pinit-Annotations korrekt initialisiert
- systematisch korrigiert
- nicht auf Screenshots “rät”, sondern anhand Debug-Koordinaten arbeitet

## Tasks
1. KI-Prompt-Bausteine erstellen
   - Debugmodus aktivieren
   - Pins als dbg-pin setzen
   - Koordinaten aus Labels übernehmen
   - Ausgabe als Code-Patch

2. Heuristik definieren
   - Wenn Pfeil in Text: pin-* zuerst, dann body-*, dann offset-*
   - Wenn Box außerhalb Seite: offset begrenzen, Box-Ausrichtung ändern, Recipe B erwägen
   - Wenn Pfeilspitze daneben: body-* feinjustieren in kleinen Schritten

3. Korrektur-Loop definieren
   - Schrittfolge:
     1) Debug an, Koordinaten erfassen
     2) Zielposition bestimmen
     3) Parameter initialisieren
     4) Render prüfen
     5) Abweichungen klassifizieren
     6) genau 1 Parametergruppe ändern
     7) wiederholen
   - Abbruch:
     - max Iterationen
     - wenn Recipe A scheitert: Recipe B

4. Beispiel-Prompt-Set schreiben
   - `docs/pinit-ai-playbook.md`

## Exit Criteria
- Playbook existiert.
- Heuristik ist konsistent.
- Mindestens 2 echte Fälle lassen sich reproduzierbar korrigieren.
