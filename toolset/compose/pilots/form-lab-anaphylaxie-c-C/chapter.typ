// Form Lab Pass C (c-wave) — Anaphylaxie · Color / Chrome / simple forms
// lab: anaphylaxie-2026-08-c · pin: chapter-v-12-anaphylaxie.md
// ALLOW: semantic color, bars, bands, cards, TIME stack · DENY: free-vision heroes, large SVG systems

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Anaphylaxie — Form Lab Pass C (c-wave)", author: "form-lab/anaphylaxie-2026-08-c/C")
#set page(
  paper: "a4",
  margin: (inside: 16mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Anaphylaxie · Form Lab c · Pass C (Color/Chrome)], [112 · Mehrorgan · Autoinjektor])
    line(length: 100%, stroke: 0.4pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [Form Lab · chrome extreme · wave c], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.5pt, fill: palette.text-body)
#set par(leading: 0.54em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 14.5pt, weight: "bold", fill: palette.primary-dark)
  block(below: 4pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10.5pt, weight: "bold", fill: palette.primary)
  block(below: 4pt, above: 7pt)[
    #it.body
    #v(1.5pt)
    #line(length: 22mm, stroke: 1.1pt + palette.primary)
  ]
}

#let danger-band(body) = block(
  width: 100%,
  inset: 7pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger, rest: 0.45pt + palette.danger.lighten(40%)),
)[
  #set text(size: 8.2pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  #body
]

#let soft-card(title, body, fill: rgb("#f8fafc"), stroke-c: none, title-fill: none) = {
  let sc = if stroke-c == none { palette.border } else { stroke-c }
  let tf = if title-fill == none { palette.primary } else { title-fill }
  block(width: 100%, inset: 5.5pt, radius: 2pt, fill: fill, stroke: 0.4pt + sc)[
    #text(size: 7.8pt, weight: "bold", fill: tf, font: fonts.sans)[#title]
    #v(2pt)
    #set text(size: 7.3pt)
    #body
  ]
}

#let time-tier(code, title, bar, fill, body) = block(
  width: 100%,
  inset: 0pt,
  radius: 2pt,
  clip: true,
  stroke: 0.45pt + bar.lighten(30%),
)[
  #grid(
    columns: (20mm, 1fr),
    block(width: 100%, fill: bar, inset: (x: 3pt, y: 7pt))[
      #align(center)[
        #text(size: 8.5pt, weight: "bold", fill: white, font: fonts.sans)[#code]
      ]
    ],
    block(width: 100%, fill: fill, inset: 6pt)[
      #text(size: 7.8pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
      #v(1.5pt)
      #set text(size: 7.2pt)
      #body
    ],
  )
]

#let mimic-row(frame, danger) = block(
  width: 100%,
  inset: 5pt,
  radius: 2pt,
  stroke: 0.4pt + palette.border,
  fill: white,
)[
  #grid(
    columns: (42mm, 8mm, 1fr),
    column-gutter: 2pt,
    align(horizon)[#text(size: 7.2pt)[#frame]],
    align(center + horizon)[#text(size: 11pt, fill: palette.danger, weight: "bold")[→]],
    align(horizon)[#text(size: 7.2pt, weight: "bold", fill: palette.danger)[#danger]],
  )
]

= Anaphylaxie und schwere allergische Reaktion

#text(size: 8.2pt, fill: palette.text-muted, font: fonts.sans)[
  Flush, Enge, „Panik“ maskieren den Notfall · Pass C: Color / Chrome
]

#v(3pt)
#danger-band[Atemwegs- oder Kreislaufzeichen, progredientes Angioödem oder rapider Mehrorgan-Verlauf → *sofort 112*. Keine PT, keine manuelle „Enge-Abklärung“, kein medikamentöses Eigenprotokoll.]

== Big Picture

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  soft-card(
    [Was ist es?],
    [Akute systemische Überempfindlichkeitsreaktion — Minuten bis Stunden nach Exposition. Haut, Atemwege, Kreislauf, GI kombiniert möglich.],
    fill: rgb("#f0fdfa"),
    stroke-c: palette.primary.lighten(30%),
  ),
  soft-card(
    [Gefahr Fehllabel],
    [„Nur Quaddeln“, „Panik“, „Asthma-Schub“ oder „HWS-Enge“ ohne Atem-/Kreislauf-Screen → Unter-Triage.],
    fill: rgb("#fef2f2"),
    stroke-c: palette.danger.lighten(40%),
    title-fill: palette.danger,
  ),
  soft-card(
    [HP-Kette],
    [*Erkennen → Stopp → 112 → Lagerung/BLS → Autoinjektor-Support* (patienteneigen). Keine i.m./i.v. Eigenkompetenz.],
    fill: rgb("#f8fafc"),
  ),
)

== Mehrorgan-Kaskade

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  soft-card(
    [#fa-icon("hand-dots", solid: true, size: 7.5pt)  Haut],
    [Urtikaria, Flush, Pruritus, Angioödem. *Fehlen kutaner Zeichen schließt schwere Reaktion nicht aus.*],
    fill: rgb("#fff7ed"),
    stroke-c: palette.warning.lighten(30%),
    title-fill: palette.warning.darken(10%),
  ),
  soft-card(
    [#fa-icon("lungs", solid: true, size: 7.5pt)  Atemwege],
    [Dyspnoe, Giemen, Stridor, Zunge/Rachen, Heiserkeit, kloßige Sprache, Schluckstörung.],
    fill: rgb("#fef2f2"),
    stroke-c: palette.danger.lighten(40%),
    title-fill: palette.danger,
  ),
  soft-card(
    [#fa-icon("heart-pulse", solid: true, size: 7.5pt)  Kreislauf],
    [Tachykardie, Hypotonie, Schwindel, Synkope, Schock.],
    fill: rgb("#fef2f2"),
    stroke-c: palette.danger.lighten(40%),
    title-fill: palette.danger,
  ),
  soft-card(
    [#fa-icon("notes-medical", solid: true, size: 7.5pt)  GI],
    [Übelkeit, Erbrechen, Koliken, Diarrhö — im Verbund mit Haut/Atem handlungsleitend.],
    fill: rgb("#f0fdfa"),
    stroke-c: palette.primary.lighten(30%),
  ),
)

#v(3pt)
#block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#fff7ed"),
  stroke: (left: 3.5pt + palette.warning, rest: 0.4pt + palette.warning.lighten(35%)),
)[
  #set text(size: 7.6pt)
  #text(weight: "bold", fill: palette.warning.darken(15%))[#fa-icon("clock-rotate-left", solid: true, size: 7.5pt)  Biphasisch (ca. 6–24 h)]
  #h(4pt)
  Nach initialer Besserung erneute Verschlechterung möglich. Initiale Besserung ersetzt *keine* Beobachtung — kein „weiterbehandeln und nach Hause“ bei Verdacht.
]

== 1. Wann ist daran zu denken?

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  soft-card([#fa-icon("bug", solid: true, size: 7pt)  Trigger], [Nahrung, Insektengift, Medikamente, Latex; belastungsassoziierte Anaphylaxie.]),
  soft-card([#fa-icon("user", solid: true, size: 7pt)  Kontext], [Bekannte schwere Allergie; Autoinjektor?; Beta-Blocker/ACE-Hemmer (Kontext).]),
  soft-card([#fa-icon("bolt", solid: true, size: 7pt)  Dynamik], [Minuten bis wenige Stunden; progredient; Mehrorgan.]),
)

== 2. Entstehung (kurz)

#block(
  width: 100%,
  inset: (left: 8pt, rest: 6pt),
  radius: 2pt,
  fill: rgb("#f0fdfa"),
  stroke: (left: 3.5pt + palette.primary, rest: 0.4pt + palette.primary.lighten(35%)),
)[
  #text(size: 7.8pt, weight: "bold", fill: palette.primary, font: fonts.sans)[Mediator → Vasodilatation / Obstruktion]
  #v(2pt)
  #set text(size: 7.3pt)
  Allergen → Mediatorfreisetzung → Kapillarleck, Flush, Ödem → Bronchokonstriktion + obere Atemwegsschwellung → Hypoxie-/Schockrisiko. *Direktzugang:* Erkennen → Stopp → 112 — nicht „erst Ursache klären“.
]

== 3. Handlungskette

#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  column-gutter: 3.5pt,
  soft-card([1 Stopp], [Sitzung abbrechen · keine Belastung], fill: rgb("#fef2f2"), stroke-c: palette.danger.lighten(40%), title-fill: palette.danger),
  soft-card([2 · 112], [Notruf *sofort* bei Atem/Kreislauf/Progredienz], fill: rgb("#fef2f2"), stroke-c: palette.danger.lighten(40%), title-fill: palette.danger),
  soft-card([3 Lagerung], [Je Lage; Schock flach · Beine hoch (wenn möglich)], fill: rgb("#fff7ed"), stroke-c: palette.warning.lighten(30%), title-fill: palette.warning.darken(10%)),
  soft-card([4 Autoinjektor], [Nur *patienteneigen*, verordnet, Anwendung bekannt], fill: rgb("#f0fdfa"), stroke-c: palette.primary.lighten(30%)),
  soft-card([5 Überwachen], [BLS bei Bedarf · Dynamik beobachten], fill: rgb("#f8fafc")),
)

== 4. Trügerische Erklärungen → Gefahr

#mimic-row([„Nur Quaddeln / Haut“], [Atemwege + Kreislauf screenen; generalisierte Urtikaria kann systemisch sein])
#v(2.5pt)
#mimic-row([„Panik / Hyperventilation“], [Erst Schwellung, Stridor, Kreislauf prüfen — keine psychische Entwarnung])
#v(2.5pt)
#mimic-row([„Asthma-Schub“], [Allergen + Mehrorgan → Anaphylaxie-Notfallpfad (*112*)])
#v(2.5pt)
#mimic-row([„HWS-/BWS-Blockade“], [Enge nach Exposition + Begleitsymptome ≠ manuelle Freigabe])

== 5. TIME / Dringlichkeit

#time-tier(
  [112],
  [Atemweg · Kreislauf · Progredienz · Mehrorgan],
  palette.danger,
  rgb("#fef2f2"),
  [Atemnot, Stridor, Zungenschwellung, Kloß/Heiserkeit; Kollaps/Schock; Urtikaria + GI *und* Atem; schwere Allergie + Exposition + Progredienz. \
  *Handlung:* Stopp · *112* · Lagerung · Autoinjektor-Support · überwachen · BLS.],
)
#v(3pt)
#time-tier(
  [NA],
  [Gleichtags ärztlich — *ohne* 112-Kriterien],
  rgb("#c2410c"),
  rgb("#fff7ed"),
  [Milde *nicht* progressive Beschwerden; isolierte stabile Haut; unklare Allergie. Keine PT als Abwarten. Bei Verschlechterung *sofort 112*.],
)
#v(3pt)
#time-tier(
  [PT],
  [Erst nach Klärung],
  palette.primary,
  rgb("#f0fdfa"),
  [Keine vermutete akute Allergie als PT-Primärindikation. PT erst nach ärztlicher Klärung und ohne Red Flags.],
)

#v(3pt)
#block(
  width: 100%,
  inset: (x: 7pt, y: 6pt),
  fill: white,
  stroke: 0.9pt + palette.text-muted,
)[
  #text(size: 7.5pt, weight: "bold", fill: palette.text-muted, tracking: 0.3pt, font: fonts.sans)[#upper[Grenze der eigenen Zuständigkeit]]
  #v(2pt)
  #set text(size: 7.2pt)
  Kein medikamentöses Eskalationsprotokoll; keine i.m./i.v. Notfallmedikation aus eigener Kompetenz; Autoinjektor nur *patienteneigen*. Fokus: Screening, 112, BLS, Support.
]

#block(breakable: false)[
  == 6. Fall zur Selbstprüfung

  #block(inset: 6pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 7.8pt, weight: "bold", font: fonts.sans)[Situation]
    #v(2pt)
    #text(size: 7.3pt)[
      34 J., HWS-Fortsetzung. Vor 20 min Kaffee + Müsliriegel; seit 10 min Juckreiz am Hals, Flush-Gefühl, „Kloßgefühl“, leichte Heiserkeit. Unruhig, Lippen leicht geschwollen. Nussallergie, Autoinjektor „irgendwo in der Tasche“. Bittet, „kurz den Nacken zu lösen“.
    ]
    #v(4pt)
    #grid(
      columns: (1fr, 1fr, 1fr),
      column-gutter: 5pt,
      soft-card([Vordergrund], [Allergen + Kloß/Heiserkeit/Lippenödem → *112*, nicht Nacken lösen.], fill: rgb("#fef2f2"), stroke-c: palette.danger.lighten(40%), title-fill: palette.danger),
      soft-card([Kontraindiziert], [HWS-Mobilisation, fortgesetzte PT, Belastung, Eigenmedikation.], fill: rgb("#fff7ed"), stroke-c: palette.warning.lighten(30%), title-fill: palette.warning.darken(10%)),
      soft-card([Nächster Schritt], [Stopp · *112* · Lagerung · Autoinjektor-Support · überwachen.], fill: rgb("#f0fdfa"), stroke-c: palette.primary.lighten(30%)),
    )
  ]
]

#v(4pt)
#align(center)[
  #text(size: 7pt, fill: palette.text-muted, font: fonts.sans)[
    Parent-System V-12 · wave c · chrome extreme · claims pinned to monograph
  ]
]
