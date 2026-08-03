// Form Lab Pass S (d-wave) — Anaphylaxie · synthesis from matrix winners (omit-is-win)
// Winners: danger C-band · recognition R · action C-ladder · mimic T/C · boundary type · case R
// Mount only SR PASS rasters · no FAIL · no a/b/c reuse · V omitted where R/type stronger

#import "/packages/bookkit/lib.typ": *

#set document(title: "Anaphylaxie — Form Lab Pass S (d-wave)", author: "form-lab/anaphylaxie-2026-08-d/S")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Anaphylaxie · Form Lab d · Pass S · Synthesis], [omit-is-win · SR PASS])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [wave-d · best-of · lab-learning], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.3pt)
#set par(leading: 0.55em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 13.5pt, weight: "bold", fill: palette.primary-dark)
  block(below: 3pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 9.5pt, weight: "bold", fill: palette.primary)
  block(below: 3pt, above: 6pt)[
    #it.body
    #v(1pt)
    #line(length: 16mm, stroke: 1pt + palette.primary)
  ]
}

#let asset(name) = "/domains/medical/assets/form-lab/anaphylaxie-2026-08-d/R/" + name

#let kachel(file, cap, h: 28mm) = block(
  width: 100%,
  inset: 3pt,
  radius: 2pt,
  stroke: 0.4pt + palette.border,
)[
  #align(center)[#image(asset(file), width: 100%, height: h, fit: "cover")]
  #v(1.5pt)
  #align(center)[#text(size: 5.8pt, fill: palette.text-muted, font: fonts.sans)[#cap]]
]

#let panel(title, body, bar: palette.primary, fill: rgb("#f0fdfa")) = block(
  width: 100%,
  inset: (left: 8pt, rest: 5pt),
  radius: 2pt,
  fill: fill,
  stroke: (left: 3pt + bar, rest: 0.35pt + bar.lighten(45%)),
)[
  #text(size: 7.4pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
  #v(1.5pt)
  #set text(size: 7.3pt)
  #body
]

#let ladder-cell(code, title, bar, body) = block(
  width: 100%,
  radius: 2pt,
  clip: true,
  stroke: 0.4pt + bar.lighten(25%),
)[
  #block(width: 100%, fill: bar, inset: (x: 3pt, y: 4pt))[
    #align(center)[#text(size: 8.5pt, weight: "bold", fill: white, font: fonts.sans)[#code]]
  ]
  #block(width: 100%, inset: 4pt, fill: bar.lighten(92%), height: 26mm)[
    #text(size: 6.8pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
    #v(1pt)
    #set text(size: 6.5pt)
    #body
  ]
]

= Anaphylaxie und schwere allergische Reaktion

#text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)[
  Pass S (d): Matrix-Gewinner · *omit* V wo R/type gewinnt · chrome Action · type mimics
]

#v(2pt)
#block(
  width: 100%,
  inset: 7pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 4pt + palette.danger),
)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  Atemwegs- oder Kreislaufzeichen, progredientes Angioödem oder rapider Mehrorgan-Verlauf → *sofort 112*. Keine manuelle Enge-Abklärung. Kein medikamentöses Eigenprotokoll.
]

== Erkennung (Raster-Gewinner)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  kachel("kachel-urticaria.jpg", [Urtikaria · Quaddeln]),
  kachel("kachel-flush.jpg", [Flush · Systemik-Cue]),
  kachel("kachel-face-angio.jpg", [Lippen · Angioödem]),
  kachel("kachel-autoinjector-upright.jpg", [Autoinjektor · Support]),
)

== Wann · Mimic (Type/Chrome)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  panel("WER / Trigger", [Bekannte Allergie; Exposition (Stich/Nahrung/Med/Latex); Asthma; Autoinjektor mit.], fill: rgb("#f0fdfa")),
  panel("„Nur Quaddeln“", [Kann systemisch sein. Atemwege + Kreislauf *aktiv* screenen.], bar: palette.danger, fill: rgb("#fef2f2")),
  panel("„Panik / Asthma“", [Schwellung/Stridor/Kreislauf zuerst. Mehrorgan → 112-Pfad.], bar: rgb("#c2410c"), fill: rgb("#fff7ed")),
  panel("„MSK-Enge“", [Keine manuelle Enge-Abklärung nach Exposition / mit Begleitsymptomen.], bar: rgb("#c2410c"), fill: rgb("#fff7ed")),
)

== Action (Chrome-Leiter)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  ladder-cell("STOP", "Sofort abbrechen", palette.danger, [Sitzung beenden. Keine Belastung, keine manuelle Enge-Abklärung. Minuten zählen.]),
  ladder-cell("112", "Notruf jetzt", rgb("#b91c1c"), [Atemweg · Kreislauf · Progredienz · Mehrorgan · Allergie+Exposition+Dynamik.]),
  ladder-cell("LAG", "Lagerung · BLS", rgb("#c2410c"), [Notfalllagerung. BLS bei Bedarf. Überwachen bis RD.]),
  ladder-cell("Epi+", "Autoinjektor+", rgb("#0f766e"), [Nur *patienteneigen*, verordnet, Anwendung bekannt. Kein Eigenprotokoll.]),
)

#v(4pt)
#grid(
  columns: (0.4fr, 0.6fr),
  column-gutter: 6pt,
  kachel("kachel-call-112.jpg", [Notruf · Hände + Hörer], h: 36mm),
  block(
    width: 100%,
    inset: 6pt,
    radius: 2pt,
    fill: rgb("#f8fafc"),
    stroke: 0.4pt + palette.border,
  )[
    #text(size: 7.6pt, weight: "bold", font: fonts.sans, fill: palette.primary-dark)[Mini-Fall · 34 J. Nussallergie + Kloßgefühl]
    #v(2pt)
    #set text(size: 7.5pt)
    Müsliriegel · Kloßgefühl · Heiserkeit · Lippenschwellung · will Nacken lösen. \
    *Vordergrund:* Atemwegs-Triage. *Stop:* manuelle Enge-Abklärung. *Schritt:* 112 · Lagerung · Autoinjektor-Support.
    #v(3pt)
    #text(size: 7.2pt, fill: palette.danger, weight: "bold")[
      Biphasisch möglich nach Besserung · ärztliche Beobachtung · kein „weiterbehandeln und nach Hause“.
    ]
  ],
)

#v(3pt)
#align(center)[
  #text(size: 6.6pt, fill: palette.text-muted, font: fonts.sans)[
    S = C danger/Action + R recognition + type mimics · V omitted (omit-is-win) · wave-d
  ]
]
