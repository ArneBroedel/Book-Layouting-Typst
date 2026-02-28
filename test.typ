#import "@preview/pinit:0.2.2": *
#set page(width: 600pt, height: 400pt)
#align(center)[
  #text(size: 16pt)[Warnhinweis: Die Einnahme von #pin(1)Macrolid-Antibiotika#pin(2) ist zu überwachen.]
]
#pinit-highlight(1, 2)
#pinit-point-from((1, 2), body-dx: 120pt, body-dy: 100pt)[
  #text(size: 16pt)[Kontraindikation! CYP3A4-Interaktion.]
]
