# Plan: Bildintegration & Text-Bild-Fluss

Siehe [spec.md](spec.md). Status: **umgesetzt & verifiziert** (Build + UA-1
grün, alle Komponenten visuell im A4-Kontext geprüft).

## Schritte

1. **Recherche** — Typst-Universe + lokale Paketdaten ausgewertet; Hybrid aus
   `wrap-it` / `meander` / `subpar` + Eigenentwicklungen festgelegt. ✅
2. **Pakete verifiziert** — `wrap-it:0.1.1`, `meander:0.4.4`, `subpar:0.2.2`
   lösen unter Typst 0.15 auf. `magnifying-glass:0.1.0` und `i-figured` als
   inkompatibel/konfliktär verworfen → durch Eigenlösungen ersetzt. ✅
3. **Assets** — vier reproduzierbare SVG-Schemata unter
   `src/assets/anatomy/` (`neuron`, `heart-schema`, `nephron`, `cell`). ✅
4. **Komponentenmodul** — `src/components/figures.typ` mit `plate`,
   `wrap-figure`, `kontur-figur`, `bildtafel`, `anatomie-figur`,
   `bild-detail`, `setup-figure-numbering` (alle tokengebunden). ✅
5. **Kapitel** — `src/chapters/22-bildintegration.typ`, in `main.typ`
   (Teil VI, nach Kap. 21) eingebunden; endet mit `#section-break()`. ✅
6. **Verifikation** — Standard- und `--pdf-standard ua-1`-Build fehlerfrei;
   Seiten einzeln gerendert und geprüft. ✅

## Gelöste Fallstricke

- **Bildpfade**: `image()` löst relativ zu `figures.typ` auf → Aufrufer
  übergeben wurzel-absolute Pfade `/src/assets/…`.
- **meander + Caption**: Caption nicht ins Hindernis legen, sonst fließt Text
  in die ausgeschnittene Kontur → `kontur-figur` umschließt den ganzen
  Fließbereich als Figure, Caption sitzt darunter.
- **subpar + i-figured**: i-figured renummeriert auch Teilbilder → (b)(d)
  statt (a)(b). Lösung: Kapitelnummerierung nativ über `set figure(numbering:
  …)` + Counter-Reset je Kapitel; `bildtafel` reicht eine kapitel-bewusste
  `numbering`-Funktion an die subpar-Überfigur durch.
- **magnifying-glass**: nutzt veraltete `scale()`-Signatur → unter Typst 0.15
  Laufzeitfehler. `bild-detail` selbst gebaut über `box(radius: 50%, clip:
  true)` + Verbindungslinie.

## Feedback-Runde (visuell nachgeschärft)

- **wrap-figure — Bild blieb zu klein (eigentlicher Bug)**: Ursache war
  NICHT das Seitenverhältnis, sondern die Breitenauflösung. Die alte
  Implementierung steckte das Bild als `image(width: 100%)` in eine
  rahmenlose Box und umgab es mit `box(width: 46%)`. Das `100%` bezog sich
  auf die innere, breitenlose Box → das Bild fiel auf seine natürliche
  Größe zurück, der 46-%-Anteil blieb wirkungslos (im Standalone-Test griff
  zufällig ein anderer Kontext, im A4-Buch nicht). **Fix**: `width` (Anteil
  oder Länge) via `layout(size => …)` gegen die tatsächliche Textbreite in
  eine absolute Länge auflösen und direkt an `image(width: …)` geben —
  deterministisch und kontextunabhängig. Begleitend entstand das
  quadratischere `neuron-compact.svg` (410:360) für den Wrap-Fall; das
  lineare `neuron.svg` bleibt für Atlas-Figur und Lupe (Marker-/
  Fokus-Koordinaten darauf abgestimmt).
- **kontur-figur (rund)**: graue Rechteckkontur entfernt — Zell-SVG auf
  transparenten Hintergrund + nahezu kreisförmige Form umgestellt, Rahmen
  via `frame: auto` bei `round` ausgeblendet. Neuer Modus `side: center`
  rückt das Bild in die Seitenmitte und führt den Text in zwei Spalten
  beidseitig um die runde Kontur (klassischer „circle-hole"); damit
  verschwindet auch das in die obere rechte Ecke gerutschte Einzelwort.

## Mögliche Erweiterungen (offen, nicht eingeplant)

- `wrap-top-bottom` (mehrere Bilder im selben Absatz) als weitere Variante.
- Index-Marker (`in-dexter`) gezielter über die Bildbegriffe streuen.
- Echte Raster-Beispielbilder (Foto/Histologie) als zusätzliche Assets.
