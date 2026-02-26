// components/figures.typ
#import "../styles/theme.typ": palette, space, type

#let fig(img, caption: none, label: none, width: 100%) = {
  figure(
    image(img, width: width),
    caption: caption,
  )
}

#show figure.caption: it => [
  #set text(size: type.small, fill: palette.muted)
  #it
]
