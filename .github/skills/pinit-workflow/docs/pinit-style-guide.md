# Pinit Style Guide

## Zielbild
Anmerkungen sollen:
- den Text nicht überdecken
- innerhalb der Seite bleiben
- Pfeile sauber starten und enden
- bei kleinen Textänderungen möglichst wenig driften

## Grundregeln
1. Debug zuerst: Pins als `dbg-pin` setzen und Koordinaten sichtbar machen.
2. Koordinatensystem konsistent halten:
   - Pin-Koordinaten sind page-top-left.
   - Debug-Overlays müssen ebenfalls page-top-left nutzen.
3. Erst grob, dann fein:
   - Grobe Platzierung über offset oder pinit-place.
   - Feintuning über pin-* und body-*.
4. Workarounds bei Misalignment:
   - Leerzeile direkt vor pinit-Aufrufen.
   - `#box()` direkt nach pinit-Aufrufen.

## Recipe A: Direkt-Pinit

### Typischer Block
```typst
#import "@preview/pinit:0.2.2": *

Text mit #pin(1)markiertem Bereich#pin(2).

#pinit-highlight(1, 2)
#box()

#pinit-point-to(
  pin-dx: 5pt,
  pin-dy: 5pt,
  body-dx: 0pt,
  body-dy: -20pt,
  offset-dx: 40pt,
  offset-dy: 0pt,
  (1, 2),
)[Hinweistext]
#box()
```

### Parameter-Strategie
- pin-dx/pin-dy: Pfeilstart weg vom Text/Highlight.
- body-dx/body-dy: Pfeilspitze auf Box ausrichten.
- offset-dx/offset-dy: Box grob verschieben.

### Korrektur-Reihenfolge
1) Pfeil schneidet Text oder Highlight: pin-* ändern.
2) Pfeilspitze daneben: body-* ändern.
3) Box sitzt schlecht: offset-* ändern.

## Recipe B: Entkoppelt (stabiler)
Box stabil relativ zu Pins platzieren, Pfeil separat.

### Pattern
1) Box stabil:
```typst
#pinit-place(dx: 80pt, dy: -30pt, (1, 2))[
  #box(inset: 8pt, stroke: 1pt)[Hinweis]
]
#box()
```

2) Pfeil separat:
- `pinit-point-to` (zu einem Body-Anker)
- oder `pinit-line-to` (zu einem festen Punkt)

## Troubleshooting

### Pfeil ragt in Text
- pin-dx/pin-dy erhöhen (5pt bis 20pt).
- Highlight erweitern (extended-height), damit Pfeilstart nicht im Text sitzt.

### Box überdeckt Text
- Box global verschieben:
  - Recipe A: offset-*
  - Recipe B: pinit-place dx/dy
- Falls Box zu breit: Breite begrenzen und Umbruch zulassen.

### Box außerhalb der Seite
- offset-* oder pinit-place dx/dy reduzieren.
- Layout-Zone wählen, die frei bleibt (z. B. rechts oben).

## Debug-Schalter
- Entwicklung: `#let pinit-debug = true`
- Produktion: `#let pinit-debug = false`
