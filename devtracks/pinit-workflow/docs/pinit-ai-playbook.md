# Pinit AI Playbook

## Ziel
Die KI soll Pinit-Anmerkungen nicht nach Gefühl setzen, sondern in einem messbaren Loop:

1) Debug aktivieren und Pin-Koordinaten sichtbar machen  
2) Zielposition festlegen (Grid oder Koordinaten)  
3) Offsets initialisieren  
4) Render prüfen  
5) Abweichungen klassifizieren  
6) Genau eine Parametergruppe ändern  
7) Wiederholen  

## Voraussetzungen im Projekt
- `components/pinit-debug.typ` ist vorhanden.
- Debug-Schalter wird als Variable gesteuert.

## Prompt 0: Setup (einmalig)
Kopieren:

```text
Du arbeitest an einem Typst-Dokument mit pinit.
Ziel: Annotationen stabil platzieren ohne Textüberdeckung.

Vorgehen:
1. Aktiviere Debug (pinit-debug = true).
2. Ersetze die relevanten #pin(n) durch #dbg-pin(n) temporär.
3. Aktiviere dbg-grid auf der Seite.
4. Lies die Koordinaten (page, x, y) aus den dbg-pin Labels ab.
5. Setze oder ändere pinit-Parameter systematisch.

Regeln:
- Gib immer einen konkreten Code-Patch (nur die zu ändernden Stellen).
- Änder pro Iteration genau eine Parametergruppe.
- Begründe kurz jede geänderte Parametergruppe.
```

## Prompt 1: Initiale Annotation setzen (Recipe A)
```text
Ich gebe dir einen Textabschnitt mit zwei Pins.
Erstelle pinit-highlight und eine Hinweisbox mit Pfeil.

Constraints:
- Pfeil darf den Text nicht schneiden.
- Box darf nicht aus der Seite laufen.
- Nutze kleine Defaultwerte für pin-dx/pin-dy und body-dy.
- Füge eine Leerzeile vor den pinit-Aufrufen ein und setze #box() nach jedem pinit-Aufruf.

Gib nur den Typst-Patch.
```

## Prompt 2: Fix ARROW_IN_TEXT
Heuristik: zuerst pin-*.

```text
Der Pfeil schneidet Text oder Highlight.
Ändere ausschließlich pin-dx und pin-dy so, dass der Pfeilstart außerhalb des Textbereichs liegt.
Ändere keine offset-* und keine body-*.
Gib den Patch und nenne die neuen Werte.
```

Default-Sprünge: +5pt, +8pt, +12pt, +16pt

## Prompt 3: Fix ARROW_MISS_TARGET
Heuristik: body-* fein.

```text
Die Pfeilspitze trifft die Box nicht sauber (zu hoch/zu tief/zu links/zu rechts).
Ändere ausschließlich body-dx und body-dy in kleinen Schritten (2pt bis 10pt), bis die Spitze sitzt.
Ändere keine pin-* und keine offset-*.
Gib den Patch und nenne die neuen Werte.
```

## Prompt 4: Fix BOX_OVER_TEXT
Heuristik: Box global verschieben, ggf. Recipe B.

```text
Die Box überdeckt Text oder kollidiert mit anderen Elementen.
Verschiebe die Box global:
- Recipe A: offset-dx/offset-dy
Wenn das instabil wirkt oder nach 2 Iterationen nicht klappt: Switch auf Recipe B (pinit-place für Box + Pfeil separat).

Ändere nicht gleichzeitig mehr als eine Parametergruppe.
Gib den Patch.
```

## Prompt 5: Fix BOX_OUTSIDE_PAGE
```text
Die Box liegt teilweise außerhalb der Seite.
1) Reduziere offset-dx/offset-dy (oder pinit-place dx/dy), bis die Box innerhalb bleibt.
2) Wenn Box zu breit ist: begrenze Breite oder erlaube Umbruch, aber erst im zweiten Schritt.

Gib den Patch.
```

## Prompt 6: Switch Recipe A → Recipe B
```text
Recipe A driftet oder ist zu empfindlich.
Baue die Annotation um auf Recipe B:
- Box stabil via pinit-place relativ zu (1,2).
- Pfeil separat (pinit-point-to oder pinit-line-to).
Behalte das vorhandene Box-Design (Farben, Stroke, Radius) bei.

Gib den Patch.
```

## Klassifikation (pro Iteration genau eine Kategorie)
- ARROW_IN_TEXT
- ARROW_MISS_TARGET
- BOX_OVER_TEXT
- BOX_OUTSIDE_PAGE
- OVERLAP_OTHER_CONTENT
- OK

## Parametergruppen
- Group A: pin-dx/pin-dy
- Group B: body-dx/body-dy
- Group C: offset-dx/offset-dy oder pinit-place dx/dy
- Group D: Boxlayout (width, inset, text size)

## Iterationsregeln
- Max 6 Iterationen pro Annotation.
- Pro Iteration: genau eine Parametergruppe ändern.
- Wenn nach 3 Iterationen kein stabiler Zustand: Switch auf Recipe B.
