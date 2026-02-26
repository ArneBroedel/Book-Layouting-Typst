// components/learning.typ
#import "../styles/theme.typ": space, type
#import "admonitions.typ": checklist, note

#let learning-goals(..items) = note([
  #set text(size: type.body)
  #text(weight: 600)[Lernziele nach diesem Abschnitt:]
  #v(space.md)
  #set list(marker: "▪", spacing: space.md)
  #for it in items.pos() { it }
])

#let knowledge-check(title: "Knowledge Check", ..qs) = checklist(
  title: title,
  [
    #set list(marker: "□")
    #for q in qs.pos() { [- #q] }
  ],
)
