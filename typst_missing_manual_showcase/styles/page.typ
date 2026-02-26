// styles/page.typ
#import "theme.typ": palette, type

// Seiten-Setup: A4 in mm, saubere Ränder, Header/Footer.
// Du kannst hier später leicht auf 17x24cm, A5, US Letter usw. wechseln.

#let setup-pages() = {
  set page(
    paper: "a4",
    margin: (
      top: 20mm,
      bottom: 22mm,
      inside: 22mm,
      outside: 18mm,
    ),
    // Seitenzahlen unten, dezente Kopfzeile oben
    header: context [
      #set text(size: type.small, fill: palette.muted)
      #let is-even = calc.even(here().page())

      // Context-aware chapter title
      #let headings = query(selector(heading.where(level: 1)).before(here()))
      #let chapter-title = if headings.len() > 0 {
        headings.last().body
      } else {
        [Typst Showcase]
      }

      #align(if is-even { left } else { right })[
        #if is-even {
          [Clinical Reasoning · HP Physio]
        } else {
          chapter-title
        }
      ]
      #v(-0.5em)
      #line(length: 100%, stroke: (paint: palette.border, thickness: 0.5pt))
    ],
    footer: context [
      #set text(size: type.small, fill: palette.muted)
      #let is-even = calc.even(here().page())
      #align(if is-even { left } else { right })[#counter(page).display()]
    ],
  )

  // Seitenhintergrund (weiß) – hier könntest du auch leichte Raster/Guides aktivieren.
  set page(fill: palette.paper)
}
