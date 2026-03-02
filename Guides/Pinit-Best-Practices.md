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

### ⚠ Kritischer Dokumentationsfehler (empirisch verifiziert)

Die offizielle Dokumentation behauptet, `offset-dx` in `pinit-point-from` sei „relativ zur linken Seitenkante". **Das ist falsch.** Verifiziert mit `@preview/pinit:0.2.2`: Pin bei (50pt, 50pt), Aufruf mit `offset-dx: 20pt, offset-dy: 20pt` → Annotation landet bei (70pt, 70pt), nicht bei (20pt, 20pt). Beide Funktionen (`pinit-point-from` **und** `pinit-point-to`) verwenden Pin-relative Offsets. Es gibt keinen seitenabsoluten Offset-Modus in Pinit.

**Konsequenz:** Mit `offset-dx` lässt sich keine einheitliche absolute Spalte erzeugen. Wenn alle Annotationen auf derselben x-Koordinate ausgerichtet sein sollen (z.B. im linken Rand), muss Recipe C (Abschnitt 5) verwendet werden.

### ⚠ Multi-Pin-Mittelpunkt-Falle

Wenn ein Pin-Array `(1, 2)` übergeben wird, ist der Ankerpunkt für `offset-dx/dy` der **geometrische Mittelpunkt** aller Pins – **nicht** Pin[0]. Beispiel: Pin 1 bei x=60pt, Pin 2 bei x=240pt → Mittelpunkt x=150pt. Mit `offset-dx: 50pt` landet die Annotation bei x=200pt, nicht bei x=110pt.

**Formel:** `offset-dx = Ziel-x − Mittelpunkt-x`

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

## 5. Recipe C: Absolut-Positionierte Randnotizen

Verwende Recipe C, wenn alle Annotationsboxen in einer **festen absoluten x-Spalte** erscheinen sollen (z.B. linker Rand), während die y-Koordinate jeweils dem Pin folgt. Weder Recipe A noch Recipe B können das leisten – alle Pinit-Offsets sind Pin-relativ (nicht seitenabsolut, trotz anderslautender Dokumentation).

### Warum Pinit-Offsets hier versagen

Mit `offset-dx: 50pt` und Pins bei x=80pt, x=140pt, x=200pt landen die Boxen bei x=130pt, x=190pt, x=250pt – keine einheitliche Spalte.

### Implementierung

```typst
// Schritt 1: Pin-Koordinaten in State speichern
#let _pincoords = state("pincoords", (:))

#let record-pin(n) = {
  pin(n)
  context {
    let pos = here().position()   // wirklich seitenabsolut, Ursprung oben-links
    _pincoords.update(old => {
      let m = if old == none { (:) } else { old }
      m.insert(str(n), pos)
      m
    })
  }
}

// Schritt 2: Randnotiz-Funktion
// note-x : absoluter x-Wert der linken Boxkante (von Seitenkante)
// note-w : Boxbreite — note-x + note-w MUSS < linken Randbreite (in pt) bleiben
// dy     : vertikaler Versatz vom Pin (gestapelte Notizen: 0, 36, 72 ...)
#let randnotiz(pins, note-x: 5pt, note-w: 100pt, dy: 0pt, content) = {
  let anchor = str(pins.at(0))
  context {
    let coords = _pincoords.get()
    if coords != none and anchor in coords {
      let pinpos = coords.at(anchor)
      let box-y  = pinpos.y + dy

      // Box an exakter seitenabsoluter Position
      absolute-place(dx: note-x, dy: box-y)[
        #block(width: note-w, inset: (x: 4pt, y: 3pt),
               stroke: 0.6pt + rgb("#8b0000"), radius: 2pt,
               fill: rgb("#fff5f5"))[
          #text(size: 6.5pt, fill: rgb("#8b0000"))[#content]
        ]
      ]

      // Verbindungslinie vom Pin zur Box
      absolute-place(dx: 0pt, dy: 0pt)[
        #line(
          start: (pinpos.x, pinpos.y + 4pt),
          end:   (note-x + note-w + 2pt, box-y + 7pt),
          stroke: 0.8pt + rgb("#8b0000"),
        )
      ]
    }
  }
}
```

### Verwendung

```typst
// record-pin statt pin() überall dort, wo die y-Position später gebraucht wird
Zur Zeit von #record-pin(1)*Reza Shah*#record-pin(2) gab es mehrere Kriege.

#pinit-highlight(1, 2, fill: rgb(139, 0, 0, 30), radius: 2pt)
#box()
#randnotiz((1, 2), note-x: 5pt, note-w: 100pt)[Krieg 1941]
#randnotiz((1, 2), note-x: 5pt, note-w: 100pt, dy: 36pt)[Besatzung 1941–46]
```

### Größenreferenz (4 cm linker Rand)

- 4 cm ≈ 113pt linker Randbereich
- `note-x: 5pt, note-w: 100pt` → Box von x=5 bis x=105pt, 8pt Abstand zum Textbereich
- Gestapelte Notizen: `dy` jeweils um ~36pt erhöhen

## 6. Radial-Showcase Learnings (Praxis, verifiziert)

Die Arbeit an `test/pinit-radial.typ` hat einige robuste Muster geliefert, die in echten Layouts sofort helfen:

1. **Recipe B für stabile Endpunkte (entkoppelt):**
  Label mit `#pinit-place` setzen, Pfeil separat mit leerem Body `[]` zeichnen. So bleibt der Label-Ort stabil, wenn nur Pfeillänge/Winkel geändert werden.

2. **Länge sauber steuern (ohne Label-Drift):**
  Für längere/kürzere Pfeile nur den Pfeil-Offset ändern (bzw. eigene Distanz-Variable wie `o-long`, `od-short`), nicht die Labelbox selbst verschieben.

3. **Elbow/Shelf-Callout ohne Lücke:**
  Bei kombinierten Formen (`pinit-point-from` + `line()`):
  Startpunkt der `line()` muss exakt der Pfeil-Tail-Koordinate entsprechen.
  Praktisch heißt das: gemeinsamer Eckpunkt in absoluten Koordinaten, `body-dx: 0pt`, `body-dy: 0pt` im Pinit-Teil.

4. **Seitenfeste Zielpunkte (z.B. rechte obere Ecke):**
  Wenn der Pfeil auf eine absolute Seitenposition zeigen soll, Pin selbst absolut setzen (oder absolute Zielkoordinate rechnen) und Offsets explizit aus Geometrie berechnen:
  `off-dx = anchor-x - pin-x`, `off-dy = anchor-y - pin-y`.

5. **Near-Edge Clipping vermeiden:**
  Bei Targets an der Blattkante die Spitze minimal zurückziehen (`pin-dx/pin-dy` um 2–4pt), damit die Pfeilspitze nicht abgeschnitten wirkt.

6. **Konsistentes Label-Maß für reproduzierbare Mathematik:**
  Wenn Pfeile auf Label-Mitte oder Label-Unterkante zeigen sollen, Label-Höhe explizit setzen (`height: ...`) statt nur `inset` zu benutzen. Das macht `off-dy` berechenbar und stabil.

## 7. Checkliste für Troubleshooting

Wenn Pinit nicht das tut, was du willst, prüfe diese Liste in Reihenfolge:

1.  **Pfeil ist an einem völlig verwirrten Ort auf dem Dokument?** \
    Fehlt die Leerzeile vorher oder das `#box()` nachher?
2.  **Pfeilspitze schneidet in das markierte Wort oben rein?** \
    Passe `pin-dy` an (z.B. `pin-dy: 5pt` oder `10pt`), um die Nadel etwas abzusenken.
3.  **Pfeil durchkreuzt die Annotation (den Erklärungstext)?** \
    Zwei Ursachen möglich:
    *   Du hast kein `#block(inset: ...)` verwendet.
    *   Dein Pfeil wächst genau von dort heraus, wo der Text steht. Platziere den Ankerpunkt des Pfeils mittels `body-dx`/`body-dy` so, dass er am Rand des Textblocks ansetzt, nicht in dessen Mitte.
4.  **Der Text taucht gar nicht auf oder überlappt den normalen Absatz massiv?** \
    *Die Mentale Falle hat zugeschnappt!* Du hast wahrscheinlich `offset-dx/dy` massiv hochgesetzt, in dem Versuch, den Text weit wegzuschieben. Reduziere die Werte! Behalte den Text nah am Pin und lass stattdessen den Pfeil (`body`) sanft dorthin wandern.
5.  **Das Layout sprengt die Seite / ragt in tieferliegende Container?** \
    Pinit verbraucht keinen physischen Platz im Dokumentfluss. Wenn du eine Annotation unterhalb zeichnest, baue mit `#v(4em)` manuell Platz dafür ein, sonst ignoriert die nächste Überschrift deine Zeichnung völlig.
6.  **`#pinit-point-to` macht Probleme beim Anchor-Alignment?** \
    `#pinit-point-to` zielt vom "leeren Raum" auf den Pin. Das ist oft schwieriger berechenbar als `#pinit-point-from`, wo der Text der klare Anker ist. Wenn `point-to` nicht klappt, benutze `point-from` – es ist weitaus robuster im Umgang mit Textblöcken.
7.  **Pinit in Code-Blöcken ignoriert Pins?** \
    Syntax-Highlighting bricht Pins. Es wird ein regulärer Ausdruck benötigt, um die Pins *vor* dem Highlighting zu evaluieren. (Siehe Code-Beispiel in Phase 3).
8.  **Offset-Mathematik stimmt laut Debug-Koordinaten, aber Box landet trotzdem am falschen x?** \
    Die Dokumentation behauptet, `offset-dx` in `pinit-point-from` sei seitenabsolut – das ist **falsch** (verifiziert). Der Wert ist Pin-relativ. Für absolute x-Positionierung → Recipe C (Abschnitt 5).
9.  **Box-Position driftet bei jedem Text-Edit, weil der Pin an anderen x-Stellen landet?** \
    Recipe C (Abschnitt 5). Die Box-x ist dort vollständig unabhängig von der Pin-x.
