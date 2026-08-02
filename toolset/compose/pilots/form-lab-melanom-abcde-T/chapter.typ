#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")
#set document(title: "Melanom ABCDE — Form Lab Pass T", author: "form-lab/melanom-abcde-2026-08/T")
#set page(
  paper: "a4",
  margin: (inside: 18mm, outside: 15mm, top: 12mm, bottom: 13mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Melanom ABCDE · Form Lab · Pass T], [type+icon · screening])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(3pt)
    grid(columns: (1fr, auto), [Form Lab], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 9pt)
#set par(leading: 0.62em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 15pt, weight: "bold", fill: palette.primary-dark)
  block(below: 5pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 11pt, weight: "bold", fill: palette.primary)
  block(below: 4pt, above: 7pt)[
    #it.body
    #v(2pt)
    #line(length: 24mm, stroke: 1pt + palette.primary)
  ]
}

= Melanom – ABCDE-Hautscreening im Direktzugang

#text(size: 8.5pt, fill: palette.text-muted)[Pass T · strukturierter Blick + Zuweisung, keine Exzision]

#v(4pt)
#block(width: 100%)[
  #grid(columns: (auto, 1fr), column-gutter: 8pt,
    align(horizon)[#fa-icon("triangle-exclamation", solid: true, fill: palette.danger, size: 11pt)],
    text(size: 9pt)[
      #text(weight: "bold", fill: palette.danger)[Direktzugang: ]
      Suspekte pigmentierte Läsion ist kein „alter Fleck“ und keine physio Hautdiagnose — Aufgabe: ABCDE / Ugly Duckling, Dringlichkeit, ärztliche Zuweisung.
    ],
  )
  #v(3pt)
  #line(length: 100%, stroke: 0.9pt + palette.danger)
]

== Big Picture

Malignes Melanom: aggressiver Melanozytentumor. Im DA entfällt dermatologische Feindiagnostik. Maßgeblich: Früherkennung suspekter Veränderungen (ABCDE, Ugly Duckling) und rechtzeitige Zuweisung. Gefährlich: Bagatellisierung; übersehene Rücken-/Nackenläsionen; subungual vs. Hämatom ohne Trauma.

== ABCDE — Typografie-Marken

#set text(size: 8.5pt)
#table(
  columns: (14mm, 28mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 0pt, y: 5pt),
  [*A*], [*Asymmetrie*], [Hälften nicht deckungsgleich],
  [*B*], [*Begrenzung*], [unscharf / unregelmäßig],
  [*C*], [*Color*], [Farbvielfalt in einer Läsion],
  [*D*], [*Durchmesser*], [typisch > 5 mm (nicht allein ausschlaggebend)],
  [*E*], [*Evolution*], [Veränderung Form/Farbe/Größe/Juckreiz/Blutung],
)

#v(4pt)
#text(size: 8.5pt)[
  #fa-icon("star", solid: true, fill: palette.primary) #h(3pt)
  *Ugly Duckling:* eine Läsion unterscheidet sich klar von den übrigen Nävi des Patienten.
]

== 1. Wann denken?

#grid(columns: (1fr, 1fr, 1fr), column-gutter: 10pt,
  [#text(weight: "bold", size: 8.5pt, fill: palette.primary-dark)[Risiken] #v(2pt) #text(size: 8pt)[UV/Solarium; heller Hauttyp; atypische Nävi; familiäres Melanom; Immunsuppression]],
  [#text(weight: "bold", size: 8.5pt, fill: palette.primary-dark)[Kontext] #v(2pt) #text(size: 8pt)[Dysplastische Nävi; frühere Hauttumoren; Rücken/Nacken schlecht einsehbar; Nagel ohne Trauma]],
  [#text(weight: "bold", size: 8.5pt, fill: palette.primary-dark)[Zeit] #v(2pt) #text(size: 8pt)[Neu oder Evolution Wochen–Monate; Blutung/Ulzeration]],
)

== 2. Mechanismus (kurz)

UV-DNA-Schäden → unkontrolliertes Melanozytenwachstum. Früh exzidiert prognostisch günstiger. DA-Beitrag: strukturierter Blick + Zuweisung.

== 3. Klinische Hinweise

#table(
  columns: (28mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 0pt, y: 4pt),
  [*Anamnese*], [Neu/Veränderung; Juckreiz/Blutung; Familie; UV; subungual Trauma?],
  [*Beobachtung*], [ABCDE; Ugly Duckling; Rumpf/Beine/Kopf/Akren; Rücken mitinspizieren],
  [*Untersuchung*], [Sichtbare Areale im Behandlungsgebiet; *keine* Biopsie/Kürettage/destruktive Maßnahmen],
  [*Verlauf*], [Zunahme Größe/Form/Farbe; Blutung/Ulzeration; B-Symptomatik + Knoten → fortgeschritten?],
)

== 4. Mimics

#table(columns: (40mm, 1fr), stroke: none, inset: (x: 0pt, y: 4pt),
  [#text(weight: "bold", size: 8.5pt, fill: palette.danger)[„Alter Fleck“]],
  [#text(size: 8.5pt)[Ohne Evolutionsfrage wird Transformation verpasst]],
  [#text(weight: "bold", size: 8.5pt, fill: palette.danger)[„Seborrhoische Keratose“]],
  [#text(size: 8.5pt)[Endgültige Einordnung ärztlich; bei ABCDE-Suspekt zuweisen]],
  [#text(weight: "bold", size: 8.5pt, fill: palette.danger)[„Nagelhämatom“]],
  [#text(size: 8.5pt)[Ohne Trauma + Nagelwall-Pigment → Melanom-DDx zeitnah]],
  [#text(weight: "bold", size: 8.5pt, fill: palette.danger)[„Rücken nicht Behandlungsziel“]],
  [#text(size: 8.5pt)[Bei Entkleidung mitinspizieren und bei Auffälligkeit zuweisen]],
)

== 5. Handeln

#set text(size: 8pt)
#table(
  columns: (28mm, 1fr, 1fr),
  stroke: (x: none, y: 0.45pt + palette.border),
  inset: (x: 4pt, y: 5pt),
  [*112*], [Im Melanom-Screening typisch *nicht* primär; nur bei vitaler Begleitlage], [Standard-Notfallmanagement],
  [*Gleichtags–zeitnah*], [Blutung/Ulzeration unklar; ABCDE-suspekt/rasch wachsend; B-Symptome + multiple Knoten], [Stopp an Läsion; *keine* destruktiven Maßnahmen; HA/Derm],
  [*Zeitnah Derm*], [Subungual + Nagelwall (Hutchinson-Verdacht); Ugly Duckling ohne akute Blutung], [Schriftliche Zuweisung Exzisionsabklärung],
  [*Behandeln*], [Ohne suspekte Kriterien], [MSK fortsetzen; Sicherheitsnetz; auf gesetzliches Screening hinweisen ohne es zu ersetzen],
)

#v(3pt)
#text(size: 8.5pt)[#fa-icon("ban", solid: true, fill: palette.danger) *Grenze:* keine Melanom-Diagnose, keine Exzision, keine destruktiven Maßnahmen.]

== 6. Fall + DDx (kein leeres Folgeblatt)

#text(size: 8.5pt)[
  *Situation:* 52 J. nach lumbaler Diskektomie; am Schulterblatt asymmetrische, unregelmäßig begrenzte, mehrfarbige Läsion ~8 mm; „schon ewig, juckt manchmal“.
]
#v(3pt)
#grid(columns: (1fr, 1fr, 1fr), column-gutter: 8pt,
  [#text(weight: "bold", size: 8pt, font: fonts.sans)[(1) Maßgeblich?]
  #v(2pt)
  #text(size: 8pt)[ABCDE-suspekt → gleichtags–zeitnah zuweisen, nicht bagatellisieren.]],
  [#text(weight: "bold", size: 8pt, font: fonts.sans)[(2) Kontraindiziert?]
  #v(2pt)
  #text(size: 8pt)[Destruktive Maßnahmen an der Läsion; Eigenetikettierung „alter Fleck“.]],
  [#text(weight: "bold", size: 8pt, font: fonts.sans)[(3) Sicherer Schritt?]
  #v(2pt)
  #text(size: 8pt)[Schriftlich HA/Derm; MSK mit Sicherheitsnetz möglich, Läsion unberührt.]],
)

#v(4pt)
=== DDx-Minimal (Typografie)

#table(
  columns: (36mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 0pt, y: 4pt),
  [#text(weight: "bold", size: 8.5pt)[Melanom-Verdacht]],
  [#text(size: 8.5pt)[ABCDE+ / Evolution / Ugly Duckling / Blutung → zuweisen]],
  [#text(weight: "bold", size: 8.5pt)[Atypischer Nävus]],
  [#text(size: 8.5pt)[Kann ABCDE-ähnlich sein — nur ärztlich/histologisch trennen]],
  [#text(weight: "bold", size: 8.5pt)[Seborrhoische Keratose]],
  [#text(size: 8.5pt)[Oft „aufgeklebt“; bei Unsicherheit nicht selbst etikettieren]],
  [#text(weight: "bold", size: 8.5pt)[Subunguales Hämatom]],
  [#text(size: 8.5pt)[Trauma-Anamnese; ohne Trauma + Nagelwall → Melanom-DDx]],
  [#text(weight: "bold", size: 8.5pt)[BCC / Hämangiom]],
  [#text(size: 8.5pt)[Andere Morphologie; unklare pigmentierte/blutende Läsion immer ärztlich]],
)

#v(5pt)
#text(size: 8.5pt)[
  #fa-icon("star", solid: true, fill: palette.primary) #h(3pt)
  *Ugly Duckling + Rücken:* Bei Entkleidung mitinspizieren; die „eine andere“ Läsion zählt — auch ohne volles ABCDE.
]

#v(6pt)
=== Dringlichkeit — Typografie-Hierarchie (kein Chrome-TIME)

#set text(size: 8.2pt)
#table(
  columns: (30mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border),
  inset: (x: 0pt, y: 5pt),
  [#text(weight: "bold", size: 9pt)[112]],
  [Nur vitale Begleitlage (schwere Blutung, Schock) — Melanom selbst nicht primär reanimationspflichtig.],
  [#text(weight: "bold", size: 9pt)[Gleichtags–zeitnah]],
  [Blutung/Ulzeration; ABCDE-suspekt/rasch wachsend; B-Symptome + multiple Knoten → HA/Derm, *keine* Destruktion.],
  [#text(weight: "bold", size: 8.5pt)[Zeitnah Derm]],
  [Subungual + Nagelwall (Hutchinson-Verdacht); Ugly Duckling ohne akute Blutung → Exzisionsabklärung.],
  [#text(weight: "bold", size: 8.5pt)[Behandeln]],
  [Ohne Suspekt: MSK fortsetzen; Sicherheitsnetz; Hinweis auf gesetzliches Screening (DE ab 35 J.), ohne es zu ersetzen.],
)

#v(5pt)
#text(size: 8.5pt)[
  #fa-icon("ban", solid: true, fill: palette.danger) #h(3pt)
  *Grenze der Zuständigkeit:* keine Melanom-Diagnose, keine Exzision, keine destruktiven Maßnahmen. Endgültige DDx (seborrhoische Keratose vs. Melanom) ist *ärztlich*.
]

#v(5pt)
#text(size: 8.5pt)[
  *Merksatz (Type-only):* ABCDE + Ugly Duckling · suspekt → zuweisen · Rücken mitinspizieren · Kristall-Äquivalent hier: *„alter Fleck“ entwarnt nicht* ohne Evolutionsfrage.
]

#v(4pt)
#align(center)[#text(size: 7.5pt, fill: palette.text-muted)[Form Lab Pass T · type+icon · not production Accept]]
