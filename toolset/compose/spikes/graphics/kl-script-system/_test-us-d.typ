// Standalone compile of US-D Erysipel dashboard
#import "/packages/bookkit/theme.typ": palette
#import "lib/us-d-dashboard.typ": us-d-erysipel

#set page(width: 180mm, height: auto, margin: (x: 8mm, y: 8mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)

#us-d-erysipel()
