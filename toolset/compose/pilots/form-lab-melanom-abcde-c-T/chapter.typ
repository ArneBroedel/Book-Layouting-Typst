// Form Lab Pass T (c-wave) — Melanom ABCDE · Typography + Icons only
// lab: melanom-abcde-2026-08-c · pin: chapter-v-10-melanom-abcde-hautscreening.md (read-only)
// ALLOW: type hierarchy, lists/tables, simple 1-color icons · DENY: panel walls, TIME slabs, free-vision, rich SVG

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Melanom ABCDE — Form Lab Pass T (c-wave)", author: "form-lab/melanom-abcde-2026-08-c/T")
#set page(
  paper: "a4",
  margin: (inside: 18mm, outside: 15mm, top: 12mm, bottom: 13mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(
      columns: (1fr, auto),
      [Melanom ABCDE · Form Lab c · Pass T (Type+Icon)],
      [Screen · zuweisen · keine Exzision],
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
#set par(leading: 0.60em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 14.5pt, weight: "bold", fill: palette.primary-dark)
  block(below: 4pt, above: 0pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10.5pt, weight: "bold", fill: palette.primary)
  block(below: 4pt, above: 7pt)[
    #it.body
    #v(1.5pt)
    #line(length: 26mm, stroke: 1.05pt + palette.primary)
  ]
}
#show heading.where(level: 3): it => {
  set text(font: fonts.sans, size: 9pt, weight: "bold", fill: palette.primary-dark)
  block(below: 2.5pt, above: 5pt)[#it.body]
}

#let ico(name) = fa-icon(name, solid: true, fill: palette.primary-dark, size: 8.5pt)
#let ico-d(name) = fa-icon(name, solid: true, fill: palette.danger, size: 9.5pt)

#let mark(name, label) = {
  box(baseline: 15%)[#ico(name)]
  h(3pt)
  text(size: 8pt, weight: "bold", fill: palette.primary-dark, font: fonts.sans)[#label]
}

#let danger-line(body) = {
  block(width: 100%, above: 1pt, below: 5pt)[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 8pt,
      align(horizon)[#ico-d("triangle-exclamation")],
      [
        #set text(size: 8.5pt)
        #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang. ]
        #body
      ],
    )
    #v(2pt)
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
= Melanom – ABCDE-Hautscreening im Direktzugang

#text(size: 9pt, fill: palette.text-muted, font: fonts.sans)[
  Strukturierter Blick + Zuweisung · Pass T: Typografie + Icons
]

#v(3pt)
#danger-line[Suspekte pigmentierte Läsion ist kein „alter Fleck“ und keine physiotherapeutische Hautdiagnose — Aufgabe: ABCDE, Ugly Duckling, Dringlichkeit, ärztliche Zuweisung; *keine* Exzision.]

// ── Big Picture ───────────────────────────────────────────────
== Big Picture

Malignes Melanom: aggressiver Melanozytentumor. Im DA entfällt dermatologische Feindiagnostik. Maßgeblich: Früherkennung (ABCDE, Ugly Duckling) und rechtzeitige ärztliche Zuweisung.

#v(3pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 12pt,
  [
    #mark("eye", "Rolle")
    #v(2pt)
    #text(size: 8.5pt)[Strukturierter Blick + *Zuweisung* — nicht diagnostizieren, nicht exzidieren.]
  ],
  [
    #mark("triangle-exclamation", "Gefahr")
    #v(2pt)
    #text(size: 8.5pt)[Bagatellisierung; übersehener Rücken/Nacken; subungual vs. Hämatom ohne Trauma.]
  ],
  [
    #mark("ban", "Grenze")
    #v(2pt)
    #text(size: 8.5pt)[*Keine* destruktiven Maßnahmen an suspekten Läsionen; DDx endgültig ärztlich.]
  ],
)

// ── ABCDE type marks ──────────────────────────────────────────
== ABCDE — Typografie-Marken

#set text(size: 8.6pt)
#table(
  columns: (12mm, 30mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 0pt, y: 5pt),
  table.header(
    text(weight: "bold", font: fonts.sans, size: 8pt)[Mark],
    text(weight: "bold", font: fonts.sans, size: 8pt)[Kriterium],
    text(weight: "bold", font: fonts.sans, size: 8pt)[Lesart im Direktzugang],
  ),
  [*A*], [*Asymmetrie*], [Hälften nicht deckungsgleich],
  [*B*], [*Begrenzung*], [unscharf / unregelmäßig],
  [*C*], [*Color*], [Farbvielfalt *in einer* Läsion (nicht UI-Farben)],
  [*D*], [*Durchmesser*], [typisch > 5 mm — nicht allein ausschlaggebend],
  [*E*], [*Evolution*], [Veränderung Form/Farbe/Größe, Juckreiz, Blutung],
)

#v(5pt)
#grid(
  columns: (auto, 1fr),
  column-gutter: 8pt,
  align(horizon)[#ico("star")],
  text(size: 8.8pt)[
    *Ugly Duckling:* eine Läsion unterscheidet sich klar von den übrigen Nävi des Patienten — auch ohne volles ABCDE zählt die „eine andere“.
  ],
)

// ── 1 Enabling ────────────────────────────────────────────────
== 1. Wann ist daran zu denken?

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 12pt,
  [
    #text(weight: "bold", font: fonts.sans, size: 8.5pt, fill: palette.primary-dark)[Risiken / Auslöser]
    #v(1pt)
    #text(size: 7.5pt, weight: "bold", font: fonts.sans, fill: palette.primary)[WER]
    #v(2pt)
    #set text(size: 8.5pt)
    Intensive/intermittierende UV-Exposition, Solarium; heller Hauttyp (I–II); zahlreiche oder atypische Nävi; familiäres Melanom; Immunsuppression.
  ],
  [
    #text(weight: "bold", font: fonts.sans, size: 8.5pt, fill: palette.primary-dark)[Kontext]
    #v(1pt)
    #text(size: 7.5pt, weight: "bold", font: fonts.sans, fill: palette.primary)[WO]
    #v(2pt)
    #set text(size: 8.5pt)
    Dysplastische Nävi; frühere Hauttumoren; Rücken/Nacken/Fußsohlen schlecht einsehbar; Nagelveränderungen *ohne* Trauma.
  ],
  [
    #text(weight: "bold", font: fonts.sans, size: 8.5pt, fill: palette.primary-dark)[Zeit / Trigger]
    #v(1pt)
    #text(size: 7.5pt, weight: "bold", font: fonts.sans, fill: palette.primary)[WANN]
    #v(2pt)
    #set text(size: 8.5pt)
    Neu aufgetretene Pigmentläsion oder Veränderung einer bestehenden; Evolution über Wochen bis Monate; Blutung/Ulzeration.
  ],
)

// ── 2 Mechanism ───────────────────────────────────────────────
== 2. Entstehung (kurz)

UV-bedingte DNA-Schäden in Melanozyten → unkontrolliertes Wachstum. Zunächst horizontal in der Epidermis; bei vertikalem Wachstum steigt die Metastasierungsgefahr. Früh erkannt und ärztlich exzidiert ist die Prognose deutlich günstiger.  
*Direktzugang-Beitrag:* strukturierter Blick + rechtzeitige Zuweisung — nicht die Exzision.

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
  [*Anamnese*], [Neuauftreten/Veränderung; Juckreiz, Blutung, Ulzeration; familiäres Melanom; UV/Solarium; bei subungual: *Trauma?*],
  [*Beobachtung*], [ABCDE; Ugly Duckling; Rumpf (♂), Beine (♀), Kopf, Akren, Schleimhäute; *Rücken mitinspizieren*],
  [*Untersuchung*], [Sichtbare Areale im Behandlungsgebiet und bei Entkleidung; *keine* Biopsie, Kürettage, destruktiven Maßnahmen],
  [*Verlauf*], [Zunahme Größe/Form/Farbe; neu Blutung/Ulzeration; B-Symptomatik + multiple Hautknoten → fortgeschritten?],
)

// ── 4 Mimics ──────────────────────────────────────────────────
== 4. Verdacht, Abgrenzung, Mimics

#block(breakable: false)[
  #row-icon("check", "Erhärtet den Verdacht", [
    ABCDE-positiv oder rasche Evolution; Ugly Duckling; blutende/ulzerierte unklare Läsion; neu subunguale Pigmentierung + Nagelwall-Pigment (Hutchinson-Verdacht).
  ])
  #v(3pt)
  #row-icon("xmark", "Passt eher nicht", [
    Seit Jahren unveränderte, symmetrische, scharf begrenzte, einfarbige Läsion ohne Evolution und ohne Ugly-Duckling-Charakter — bei Unsicherheit *trotzdem* ärztlich klären, nicht „wegtherapieren“.
  ])
  #v(3pt)
  #row-icon("eye", "Nicht übersehen", [
    Melanom hinter seborrhoischer Keratose-Anmutung; subungual vs. Hämatom; amelanotische Formen; B-Symptomatik mit multiplen Hautknoten.
  ])
]

#v(5pt)
=== Trügerische Erklärungen

#set enum(numbering: "1.", tight: true)
1. *„Alter Fleck, den man schon immer hatte“* — Ohne gezielte Evolutionsfrage (Form, Farbe, Größe, Juckreiz, Blutung) wird Transformation verpasst.
2. *„Seborrhoische Keratose / harmloser Nävus“* — Endgültige Einordnung ist ärztlich; bei ABCDE-Suspekt zuweisen, nicht eigenetikettieren.
3. *„Subunguales Hämatom nach Trauma“* — Ohne nachvollziehbare Trauma-Anamnese und bei Nagelwall-Pigmentierung Melanom-DDx zeitnah mitdenken.
4. *„Rücken ist nicht das Behandlungsziel“* — Bei Entkleidung mitinspizieren; bei Auffälligkeit zuweisen.

#v(4pt)
#text(weight: "bold", font: fonts.sans, size: 9pt)[DDx-Minimal]
#v(2pt)
#table(
  columns: (38mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  align: (left, left),
  table.header(
    text(weight: "bold", size: 8pt, font: fonts.sans)[Eher …],
    text(weight: "bold", size: 8pt, font: fonts.sans)[Diskriminierende Unterschiede],
  ),
  [*Melanom-Verdacht*], text(size: 8.3pt)[ABCDE+ und/oder Evolution; Ugly Duckling; Blutung/Ulzeration → gleichtags–zeitnah Arzt],
  [*Atypischer Nävus*], text(size: 8.3pt)[Kann ABCDE-ähnlich sein; Trennung nur ärztlich/histologisch — bei Suspekt zuweisen],
  [*Seborrhoische Keratose*], text(size: 8.3pt)[Oft „aufgeklebt“, warzig; dennoch ärztliche DDx, keine Eigenetikettierung bei Unsicherheit],
  [*Subunguales Hämatom*], text(size: 8.3pt)[Trauma-Anamnese, Wachstum mit Nagel; ohne Trauma + Nagelwall → Melanom-DDx zeitnah],
  [*BCC / Hämangiom*], text(size: 8.3pt)[Andere Morphologie; unklare pigmentierte/blutende Läsion immer ärztlich],
)

// ── 5 TIME ────────────────────────────────────────────────────
== 5. Handeln und Dringlichkeit

#table(
  columns: (30mm, 1fr, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  align: (left, left, left),
  table.header(
    text(weight: "bold", size: 7.5pt, font: fonts.sans)[Stufe],
    text(weight: "bold", size: 7.5pt, font: fonts.sans)[Situation],
    text(weight: "bold", size: 7.5pt, font: fonts.sans)[Handlung],
  ),
  text(weight: "regular", size: 8pt, fill: palette.text-muted)[112 *selten*],
  text(size: 7.8pt, fill: palette.text-muted)[Im Melanom-Screening typisch *nicht* primär; nur bei vitaler Begleitlage (schwere Blutung, Schock)],
  text(size: 7.8pt, fill: palette.text-muted)[Notruf + Standard-Notfallmanagement; Melanom selbst onkologisch-dermatologisch zeitkritisch, nicht reanimationspflichtig],
  text(weight: "bold", size: 9pt, fill: palette.primary-dark)[Gleichtags–zeitnah],
  text(size: 8.2pt)[Blutung/Ulzeration unklar; ABCDE-suspekt/rasch wachsend; B-Symptome + multiple Hautknoten — *primäre* Stufe im DA],
  text(size: 8.2pt)[Therapie an Läsion stoppen; *keine* destruktiven Maßnahmen; gleichtags HA/Derm; schriftlich „Melanom-DDx / ABCDE-suspekt?“],
  text(weight: "bold", size: 8.5pt)[Zeitnah Derm],
  text(size: 8pt)[Subungual + Nagelwall (Hutchinson-Verdacht); Ugly Duckling ohne akute Blutung],
  text(size: 8pt)[Schriftliche Zuweisung zur Exzisionsabklärung; Patient über Dringlichkeit und Rückkehrgründe informieren],
  text(weight: "bold", size: 8.5pt)[Behandeln],
  text(size: 8pt)[Ohne suspekte Kriterien],
  text(size: 8pt)[MSK fortsetzen; Sicherheitsnetz; Hinweis auf gesetzliches Hautkrebs-Screening (DE ab 35 J. alle 2 J.), ohne es zu ersetzen],
)

#v(5pt)
#grid(
  columns: (auto, 1fr),
  column-gutter: 8pt,
  align(horizon)[#ico-d("ban")],
  [
    #text(weight: "bold", fill: palette.danger, size: 9pt)[Grenze der eigenen Zuständigkeit]
    #v(2pt)
    #set text(size: 8.5pt)
    Keine Melanom-Diagnose, keine Exzision, keine destruktiven Maßnahmen an suspekten Läsionen. Endgültige DDx (seborrhoische Keratose vs. Melanom) ist *ärztlich*.
  ],
)

// ── 6 Mini-case ───────────────────────────────────────────────
== 6. Fall zur Selbstprüfung

#text(weight: "bold", font: fonts.sans, size: 9pt)[Situation]
#v(2pt)
52 J., mobilisierende Therapie nach lumbaler Diskektomie. Beim Entkleiden am rechten Schulterblatt: asymmetrische, unregelmäßig begrenzte, mehrfarbige Pigmentläsion ~8 mm. Patient: „schon ewig, juckt manchmal.“ Keine B-Symptome, keine tastbare LK-Schwellung, Kreislauf stabil; will „heute richtig mobilisiert“ werden.

#v(3pt)
#block(breakable: false)[
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 8pt,
    [
      #mark("circle-exclamation", "(1) Maßgeblich")
      #v(2pt)
      #text(size: 8pt)[ABCDE-suspekt (A+B+C+D, E unklar) → gleichtags–zeitnah zuweisen, nicht bagatellisieren.]
    ],
    [
      #mark("ban", "(2) Kontraindiziert")
      #v(2pt)
      #text(size: 8pt)[Destruktive Maßnahmen an der Läsion; Eigenetikettierung „alter Fleck“.]
    ],
    [
      #mark("file-medical", "(3) Sicherer Schritt")
      #v(2pt)
      #text(size: 8pt)[Schriftlich HA/Derm; MSK mit Sicherheitsnetz möglich, Läsion unberührt.]
    ],
  )
  #v(5pt)
  #align(center)[
    #text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)[
      Merksatz: ABCDE + Ugly Duckling · suspekt → zuweisen · Rücken mitinspizieren · „alter Fleck“ entwarnt nicht ohne Evolutionsfrage
    ]
  ]
]
