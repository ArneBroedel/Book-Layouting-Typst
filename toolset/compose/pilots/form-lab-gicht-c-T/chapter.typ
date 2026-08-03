// Form Lab Pass T (c-wave) — Gicht · Typography + Icons only
// lab: gicht-2026-08-c · pin: chapter-v-3-gicht.md (read-only)
// ALLOW: type hierarchy, lists/tables, simple 1-color icons · DENY: panel walls, TIME slabs, free-vision, rich SVG

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Gicht — Form Lab Pass T (c-wave)", author: "form-lab/gicht-2026-08-c/T")
#set page(
  paper: "a4",
  margin: (inside: 22mm, outside: 18mm, top: 15mm, bottom: 17mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(
      columns: (1fr, auto),
      [Gicht · Form Lab c · Pass T (Type+Icon)],
      [kristall · septisch bis Ausschluss],
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
#set text(size: 9.5pt, fill: palette.text-body)
#set par(leading: 0.68em, justify: true)
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
= Gicht — hochakute Monarthritis und das septische Gelenk

#text(size: 9pt, fill: palette.text-muted, font: fonts.sans)[
  Kristallarthropathie im Direktzugang · Pass T: Typografie + Icons
]

#v(5pt)
#danger-line[Eine „typische Podagra“ kann eine septische Arthritis maskieren; Kristallnachweis und Gichtanamnese entwarnen _nicht_.]

// ── Big Picture ───────────────────────────────────────────────
== Big Picture

Die Gicht ist die klinische Manifestation einer Hyperurikämie mit Ablagerung von Natriumuratkristallen in Gelenken und Weichteilen. Im Direktzugang dominiert der _hochakute, hochschmerzhafte Monoarthritis-Anfall_ — klassisch am Großzehengrundgelenk (Podagra), mit Rötung, Überwärmung und oft Belastungsunfähigkeit, typischerweise innerhalb von Stunden.

Die größte Gefahr ist die *Fehllabelung*: Ein heißes Gelenk mit Fieber oder Systemik darf nicht als „nur Gicht“ abgetan werden. Die HP Physio screent auf Infekt- und Systemzeichen, triagiert und belässt Diagnosesicherung sowie medikamentöse Anfallstherapie in ärztlicher Hand; bei Systembedrohung *112*, bei heißem Gelenk mit Infektverdacht gleichtags die *Notaufnahme*.

#v(5pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 12pt,
  [
    #mark("bolt", "Zeit")
    #v(2pt)
    #text(size: 8.5pt)[Akut *innerhalb von Stunden* — nicht Tage.]
  ],
  [
    #mark("location-dot", "Ort")
    #v(2pt)
    #text(size: 8.5pt)[Klassisch *MTP-I* (Podagra); auch andere Mono-Gelenke.]
  ],
  [
    #mark("ban", "Nicht entwarnen")
    #v(2pt)
    #text(size: 8.5pt)[Kristalle / Gichtanamnese schließen septisch *nicht* aus.]
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
    #text(size: 7.5pt, weight: "bold", font: fonts.sans, fill: palette.primary)[WER]
    #v(2pt)
    #set text(size: 8.5pt)
    Hyperurikämie; purinreiche Ernährung; Alkohol; Diuretika; Adipositas; eingeschränkte Nierenfunktion.
  ],
  [
    #text(weight: "bold", font: fonts.sans, size: 8.5pt, fill: palette.primary-dark)[Kontext]
    #v(1pt)
    #text(size: 7.5pt, weight: "bold", font: fonts.sans, fill: palette.primary)[WOHER]
    #v(2pt)
    #set text(size: 8.5pt)
    Frühere Attacken oder Tophi; metabolisches Syndrom; Nierenerkrankung; Hautläsionen/Ulzera über Tophi.
  ],
  [
    #text(weight: "bold", font: fonts.sans, size: 8.5pt, fill: palette.primary-dark)[Zeit / Trigger]
    #v(1pt)
    #text(size: 7.5pt, weight: "bold", font: fonts.sans, fill: palette.primary)[WANN]
    #v(2pt)
    #set text(size: 8.5pt)
    Akut innerhalb von Stunden; oft nach Alkohol, festlicher Mahlzeit oder Medikamentenänderung. Rezidive stützen Verdacht, entwarnen *nicht* bei Systemik.
  ],
)

// ── 2 Mechanism ───────────────────────────────────────────────
== 2. Entstehung (kurz)

Erhöhte Harnsäurespiegel → Natriumuratkristalle in Synovia und periartikulär → rasche neutrophile Entzündung mit Schmerz, Rötung, Schwellung. Chronisch: Tophi und Gelenkschaden.  
*Direktzugang:* Kristallarthropathie ist eindrucksvoll, klinisch oft *nicht* sicher von bakterieller Arthritis zu trennen; Superinfektion von Tophi/Gelenk bleibt möglich.

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
  [*Anamnese*], [Hochakuter Mono-Gelenkschmerz binnen Stunden; oft MTP-I; frühere Attacken; Alkohol, Diuretika, purinreiche Kost; *Fieber?* *Hautverletzung?*],
  [*Beobachtung*], [Rötung, Überwärmung, Schwellung; Schonhaltung; ggf. Tophi; bei Systemik mitgenommener Gesamteindruck],
  [*Untersuchung*], [Starke Druck- und Bewegungsschmerzhaftigkeit; oft Belastungsunfähigkeit; grobe Funktionsprüfung *ohne* forcierte Manipulation am unklar heißen Gelenk],
  [*Verlauf*], [Anfall: Stunden bis wenige Tage; rezidivierend möglich; polyartikulärer Entzündungssturm mit Systemik ≠ gewöhnlicher Gichtschub],
)

// ── 4 Mimic / DDx ─────────────────────────────────────────────
== 4. Verdacht, Abgrenzung, Warnsignale

#row-icon("check", "Erhärtet den Verdacht (Gichtanfall)", [
  Hochakute Monarthritis binnen Stunden, typisch MTP-I; starke Rötung/Überwärmung; bekannte Hyperurikämie oder frühere Attacken; passender Trigger — *ohne* schwere Systembedrohung.
])
#v(4pt)
#row-icon("xmark", "Passt eher nicht", [
  Rein mechanisches Trauma mit klarer Verletzungsmechanik ohne entzündliches Bild; chronisch-symmetrische Polyarthritis kleiner Gelenke ohne akuten Mono-Schub.
])
#v(4pt)
#row-icon("eye", "Nicht übersehen", [
  Septische Arthritis; Pseudogicht/CPPD (oft Knie); Trauma/Fraktur; Erysipel angrenzend; RA/SpA-Schub; Tophi-Infekt.
])

#v(6pt)
=== Trügerische Erklärungen

#set enum(numbering: "1.", tight: true)
1. *„Umgeknickt / Podagra als Distorsion“* — Fehlt adäquate Traumamechanik und zeigt sich ein entzündliches Bild: Gicht *und* Infekt mitdenken.
2. *„Bekannte Gicht – also nur Schub“* — Gichtanamnese und Kristallnachweis schließen bakterielle Gelenkinfektion *nicht* aus; Fieber/Systemik → Infekt-Triage.
3. *„Knie-Schub = immer Gicht“* — Am Knie oft CPPD; septische Arthritis bleibt Must-not-miss.

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
  [*Gicht*], text(size: 8.5pt)[Hochakut Stunden, oft MTP-I, Trigger Alkohol/Diuretika — ohne schwere Systembedrohung],
  [*Septische Arthritis*], text(size: 8.5pt)[Heißes Gelenk + Fieber/Systemik/Belastungsunfähigkeit; *auch bei Gichtanamnese* bis Ausschluss],
  [*CPPD*], text(size: 8.5pt)[Oft größere Gelenke (Knie); im Erstkontakt oft untrennbar],
  [*Trauma / Fraktur*], text(size: 8.5pt)[Klare Mechanik; entzündliches Mono-Bild fehlt oder atypisch],
  [*Erysipel*], text(size: 8.5pt)[Primär kutan; Gelenk oft freier — im Zweifel nicht herabstufen],
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
  text(size: 8pt)[Heißes Gelenk + Fieber/Systemik + AZ-Verschlechterung / Sepsis-Zeichen; polyartikulärer Sturm mit schwerer Systembedrohung],
  text(size: 8pt)[Behandlung abbrechen; Vitalzeichen; *112*; keine Manipulation, keine Injektion],
  text(weight: "bold", size: 8.5pt)[NA / gleichtags],
  text(size: 8pt)[Akutes heißes Mono mit Belastungsunfähigkeit oder stärkstem Ruheschmerz (*auch ohne* Fieber); heißes Gelenk mit Fieber/Systemik; nach i.a. Injektion/OP/Trauma; Hochrisiko],
  text(size: 8pt)[PT abbrechen. *Noch heute* NA/orthop. Notdienst. Bis Ausschluss septisch ausgehen. Übergabe: Zeit, Temp, Belastbarkeit, Anamnese],
  text(weight: "bold", size: 8.5pt)[Zeitnah],
  text(size: 8pt)[Nur bereits ärztlich eingeordnetes rezidivierendes Muster *ohne* aktuelles heißes Mono mit Belastungsunfähigkeit und *ohne* Systemik],
  text(size: 8pt)[Keine endgültige Gichtdiagnose im HP-Setting. Hausarzt/Rheuma. Sicherheitsnetz bei Fieber/Hitze/neuer Belastungsunfähigkeit],
  text(weight: "bold", size: 8.5pt)[Behandeln],
  text(size: 8pt)[Stabiles, bereits ärztlich eingeordnetes Muster ohne Red Flags; interprofessionell abgestimmt nach Anfall],
  text(size: 8pt)[Schmerzarmer Bewegungsrahmen; keine forcierte Belastung im akuten heißen Anfall; klare Rückkehrgründe],
)

#v(5pt)
#grid(
  columns: (auto, 1fr),
  column-gutter: 8pt,
  align(horizon)[#ico-d("hand")],
  [
    #text(weight: "bold", fill: palette.danger, size: 9pt)[Grenze / absolute Kontraindikationen bis Ausschluss]
    #v(2pt)
    #set text(size: 8.5pt)
    Keine Punktion, keine Intraartikulär-Injektion durch HP, keine forcierte Manipulation am unklar heißen Gelenk; kein abwartendes „Probebehandeln“ bei Fieber/Systemik.
  ],
)

// ── 6 Mini-case ───────────────────────────────────────────────
== 6. Fall zur Selbstprüfung

#text(weight: "bold", font: fonts.sans, size: 9pt)[Situation]
#v(2pt)
54-jähriger Mann, seit gestern Nacht „wieder Podagra“ am rechten Großzeh. MTP-I gerötet, heiß, extrem berührungsempfindlich; belastet den Vorfuß nicht. Regelmäßig Bier, Thiazid-Diuretikum. Heute Fiebergefühl, oral 38,3 °C, abgeschlagen. Bittet um „lokale Entlastung und Mobilisation wie beim letzten Schub“.

#v(4pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 10pt,
  [
    #mark("circle-exclamation", "Vordergrund")
    #v(2pt)
    #text(size: 8.5pt)[Heißes Mono + Fieber/Systemik → Infekt-Triage, *nicht* „nur Schub“.]
  ],
  [
    #mark("ban", "Kontraindiziert")
    #v(2pt)
    #text(size: 8.5pt)[Mobilisation, forcierte Manipulation, Injektion, abwartendes Probebehandeln.]
  ],
  [
    #mark("phone", "Nächster Schritt")
    #v(2pt)
    #text(size: 8.5pt)[Sitzung beenden → NA/112 je AZ; septisch bis Ausschluss.]
  ],
)

#v(8pt)
#align(center)[
  #text(size: 8pt, fill: palette.text-muted, font: fonts.sans)[
    Parent-System V-3 · bei heißem Gelenk immer bakterielle Arthritis mitdenken · Kristalle entwarnen nicht
  ]
]
