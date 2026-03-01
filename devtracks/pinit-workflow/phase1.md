# Phase 1: Debug-Modul

> **Status: COMPLETE** (2026-03-01)
> Deliverables: `components/pinit-debug.typ` — `dbg-pin`, `dbg-grid`, `dbg-note`, `dbg-export-pin`,
> `enable-pinit-debug`, `disable-pinit-debug`. State-based flag works across module boundaries.

## Ziel
Ein zentrales Debug-Modul, das:
- Pin-Positionen (page, x, y) sichtbar macht
- optional ein Koordinatengitter zeichnet
- im gleichen Koordinatensystem arbeitet wie die Pin-Positionen

## Tasks
1. Debug-Modul anlegen
   - Datei: `components/pinit-debug.typ`
   - Import: `#import "@preview/pinit:0.2.2": *`
   - Globaler Schalter: `#let pinit-debug = false`

2. dbg-pin implementieren
   - Signatur: `#let dbg-pin(name) = { ... }`
   - Normalmodus: nur `pin(name)`
   - Debugmodus:
     - `pin(name)`
     - `#context { let pos = here().position() ... }`
     - Marker (Kreuz / kleines Rechteck) auf pos.x/pos.y via `absolute-place`
     - Label mit name, page, x, y

3. dbg-grid implementieren
   - Signatur: `dbg-grid(step: 50pt, label-every: 100pt, extent: 2000pt)`
   - Linien via `absolute-place(dx, dy)` zeichnen
   - Labels in 8pt grau

4. In Regressionstest integrieren
   - In `debug/pinit-regression.typ`:
     - debug-modul importieren
     - ausgewählte `#pin(n)` temporär zu `#dbg-pin(n)`
     - debug und grid auf mindestens einer Seite aktivieren

5. Visuelle Validierung
   - Render prüfen:
     - Koordinaten erscheinen
     - Marker sitzt am Pin
     - Grid passt zur Platzierung
     - kein unerwarteter Layout-Shift

## Exit Criteria
- `dbg-pin` zeigt page/x/y zuverlässig an.
- `dbg-grid` ist optional und stört den Textfluss nicht.
- Debug per Flag deaktivierbar.
