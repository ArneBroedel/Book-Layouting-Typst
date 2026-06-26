# Plan: Seitengestaltung & Hintergrund

Status: **Implementierung abgeschlossen & verifiziert.** Offen: Harvest-Gate (siehe unten).

## Phasen

### Phase 1 — Theme-Token ✅
- `part-colors` (Teil I–VI, geordnete Liste) und Demo-Verläufe (`wash`/`radial`/`conic`) in
  `src/styles/theme.typ`.

### Phase 2 — Komponenten-Modul ✅
- `src/components/page-design.typ` mit allen Helfern (siehe spec.md). Bindungsbewusst über
  `calc.even(here().page())`; alle Stilkonstanten aus `theme.typ`.

### Phase 3 — Showcase-Kapitel ✅
- `src/chapters/23-seitengestaltung.typ`: Farbflächen/Verläufe, durchlaufende Abschnittsflächen,
  Tiling, Wasserzeichen, Full-Bleed, Rand-Farbband, Daumenregister (zwei Seiten zeigen die Staffelung
  Teil VI→Teil III), Rahmen, Eck-Verzierungen. Mit `index[…]`-Markern.

### Phase 4 — Einbindung & Doku ✅
- `src/main.typ`: Teil VII + `#include`. `CLAUDE.md`: Komponenten- und Kapitel-Liste aktualisiert
  (`00`–`23`, Index-Marker 19–23).

### Phase 5 — Verifikation ✅
- `dist/book.pdf` (EXIT 0) und `dist/book-ua.pdf` (`--pdf-standard ua-1`, EXIT 0).
- Im echten A4/`setup-pages()`-Kontext gesichtet: Register staffelt korrekt und spiegelt recto/verso;
  Rand-Band am Außenschnitt; Abschnitts-Hintergrund läuft über Umbruch; Full-Bleed ohne weiße
  Inline-Code-Kästen (Reword).

### Phase 6 — Kreativ-Erweiterung: Experimentelle Seitenkunst ✅
- `src/components/art.typ` (neu): generative Voll-Seiten-Kunst, fast ausschließlich aus reinen
  Typst-Primitiven — `aurora` (radiales Verlaufs-Mesh), `phyllotaxis` (goldener Winkel), `moire`
  (Op-Art), `wave-field` (native `curve`-Interferenz), `mandala` (radiale Symmetrie), `mondrian`
  (Neo-Plastizismus), `type-poster` (Verlaufstypografie), `guilloche` (parametrische Rosette),
  `kaleidoscope` (gespiegelte SVG); `art-page`-Wrapper + eigene knallige `art-colors`/`spectrum`.
- `src/chapters/24-kunststuecke.typ` (neu): künstlerisches Interludium, in Teil VII eingebunden.
- Gotchas bestätigt: `curve` hat kein `closed`-Argument → `curve.close()`; CeTZ-`canvas` zentriert
  in `place` unzuverlässig → Eigenkoordinaten via `layout(size)`; `scale`-Flip-Kacheln verlieren ihren
  Anker → radiale Rotation statt 2×2-Spiegelung; SVG-Bilder in Kunst brauchen `alt` für PDF/UA;
  Inline-`raw` auf dunklem Grund erzeugt weiße Kästen → auf Kunstseiten meiden.

### Phase 7 — Harvest-Gate ✅
- **`typst-writer` §20** ergänzt: Page-Design-/Hintergrund-Muster (background/foreground-Ebenen,
  `breakable`-Fill für durchlaufende Flächen, bindungsbewusste Randelemente via `calc.even(here().page())`,
  Daumenregister-Pattern mit `counter(heading).at()`-Gotcha, „`set page` beginnt neue Seite",
  Inline-Code-auf-dunkel-Gotcha) und generative Kunst (`layout(size)`-Eigenkoordinaten,
  `curve.close()` statt `closed`-Arg, CeTZ-`canvas`-Zentrierung meiden, radiale Rotation statt
  `scale`-Flip-Kacheln, `alt` für Kunst-SVGs/PDF-UA).
- **`Guides/Working_With_Typst-Theory_To_Practice.md`** → neuer Abschnitt „Page design, backgrounds &
  generative art (devtrack: page-design)" mit dem Langform-Narrativ.

## Harvested into
- `.github/skills/typst-writer/SKILL.md` → **§20 — Harvested Gotchas: Page Design, Backgrounds &
  Generative Art**.
- `Guides/Working_With_Typst-Theory_To_Practice.md` → **Lessons harvested from devtracks (2026) → Page
  design, backgrounds & generative art**.
