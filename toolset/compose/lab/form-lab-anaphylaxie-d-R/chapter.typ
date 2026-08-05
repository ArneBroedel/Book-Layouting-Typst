// Form Lab Pass R (d-wave) — Anaphylaxie · many small raster Kacheln
// lab: anaphylaxie-2026-08-d · pin: chapter-v-12-anaphylaxie.md
// ALLOW: multiple free-vision aspects · DENY: mega-infographic · mount only SR PASS

#import "/packages/bookkit/lib.typ": *

#set document(title: "Anaphylaxie — Form Lab Pass R (d-wave)", author: "form-lab/anaphylaxie-2026-08-d/R")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Anaphylaxie · Form Lab d · Pass R · Raster-Kacheln], [SR PASS only])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [wave-d · raster extreme · lab-learning], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.4pt)
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

#let kachel(file, cap) = block(
  width: 100%,
  inset: 3pt,
  radius: 2pt,
  stroke: 0.4pt + palette.border,
  fill: white,
)[
  #align(center)[
    #image(asset(file), width: 100%, height: 30mm, fit: "cover")
  ]
  #v(2pt)
  #align(center)[
    #set text(size: 5.9pt, fill: palette.text-muted, font: fonts.sans)
    #cap
  ]
]

#let danger-band(body) = block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger),
)[
  #set text(size: 7.8pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr: ]
  #body
]

= Anaphylaxie und schwere allergische Reaktion

#text(size: 7.6pt, fill: palette.text-muted, font: fonts.sans)[
  Pass R (d): viele *kleine* Raster-Kacheln · ein Aspekt pro Job · Claims im Typst · kein Mega-Poster
]

#v(2pt)
#danger-band[
  Atemweg / Kreislauf / Progredienz / Mehrorgan → *sofort 112*. Keine manuelle Enge-Abklärung. Kein medikamentöses Eigenprotokoll.
]

== Erkennung — Haut & Schleimhaut (Kacheln)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  kachel("kachel-urticaria.jpg", [Urtikaria · Quaddel-Ringe]),
  kachel("kachel-wheal-scatter.jpg", [Quaddel-Feld · Arm]),
  kachel("kachel-flush.jpg", [Flush · Gesicht/Hals]),
  kachel("kachel-face-angio.jpg", [Lippen · Angioödem-Gestalt]),
)

== Action · Gerät · Notruf

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  kachel("kachel-autoinjector.jpg", [Autoinjektor · liegend · Gerät]),
  kachel("kachel-autoinjector-upright.jpg", [Autoinjektor · stehend · Support]),
  kachel("kachel-emergency-context.jpg", [Notkit + Telefon · Kontext]),
  kachel("kachel-call-112.jpg", [Notruf wählen · Hände + Hörer]),
)

== Klinik & Action-Kette (Text trägt Claims)

#grid(
  columns: (1.05fr, 0.95fr),
  column-gutter: 7pt,
  [
    #set text(size: 7.6pt)
    *Wann denken:* bekannte Allergie, Exposition (Stich/Nahrung/Med/Latex), Asthma, Autoinjektor mit. \
    *Mehrorgan:* Haut · Atem · Kreislauf · GI — Progredienz handlungsleitend. \
    *Trügerisch:* „nur Quaddeln“ · „Panik“ · „Asthma“ · „MSK-Enge“ entwarnen *nicht*. \
    *Biphasisch:* nach Besserung erneute Verschlechterung möglich → ärztliche Beobachtung.
  ],
  block(
    width: 100%,
    radius: 2pt,
    stroke: 0.4pt + palette.border,
    inset: 0pt,
    clip: true,
  )[
    #table(
      columns: (16mm, 1fr),
      stroke: (x: none, y: 0.35pt + palette.border),
      inset: 4pt,
      fill: (_, y) => if y == 0 { rgb("#fef2f2") } else if y == 1 { rgb("#fee2e2") } else if y == 2 { rgb("#fff7ed") } else { rgb("#ecfdf5") },
      text(weight: "bold", size: 7.1pt, fill: palette.danger)[STOP], text(size: 7.0pt)[Sitzung beenden · keine Belastung · keine Enge-Mobilisation],
      text(weight: "bold", size: 7.1pt, fill: rgb("#b91c1c"))[112], text(size: 7.0pt)[Atemweg · Kreislauf · Progredienz · Mehrorgan],
      text(weight: "bold", size: 7.1pt, fill: rgb("#c2410c"))[LAG], text(size: 7.0pt)[Notfalllagerung · BLS bei Bedarf · bis RD],
      text(weight: "bold", size: 7.1pt, fill: rgb("#0f766e"))[Epi+], text(size: 7.0pt)[Nur patienteneigener Autoinjektor · bekannt],
    )
  ],
)

#v(3pt)
#block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger),
)[
  #text(size: 7.5pt, weight: "bold", fill: palette.danger)[Grenze bis Ausschluss]
  #v(1pt)
  #text(size: 7.4pt)[Kein medikamentöses Eskalationsprotokoll durch HP/Physio · Autoinjektor nur patienteneigen · keine manuelle „Enge-Abklärung“ an Hals/Thorax · keine fortgesetzte PT.]
]

== Mini-Fall

#grid(
  columns: (0.36fr, 0.64fr),
  column-gutter: 6pt,
  kachel("kachel-face-angio.jpg", [Fall · Lippen + Kloß-Kontext]),
  block(
    width: 100%,
    inset: 6pt,
    radius: 2pt,
    fill: rgb("#f8fafc"),
    stroke: 0.4pt + palette.border,
  )[
    #set text(size: 7.6pt)
    *34 J.* · Nussallergie · Müsliriegel · Kloßgefühl · Heiserkeit · Lippenschwellung · will Nacken lösen. \
    *Vordergrund:* Atemwegs-Triage. *Kontraindiziert:* manuelle Enge-Abklärung. *Schritt:* 112 · Lagerung · Autoinjektor-Support.
  ],
)

#v(3pt)
#align(center)[
  #text(size: 6.8pt, fill: palette.text-muted, font: fonts.sans)[
    8 Kacheln · alle SR PASS · wave-d / R · neue Gens only · 8–12 budget
  ]
]
