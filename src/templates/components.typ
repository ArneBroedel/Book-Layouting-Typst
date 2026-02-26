#import "theme.typ": callout_spacing

#let callout(title, content) = block(
  inset: 10pt,
  outset: (top: callout_spacing, bottom: callout_spacing),
  stroke: 0.5pt,
  radius: 3pt,
)[
  #set text(weight: "bold")
  #title
  #v(4pt)
  #set text(weight: "regular")
  #content
]

#let clinical_pearl(content) = callout([Clinical Pearl], content)
#let red_flag(content) = callout([Red Flag], content)
