#import "theme.typ": page_margin, base_text_size

#let book(body, title: none, subtitle: none, author: none) = {
  set page(margin: page_margin)
  set text(size: base_text_size)
  set par(justify: true)

  align(center)[
    #set text(size: 22pt, weight: "bold")
    #title
    #if subtitle != none [
      #v(8pt)
      #set text(size: 12pt)
      #subtitle
    ]
    #if author != none [
      #v(14pt)
      #set text(size: 10pt)
      #author
    ]
  ]

  pagebreak()
  body
}
