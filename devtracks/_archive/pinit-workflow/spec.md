# Pinit Debug & Stabilisierung Workflow

## Ziel
Ein stabiler, reproduzierbarer Workflow für Typst-Dokumente mit Pinit-Anmerkungen:

1. Exakte Positionsdiagnose statt Trial-and-Error.
2. Visuelles Debugging über Grid und Pin-Koordinaten.
3. Reduktion typischer Pinit-Fehler:
   Pfeile zu kurz, Pfeile im Text, Pfeilspitzen daneben, Kommentarboxen überdecken Text, Kommentarboxen außerhalb der Seite.
4. Optionaler Export von Koordinaten zur weiteren Automatisierung.

## Kontext und Motivation
Pinit verwendet relative Positionierung über Pins und platziert Elemente über absolute Platzierung. Die Pinit-Dokumentation weist darauf hin, dass Typst keine garantiert zuverlässige absolute Platzierung bereitstellt und empfiehlt Workarounds (z. B. Leerzeile vor pinit-Aufrufen, `#box()` danach, sowie manuelle Offsets).

Die aktuelle Situation:
- Korrekturen anhand von Screenshots führen oft nicht zu stabilen Ergebnissen.
- Offsets werden zu häufig “blind” gewählt.

Die Lösung:
- Positionswahrheit aus der Layout-Engine sichtbar machen.
- Koordinatensystem konsistent halten, damit Anpassungen deterministisch sind.
- Bei Bedarf den Layout-Flow in stabilere Primitive zerlegen:
  Box-Placement und Pfeil-Placement entkoppeln.

## Non-Goals
- Kein neues Typst-Paket veröffentlichen.
- Kein vollwertiger GUI-Editor als Pflichtbestandteil.
- Keine perfekte Autolayout-Engine, die alle Kollisionen garantiert vermeidet.

## Erfolgskriterien (Definition of Done)
- Für mindestens 3 reale Annotierungsfälle im Projekt gilt:
  - Pins werden visuell markiert und zeigen ihre exakten (page, x, y)-Koordinaten.
  - Debug-Grid kann pro Seite ein- und ausgeschaltet werden.
  - Ein “stabiler Annotierungsstil” ist dokumentiert:
    - Box relativ zu Pins
    - Pfeil ohne Textüberdeckung
    - Box innerhalb der Seite
- Ein Standardrezept für Pinit:
  - Nutzung von `#box()` und Leerzeile gemäß Dokumentationshinweisen
  - klare Richtlinien für `pin-dx/pin-dy`, `body-dx/body-dy`, `offset-dx/offset-dy`
- Optional:
  - Koordinaten können als strukturierte Daten ausgegeben werden (JSON-ähnlich), um sie extern weiterzuverwenden.

## Architekturüberblick
Ein Debug-Modul im Repo:

- `components/pinit-debug.typ`:
  - `dbg-pin(name)` statt `pin(name)` in Debug-Sessions
  - `dbg-grid(...)` als Overlay
  - optional `dbg-note(...)` zum Markieren freier Punkte

Zusätzlich “Style Recipes”:

- Recipe A (Direkt-Pinit):
  - `pinit-highlight(...)`
  - `pinit-point-to/from(...)`
  - Workarounds und Offset-Disziplin

- Recipe B (Entkoppelt, stabiler):
  - Box-Placement über `pinit-place(...)` (relativ zu Pins)
  - Pfeil separat (z. B. `pinit-point-to` oder `pinit-line-to`)
  - Vorteil: weniger implizite Kopplung, weniger Drift

## Schnittstellen / APIs im Projekt
- Debug-Schalter:
  - `#let pinit-debug = true|false`
  - pro Dokument/kapitel konfigurierbar

- Debug-Funktionen:
  - `dbg-pin(name)`
  - `dbg-grid(step, label-every, extent)`
  - optional:
    - `dbg_note(label, dx, dy)` zum Anzeigen frei gewählter Punkte

## Bedienkonzept
- Normalbetrieb:
  - `pinit-debug = false`
  - Dokument produziert saubere Ausgabe ohne Debug-Artefakte

- Debugbetrieb:
  - `pinit-debug = true`
  - Pins zeigen Koordinaten
  - Grid hilft bei Orientierung
  - Entwickler korrigiert Offsets auf Basis echter Werte
  - Danach Debug deaktivieren

## Risiken und Gegenmaßnahmen
Risiko: Koordinatensystem ist inkonsistent (Margins, Containers).
Gegenmaßnahme:
- Debug-Overlay nutzt dasselbe Koordinatensystem wie die Pin-Positionen:
  Platzierung via `absolute-place` (page top-left).

Risiko: Pinit driftet durch Layout-Flow.
Gegenmaßnahme:
- `#box()` nach pinit calls
- Leerzeile vor pinit calls
- entkoppeltes Recipe B einsetzen

Risiko: Grid zeichnet “zu weit” oder “zu kurz”.
Gegenmaßnahme:
- Grid `extent` parameterisieren
- initial großzügig, später page-size-sensitiv verbessern

## Qualitätsanforderungen
- Minimalinvasiv: Debug kann ohne Umstrukturierung bestehender Inhalte hinzugefügt werden.
- Reproduzierbar: “So misst du, so korrigierst du” ist dokumentiert.
- Wartbar: Ein zentraler Debug-Modul, nicht verstreute Copy-Pastes.
