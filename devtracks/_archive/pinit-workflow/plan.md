# Plan: Pinit Debug & Stabilisierung Workflow

## Übersicht
Wir implementieren in mehreren Phasen:

Phase 0: Baseline und Messbarkeit  
Phase 1: Debug-Modul implementieren  
Phase 2: Stabilitäts-Rezepte und Refactor eines realen Beispiels  
Phase 3: Guidelines für KI und automatische Korrektur-Strategie  
Phase 4 (optional): Strukturierter Koordinaten-Export und externe Tools  

Jede Phase liefert ein nutzbares Ergebnis und verringert direkt das Trial-and-Error.

## Phase 0: Baseline und Reproduzierbarkeit
Ziel:
- Reproduzierbare Testseite(n) und typisches Fehlerinventar.

Deliverables:
- 3 Beispielseiten im Repo, die typische Pinit-Probleme enthalten.
- Eine Fehlerliste, die als Regression dient.

## Phase 1: Debug-Modul
Ziel:
- Pins sichtbar machen inklusive Koordinaten.
- Optional Grid Overlay.
- Alles im page-top-left Koordinatensystem.

Deliverables:
- `components/pinit-debug.typ` mit dbg-pin, dbg-grid.
- Kurzdoku: “Debug on, Offsets korrigieren, Debug off”.

## Phase 2: Stabilitäts-Rezepte und Refactor
Ziel:
- Ein stabiler Annotierungsstil, der Drift minimiert.
- Umbau eines realen Blocks (z. B. aus `12-beyond-flow.typ`) in Recipe B, wenn sinnvoll.

Deliverables:
- Recipe A: Direkt-Pinit mit Disziplin
- Recipe B: Entkoppelt: Box stabil, Pfeil separat
- 1–2 reale Stellen refactored, mit vorher/nachher Visual Review.

## Phase 3: KI-Anleitung und Korrektur-Loop
Ziel:
- Exakte Anleitung für eine KI, wie sie Pinit setzt und korrigiert.
- Systematische Parameterstrategie statt “random offsets”.

Deliverables:
- Prompt-Bausteine, Heuristiken, Schrittfolge.
- Entscheidungsbaum und Switch-Strategie Recipe A → Recipe B.

## Phase 4 (optional): Koordinaten-Export und externer Klick-Workflow
Ziel:
- Koordinaten maschinenlesbar ausgeben.
- Optional: PNG klicken und Werte zurückführen.

Deliverables:
- Strukturierter Export (JSON-like) im Dokument oder via Query.
- Optional kleines HTML Tool zur Pixel→pt Umrechnung.

## Abnahmekriterien
- Phase 1: dbg-pin liefert sichtbare (page, x, y) Werte an mindestens 10 Pins ohne Layoutbruch.
- Phase 2: Mindestens 2 reale Annotations sind stabil:
  keine Textüberdeckung, Pfeilspitze trifft, Box innerhalb der Seite.
- Phase 3: Playbook erzeugt reproduzierbar bessere Erstversuche und Korrekturen.
- Phase 4: Koordinatenfluss funktioniert ohne manuelles Schätzen.
