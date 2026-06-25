# Koordinaten-Roundtrip (optional)

## Ziel
Koordinaten aus einem gerenderten PNG übernehmen und als Typst-Längen (pt) verwenden.

## Prinzip
Typst rechnet in pt (1in = 72pt). PNG-Koordinaten sind Pixel.
Wenn du die Exportauflösung (PPI) kennst, kannst du exakt umrechnen:

- pt = px * 72 / ppi
- px = pt * ppi / 72

## Schrittfolge
1. Exportiere das Dokument als PNG mit definierter PPI.
2. Öffne das PNG im Klicktool `tools/pinit-clickmap.html`.
3. Klicke den gewünschten Punkt (Pfeilspitze, Box-Anchor, etc.).
4. Tool zeigt Pixel und umgerechnete pt.
5. Übernimm pt in Typst:
   - offset-dx/offset-dy
   - oder dbg-note(label, dx, dy) zum Gegencheck

## Empfehlung
Nutze Roundtrip nur, wenn du wirklich einen Klickpunkt brauchst.
Für Pins ist dbg-pin/here().position() schneller und exakter.
