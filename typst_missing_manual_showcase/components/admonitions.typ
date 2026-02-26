// components/admonitions.typ
#import "../styles/theme.typ": palette, space, type

// Bausteine für didaktische Kästen.
// Ziel: Im Fließtext schreibst du #note[...] und bekommst stets saubere Gestaltung.

#let _box(title, color, bg-color, body) = {
  block(
    inset: (x: space.lg, y: space.md),
    radius: 8pt,
    fill: bg-color,
    stroke: (paint: color, thickness: 1.2pt),
  )[
    #set text(size: type.small)
    #text(weight: 900, fill: color, size: 10pt)[#title]
    #v(space.md)
    #set text(size: type.body, fill: palette.ink)
    #set par(leading: 1.25em)
    #body
  ]
}

#let note(body) = _box("Merke", palette.info, palette.info-light, body)
#let tip(body) = _box("Praxis-Tipp", palette.good, palette.good-light, body)
#let warn(body) = _box("Achtung", palette.warn, palette.warn-light, body)
#let redflag(body) = _box("Red Flag", palette.bad, palette.bad-light, body)

#let checklist(title: "Checkliste", items) = _box(title, palette.accent, palette.accent-light, [
  #set list(marker: "□")
  #items
])
