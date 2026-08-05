// Form Lab Pass T — Schlaganfall · Typography + Icons
#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Schlaganfall — Form Lab Pass T", author: "form-lab/schlaganfall-2026-08/T")
#set page(
  paper: "a4",
  margin: (inside: 22mm, outside: 18mm, top: 16mm, bottom: 18mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Schlaganfall/TIA · Form Lab · Pass T], [FAST · 112 · Last seen normal])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(3pt)
    grid(columns: (1fr, auto), [Form Lab · type+icon], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 9.5pt)
#set par(leading: 0.65em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 15.5pt, weight: "bold", fill: palette.primary-dark)
  block(below: 5pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 11pt, weight: "bold", fill: palette.primary)
  block(below: 5pt, above: 11pt)[
    #it.body
    #v(2pt)
    #line(length: 28mm, stroke: 1.1pt + palette.primary)
  ]
}

#let mark(name, label) = {
  box(baseline: 15%)[#fa-icon(name, solid: true, fill: palette.primary-dark, size: 8.5pt)]
  h(3pt)
  text(size: 8pt, weight: "bold", fill: palette.primary-dark, font: fonts.sans)[#label]
}

= Schlaganfall und TIA

#text(size: 9pt, fill: palette.text-muted, font: fonts.sans)[
  Wenn plötzliche Schwäche, Sprache oder Schwindel den Hirninfarkt maskieren · Pass T
]

#v(5pt)
#block(width: 100%)[
  #grid(columns: (auto, 1fr), column-gutter: 8pt,
    align(horizon)[#fa-icon("triangle-exclamation", solid: true, fill: palette.danger, size: 11pt)],
    text(size: 9pt)[
      #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang. ]
      Schlaganfall/TIA sind *keine* PT-Arbeitsdiagnosen: plausibler Verdacht → *112* / Stroke-Unit. Fehlzuordnung als „HWS-Blockade“, periphere Fazialis oder Migräne-Aura vernichtet das Zeitfenster.
    ],
  )
  #v(3pt)
  #line(length: 100%, stroke: 0.9pt + palette.danger)
]

== Big Picture

Ein *Schlaganfall* ist ein plötzlicher Ausfall von Gehirnfunktionen durch Ischämie (~80–85 %) oder Blutung (~15–20 %). Eine *TIA* ist ein flüchtiges fokal-neurologisches Defizit — bis zum Ausschluss *Notfall*. Die Entscheidungsschwelle bleibt bewusst niedrig: Im Zweifel Notruf statt Abwarten oder Mobilisieren.

#v(3pt)
#grid(columns: (1fr, 1fr, 1fr), column-gutter: 10pt,
  [#mark("face-smile", "Face") #v(2pt) #text(size: 8.5pt)[Asymmetrie / hängender Mundwinkel]],
  [#mark("hand", "Arms") #v(2pt) #text(size: 8.5pt)[Armabsinken / halbseitige Schwäche]],
  [#mark("comment", "Speech") #v(2pt) #text(size: 8.5pt)[Sprache undeutlich / Aphasie]],
)

#v(4pt)
#mark("clock", "Time") #h(4pt) #text(size: 8.5pt)[*Last seen normal* dokumentieren · Lyse typisch < 4,5 h · TIA auch remittiert = Notfall]

== 1. Wann ist daran zu denken?

#grid(columns: (1fr, 1fr, 1fr), column-gutter: 12pt,
  [#text(weight: "bold", size: 8.5pt, font: fonts.sans, fill: palette.primary-dark)[Risiken]
  #v(2pt) #text(size: 8.5pt)[Hypertonie, VHF, Diabetes, Rauchen, Atherosklerose — oft initial *unbekannt*.]],
  [#text(weight: "bold", size: 8.5pt, font: fonts.sans, fill: palette.primary-dark)[Kontext]
  #v(2pt) #text(size: 8.5pt)[Frühere TIA/Schlaganfall, kardiovaskuläre Vorerkrankungen.]],
  [#text(weight: "bold", size: 8.5pt, font: fonts.sans, fill: palette.primary-dark)[Zeit]
  #v(2pt) #text(size: 8.5pt)[*Apoplektiform* Sekunden–Minuten; entscheidende Angabe: *Last seen normal*.]],
)

== 2. Mechanismus (kurz)

Arterielle Unterbrechung → Penumbra stirbt ohne Reperfusion → fokal-neurologische Ausfälle. Verzögerte Triage vernichtet Thrombolyse/Thrombektomie-Option. *Keine* diagnostische Verzögerung durch Mobilisation, HWS-Tests oder Abwarten.

== 3. Klinische Hinweise — FAST / BE-FAST

#table(
  columns: (28mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 0pt, y: 5pt),
  [#text(weight: "bold", size: 8.5pt)[#fa-icon("comments", solid: true) Anamnese]],
  [#text(size: 8.5pt)[Plötzliche halbseitige Schwäche/Taubheit; hängender Mundwinkel; Sprach-/Sprechstörung; Sehstörung; Schwindel + fokal; *Last seen normal*]],
  [#text(weight: "bold", size: 8.5pt)[#fa-icon("eye", solid: true) Beobachtung]],
  [#text(size: 8.5pt)[Gesichtsasymmetrie, hängende Extremität, unklare Sprache, Unsicherheit Stand/Gang]],
  [#text(weight: "bold", size: 8.5pt)[#fa-icon("stethoscope", solid: true) Untersuchung]],
  [#text(size: 8.5pt)[FAST (≥1 positiv → Verdacht); Balance/Augen grob (BE-FAST); *keine* Provokationstests, die Triage verzögern]],
  [#text(weight: "bold", size: 8.5pt)[#fa-icon("clock-rotate-left", solid: true) Verlauf]],
  [#text(size: 8.5pt)[Perakut; *bereits remittierte* Symptome = TIA-Verdacht bis Ausschluss]],
)

#v(5pt)
=== FAST-Schema (Typografie)

#set text(size: 8.5pt)
#table(
  columns: (18mm, 1fr, 1fr),
  stroke: (x: none, y: 0.45pt + palette.border),
  inset: (x: 4pt, y: 5pt),
  table.header([*Letter*], [*Prüfen*], [*Positiv wenn*]),
  [*F*], [Face / Gesicht], [Asymmetrie, hängender Mundwinkel],
  [*A*], [Arms / Arme], [Ein Arm sinkt ab],
  [*S*], [Speech / Sprache], [Undeutlich, Wortfindung gestört],
  [*T*], [Time / Zeit], [Sofort 112 — Last seen normal notieren],
)

#v(3pt)
#text(size: 8pt)[*BE-FAST:* Balance (plötzliche Stand-/Gangunsicherheit) · Eyes (plötzliche Sehstörung) — posteriorer Kreislauf oft FAST-arm.]

== 4. Mimics / trügerische Erklärungen

#table(
  columns: (42mm, 1fr),
  stroke: none,
  inset: (x: 0pt, y: 4pt),
  [#text(weight: "bold", size: 8.5pt, fill: palette.danger)[„Periphere Fazialis“]],
  [#text(size: 8.5pt)[Stirnrunzeln prüfen — zentrale Parese: Stirn oft erhalten, Mund hängt → Stroke-Pfad]],
  [#text(weight: "bold", size: 8.5pt, fill: palette.danger)[„HWS-Blockade / Schwindel“]],
  [#text(size: 8.5pt)[Schwindel *plus* fokal → 112; keine HWS-Mobilisation]],
  [#text(weight: "bold", size: 8.5pt, fill: palette.danger)[„Migräne-Aura“]],
  [#text(size: 8.5pt)[Ersetzt keine Zeitfenster-Dringlichkeit bei plötzlichem Defizit]],
  [#text(weight: "bold", size: 8.5pt, fill: palette.danger)[„Schulter-Arm / MSK“]],
  [#text(size: 8.5pt)[Einseitige Armschwäche apoplektiform kann Hemiparese sein]],
)

#v(2pt)
#text(size: 8.5pt)[*Nicht übersehen:* posteriore Infarkte (Schwindel, Ataxie, Sehstörung); Hypoglykämie als Mimic; TIA remittiert.]

== 5. Handeln und Dringlichkeit

#set text(size: 8pt)
#table(
  columns: (24mm, 1fr, 1fr),
  stroke: (x: none, y: 0.45pt + palette.border),
  inset: (x: 4pt, y: 5pt),
  align: (left + top, left + top, left + top),
  table.header([*Stufe*], [*Wann*], [*Handlung*]),
  [#text(size: 10pt, weight: "bold")[112]],
  [FAST≥1 mit plötzlichem Beginn; halbseitige Sensibilitäts-/Sehstörung; Schwindel + fokal; TIA-ähnlich (auch remittiert, bes. 48 h)],
  [#text(weight: "bold")[Sofort:] 112 · Sitzung beenden · sichern · keine weiteren Tests · Stroke-Unit-Pfad],
  [#text(weight: "bold")[NA / gleichtags]],
  [Nur ohne akutes fokal-neurologisches Bild, aber unklar progrediente Neuro-Symptome (Tage/Wochen)],
  [PT aussetzen bis Klärung; bei Verschlechterung sofort 112],
  [#text(weight: "bold")[Behandeln]],
  [Nur gesicherte MSK-Ursache ohne Red Flags; nach bekannter TIA/Stroke erst nach ärztlicher Freigabe Akutphase],
  [Vigilanz neue fokal-neurologische Zeichen; Abbruchkriterien],
)

#v(4pt)
#text(size: 8.5pt)[
  #fa-icon("ban", solid: true, fill: palette.danger) *Grenze:* keine Bildgebung/Lyse-Entscheidung durch HP; keine HWS-Manipulation bei V. a. vertebrobasiläre Ischämie/Dissektion; ABCD² ersetzt keine Notfallabklärung.
]

== 6. Fall zur Selbstprüfung

#text(size: 8.5pt)[
  *Situation:* 67 J., „steife HWS und Schwindel“. Vor ~40 min linke Hand „weg“, Sprache undeutlich — fast wieder weg. Hypertonie. Wünscht HWS-Mobilisation.
]

#v(4pt)
#grid(columns: (1fr, 1fr, 1fr), column-gutter: 8pt,
  [#text(weight: "bold", size: 8pt, font: fonts.sans)[(1) Vordergrund?] #v(2pt) #text(size: 8pt)[TIA/Stroke bis Ausschluss — remittiert entwarnt nicht.]],
  [#text(weight: "bold", size: 8pt, font: fonts.sans)[(2) KI?] #v(2pt) #text(size: 8pt)[HWS-Mobilisation, Abwarten, weitere MSK-Tests.]],
  [#text(weight: "bold", size: 8pt, font: fonts.sans)[(3) Schritt?] #v(2pt) #text(size: 8pt)[Sofort 112 · Last seen normal · sichern.]],
)

#v(6pt)

#v(6pt)
// Density fill — prevent orphan last page (Form Lab craft gate)
#block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.45pt + palette.border)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.primary)[Scan-Recap (Medium-Ende): ]
  Learner jobs der Pins noch einmal im Raster/Typografie-Gefüge: Danger → Erkennung → Mimic → Handlung → Grenze. Keine neuen Claims.
]
#v(4pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: (left: 3pt + palette.danger))[
    #set text(size: 7.8pt)
    #text(weight: "bold", fill: palette.danger)[Grenze]
    #v(2pt)
    Keine Claim-Erfindung im Bild; Safety-Text außerhalb Raster/Vektor.
  ],
  block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#f0fdfa"), stroke: (left: 3pt + palette.primary))[
    #set text(size: 7.8pt)
    #text(weight: "bold", fill: palette.primary)[Transfer]
    #v(2pt)
    Mini-Fall beantwortet: Vordergrund · KI · sicherer Schritt.
  ],
)
#v(4pt)
#align(center)[#text(size: 7.5pt, fill: palette.text-muted)[Form Lab Pass T · type+icon · claims pinned · not production Accept]]
