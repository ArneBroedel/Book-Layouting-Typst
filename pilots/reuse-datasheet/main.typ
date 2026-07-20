// Reuse pilot — technical datasheet (NON-medical domain)
// Built with bookkit foundation only + custom brand colors in content.
#import "/packages/bookkit/lib.typ": *

#set document(
  title: "SensorHub X200 — Technical Datasheet",
  author: "Reuse Pilot",
)

#show: setup-typography()
#show: setup-pages()

// Brand accent via named args (configurability proof — not medical teal boxes)
#let brand = rgb("#1a56db")

#align(center)[
  #block(
    width: 100%,
    fill: brand,
    inset: (x: 16pt, y: 20pt),
    radius: 4pt,
    {
      text(size: 22pt, weight: "bold", fill: white, font: fonts.sans)[SensorHub X200]
      v(6pt)
      text(size: 11pt, fill: white.darken(5%), font: fonts.sans)[Industrial IoT gateway — Technical datasheet]
    },
  )
]

#v(12pt)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 8pt,
  card(accent: brand)[*SKU* \ SH-X200-ETH],
  card(accent: brand)[*Rev* \ 2.4 / 2026-07],
  card(accent: brand)[*Temp* \ −40…+85 °C],
)

= Overview

The SensorHub X200 aggregates up to 32 industrial sensors over Modbus RTU/TCP and
streams metrics via MQTT 5.0. This datasheet was produced _without_ medical
showcase chapters — only the foundation package and layout skills.

#callout(title: [Scope], tone: "info")[
  Domain: industrial electronics. Skills: `typst-writer` + `bookkit`. No
  `bookkit-didactics` import.
]

= Electrical characteristics

#styled-table(
  columns: (2fr, 1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold")[Parameter],
    text(fill: white, weight: "bold")[Min],
    text(fill: white, weight: "bold")[Typ],
    text(fill: white, weight: "bold")[Max],
  ),
  [Supply voltage], [18 V], [24 V], [30 V],
  [Idle current], [—], [85 mA], [120 mA],
  [Ethernet (active)], [—], [210 mA], [280 mA],
  [Digital I/O sink], [—], [—], [200 mA],
)

= Interfaces

#feature-grid(
  (
    (icon: [ eth ], title: [Ethernet], body: [1× 10/100 BASE-T, RJ45, PoE-ready hardware (software flag)]),
    (icon: [ rs ], title: [Serial], body: [2× RS-485 isolated, 9600–115200 baud]),
    (icon: [ io ], title: [IO], body: [8× DI, 4× DO open-drain]),
    (icon: [ usb ], title: [USB], body: [1× USB-C console (CDC ACM)]),
  ),
  column-count: 2,
)

= Mechanical

#sidebar-layout(
  [
    Enclosure IP40 ABS. Mounting: DIN rail 35 mm. Mass: 185 g.
    Connectors are pluggable terminal blocks (3.5 mm pitch).
  ],
  sidebar: card(accent: brand, title: [Outline])[
    W × H × D: 100 × 90 × 58 mm \
    Screw torque: 0.5 N·m max
  ],
)

= Compliance checklist

#key-concept[CE (EMC), RoHS 3, REACH — declarations on request.]

#styled-table(
  columns: (1fr, 2fr),
  table.header(
    text(fill: white, weight: "bold")[Standard],
    text(fill: white, weight: "bold")[Status],
  ),
  [EN 61000-6-2], [Designed for industrial immunity],
  [EN 61000-6-4], [Emissions class A],
  [IEC 61131-2], [I/O levels compatible],
)

#pagebreak()

= Integration notes

#pull-quote[Prefer package APIs over copying studio chapters.]

#code-block[
```bash
bookkit build --root pilots/reuse-datasheet --entry main.typ
```
]

== MQTT topic map

- `plant/{id}/telemetry` — JSON metrics 1 Hz
- `plant/{id}/cmd` — sparse commands
- `plant/{id}/status` — LWT online/offline

== Ordering

| Pack | Contents |
|------|----------|
| X200-BASE | Gateway + DIN clip |
| X200-KIT | BASE + 2× RS-485 dongle + quickstart |

#badge(color: brand)[pilot] #tag(color: brand)[non-medical] #kbd[bookkit]
