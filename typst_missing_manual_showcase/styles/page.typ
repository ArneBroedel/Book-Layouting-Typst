// styles/page.typ
#import "theme.typ": palette, space, type

// Seiten-Setup: A4 in mm, saubere Ränder, Header/Footer.
// Du kannst hier später leicht auf 17x24cm, A5, US Letter usw. wechseln.

#let setup-pages() = {
  set page(
    paper: "a4",
    margin: (
      top: 20mm,
      bottom: 22mm,
      left: 22mm,
      right: 18mm,
    ),
    // Seitenzahlen unten, dezente Kopfzeile oben
    header: context [
      #set text(size: type.small, fill: palette.muted)
      #align(right)[Clinical Reasoning · HP Physio]
    ],
    footer: context [
      #set text(size: type.small, fill: palette.muted)
      #align(center)[#counter(page).display()]
    ],
  )

  // Seitenhintergrund (weiß) – hier könntest du auch leichte Raster/Guides aktivieren.
  set page(fill: palette.paper)
}
