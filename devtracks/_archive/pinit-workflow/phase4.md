# Phase 4 (optional): Koordinaten-Export und externer Klick-Workflow

> **Status: COMPLETE** (2026-03-01)
> Deliverables: `dbg-export-pin()` in `components/pinit-debug.typ`, `tools/pinit-clickmap.html`,
> `docs/pinit-coordinate-roundtrip.md`.

## Ziel
Koordinaten strukturiert ausgeben und optional einen Click-to-Coordinate Workflow bauen.

## Tasks
1. Strukturierter Export
   - `dbg-export-pin(name)` oder JSON-like Zeile im Dokument

2. PNG-Klick Tool minimal
   - `tools/pinit-clickmap.html`:
     - PNG anzeigen
     - Klick (px) erfassen
     - PPI eingeben
     - pt berechnen: pt = px * 72 / ppi

3. Roundtrip dokumentieren
   - `docs/pinit-coordinate-roundtrip.md`

## Exit Criteria
- Koordinaten können strukturiert übernommen werden.
- Optionales Klicktool funktioniert und ist dokumentiert.
