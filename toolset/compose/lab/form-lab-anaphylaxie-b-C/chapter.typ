// Form Lab Pass C — Anaphylaxie · Color / Chrome (full unit)
// lab: anaphylaxie-2026-08-b · pin: chapter-v-12-anaphylaxie.md

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Anaphylaxie — Form Lab Pass C", author: "form-lab/anaphylaxie-2026-08-b/C")
#set page(
  paper: "a4",
  margin: (inside: 18mm, outside: 15mm, top: 12mm, bottom: 13mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Anaphylaxie · Form Lab · Pass C (Color/Chrome)], [112 · Mehrorgan · Autoinjektor])
    line(length: 100%, stroke: 0.4pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(3pt)
    grid(columns: (1fr, auto), [Form Lab · medium extreme], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 9pt, fill: palette.text-body)
#set par(leading: 0.62em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 15pt, weight: "bold", fill: palette.primary-dark)
  block(below: 5pt, above: 0pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 11pt, weight: "bold", fill: palette.primary)
  block(below: 4pt, above: 8pt)[
    #it.body
    #v(1.5pt)
    #line(length: 24mm, stroke: 1.2pt + palette.primary)
  ]
}

#let danger-band(body) = block(
  width: 100%, inset: 8pt, radius: 2pt, fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger, rest: 0.45pt + palette.danger.lighten(40%)),
)[
  #set text(size: 8.5pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  #body
]

#let soft-card(title, body, fill: rgb("#f8fafc"), stroke-c: none, title-fill: none) = {
  let sc = if stroke-c == none { palette.border } else { stroke-c }
  let tf = if title-fill == none { palette.primary } else { title-fill }
  block(width: 100%, inset: 6.5pt, radius: 2pt, fill: fill, stroke: 0.4pt + sc)[
    #text(size: 8pt, weight: "bold", fill: tf)[#title]
    #v(2.5pt)
    #set text(size: 7.5pt)
    #body
  ]
}

#let time-tier(code: "", title: "", bar: palette.danger, fill: rgb("#fef2f2"), solid-header: false, action: [], triggers: none) = {
  if solid-header {
    block(width: 100%, radius: 3pt, clip: true, stroke: 0.6pt + bar)[
      #block(width: 100%, fill: bar, inset: 7pt)[
        #set text(fill: white)
        #grid(columns: (auto, 1fr), column-gutter: 6pt,
          align(horizon)[#box(fill: white, inset: (x: 5pt, y: 2pt), radius: 2pt, text(size: 8pt, weight: "bold", fill: bar)[#code])],
          align(horizon)[#text(size: 9pt, weight: "bold")[#title]],
        )
        #v(3pt)
        #set text(size: 7.5pt)
        #text(weight: "bold")[Handlung: ] #action
      ]
      #if triggers != none {
        block(width: 100%, fill: fill, inset: 7pt)[
          #set text(size: 7.2pt)
          #triggers
        ]
      }
    ]
  } else {
    block(width: 100%, inset: (left: 9pt, rest: 6.5pt), radius: 2pt, fill: fill,
      stroke: (left: 4pt + bar, rest: 0.5pt + bar.lighten(45%)))[
      #grid(columns: (auto, 1fr), column-gutter: 6pt,
        align(horizon)[#box(fill: bar, inset: (x: 5pt, y: 2pt), radius: 2pt, text(size: 7.5pt, weight: "bold", fill: white)[#code])],
        [
          #text(size: 8.5pt, weight: "bold", fill: bar)[#title]
          #v(2pt)
          #set text(size: 7.3pt)
          #text(weight: "bold")[Handlung: ] #action
          #if triggers != none {
            v(3pt)
            set text(size: 7.1pt)
            triggers
          }
        ],
      )
    ]
  }
}

#let scope-frame(body) = {
  v(2pt)
  line(length: 100%, stroke: 0.9pt + palette.border)
  v(5pt)
  block(width: 100%, inset: (x: 8pt, y: 7pt), fill: white, stroke: 0.9pt + palette.text-muted)[
    #text(size: 8pt, weight: "bold", fill: palette.text-muted, tracking: 0.4pt)[#upper[Grenze der eigenen Zuständigkeit]]
    #v(3pt)
    #set text(size: 7.3pt)
    #body
  ]
}

#let mimic-row(frame, danger) = block(
  width: 100%, inset: 5.5pt, radius: 2pt, stroke: 0.45pt + palette.border, fill: white,
)[
  #grid(columns: (44mm, 10mm, 1fr), column-gutter: 3pt,
    align(horizon)[#text(size: 7.5pt)[#frame]],
    align(center + horizon)[#text(size: 12pt, fill: palette.danger, weight: "bold")[→]],
    align(horizon)[#text(size: 7.5pt, weight: "bold", fill: palette.danger)[#danger]],
  )
]

= Anaphylaxie — systemische Notfallreaktion im Direktzugang

#text(size: 9pt, fill: palette.text-muted, font: fonts.sans)[
  Atemweg · Kreislauf · Mehrorgan · Pass C: Color / Chrome
]

#v(5pt)
#danger-band[Atemwegs- oder Kreislaufzeichen, rapides Angioödem oder Mehrorgan + Dynamik → *sofort 112*. Keine PT, keine manuelle „Enge-Abklärung“, kein medikamentöses Eigenprotokoll.]

== Big Picture

#grid(columns: (1fr, 1fr, 1fr), column-gutter: 5pt,
  soft-card([Was ist es?], [Akute systemische Überempfindlichkeitsreaktion — Minuten bis Stunden nach Exposition. Haut, Atemwege, Kreislauf, GI können kombiniert betroffen sein.], fill: rgb("#f0fdfa"), stroke-c: palette.primary.lighten(30%)),
  soft-card([Gefahr Fehllabel], [„Nur Quaddeln“, „Panik“, „Asthma-Schub“ oder „HWS-Enge“ ohne Atemwegs-/Kreislauf-Screen → Unter-Triage.], fill: rgb("#fef2f2"), stroke-c: palette.danger.lighten(40%), title-fill: palette.danger),
  soft-card([HP-Kette], [*Erkennen → Stopp → 112 → Lagerung/BLS → Autoinjektor-Support* (patienteneigen). Keine i.m./i.v. Eigenkompetenz.], fill: rgb("#f8fafc")),
)

== Mehrorgan-Kaskade — Erkennungscluster

#grid(columns: (1fr, 1fr, 1fr, 1fr), column-gutter: 4pt,
  soft-card([#fa-icon("hand-dots", solid: true, size: 8pt)  Haut], [Urtikaria, Flush, Pruritus, Angioödem. *Fehlen kutaner Zeichen schließt schwere Reaktion nicht aus.*], fill: rgb("#fff7ed"), stroke-c: palette.warning.lighten(30%), title-fill: palette.warning.darken(10%)),
  soft-card([#fa-icon("lungs", solid: true, size: 8pt)  Atemwege], [Dyspnoe, Giemen, Stridor, Zunge/Rachen, Heiserkeit, kloßige Sprache, Schluckstörung.], fill: rgb("#fef2f2"), stroke-c: palette.danger.lighten(40%), title-fill: palette.danger),
  soft-card([#fa-icon("heart-pulse", solid: true, size: 8pt)  Kreislauf], [Tachykardie, Hypotonie, Schwindel, Synkope, Schock.], fill: rgb("#fef2f2"), stroke-c: palette.danger.lighten(40%), title-fill: palette.danger),
  soft-card([#fa-icon("notes-medical", solid: true, size: 8pt)  GI], [Übelkeit, Erbrechen, Koliken, Diarrhö — besonders im Verbund mit Haut/Atem.], fill: rgb("#f0fdfa"), stroke-c: palette.primary.lighten(30%)),
)

#v(4pt)
#block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#fff7ed"),
  stroke: (left: 3.5pt + palette.warning, rest: 0.4pt + palette.warning.lighten(35%)))[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.warning.darken(15%))[#fa-icon("clock-rotate-left", solid: true, size: 8pt)  Biphasisch (ca. 6–24 h)]
  #v(2pt)
  #text(size: 7.5pt)[Nach initialer Besserung erneute Verschlechterung möglich. Initiale Besserung ersetzt *keine* Beobachtung — kein „weiterbehandeln und nach Hause“ bei Verdacht.]
]

== 1. Wann ist daran zu denken?

#grid(columns: (1fr, 1fr, 1fr), column-gutter: 5pt,
  soft-card([#fa-icon("bug", solid: true, size: 7.5pt)  Trigger], [Nahrung, Insektengift, Medikamente, Latex; belastungsassoziierte Anaphylaxie.]),
  soft-card([#fa-icon("user", solid: true, size: 7.5pt)  Kontext], [Bekannte schwere Allergie; Autoinjektor vorhanden?; Beta-Blocker/ACE-Hemmer (Kontext).]),
  soft-card([#fa-icon("bolt", solid: true, size: 7.5pt)  Dynamik], [Minuten bis wenige Stunden; progredient; Mehrorgan.]),
)

== 2. Entstehung und Mechanismus

#block(width: 100%, inset: (left: 9pt, rest: 7pt), radius: 2pt, fill: rgb("#f0fdfa"),
  stroke: (left: 3.5pt + palette.primary, rest: 0.4pt + palette.primary.lighten(35%)))[
  #text(size: 8pt, weight: "bold", fill: palette.primary)[Mediator → Vasodilatation / Obstruktion]
  #v(3pt)
  #set text(size: 7.5pt)
  Allergenkontakt → Mediatorfreisetzung → Kapillarleck, Flush, Ödem → Bronchokonstriktion und obere Atemwegsschwellung → Hypoxie-/Schockrisiko. *Direktzugang:* Erkennen → Stopp → 112 — nicht „erst Ursache klären“.
]

== 3. Handlungskette (Aktion)

#grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 3.5pt,
  soft-card([1 Stopp], [Sitzung abbrechen · keine Belastung], fill: rgb("#fef2f2"), stroke-c: palette.danger.lighten(40%), title-fill: palette.danger),
  soft-card([2 · 112], [Notruf *sofort* bei Atem/Kreislauf/Progredienz], fill: rgb("#fef2f2"), stroke-c: palette.danger.lighten(40%), title-fill: palette.danger),
  soft-card([3 Lagerung], [Je Lage; bei Schock flach · Beine hoch (wenn möglich)], fill: rgb("#fff7ed"), stroke-c: palette.warning.lighten(30%), title-fill: palette.warning.darken(10%)),
  soft-card([4 Autoinjektor], [Nur *patienteneigen*, verordnet, Anwendung bekannt], fill: rgb("#f0fdfa"), stroke-c: palette.primary.lighten(30%)),
  soft-card([5 Überwachen], [BLS bei Bedarf · Dynamik beobachten], fill: rgb("#f8fafc")),
)

#v(4pt)
#grid(columns: (1fr, 1fr), column-gutter: 5pt, row-gutter: 5pt,
  soft-card([#fa-icon("comments", solid: true, size: 7pt)  Anamnese], [Trigger letzte Minuten–Stunden? Atemnot, Kloß, Schwindel? Juckreiz/Schwellung? Bekannte Allergie / Autoinjektor?]),
  soft-card([#fa-icon("eye", solid: true, size: 7pt)  Beobachtung], [Haut/Schleimhaut; Atmung (Stridor/Giemen); Kreislauf/Bewusstsein — *ohne* Notruf zu verzögern.]),
)

== 4. Verdacht, Abgrenzung, trügerische Erklärungen

#block(breakable: false, width: 100%)[
  #grid(columns: (1fr, 1fr), column-gutter: 6pt,
    soft-card([Erhärtet den Verdacht], list(
      [Allergenbezug + Dynamik],
      [≥1 System kritisch (Atemwege/Kreislauf)],
      [Mehrorgan (Haut + Atem + GI)],
      [Bekannte schwere Allergie + Exposition + Progredienz],
    ), fill: rgb("#f0fdfa"), stroke-c: palette.primary.lighten(30%)),
    soft-card([Nicht übersehen], list(
      [Fehlende Hautzeichen bei schwerer Reaktion],
      [ACE-Hemmer-Angioödem (oft ohne Urtikaria)],
      [Biphasische zweite Welle 6–24 h],
      [Belastungsassoziierte Anaphylaxie],
    ), fill: rgb("#fef2f2"), stroke-c: palette.danger.lighten(40%), title-fill: palette.danger),
  )
]

#v(4pt)
#text(size: 9pt, weight: "bold", fill: palette.danger)[Trügerische Erklärungen]
#v(3pt)
#stack(spacing: 2.5pt,
  mimic-row([„Nur Quaddeln“], [Generalisierte Urtikaria kann Vorläufer/Teil systemischer Reaktion sein]),
  mimic-row([„Panik / Hyperventilation“], [Erst Schwellung, Stridor, Kreislauf prüfen]),
  mimic-row([„Asthma-Schub“], [Allergen + Mehrorgan → Anaphylaxie-Notfallpfad]),
  mimic-row([„HWS-/BWS-Blockade“], [Enge nach Exposition + Schwellung/Juckreiz/Schwindel ≠ manuelle Freigabe]),
)

== 5. Handeln und Dringlichkeit (TIME)

#stack(spacing: 3pt,
  time-tier(
    code: "112", title: "Sofort — Notfall", bar: palette.danger, fill: rgb("#fef2f2"), solid-header: true,
    action: [Stopp · *112* · Lagerung · keine Belastung · Autoinjektor-Support (patienteneigen) · überwachen · BLS bei Bedarf.],
    triggers: list(
      [Atemwegszeichen (Stridor, Zunge, Kloß, Schluckstörung) oder Kreislauf (Kollaps, Hypotonie, Schock)],
      [Urtikaria + GI *und* respiratorisch; schwere Allergie + Exposition + Progredienz],
      [Rapides Angioödem / Mehrorgan],
    ),
  ),
  time-tier(
    code: "NA", title: "Gleichtags Arzt (ohne 112-Kriterien)", bar: palette.warning, fill: rgb("#fff7ed"),
    action: [Keine PT als Abwarten · ärztlich vorstellen · bei Verschlechterung *sofort 112* · biphasisch nicht allein häuslich riskieren.],
    triggers: list(
      [Milde *nicht* progressive Beschwerden],
      [Isolierte stabile Hautreaktion ohne Atem/Kreislauf],
      [Unklare Allergie *ohne* 112-Kriterien],
    ),
  ),
  time-tier(
    code: "Beh.", title: "Behandeln — erst nach Klärung", bar: palette.primary, fill: rgb("#f0fdfa"),
    action: [Zuerst ambulant ärztlich abklären · PT erst nach Klärung und ohne Red Flags.],
    triggers: list([*Keine* akute Allergie als PT-Primärindikation]),
  ),
)

#scope-frame[
  Kein medikamentöses Eskalationsprotokoll durch HP/Physio; keine i.m./i.v. Notfallmedikation aus eigener Kompetenz. Autoinjektor nur *patienteneigen*, verordnet, Anwendung bekannt. Fokus: Screening · 112 · BLS · Autoinjektor-Support.
]


== 6. Fall zur Selbstprüfung

#block(width: 100%, inset: 6.5pt, radius: 2pt, fill: rgb("#f8fafc"),
  stroke: (left: 3.5pt + palette.primary, rest: 0.45pt + palette.border))[
  #set text(size: 8.2pt)
  #text(weight: "bold", fill: palette.primary)[Situation: ]
  34 J., HWS-Fortsetzung. Vor 20 min Nahrung; seit 10 min Juckreiz, Flush, Kloß, Heiserkeit, Lippenödem. Nussallergie, Autoinjektor „in der Tasche“. Will Nacken lösen.
]

#v(3pt)
#grid(columns: (1fr, 1fr, 1fr), column-gutter: 5pt,
  soft-card([(1) Vordergrund?], [Allergen + Kloß/Heiserkeit/Lippen = Anaphylaxie bis Ausschluss → *112*.], fill: rgb("#fef2f2"), stroke-c: palette.danger.lighten(40%), title-fill: palette.danger),
  soft-card([(2) Kontraindiziert?], [HWS-Mobilisation, fortgesetzte PT, Eigenprotokoll.], fill: rgb("#fff7ed"), stroke-c: palette.warning.lighten(30%), title-fill: palette.warning.darken(10%)),
  soft-card([(3) Sicherer Schritt?], [Stopp · *112* · Lagerung · Autoinjektor-Support · überwachen.], fill: rgb("#f0fdfa"), stroke-c: palette.primary.lighten(30%)),
)

== DDx-Minimal

#table(
  columns: (38mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 4.5pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else if y == 1 or y == 2 { rgb("#fef2f2") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Eher …*], [*Diskriminierende Unterschiede*],
  [*Anaphylaxie*], [Allergen, Dynamik, kritisch ≥1 System oder Mehrorgan → *112*],
  [*Anaphylaktischer Schock*], [Hypotonie/Kollaps im allergischen Kontext → *112* + BLS],
  [Asthmaexazerbation], [Bei Allergen + Mehrorgan: Anaphylaxie-Pfad],
  [ACE-Hemmer-Angioödem], [Oft ohne Urtikaria; Atemwegsbedrohung → *112*],
  [Panikattacke], [Erst Schwellung/Stridor/Kreislauf prüfen],
  [Lokale Urtikaria], [Stabil, isoliert, ohne Dynamik — gleichtags ärztlich],
)

#v(3pt)
#grid(columns: (1fr, 1fr, 1fr, 1fr), column-gutter: 4pt,
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: (top: 3pt + palette.danger))[
    #set text(size: 7.2pt)
    #text(weight: "bold", fill: palette.danger)[112] · Atem / Kreislauf
  ],
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#fff7ed"), stroke: (top: 3pt + palette.warning))[
    #set text(size: 7.2pt)
    #text(weight: "bold", fill: palette.warning.darken(12%))[Kette] · Stopp→112→Support
  ],
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: (top: 3pt + palette.primary-light))[
    #set text(size: 7.2pt)
    #text(weight: "bold", fill: palette.primary)[Mimic] · „Nur Quaddeln“ stop
  ],
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#f0fdfa"), stroke: (top: 3pt + palette.primary))[
    #set text(size: 7.2pt)
    #text(weight: "bold", fill: palette.primary-dark)[Grenze] · Kein Eigenprotokoll
  ],
)
#v(3pt)
#block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#f0fdfa"),
  stroke: (left: 3.5pt + palette.primary, rest: 0.4pt + palette.primary.lighten(35%)))[
  #set text(size: 7.6pt)
  #text(weight: "bold", fill: palette.primary)[Direktzugang-Merksatz: ]
  Atemweg/Kreislauf/Progredienz → *112* · Mehrorgan screenen · Autoinjektor nur patienteneigen · biphasisch mitdenken.
]
#v(2pt)
#align(center)[
  #text(size: 7.5pt, fill: palette.text-muted)[
    Form Lab Pass C · medium: color/chrome · claims pinned · not production Accept
  ]
]

