// components/figures.typ
#import "../styles/theme.typ": palette, space, type

#let fig(img, caption: none, width: 100%) = {
  figure(
    block(
      width: width,
      fill: palette.paper,
      radius: 6pt,
      stroke: (paint: palette.muted, thickness: 0.6pt),
      inset: 8pt,
    )[
      #image(img, width: 100%)
    ],
    caption: caption,
  )
}

#show figure.caption: it => [
  #set text(size: type.small, fill: palette.muted)
  #set par(leading: 1.2em)
  #v(space.md)
  #it
]
