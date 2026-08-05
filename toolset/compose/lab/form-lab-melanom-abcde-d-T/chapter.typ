// Form Lab Pass T (d-wave) — Melanom ABCDE · Typography + Icons only
// lab: melanom-abcde-2026-08-d · pin: chapter-v-10-melanom-abcde-hautscreening.md
// ALLOW: type hierarchy, lists/tables, simple 1-color icons
// DENY: panel walls, rainbow ABCDE chips, free-vision, rich multi-tone SVG

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Melanom ABCDE — Form Lab Pass T (d-wave)", author: "form-lab/melanom-abcde-2026-08-d/T")
#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 14mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(
      columns: (1fr, auto),
      [Melanom · Form Lab d · Pass T · Type + Icon],
      [Blick + Zuweisung · keine Exzision],
    )
    line(length: 100%, stroke: 0.4pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(
      columns: (1fr, auto),
      [wave-d · medium extreme · lab-learning],
      counter(page).display("1"),
    )
  },
)
#show: setup-typography()
#set text(size: 9.0pt, fill: palette.text-body)
#set par(leading: 0.64em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 15pt, weight: "bold", fill: palette.primary-dark)
  block(below: 4pt, above: 0pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10.5pt, weight: "bold", fill: palette.primary)
  block(below: 4pt, above: 9pt)[
    #it.body
    #v(1.5pt)
    #line(length: 100%, stroke: 0.55pt + palette.border)
  ]
}
#show heading.where(level: 3): it => {
  set text(font: fonts.sans, size: 9pt, weight: "bold", fill: palette.primary-dark)
  block(below: 3pt, above: 7pt)[#it.body]
}

#let ico(name, fill: palette.primary-dark, size: 8.5pt) = fa-icon(
  name,
  solid: true,
  fill: fill,
  size: size,
)
#let ico-d(name) = ico(name, fill: palette.danger, size: 9.5pt)

#let hang(label, body) = block(width: 100%, below: 5pt)[
  #grid(
    columns: (34mm, 1fr),
    column-gutter: 8pt,
    {
      set text(font: fonts.sans, size: 7.4pt, weight: "bold", fill: palette.primary-dark)
      upper(label)
    },
    {
      set text(size: 8.5pt)
      body
    },
  )
]

#let danger-lead(body) = block(width: 100%, below: 8pt)[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 7pt,
    align(horizon)[#ico-d("triangle-exclamation")],
    {
      set text(size: 9pt)
      text(weight: "bold", fill: palette.danger)[Direktzugang — Rolle. ]
      body
    },
  )
  #v(2pt)
  #line(length: 100%, stroke: 1pt + palette.danger)
]

#let rank(n, title, body) = block(width: 100%, below: 5pt)[
  #grid(
    columns: (10mm, 1fr),
    column-gutter: 6pt,
    align(top)[
      #text(font: fonts.sans, size: 14pt, weight: "bold", fill: palette.primary-dark)[#n]
    ],
    [
      #text(font: fonts.sans, size: 9pt, weight: "bold", fill: palette.primary-dark)[#title]
      #v(1pt)
      #set text(size: 8.3pt)
      #body
    ],
  )
]

#let letter-row(letter, name, body) = block(width: 100%, below: 4pt)[
  #grid(
    columns: (9mm, 28mm, 1fr),
    column-gutter: 6pt,
    align(top)[
      #text(font: fonts.sans, size: 16pt, weight: "bold", fill: palette.primary-dark)[#letter]
    ],
    {
      set text(font: fonts.sans, size: 8pt, weight: "bold", fill: palette.primary-dark)
      name
    },
    {
      set text(size: 8.3pt)
      body
    },
  )
]

// ── Title ─────────────────────────────────────────────────────
= Melanom — ABCDE-Hautscreening im Direktzugang

#text(size: 8.4pt, fill: palette.text-muted, font: fonts.sans)[
  Strukturierter Blick · Ugly Duckling · Zuweisung · Pass T (d): Typografie + Icons
]

#v(4pt)
#danger-lead[
  Eine suspekte pigmentierte Läsion ist kein „alter Fleck“ und keine physiotherapeutische Hautdiagnose — Aufgabe ist *strukturierter Blick* (ABCDE, Ugly Duckling), Dringlichkeit und *ärztliche Zuweisung*, nicht die Exzision.
]

// ── Big Picture ───────────────────────────────────────────────
== Big Picture

Das maligne Melanom ist ein aggressiver Tumor der Melanozyten mit Metastasierungstendenz. Im Direktzugang entfällt die dermatologische Feindiagnostik. Maßgeblich sind Früherkennung suspekter Veränderungen mittels ABCDE-Regel und Ugly-Duckling-Zeichen sowie die rechtzeitige ärztliche Zuweisung.

#v(3pt)
#hang[Gefahr][Bagatellisierung als „alter Fleck“ ohne Evolutionsfrage; Übersehen am Rücken/Nacken; subunguales Melanom vs. Hämatom ohne Trauma.]
#hang[Handeln][ABCDE-suspekt, rasche Evolution, Blutung/Ulzeration → gleichtags bis zeitnah Dermatologie/Hausarzt; *keine* destruktiven Maßnahmen.]
#hang[Rolle][Screenen · triagieren · zuweisen — *nicht* diagnostizieren, *nicht* exzidieren.]

// ── 1 Enabling ────────────────────────────────────────────────
== 1. Wann ist daran zu denken?

#hang[#ico("sun") Risiken][
  Intensive oder intermittierende UV-Exposition, Solarium; heller Hauttyp (I–II); zahlreiche oder atypische Nävi; familiäres Melanom; Immunsuppression.
]
#hang[#ico("user") Kontext][
  Vorbestehende dysplastische Nävi; vorangegangene Hauttumoren; Patient sieht Rücken/Nacken/Fußsohlen schlecht; Nagelveränderungen *ohne* Trauma.
]
#hang[#ico("clock") Zeitverlauf][
  Neu aufgetretene Pigmentläsion oder Veränderung (Form, Farbe, Größe, Juckreiz, Blutung); Evolution über Wochen bis Monate klinisch besonders relevant.
]

// ── 2 Mechanism ───────────────────────────────────────────────
== 2. Entstehung (kurz)

UV-bedingte DNA-Schäden in Melanozyten können unkontrolliertes Wachstum und maligne Entartung auslösen. Zunächst oft horizontal in der Epidermis; bei vertikalem Wachstum steigt die Metastasierungsgefahr. Früh erkannt und ärztlich exzidiert ist die Prognose günstiger — der Beitrag im Direktzugang ist der strukturierte Blick und die rechtzeitige Zuweisung.

// ── 3 Clinical cues / ABCDE ───────────────────────────────────
== 3. Klinische Hinweise — ABCDE

#text(size: 8pt, fill: palette.text-muted, font: fonts.sans)[
  Buchstaben als *Typoränge* (gleiche Familie, Gewicht) — kein Farbchip-Regenbogen.
]

#v(3pt)
#letter-row[A][Asymmetrie][Eine Hälfte spiegelt die andere nicht.]
#letter-row[B][Begrenzung][Unscharf, unregelmäßig, ausfransend — nicht glatt kreisrund.]
#letter-row[C][Color / Farbe][Mehrere Farbtöne in einer Läsion (braun, schwarz, rot, blau-grau, weiß) — *klinische* Farbvielfalt, nicht UI-Farben.]
#letter-row[D][Durchmesser][Typisch > 5 mm — kleinere suspekte Läsionen nicht bagatellisieren.]
#letter-row[E][Evolution][Veränderung von Form, Farbe, Größe; neu Juckreiz, Blutung, Ulzeration.]

#v(4pt)
#hang[#ico("crow") Ugly Duckling][
  Eine Läsion unterscheidet sich klar von den übrigen Nävi des Patienten — auch wenn ABCDE im Einzelnen unklar bleibt.
]

#v(3pt)
#table(
  columns: (26mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border),
  inset: (x: 3pt, y: 4pt),
  align: (left, left),
  table.header(
    text(weight: "bold", font: fonts.sans, size: 8pt)[Domäne],
    text(weight: "bold", font: fonts.sans, size: 8pt)[Erwartbare Merkmale],
  ),
  [*Anamnese*], [Neuauftreten oder Veränderung; Juckreiz, Blutung, Ulzeration; familiäres Melanom; UV/Solarium; subungual: Trauma erfragen],
  [*Beobachtung*], [ABCDE; Ugly Duckling; Rumpf (♂), Beine (♀), Kopf, Akren, Schleimhäute; Rücken/Nacken mitinspizieren],
  [*Untersuchung*], [Sichtbare Areale im Behandlungsgebiet und bei Entkleidung; *keine* Biopsie, Kürettage, destruktive Maßnahmen],
  [*Verlauf*], [Zunahme Größe/Form/Farbe; neue Blutung/Ulzeration; B-Symptomatik + multiple Hautknoten → fortgeschritten mitdenken],
)

// ── 4 Mimic / DDx ─────────────────────────────────────────────
== 4. Verdacht, Abgrenzung, Warnsignale

#hang[#ico("check") Erhärtet][
  ABCDE-positiv oder rasche Evolution; Ugly Duckling; blutende/ulzerierte unklare Läsion; neu subunguale Pigmentierung + Nagelwall-Pigment (Hutchinson-Verdacht).
]
#hang[#ico("xmark") Passt eher nicht][
  Seit Jahren unverändert, symmetrisch, scharf begrenzt, einfarbig, ohne Evolution und ohne Ugly-Duckling-Charakter — bei Unsicherheit *trotzdem* ärztlich klären, nicht „wegtherapieren“.
]
#hang[#ico("eye") Nicht übersehen][
  Melanom hinter seborrhoischer Keratose-Anmutung; subunguales Melanom vs. Hämatom; amelanotische Formen; B-Symptomatik mit multiplen Hautknoten.
]

#block(breakable: false)[
  === Trügerische Erklärungen

  #set enum(numbering: "1.", tight: true)
  1. *„Alter Fleck, den man schon immer hatte“* — Ohne Evolutionsfrage (Form, Farbe, Größe, Juckreiz, Blutung) wird maligne Transformation verpasst.
  2. *„Seborrhoische Keratose / harmloser Nävus“* — Endgültige Einordnung ist ärztlich; bei ABCDE-Suspekt zuweisen, nicht eigenetikettieren.
  3. *„Subunguales Hämatom nach Trauma“* — Ohne Trauma-Anamnese und bei Nagelwall-Pigmentierung Melanom-DDx zeitnah dermatologisch.
  4. *„Rücken ist nicht Behandlungsziel“* — Rücken/Nacken oft ungesehen — bei Entkleidung mitinspizieren und bei Auffälligkeit zuweisen.

  #v(3pt)
  #text(weight: "bold", font: fonts.sans, size: 8.5pt)[DDx-Minimal]
  #v(2pt)
  #table(
    columns: (38mm, 1fr),
    stroke: 0.4pt + palette.border,
    inset: 4pt,
    align: (left, left),
    table.header(
      text(weight: "bold", size: 7.8pt, font: fonts.sans)[Eher …],
      text(weight: "bold", size: 7.8pt, font: fonts.sans)[Diskriminierende Unterschiede],
    ),
    [*Melanom (Verdacht)*], text(size: 8pt)[ABCDE und/oder Evolution; Ugly Duckling; ggf. Blutung → gleichtags–zeitnah Arzt],
    [*Atypischer Nävus*], text(size: 8pt)[Kann ABCDE-ähnlich sein; Unterscheidung nur ärztlich/histologisch — bei Suspekt zuweisen],
    [*Seborrhoische Keratose*], text(size: 8pt)[Oft „aufgeklebt“, warzig; dennoch ärztliche DDx bei Unsicherheit],
    [*Subunguales Hämatom*], text(size: 8pt)[Trauma-Anamnese, Wachstum mit Nagel; ohne Trauma + Nagelwall → Melanom-DDx],
  )
]

// ── 5 TIME ────────────────────────────────────────────────────
== 5. Handeln und Dringlichkeit

#text(size: 8pt, fill: palette.text-muted, font: fonts.sans)[
  Stufen als *Typoränge* — 112 im Melanom-Screening *selten* primär.
]

#v(3pt)
#rank[01][#ico-d("phone") 112 — selten][
  Typischerweise *nicht* primär 112. Ausnahme: vital bedrohliche Begleitlage (z. B. akute schwere Blutung, Schock) → Notruf und Standard-Notfallmanagement. Melanom selbst ist onkologisch-dermatologisch zeitkritisch, nicht reanimationspflichtig.
]
#rank[02][#ico("hospital") Gleichtags Arzt / NA-Pfad][
  Blutende oder ulzerierte unklare Läsion; ABCDE-suspekt oder rasch wachsend; B-Symptomatik + multiple Hautknoten. → Therapie an der Läsion stoppen; *keine* destruktiven Maßnahmen; gleichtags HA/Dermatologie; schriftlich „Melanom-DDx / ABCDE-suspekt?“ + Befundbeschreibung.
]
#rank[03][#ico("calendar") Zeitnah Dermatologie][
  Neu subunguale Pigmentierung + Nagelwall (Hutchinson-Verdacht); Ugly Duckling ohne akute Blutung. → Schriftliche Zuweisung; Patient über Dringlichkeit und Rückkehrgründe informieren.
]
#rank[04][#ico("hand-holding-medical") Behandeln + Sicherheitsnetz][
  Ohne suspekte Kriterien: MSK-Therapie fortsetzen; bei neu auffälliger Läsion sofort stoppen und zuweisen; auf gesetzliches Hautkrebs-Screening (DE ab 35 J., alle 2 Jahre) hinweisen — *ersetzt* Screening nicht.
]

#v(3pt)
#grid(
  columns: (auto, 1fr),
  column-gutter: 7pt,
  align(horizon)[#ico-d("ban")],
  [
    #text(weight: "bold", fill: palette.danger, size: 8.8pt)[Grenze / absolute Kontraindikationen]
    #v(1pt)
    #set text(size: 8.3pt)
    Keine Melanom-Diagnose, keine Exzision, keine destruktiven Maßnahmen an suspekten Läsionen (keine Kürettage, kein „Abkratzen“, keine Injektion in die Läsion). Endgültige DDx (seborrhoische Keratose vs. Melanom) ist ärztlich.
  ],
)

// ── 6 Mini-case ───────────────────────────────────────────────
== 6. Fall zur Selbstprüfung

#text(weight: "bold", font: fonts.sans, size: 8.8pt)[Situation]
#v(2pt)
52-jähriger Patient zur mobilisierenden Therapie nach lumbaler Diskektomie. Beim Entkleiden fällt am rechten Schulterblatt eine asymmetrische, unregelmäßig begrenzte, mehrfarbige Pigmentläsion von etwa 8 mm auf. Patient: „Den Fleck habe ich schon ewig, der juckt nur manchmal.“ Keine B-Symptome, keine tastbare Lymphknotenschwellung, Kreislauf stabil. Er möchte „heute endlich richtig mobilisiert“ werden.

#v(4pt)
#hang[#ico("circle-exclamation") Vordergrund][
  ABCDE-positiv (A/B/C/D) + Evolutionshinweis (Juckreiz) am Rücken — beim Entkleiden entdeckt. *Zuweisung*, nicht MSK-Optimierung als einziges Ziel.
]
#hang[#ico-d("ban") Kontraindiziert][
  Destruktive Maßnahmen an der Läsion; Bagatellisierung als „alter Fleck“; „abwarten und beobachten“ ohne ärztliche Klärung; Eigenetikettierung.
]
#hang[#ico("user-doctor") Nächster Schritt][
  Befund beschreiben (Lokalisation, Größe, ABCDE-Merkmale, Anamnese); gleichtags bis zeitnah Dermatologie/HA; schriftlich „ABCDE-suspekt / Melanom-DDx?“; MSK fortsetzen *ohne* Läsionsmanipulation; Sicherheitsnetz.
]
#hang[Lernpunkt][
  Rückenläsion beim Entkleiden ist Kernjob: mitinspizieren → strukturiert bewerten → zuweisen. 112 nicht indiziert bei stabilem AZ ohne Blutung/Schock.
]

#v(8pt)
#align(center)[
  #text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)[
    Parent-System V-10 · ABCDE + Ugly Duckling · Zuweisung nicht Exzision · wave-d / T
  ]
]
