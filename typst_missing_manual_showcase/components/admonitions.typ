// components/admonitions.typ
#import "../styles/theme.typ": palette, space, type

// Bausteine für didaktische Kästen.
// Ziel: Im Fließtext schreibst du #note[...] und bekommst stets saubere Gestaltung.

#let _box(title, color, body) = {
  block(
    inset: (x: space.lg, y: space.md),
    radius: 8pt,
    fill: palette.paper,
    stroke: (paint: color, thickness: 1pt),
  )[
    #set text(size: type.small)
    #text(weight: 800, fill: color)[#title]
    #v(space.sm)
    #set text(size: type.body, fill: palette.ink)
    #body
  ]
}

#let note(body) = _box("Merke", palette.info, body)
#let tip(body) = _box("Praxis-Tipp", palette.good, body)
#let warn(body) = _box("Achtung", palette.warn, body)
#let redflag(body) = _box("Red Flag", palette.bad, body)

#let checklist(title: "Checkliste", items) = _box(title, palette.accent, items)
