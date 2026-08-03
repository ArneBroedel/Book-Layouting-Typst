// Form Lab Pass T (c-wave) — Anaphylaxie · Typography + Icons only
// lab: anaphylaxie-2026-08-c · pin: chapter-v-12-anaphylaxie.md (read-only)
// ALLOW: type hierarchy, lists/tables, simple 1-color icons · DENY: panel walls, TIME slabs, free-vision, rich SVG

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Anaphylaxie — Form Lab Pass T (c-wave)", author: "form-lab/anaphylaxie-2026-08-c/T")
#set page(
  paper: "a4",
  margin: (inside: 22mm, outside: 18mm, top: 15mm, bottom: 17mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(
      columns: (1fr, auto),
      [Anaphylaxie · Form Lab c · Pass T (Type+Icon)],
      [112 · Mehrorgan · Autoinjektor],
    )
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(3pt)
    grid(columns: (1fr, auto), [Form Lab · medium extreme · wave c], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.9pt, fill: palette.text-body)
#set par(leading: 0.6em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 16pt, weight: "bold", fill: palette.primary-dark)
  block(below: 6pt, above: 0pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 11pt, weight: "bold", fill: palette.primary)
  block(below: 5pt, above: 11pt)[
    #it.body
    #v(2pt)
    #line(length: 30mm, stroke: 1.05pt + palette.primary)
  ]
}
#show heading.where(level: 3): it => {
  set text(font: fonts.sans, size: 9.5pt, weight: "bold", fill: palette.primary-dark)
  block(below: 3pt, above: 8pt)[#it.body]
}

#let ico(name) = fa-icon(name, solid: true, fill: palette.primary-dark, size: 8.5pt)
#let ico-d(name) = fa-icon(name, solid: true, fill: palette.danger, size: 9.5pt)

#let mark(name, label) = {
  box(baseline: 15%)[#ico(name)]
  h(3pt)
  text(size: 8pt, weight: "bold", fill: palette.primary-dark, font: fonts.sans)[#label]
}

#let danger-line(body) = {
  block(width: 100%, above: 2pt, below: 8pt)[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 8pt,
      align(horizon)[#ico-d("triangle-exclamation")],
      [
        #set text(size: 9pt)
        #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang. ]
        #body
      ],
    )
    #v(3pt)
    #line(length: 100%, stroke: 0.95pt + palette.danger)
  ]
}

#let row-icon(name, title, body) = grid(
  columns: (14pt, 1fr),
  column-gutter: 6pt,
  align(top)[#box(baseline: 0%)[#ico(name)]],
  [
    #text(weight: "bold", font: fonts.sans, size: 8.5pt, fill: palette.primary-dark)[#title]
    #v(1pt)
    #set text(size: 8.5pt)
    #body
  ],
)

// ── Title ─────────────────────────────────────────────────────
= Anaphylaxie und schwere allergische Reaktion

#text(size: 9pt, fill: palette.text-muted, font: fonts.sans)[
  Wenn Flush, Engegefühl oder „Panik“ den Notfall maskieren · Pass T: Typografie + Icons
]

#v(5pt)
#danger-line[Atemwegs- oder Kreislaufzeichen, progredientes Angioödem oder rapider Mehrorgan-Verlauf → *sofort 112*. Keine PT, keine manuelle „Enge-Abklärung“, kein medikamentöses Eigenprotokoll.]

// ── Big Picture ───────────────────────────────────────────────
== Big Picture

*Anaphylaxie* ist eine akute, potenziell lebensbedrohliche systemische Reaktion — typisch innerhalb von Minuten bis wenigen Stunden nach Allergenexposition. Haut, Atemwege, Kreislauf und/oder GI können einzeln oder kombiniert betroffen sein. Im Direktzugang zählt die *sofortige Triage*, nicht die feine Schweregradzuordnung. Auch mild wirkende Beschwerden: jede *Progredienz* oder neu auftretende Atemwegs-/Kreislaufzeichen erfordern *sofort 112*.

HP-Auftrag: Screening, Sitzungsabbruch, Notfalllagerung, *BLS* bei Bedarf und Unterstützung beim *patienteneigenen* Adrenalin-Autoinjektor (verordnet, Anwendung bekannt).

#v(5pt)
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 8pt,
  [
    #mark("hand-dots", "Haut")
    #v(2pt)
    #text(size: 8.5pt)[Urtikaria, Flush, Angioödem — Fehlen schließt schwere Reaktion *nicht* aus.]
  ],
  [
    #mark("lungs", "Atem")
    #v(2pt)
    #text(size: 8.5pt)[Stridor, Kloß, Heiserkeit, Schluckstörung → *112*.]
  ],
  [
    #mark("heart-pulse", "Kreislauf")
    #v(2pt)
    #text(size: 8.5pt)[Hypotonie, Kollaps, Schock.]
  ],
  [
    #mark("notes-medical", "GI")
    #v(2pt)
    #text(size: 8.5pt)[Koliken, Erbrechen — im Verbund handlungsleitend.]
  ],
)

// ── 1 Enabling ────────────────────────────────────────────────
== 1. Wann ist daran zu denken?

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 14pt,
  [
    #text(weight: "bold", font: fonts.sans, size: 8.5pt, fill: palette.primary-dark)[Risiken / Auslöser]
    #v(1pt)
    #text(size: 7.5pt, weight: "bold", font: fonts.sans, fill: palette.primary)[WER / WAS]
    #v(2pt)
    #set text(size: 8.5pt)
    Bekannte Allergien (Insektengift, Nahrung, Arzneimittel, Latex); frühere Anaphylaxie; Atopie; Beta-Blocker / ACE-Hemmer als *Risikokontext*.
  ],
  [
    #text(weight: "bold", font: fonts.sans, size: 8.5pt, fill: palette.primary-dark)[Kontext]
    #v(1pt)
    #text(size: 7.5pt, weight: "bold", font: fonts.sans, fill: palette.primary)[WOHER]
    #v(2pt)
    #set text(size: 8.5pt)
    Asthma; Autoinjektor mitgeführt?; aktuelle Exposition (Stich, Mahlzeit, Medikament, Latex); Anstrengung als Trigger möglich.
  ],
  [
    #text(weight: "bold", font: fonts.sans, size: 8.5pt, fill: palette.primary-dark)[Zeit / Dynamik]
    #v(1pt)
    #text(size: 7.5pt, weight: "bold", font: fonts.sans, fill: palette.primary)[WANN]
    #v(2pt)
    #set text(size: 8.5pt)
    Meist Minuten bis wenige Stunden; progredient über Organsysteme; *Minuten zählen*.
  ],
)

// ── 2 Mechanism ───────────────────────────────────────────────
== 2. Entstehung (kurz)

Allergenkontakt (oder belastungsassoziierter Trigger) → massive Mediatorfreisetzung aus Mastzellen/Basophilen → Vasodilatation und Kapillarleck → Flush, Ödem, relatives Volumenproblem → Bronchokonstriktion und obere Atemwegsschwellung → Hypoxie- und Schockrisiko. Parallel GI-Koliken möglich.

*Direktzugang:* Erkennen → Stopp → 112 — nicht „erst Ursache klären“. *Biphasisch* ca. 6–24 h: initiale Besserung ersetzt keine ärztliche Beobachtung.

// ── 3 Clinical cues ───────────────────────────────────────────
== 3. Klinische Hinweise

#table(
  columns: (28mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border),
  inset: (x: 4pt, y: 5pt),
  align: (left, left),
  table.header(
    text(weight: "bold", font: fonts.sans, size: 8pt)[Domäne],
    text(weight: "bold", font: fonts.sans, size: 8pt)[Erwartbare Merkmale],
  ),
  [*Anamnese*], [Zeitlicher Bezug zu Stich/Nahrung/Medikament/Latex/Anstrengung; bekannte schwere Allergie / Autoinjektor; Atemnot, Kloß, Heiserkeit, Schluckstörung; Schwindel; Juckreiz/Quaddeln/Schwellung; GI],
  [*Beobachtung*], [Flush, Urtikaria, Angioödem (Lippen, Zunge, Lider); Stridor, Giemen, kloßige Sprache; Blässe/Marmorierung bei Schock; Unruhe, Kollapsneigung],
  [*Untersuchung*], [Vitalzeichen nur soweit *ohne Verzögerung* des Notrufs; *keine* Belastungstests; *keine* Hals-/Thorax-Mobilisation zur Enge-Abklärung; bei Bewusstseinsstörung/Atemstillstand: BLS],
  [*Verlauf*], [Rasant oder stufenweise über Minuten–Stunden; nach Besserung erneute Verschlechterung möglich (biphasisch — Beobachtung ärztlich)],
)

=== Handlungskette (Typografie)

#pad(left: 2pt)[
  #grid(
    columns: (14pt, 1fr),
    column-gutter: 8pt,
    row-gutter: 5pt,
    align(horizon)[#ico-d("ban")],
    align(horizon)[#text(size: 8.5pt)[#text(weight: "bold")[1 Stopp] — Sitzung abbrechen · keine Belastung]],
    align(horizon)[#ico-d("phone")],
    align(horizon)[#text(size: 8.5pt)[#text(weight: "bold")[2 · 112] — Notruf *sofort* bei Atem/Kreislauf/Progredienz]],
    align(horizon)[#fa-icon("bed", solid: true, fill: palette.warning, size: 9pt)],
    align(horizon)[#text(size: 8.5pt)[#text(weight: "bold")[3 Lagerung/BLS] — je Lage und Bewusstsein; BLS bei Bedarf]],
    align(horizon)[#ico("syringe")],
    align(horizon)[#text(size: 8.5pt)[#text(weight: "bold")[4 Autoinjektor] — nur *patienteneigen*, verordnet, Anwendung bekannt]],
    align(horizon)[#ico("eye")],
    align(horizon)[#text(size: 8.5pt)[#text(weight: "bold")[5 Überwachen] — Dynamik bis Rettungsdienst; kein „weiter PT“]],
  )
]

// ── 4 Mimic / DDx ─────────────────────────────────────────────
== 4. Verdacht, Abgrenzung, Warnsignale

#row-icon("check", "Erhärtet den Verdacht", [
  Zeitlicher Allergenbezug plus Atemwegs- und/oder Kreislaufzeichen; generalisierte Urtikaria *mit* respiratorischen und GI-Zeichen; bekannte schwere Allergie plus Exposition mit Progredienz; progredientes Angioödem mit Schluck-/Sprachstörung.
])
#v(4pt)
#row-icon("xmark", "Passt eher nicht", [
  Klar isolierte, stabile lokale Hautreaktion *ohne* Atemwegs-/Kreislaufbeteiligung und *ohne* Dynamik — dennoch keine „PT weiter wie geplant“ bei unklarer Allergieanamnese (ärztliche Klärung).
])
#v(4pt)
#row-icon("eye", "Nicht übersehen", [
  Systemische Reaktion *ohne* klassische Hautzeichen; initial normale Vitalwerte; Beta-Blocker/ACE-Hemmer können Zeichen maskieren; ACE-Hemmer-Angioödem (oft ohne Urtikaria).
])

#v(6pt)
=== Trügerische Erklärungen

#set enum(numbering: "1.", tight: true)
1. *„Nur Quaddeln / Haut“* — Generalisierte Urtikaria kann Vorläufer oder Teil einer systemischen Reaktion sein; Atemwege und Kreislauf gezielt screenen.
2. *„Panik / Hyperventilation“* — Unruhe kommt bei Anaphylaxie vor; erst Schwellung, Stridor und Kreislauf ausschließen.
3. *„Asthma-Schub“* — Allergenbezug und Mehrorganbeteiligung → Anaphylaxie-Notfallpfad (*112*).
4. *„HWS-/BWS-Blockade, Enge vom Training“* — Zervikothorakale Enge nach Exposition oder mit Begleitsymptomen ist *kein* Freifahrtschein für manuelle Techniken.

#v(4pt)
#text(weight: "bold", font: fonts.sans, size: 9pt)[DDx-Minimal]
#v(2pt)
#table(
  columns: (36mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 3.5pt,
  align: (left, left),
  table.header(
    text(weight: "bold", size: 7.5pt, font: fonts.sans)[Eher …],
    text(weight: "bold", size: 7.5pt, font: fonts.sans)[Diskriminierende Unterschiede],
  ),
  [*Anaphylaxie*], text(size: 8pt)[Allergenbezug, Dynamik, ≥1 System kritisch oder Mehrorgan → *112*],
  [*Anaphyl. Schock*], text(size: 8pt)[Hypotonie, Kollaps → *112* + BLS],
  [*Asthma*], text(size: 8pt)[Bronchospastik; Allergen + Mehrorgan → Anaphylaxie-Pfad],
  [*ACE-Angioödem*], text(size: 8pt)[Oft ohne Urtikaria; Atemwegsbedrohung → *112*],
  [*Panik*], text(size: 8pt)[*Erst* Schwellung/Stridor/Kreislauf prüfen],
  [*Lokale Urtikaria*], text(size: 8pt)[Stabil, isoliert, ohne Atem/Kreislauf — gleichtags ärztlich],
)

// ── 5 TIME ────────────────────────────────────────────────────
== 5. Handeln und Dringlichkeit

#table(
  columns: (28mm, 1fr, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  align: (left, left, left),
  table.header(
    text(weight: "bold", size: 7.5pt, font: fonts.sans)[Stufe],
    text(weight: "bold", size: 7.5pt, font: fonts.sans)[Situation],
    text(weight: "bold", size: 7.5pt, font: fonts.sans)[Handlung],
  ),
  text(weight: "bold", fill: palette.danger, size: 8.5pt)[112],
  text(size: 8pt)[Atemnot, Stridor, Zungenschwellung, Kloß/Heiserkeit; Kreislaufkollaps/Schock; generalisierte Urtikaria + GI *und* Atem; schwere Allergie + Exposition + Progredienz; rapider Mehrorgan-Verlauf],
  text(size: 8pt)[Sitzung beenden · *112* · Notfalllagerung · Autoinjektor-Support (patienteneigen) · überwachen · BLS bei Bedarf],
  text(weight: "bold", size: 8.5pt)[NA / gleichtags],
  text(size: 8pt)[Persistierende milde *nicht* progressive Beschwerden; isolierte stabile Haut ohne Atem/Kreislauf; unklare Allergie *ohne* 112-Kriterien],
  text(size: 8pt)[Keine PT als Abwarten · gleichtags Arzt/NA · bei Verschlechterung *sofort 112* · biphasisch nicht allein riskieren],
  text(weight: "bold", size: 8.5pt)[Behandeln],
  text(size: 8pt)[Keine vermutete akute allergische Reaktion als PT-Primärindikation],
  text(size: 8pt)[Zuerst ambulant ärztlich abklären · PT erst nach Klärung und ohne akute Red Flags],
)

#v(5pt)
#grid(
  columns: (auto, 1fr),
  column-gutter: 8pt,
  align(horizon)[#ico-d("hand")],
  [
    #text(weight: "bold", fill: palette.danger, size: 9pt)[Grenze / absolute Kontraindikationen]
    #v(2pt)
    #set text(size: 8.5pt)
    Kein medikamentöses Eskalationsprotokoll; keine i.m./i.v. Notfallmedikation aus eigener Kompetenz; keine fortgesetzte Belastung/Mobilisation bei vermuteter Anaphylaxie; Autoinjektor nur *patienteneigen*.
  ],
)

#v(3pt)
#grid(
  columns: (auto, 1fr),
  column-gutter: 8pt,
  align(horizon)[#fa-icon("clock-rotate-left", solid: true, fill: palette.warning, size: 9.5pt)],
  [
    #text(weight: "bold", size: 9pt)[Biphasische Awareness]
    #v(2pt)
    #set text(size: 8.5pt)
    Ca. 6–24 h nach Initialereignis erneute Verschlechterung möglich. Initiale Besserung ersetzt *keine* Beobachtung — kein „weiterbehandeln und nach Hause“ bei Verdacht.
  ],
)

// ── 6 Mini-case ───────────────────────────────────────────────
#block(breakable: false)[
  == 6. Fall zur Selbstprüfung

  #text(weight: "bold", font: fonts.sans, size: 9pt)[Situation]
  #v(2pt)
  #text(size: 8.5pt)[
    34 J., HWS-Fortsetzung. Vor 20 min Kaffee + Müsliriegel; seit 10 min Juckreiz am Hals, wärmendes Gesicht, „Kloßgefühl“, leichte Heiserkeit. Unruhig, Lippen leicht geschwollen. Bekannte Nussallergie, Autoinjektor „irgendwo in der Tasche“. Bittet, „kurz den Nacken zu lösen“.
  ]

  #v(4pt)
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 10pt,
    [
      #mark("circle-exclamation", "Vordergrund")
      #v(2pt)
      #text(size: 8.3pt)[Allergen + Kloß/Heiserkeit/Lippenödem → *112*, nicht Nacken lösen.]
    ],
    [
      #mark("ban", "Kontraindiziert")
      #v(2pt)
      #text(size: 8.3pt)[HWS-Mobilisation, fortgesetzte PT, Belastung, Eigenmedikation.]
    ],
    [
      #mark("phone", "Nächster Schritt")
      #v(2pt)
      #text(size: 8.3pt)[Stopp · *112* · Lagerung · Autoinjektor-Support · überwachen.]
    ],
  )

  #v(6pt)
  #align(center)[
    #text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)[
      Parent-System V-12 · Atemweg/Kreislauf/Progredienz → 112 · wave c · type+icon only
    ]
  ]
]
