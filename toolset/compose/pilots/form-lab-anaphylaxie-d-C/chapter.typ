// Form Lab Pass C (d-wave) — Anaphylaxie · Color / Chrome / simple forms
// lab: anaphylaxie-2026-08-d · pin: chapter-v-12-anaphylaxie.md
// ALLOW: semantic color, bars, bands, cards, TIME chrome · DENY: free-vision heroes, large SVG systems

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Anaphylaxie — Form Lab Pass C (d-wave)", author: "form-lab/anaphylaxie-2026-08-d/C")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 10mm, bottom: 11mm),
  numbering: "1",
  header: context {
    set text(size: 7pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Anaphylaxie · Form Lab d · Pass C · Color/Chrome], [Atemweg/Kreislauf → 112])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.3pt + palette.border)
    v(1.5pt)
    grid(columns: (1fr, auto), [wave-d · chrome extreme · lab-learning], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.2pt, fill: palette.text-body)
#set par(leading: 0.52em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 13.5pt, weight: "bold", fill: palette.primary-dark)
  block(below: 3pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 9.2pt, weight: "bold", fill: palette.primary)
  block(below: 3pt, above: 5.5pt)[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 5pt,
      align(horizon)[
        #box(width: 2.8pt, height: 9pt, fill: palette.primary, radius: 1pt)
      ],
      it.body,
    )
  ]
}

#let chip(label, fill, fg) = box(
  fill: fill,
  inset: (x: 6pt, y: 3pt),
  radius: 10pt,
  stroke: 0.4pt + fg.lighten(35%),
)[
  #text(size: 7.2pt, weight: "bold", fill: fg, font: fonts.sans)[#label]
]

#let panel(title, body, bar: palette.primary, fill: rgb("#f0fdfa")) = block(
  width: 100%,
  inset: (left: 7pt, rest: 4.5pt),
  radius: 2pt,
  fill: fill,
  stroke: (left: 2.8pt + bar, rest: 0.35pt + bar.lighten(50%)),
)[
  #text(size: 7.2pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
  #v(1.5pt)
  #set text(size: 7pt)
  #body
]

#let danger-band(body) = block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
)[
  #set text(size: 7.8pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  #body
]

#let ladder-cell(code, title, bar, body) = block(
  width: 100%,
  radius: 2pt,
  clip: true,
  stroke: 0.4pt + bar.lighten(25%),
)[
  #block(width: 100%, fill: bar, inset: (x: 3pt, y: 3.5pt))[
    #align(center)[
      #text(size: 8.5pt, weight: "bold", fill: white, font: fonts.sans)[#code]
    ]
  ]
  #block(width: 100%, inset: 3.5pt, fill: bar.lighten(92%), height: 24mm)[
    #text(size: 6.5pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
    #v(1pt)
    #set text(size: 6.2pt)
    #body
  ]
]

#let peel(title, body) = block(
  width: 100%,
  inset: (left: 7pt, rest: 4pt),
  radius: 2pt,
  fill: rgb("#fff7ed"),
  stroke: (left: 2.5pt + rgb("#c2410c"), rest: 0.3pt + rgb("#fdba74")),
)[
  #text(size: 7.1pt, weight: "bold", fill: rgb("#c2410c"), font: fonts.sans)[#title]
  #v(1pt)
  #set text(size: 6.8pt)
  #body
]

// ── Title ─────────────────────────────────────────────────────
= Anaphylaxie und schwere allergische Reaktion

#text(size: 8pt, fill: palette.text-muted, font: fonts.sans)[
  Pass C (d): Color · Chrome · TIME/Action-Leiter · Mimic-Peel · ohne free-vision
]

#v(2pt)
#danger-band[
  Atemwegs- oder Kreislaufzeichen, progredientes Angioödem oder rapider Mehrorgan-Verlauf → *sofort 112*. Keine PT, keine manuelle „Enge-Abklärung“, kein medikamentöses Eigenprotokoll.
]

#v(3pt)
#grid(
  columns: (auto, auto, auto, auto, 1fr),
  column-gutter: 4pt,
  chip("Minuten", rgb("#ecfeff"), palette.primary-dark),
  chip("Haut·Atem·Kreislauf·GI", rgb("#f0fdfa"), palette.primary),
  chip("Stopp→112→Lagerung→Epi", rgb("#fef2f2"), palette.danger),
  chip("Biphasisch möglich", rgb("#fff7ed"), rgb("#c2410c")),
  [],
)

== Big Picture

#grid(
  columns: (1.2fr, 0.8fr),
  column-gutter: 8pt,
  [
    #set text(size: 8.3pt)
    Anaphylaxie = akute systemische Reaktion (Minuten–wenige Stunden nach Exposition). Direktzugang: *sofortige Triage*, nicht feine Schweregradzuordnung.

    #v(3pt)
    *Unterschätzung* ist die Hauptrisikoquelle: „nur Quaddeln“, „Panik“, „MSK-Enge“. Screenen · abbrechen · 112 · BLS · Autoinjektor-Support — Diagnosesicherung und Notfallmedikation *ärztlich*.
  ],
  panel(
    "Drei Anker",
    [
      *Zeit* — Minuten, Dynamik zählt \
      *Systeme* — Haut · Atem · Kreislauf · GI \
      *Nicht entwarnen* — fehlende Haut / „normale“ Vitalwerte schließen nicht aus
    ],
    bar: palette.primary-dark,
    fill: rgb("#ecfeff"),
  ),
)

== 1. Wann denken?

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  panel("WER · Risiken", [Bekannte Allergien (Gift, Nahrung, Med, Latex); frühere Anaphylaxie; Atopie; Beta-Blocker/ACE als Kontext], fill: rgb("#f0fdfa")),
  panel("WOHER · Kontext", [Asthma; Autoinjektor mit; aktuelle Exposition; Belastung als Trigger], fill: rgb("#f8fafc"), bar: palette.primary),
  panel("WANN · Verlauf", [Rasch nach Exposition; *Progredienz* über Organsysteme handlungsleitend], fill: rgb("#fff7ed"), bar: palette.accent-dark),
)

== 2–3. Mechanismus & Klinik

#grid(
  columns: (0.9fr, 1.1fr),
  column-gutter: 7pt,
  panel(
    "Mechanismus (kurz)",
    [Allergen → Mediatoren → Vasodilatation, Leck, Bronchokonstriktion, Schleimhautödem. Frühe Atemwegs-/Kreislaufzeichen zählen — nicht allergologische Vollklärung.],
    fill: rgb("#f8fafc"),
    bar: palette.text-muted,
  ),
  block(
    width: 100%,
    radius: 3pt,
    stroke: 0.4pt + palette.border,
    clip: true,
  )[
    #table(
      columns: (24mm, 1fr),
      stroke: (x: none, y: 0.35pt + palette.border),
      inset: (x: 5pt, y: 4pt),
      fill: (_, y) => if y == 0 { rgb("#ccfbf1") } else if calc.odd(y) { rgb("#f8fafc") } else { white },
      table.header(
        text(weight: "bold", size: 7.4pt, font: fonts.sans)[Domäne],
        text(weight: "bold", size: 7.4pt, font: fonts.sans)[Merkmale],
      ),
      text(size: 7.4pt, weight: "bold")[Anamnese], text(size: 7.4pt)[Exposition; Autoinjektor; Kloß/Heiserkeit; Schwindel; Quaddeln; GI],
      text(size: 7.4pt, weight: "bold")[Beobachtung], text(size: 7.4pt)[Flush, Urtikaria, Angioödem; Stridor/Giemen; Schockzeichen],
      text(size: 7.4pt, weight: "bold")[Untersuchung], text(size: 7.4pt)[Vital *ohne* Notruf-Verzögerung; *keine* Enge-Mobilisation],
      text(size: 7.4pt, weight: "bold")[Verlauf], text(size: 7.4pt)[Minuten–Stunden; *biphasisch* möglich → ärztliche Beobachtung],
    )
  ],
)

== 4. Mimic-Peel

#grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 4pt,
  peel[„Nur Quaddeln / Haut“][Generalisierte Urtikaria kann systemisch sein. Atemwege und Kreislauf *aktiv* screenen — nicht weiterbehandeln.],
  peel[„Panik / Hyperventilation“][Unruhe und schnelle Atmung kommen bei Anaphylaxie vor. Schwellung, Stridor, Kreislauf zuerst ausschließen.],
  peel[„Asthma-Schub“][Allergenbezug und Mehrorgan → Anaphylaxie-Notfallpfad (*112*), nicht isolierter Asthma-Pfad.],
  peel[„HWS/BWS-Blockade“][Zervikothorakale Enge nach Exposition oder mit Begleitsymptomen = *keine* manuelle Freigabe.],
)

#v(2pt)
#panel(
  "DDx-Minimal",
  [
    *Anaphylaxie* — Allergen + Dynamik + kritischer Atemweg/Kreislauf oder Mehrorgan → *112* ·
    *Lokale Urtikaria* — stabil isoliert → gleichtags Arzt ·
    *Asthma* — bei Mehrorgan: 112-Pfad ·
    *Vasovagal / ACE-Angioödem* — im Zweifel 112 bei Atemwegs-/Allergenkontext
  ],
  fill: rgb("#f0fdfa"),
  bar: palette.primary-dark,
)

== 5. Action / TIME — Leiter

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 5pt,
  ladder-cell(
    "STOP",
    "Sofort abbrechen",
    palette.danger,
    [Sitzung beenden. Keine Belastung, keine manuelle Enge-Abklärung, kein „noch kurz“. Minuten zählen.],
  ),
  ladder-cell(
    "112",
    "Notruf jetzt",
    rgb("#b91c1c"),
    [Atemweg · Kreislauf · Progredienz · Mehrorgan · bekannte schwere Allergie + Exposition + Dynamik. *Sofort* wählen.],
  ),
  ladder-cell(
    "LAG/BLS",
    "Lagerung · BLS",
    rgb("#c2410c"),
    [Notfalllagerung nach Lage/Bewusstsein. Bei Bewusstlosigkeit/Atemstillstand: BLS. Überwachen bis RD.],
  ),
  ladder-cell(
    "Epi+",
    "Autoinjektor-Support",
    rgb("#0f766e"),
    [Nur *patienteneigen*, verordnet, Anwendung bekannt. Kein medikamentöses Eigenprotokoll durch HP/Physio.],
  ),
)

#v(3pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  panel(
    "NA / gleichtags",
    [Milde *nicht* progressive Beschwerden; isolierte stabile Haut ohne Atemwege/Kreislauf. Keine PT als Abwarten. Bei Verschlechterung *sofort 112*.],
    bar: palette.primary,
    fill: rgb("#ecfeff"),
  ),
  panel(
    "Biphasisch",
    [Nach initialer Besserung erneute Verschlechterung möglich (ca. 6–24 h). Ärztliche Beobachtung — nicht „weiterbehandeln und nach Hause“ bei Verdacht.],
    bar: rgb("#c2410c"),
    fill: rgb("#fff7ed"),
  ),
)

#v(3pt)
#block(
  width: 100%,
  inset: 5pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger),
)[
  #text(size: 7.2pt, weight: "bold", fill: palette.danger, font: fonts.sans)[Grenze / absolute Kontraindikationen]
  #h(4pt)
  #text(size: 7pt)[Kein med. Eskalationsprotokoll; Autoinjektor nur patienteneigen. Keine Belastungstests, keine Hals-/Thorax-Mobilisation. Keine fortgesetzte PT bei vermuteter akuter Anaphylaxie.]
]

== 6. Mini-Fall

#block(breakable: false, width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
  #text(size: 7.2pt, weight: "bold", font: fonts.sans, fill: palette.primary-dark)[
    34 J., Nussallergie, Müsliriegel vor 20 Min., Kloßgefühl + Heiserkeit + Lippenschwellung, will „Nacken lösen“
  ]
  #v(2pt)
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 4pt,
    panel("Vordergrund", [Atemwegs-Triage — Allergen + Kloß + Heiserkeit], fill: rgb("#fef2f2"), bar: palette.danger),
    panel("Kontraindiziert", [Nacken lösen · fortgesetzte PT · abwarten], fill: rgb("#fff7ed"), bar: rgb("#c2410c")),
    panel("Nächster Schritt", [Stop → 112 → Lagerung → Autoinjektor-Support], fill: rgb("#ecfdf5"), bar: rgb("#0f766e")),
  )
]

#v(2pt)
#align(center)[
  #text(size: 6.5pt, fill: palette.text-muted, font: fonts.sans)[
    Parent V-12 · Stopp→112→Lagerung/BLS→Autoinjektor · wave-d / C
  ]
]
