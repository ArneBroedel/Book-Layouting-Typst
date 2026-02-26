// components/learning.typ
#import "../styles/theme.typ": palette, space, type
#import "admonitions.typ": note, tip, checklist

#let learning-goals(..items) = note([
  #set text(size: type.body)
  *Lernziele (nach diesem Abschnitt kannst du …)*
  #v(space.sm)
  #set list(marker: "•")
  ..items
])

#let knowledge-check(title: "Knowledge Check", ..qs) = checklist(title: title, [
  #set list(marker: "□")
  ..qs
])
