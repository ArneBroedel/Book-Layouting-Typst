# Phase 2: Stabilitäts-Rezepte und Refactor

> **Status: COMPLETE** (2026-03-01)
> Deliverables: `docs/pinit-style-guide.md` (Recipe A + Recipe B documented), Page 4 of
> `debug/pinit-regression.typ` demonstrates the Recipe B refactor of Case 1.

## Ziel
Pinit-Nutzung stabilisieren durch zwei dokumentierte Rezepte und Refactor einer realen Stelle.

## Tasks
1. Recipe A dokumentieren: Direkt-Pinit mit Disziplin
   - Regeln:
     - Leerzeile vor pinit-Aufrufen
     - `#box()` direkt nach pinit-Aufrufen
     - Offsets in kleinen Schritten ändern
     - Reihenfolge: pin-* → body-* → offset-*
   - Beispiele:
     - highlight + point-from
     - highlight + point-to

2. Recipe B implementieren: Entkoppelt, stabiler
   - Strategie:
     - Box stabil platzieren relativ zu Pins via `pinit-place`
     - Pfeil separat zeichnen: `pinit-point-to` oder `pinit-line-to`
   - Vorteil:
     - Box driftet weniger
     - Pfeil lässt sich unabhängig korrigieren

3. Realen Block refactoren
   - Debug aktivieren, Pin-Koordinaten auslesen
   - Box-Position festlegen (grid + kleine dx/dy)
   - Pfeil separat so anpassen, dass:
     - keine Textüberdeckung
     - Pfeilspitze trifft visuell korrekt
     - Pfeilstart schneidet nicht die Highlight-Box

4. Regression aktualisieren
   - Refactorten Fall in `debug/pinit-regression.typ` aufnehmen
   - Vorher/Nachher Render sichern: `debug/baseline/` und `debug/after/`

5. Dokumentation ergänzen
   - `docs/pinit-style-guide.md` erstellen und pflegen

## Exit Criteria
- Mindestens 1 realer Pinit-Case ist sichtbar stabiler.
- Style Guide existiert.
- Regression zeigt Fortschritt.
