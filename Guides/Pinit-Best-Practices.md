# Pinit in Typst: Best Practices & Master Guide

Dieser Guide fasst die Funktionsweise des `@preview/pinit` Pakets zusammen. Er kombiniert die offizielle Dokumentation mit harten Lektionen und „Trial-and-Error“-Erkenntnissen aus der Praxis. Ziel ist es, Pinit ziel- und rechtssicher einsetzen zu können, ohne stundenlang Parameter raten zu müssen.

## 1. Was ist Pinit und wann sollte man es nutzen?

Pinit ist ein mächtiges Paket für **absolute und relative Annotationen**. Es erlaubt es, Pfeile, Highlights und Boxen völlig losgelöst vom normalen Textfluss (Document Flow) über die Seite zu zeichnen.

*   **Der perfekte Use Case:** Erklären von komplexen Code-Blöcken, Anatomie-Zeichnungen, Aufschlüsseln von mathematischen Gleichungen. Dinge, bei denen Pfeile kreuz und quer über Elemente zeigen müssen.
*   **Wann man es NICHT nutzen sollte:** Als Ersatz für reguläres Layouting (wie Margins, Columns oder Grids). Da Pinit (und Typst generell bei absoluter Positionierung) extrem anfällig für Änderungen im Textfluss oder Seitenumbrüche ist, sollten Pinit-Elemente eher wie „Sticker“ behandelt werden, die man am Ende des Satzes aufklebt.

## 2. Das Wichtigste zuerst: Die Bug-Prävention (Boilerplate)

Typst unterstützt nativ (noch) keine 100% verlässliche absolute Positionierung von gezeichneten Elementen, wenn diese mitten im Textfluss stehen. Der Compiler kann leicht durcheinanderkommen, was dazu führt, dass Pfeile an völlig falschen Stellen auf der Seite (oder sogar auf der falschen Seite) auftauchen.

**Um das zu verhindern, muss JEDER Pinit-Aufruf diesem Schema (Boilerplate) folgen:**

```typst
Ein normaler Textblock mit einem #pin(1)Wort#pin(2).

// 1. ZWINGEND: Eine leere Zeile vor dem Pinit-Aufruf!
#pinit-point-from(...) // oder pinit-point-to, pinit-highlight, etc.

// 2. ZWINGEND: Eine leere Box nach dem Aufruf!
#box()
```

Ohne die leere Zeile davor und das `#box()` danach ist Pinit im Zusammenhang mit Containern (wie unserem `card()`-Environment) faktisch unbenutzbar.

## 3. Das Koordinatensystem verstehen (Die größte Fehlerquelle)

Die Funktionen `#pinit-point-from` und `#pinit-point-to` sind extrem mächtig, wenn man ihre Vektor-Mathematik versteht. Man darf sie *nicht* als einfaches „Schiebe den Text nach rechts/links“ verstehen.

### Die Parameter im Detail (Die mentale Falle entlarvt)

Die meisten Fehler entstehen durch ein **invertiertes Mentales Modell**. Man tendiert dazu zu denken: *"Ich schiebe den Text mit `offset` 100 Pixel weg, und ziehe dann mit `body` den Pfeil 100 Pixel wieder zurück zum Pin."* **Das ist falsch und führt zu extremen Überlappungen und Layout-Sprengungen!**

Das korrekte mentale Modell ist exakt andersherum:

1.  **`offset-dx` / `offset-dy` (Die Text-Platzierung)**:
    *   *Bedeutung:* Verschiebt das **gesamte Konstrukt** (Pfeil + Textbody) relativ zum Pin.
    *   *Best Practice:* Nutze kleine Werte! Platziere den Textblock nah und sanft in der relativen Umgebung des Pins (z.B. rechts oberhalb oder direkt darunter). Schiebe ihn *niemals* mit riesigen Werten ans andere Ende der Seite, da absolute-place hier oft in Buggy-Verhalten bei Zentrierungen abdriftet.
2.  **`body-dx` / `body-dy` (Der Pfeil-Vektor)**:
    *   *Bedeutung:* Bestimmt Länge, Winkel und Ankerpunkt des Pfeils, *ausgehend vom positionierten Textblock zurück zum Pin*.
    *   *Best Practice:* Nutze dies, um den Pfeil elegant um Hindernisse herumzuführen. Zeigt dein Textblock z.B. nach unten links, nutze (body-dx: 15pt, body-dy: -10pt), damit die "Schwanzwurzel" des Pfeils exakt unten links am Text andockt und sanft zum Pin wandert.
3.  **`pin-dx` / `pin-dy` (Die exakte Pfeilspitze)**:
    *   *Bedeutung:* Wo genau auf dem `#pin()` landet das spitze Ende des Pfeils?
    *   *Beispiel:* `pin-dy: 8pt` setzt die Pfeilspitze leicht *unter* das markierte Wort, damit der Pfeil das Wort nicht verdeckt.
### Text-Überlappungen verhindern

Oft ragt der Pfeil tief in den Text deines `[Body]` hinein (z.B. durchkreuzt den ersten Buchstaben). Das liegt daran, dass reiner Text in Typst keine harten grafischen Kanten hat (Bounding Box), gegen die der Pfeil stoßen könnte.

**Lösung:** Wrappe den Text immer in einen `#block(inset: ...)`! Das Inset generiert ein unsichtbares Kraftfeld um den Text, an dessen Rand der Pfeil perfekt und sauber andockt.

## 4. Das perfekte Praxis-Beispiel (Template)

Hier ist das kugelsichere Template für eine elegante Annotation („Langer Pfeil zeigt von Erklärungstext auf eine Markierung“).

```typst
// Der Pin im Textfluss. Wir nutzen eine "Zange" (1, 2) um das Wort,
// um exakt auf die Mitte zielen zu können.
Ein wichtiges Detail ist die #pin(1)Risikogruppe#pin(2) bei dieser Indikation.

// Das optische Highlight (z.B. rote Farbe, leicht transparent)
#pinit-highlight(1, 2, fill: rgb(255, 0, 0, 40), radius: 3pt)

// Die leere Zeile VOR dem Aufruf ist kritisch!
#pinit-point-from(
  (1, 2),                  // Ziele auf die Mitte zwischen Pin 1 und 2
  pin-dx:  0pt,            // Exakt mittig (X)
  pin-dy:  8pt,            // Leicht unterhalb der Schrift (Y)

  // Der Pfeil-Vektor:
  body-dx: 0pt,            // Pfeil geht gerade nach unten...
  body-dy: -10pt,          // ...für exakt 10 Punkte (kurzer Pfeilanker)

  // Die Verschiebung: Wir schieben den Textblock samt Pfeilbasis
  // weit nach rechts und unten, um einen schönen, langen schrägen Pfeil zu generieren.
  offset-dx: 120pt,        // Text massiv nach rechts verschieben
  offset-dy: 60pt,         // Text nach unten verschieben

  fill: rgb(200, 0, 0),    // Farbe des Pfeils
)[
  // Das Padding, damit der Pfeil nicht den Text durchkreuzt!
  #block(inset: (left: 35pt))[
    #text(weight: "bold", fill: rgb(200, 0, 0))[
      Vorsicht!
    ] \
    Hier auf genaue Dosierung achten.
  ]
]
// ZWINGEND nach dem Aufruf!
#box()
```

## 5. Checkliste für Troubleshooting

Wenn Pinit nicht das tut, was du willst, prüfe diese Liste in Reihenfolge:

1.  **Pfeil ist an einem völlig verwirrten Ort auf dem Dokument?** \
    Fehlt die Leerzeile vorher oder das `#box()` nachher?
2.  **Pfeilspitze schneidet in das markierte Wort oben rein?** \
    Passe `pin-dy` an (z.B. `pin-dy: 5pt` oder `10pt`), um die Nadel etwas abzusenken.
3.  **Pferil durchkreuzt die Annotation (den Erklärungstext)?** \
    Wrappe die Annotation in `#block(inset: (left: Xpt))`, (oder `right:`,   `top:`, je nach Richtung).
4.  **Der Pfeilwinkel ist falsch (er zeigt nicht auf den Pin, sondern woanders hin)?** \
    Du hast wahrscheinlich `body-dx/dy` missbraucht, um den Text zu verschieben. Nutze dafür `offset-dx/dy` und setze `body-dx/dy` zurück auf kleine, klare Vektoren (z.B. (0, -10)).
5.  **Das Layout sprengt die Seite / ragt in die Caption?** \
    Achte darauf, dass nach der `#box()` genug Abstand folgt. Setze notfalls ein `#v(10em)` (oder mehr), da absolut positionierte Elemente keinen Platz im Textfluss verbrauchen! Der nachfolgende Text würde sonst einfach durch die Annotation hindurchlaufen.
6.  **Pinit in Code-Blöcken ignoriert Pins?** \
    Syntax-Highlighting bricht Pins. Es wird ein regulärer Ausdruck benötigt, um die Pins *vor* dem Highlighting zu evaluieren. Siehe offizielle Dokumentation: *„Pinit for raw“*.
