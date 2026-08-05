// Form Lab Pass T (b-wave) — Gicht · Typography + Icons (no panel-wall chrome)
// lab: gicht-2026-08-b · content pin: Kursbuch5 chapter-v-3-gicht.md (read-only)

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6") // fonts/ ships FA6

#set document(title: "Gicht — Form Lab Pass T (b-wave)", author: "form-lab/gicht-2026-08-b/T")
#set page(
  paper: "a4",
  margin: (inside: 22mm, outside: 18mm, top: 16mm, bottom: 18mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(
      columns: (1fr, auto),
      [Gicht · Form Lab · Pass T (Type+Icon)],
      [kristall · septisch bis Ausschluss],
    )
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(3pt)
    grid(columns: (1fr, auto), [Form Lab · medium extreme], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 9.5pt, fill: palette.text-body)
#set par(leading: 0.65em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 16pt, weight: "bold", fill: palette.primary-dark)
  block(below: 6pt, above: 0pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 11pt, weight: "bold", fill: palette.primary)
  block(below: 5pt, above: 12pt)[
    #it.body
    #v(2pt)
    #line(length: 28mm, stroke: 1.1pt + palette.primary)
  ]
}
#show heading.where(level: 3): it => {
  set text(font: fonts.sans, size: 9.5pt, weight: "bold", fill: palette.primary-dark)
  block(below: 3pt, above: 8pt)[#it.body]
}

#let mark(name, label) = {
  box(baseline: 15%)[
    #fa-icon(name, solid: true, fill: palette.primary-dark, size: 8.5pt)
  ]
  h(3pt)
  text(size: 8pt, weight: "bold", fill: palette.primary-dark, font: fonts.sans)[#label]
}

#let danger-line(body) = {
  block(width: 100%, above: 4pt, below: 8pt)[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 8pt,
      align(horizon)[
        #fa-icon("triangle-exclamation", solid: true, fill: palette.danger, size: 11pt)
      ],
      [
        #set text(size: 9pt)
        #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang. ]
        #body
      ],
    )
    #v(3pt)
    #line(length: 100%, stroke: 0.9pt + palette.danger)
  ]
}

#let job-head(icon, title) = {
  grid(
    columns: (auto, 1fr),
    column-gutter: 6pt,
    align(horizon)[#fa-icon(icon, solid: true, fill: palette.primary, size: 10pt)],
    text(font: fonts.sans, size: 10.5pt, weight: "bold", fill: palette.primary)[#title],
  )
  v(3pt)
}

// ── Title ─────────────────────────────────────────────────────
= Gicht — hochakute Monarthritis und das septische Gelenk

#text(size: 9pt, fill: palette.text-muted, font: fonts.sans)[
  Kristallarthropathie im Direktzugang · Pass T: Typografie + Icons
]

#v(6pt)
#danger-line[Eine „typische Podagra“ kann eine septische Arthritis maskieren; Kristallnachweis und Gichtanamnese entwarnen _nicht_.]

// ── Big Picture ───────────────────────────────────────────────
== Big Picture

Die Gicht ist die klinische Manifestation einer Hyperurikämie mit Ablagerung von Natriumuratkristallen in Gelenken und Weichteilen. Im Direktzugang dominiert der _hochakute, hochschmerzhafte Monoarthritis-Anfall_ — klassisch am Großzehengrundgelenk (Podagra), mit Rötung, Überwärmung und oft Belastungsunfähigkeit, typischerweise innerhalb von Stunden.

Die größte Gefahr ist die *Fehllabelung*: Ein heißes Gelenk mit Fieber oder Systemik darf nicht als „nur Gicht“ abgetan werden. Die HP Physio screent auf Infekt- und Systemzeichen, triagiert und belässt Diagnosesicherung sowie medikamentöse Anfallstherapie in ärztlicher Hand; bei Systembedrohung *112*, bei heißem Gelenk mit Infektverdacht gleichtags die *Notaufnahme*.

#v(4pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 10pt,
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
  column-gutter: 12pt,
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
    Akut binnen Stunden; oft nach Alkohol, Mahlzeit, Medikamentenwechsel. Rezidive stützen — entwarnen Systemik *nicht*.
  ],
)

// ── 2 Mechanism ───────────────────────────────────────────────
== 2. Entstehung und Mechanismus

Erhöhte Harnsäurespiegel → Ausfällung von Natriumuratkristallen in Synovia und periartikulärem Gewebe. \
→ Rasche neutrophile Entzündung mit Schmerz, Rötung, Schwellung. Chronisch: Tophi und Gelenkschäden.

*Für den Direktzugang:* Das klinische Bild einer Kristallarthropathie ist eindrucksvoll, aber klinisch oft *nicht sicher* von einer bakteriellen Arthritis zu trennen — Superinfektion von Tophi oder Gelenk bleibt möglich.

// ── 3 Clinical ────────────────────────────────────────────────
== 3. Klinische Hinweise — vier Kanäle

#table(
  columns: (28mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 0pt, y: 5pt),
  align: (left, left),
  [#text(weight: "bold", font: fonts.sans, size: 8.5pt)[#fa-icon("comments", solid: true) Anamnese]],
  [#text(size: 8.5pt)[Hochakuter Mono-Gelenkschmerz binnen Stunden; oft MTP-I; frühere Attacken; Alkohol, Diuretika, purinreiche Kost; *Fieber?* *Hautverletzung?*]],
  [#text(weight: "bold", font: fonts.sans, size: 8.5pt)[#fa-icon("eye", solid: true) Beobachtung]],
  [#text(size: 8.5pt)[Rötung, Überwärmung, Schwellung; Schonhaltung; ggf. Tophi; bei Systemik blasser/mitgenommener Gesamteindruck]],
  [#text(weight: "bold", font: fonts.sans, size: 8.5pt)[#fa-icon("hand", solid: true) Untersuchung]],
  [#text(size: 8.5pt)[Starke Druck- und Bewegungsschmerzhaftigkeit; oft Belastungsunfähigkeit; grobe Funktionsprüfung *ohne* forcierte Manipulation am unklar heißen Gelenk]],
  [#text(weight: "bold", font: fonts.sans, size: 8.5pt)[#fa-icon("clock-rotate-left", solid: true) Verlauf]],
  [#text(size: 8.5pt)[Anfall: Stunden bis wenige Tage; rezidivierend möglich; polyartikulärer Entzündungssturm mit Systemik ≠ gewöhnlicher Gichtschub]],
)

#v(8pt)
=== Heißes Gelenk — Gestalt (text + marks)

#set text(size: 8.5pt)
#pad(left: 2pt)[
  #grid(
    columns: (14pt, 1fr),
    column-gutter: 8pt,
    row-gutter: 5pt,
    align(horizon)[#fa-icon("fire", solid: true, fill: palette.danger, size: 9pt)],
    align(horizon)[Rötung · Überwärmung · Schwellung],
    align(horizon)[#fa-icon("person-walking", solid: true, fill: palette.primary-dark, size: 9pt)],
    align(horizon)[Belastungsunfähigkeit / stärkster Ruheschmerz],
    align(horizon)[#fa-icon("shoe-prints", solid: true, fill: palette.primary, size: 9pt)],
    align(horizon)[Klassisch MTP-I — aber jedes Mono-Gelenk zählt],
    align(horizon)[#fa-icon("temperature-high", solid: true, fill: palette.warning, size: 9pt)],
    align(horizon)[Fieber / Systemik → Infekt-Triage, nicht „nur Schub“],
  )
]

// ── 4 Mimic ───────────────────────────────────────────────────
#v(4pt)
== 4. Verdacht, Abgrenzung, trügerische Erklärungen

// Keep verdacht + mimics as one unbreakable teaching block (no orphan mid-grid)
#block(breakable: false)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 14pt,
    [
      #text(weight: "bold", font: fonts.sans, size: 8.5pt, fill: palette.primary-dark)[Erhärtet den Verdacht]
      #v(2pt)
      #text(size: 8pt)[
        Hochakute Monarthritis binnen Stunden, typisch MTP-I; starke Rötung/Überwärmung; Hyperurikämie oder frühere Attacken; passender Trigger — *ohne* schwere Systembedrohung.
      ]
    ],
    [
      #text(weight: "bold", font: fonts.sans, size: 8.5pt, fill: palette.danger)[Nicht übersehen]
      #v(2pt)
      #text(size: 8pt)[
        *Septische Arthritis* · Pseudogicht/CPPD (Knie) · Trauma/Fraktur · Erysipel · RA/SpA-Schub · Tophi-Infekt.
      ]
    ],
  )

  #v(5pt)
  #text(weight: "bold", font: fonts.sans, size: 9pt, fill: palette.primary-dark)[Trügerische Erklärungen]
  #v(3pt)
  #table(
    columns: (38mm, 1fr),
    stroke: none,
    inset: (x: 0pt, y: 3.5pt),
    align: (left + top, left + top),
    [#text(weight: "bold", size: 8.5pt, fill: palette.danger, font: fonts.sans)[„Umgeknickt“]],
    [#text(size: 8.5pt)[Plötzlicher Großzehenschmerz mit Rötung als Distorsion fehlgedeutet. Fehlt adäquate Mechanik → Gicht *und* Infekt weiter mitdenken.]],
    [#text(weight: "bold", size: 8.5pt, fill: palette.danger, font: fonts.sans)[„Nur Gicht-Schub“]],
    [#text(size: 8.5pt)[Gichtanamnese und Kristallnachweis schließen bakterielle Gelenkinfektion *nicht* aus. Fieber/Systemik → Infekt-Triage.]],
    [#text(weight: "bold", size: 8.5pt, fill: palette.danger, font: fonts.sans)[„Knie = Gicht“]],
    [#text(size: 8.5pt)[Am Knie ist CPPD häufig und im Erstkontakt oft ununterscheidbar; septische Arthritis bleibt Must-not-miss.]],
  )
]

// ── 5 TIME ────────────────────────────────────────────────────
== 5. Handeln und Dringlichkeit (TIME)

#set text(size: 8pt)
#table(
  columns: (24mm, 1fr, 1fr),
  stroke: (x: none, y: 0.45pt + palette.border),
  inset: (x: 4pt, y: 5.5pt),
  align: (left + top, left + top, left + top),
  table.header(
    [#text(weight: "bold", font: fonts.sans, size: 8pt)[Stufe]],
    [#text(weight: "bold", font: fonts.sans, size: 8pt)[Wann]],
    [#text(weight: "bold", font: fonts.sans, size: 8pt)[Handlung]],
  ),
  [#text(size: 11pt, weight: "bold", font: fonts.sans, fill: palette.danger)[112]],
  [Heißes Gelenk + Fieber/Systemik + AZ-Verschlechterung / Sepsis-Zeichen; polyartikulärer Sturm mit schwerer Systembedrohung],
  [#text(weight: "bold")[Sofort:] Abbrechen · Vitalzeichen · *112* · keine Manipulation, keine Injektion],
  [#text(size: 9.5pt, weight: "bold", font: fonts.sans, fill: palette.primary-dark)[NA]],
  [Akutes heißes Mono mit Belastungsunfähigkeit oder stärkstem Ruheschmerz (*auch ohne* Fieber); heißes Gelenk mit Fieber; nach i.a. Injektion/OP/Trauma; Hochrisiko; Ulcus/Tophi + Infektzeichen],
  [#text(weight: "bold")[Noch heute:] PT abbrechen · NA / ortho Notdienst · septisch bis Ausschluss · Übergabe: Zeitverlauf, Temperatur, Belastbarkeit, Gichtanamnese, Haut, Injektion/OP],
  [#text(size: 8.5pt, weight: "bold", font: fonts.sans)[Zeitnah]],
  [Nur bereits ärztlich eingeordnetes rezidivierendes Muster *ohne* aktuelles heißes Mono mit Belastungsunfähigkeit und *ohne* Systemik],
  [Keine endgültige Gichtdiagnose im HP-Setting · Sicherheitsnetz bei Fieber/Hitze/neuer Belastungsunfähigkeit],
  [#text(size: 8pt, weight: "bold", font: fonts.sans, fill: palette.text-muted)[Behandeln]],
  [Stabiles, ärztlich eingeordnetes Muster ohne Red Flags; abgestimmte Maßnahmen nach Anfall],
  [Schmerzarmer Bewegungsrahmen · keine forcierte Belastung im akuten heißen Anfall · klare Rückkehrgründe],
)

#v(5pt)
#block[
  #set text(size: 8.5pt)
  #fa-icon("hand", solid: true, fill: palette.danger) #h(3pt)
  *Grenze der Zuständigkeit:* Kristallnachweis, Punktion, Antibiose, harnsäuresenkende Therapie, endgültige Abgrenzung septisch vs. kristallin — *nicht* HP. Absolute KI bis Ausschluss: forcierte Manipulation, i.a. Injektion durch HP, Probebehandeln bei Fieber/Systemik.
]

// ── 6 Case ────────────────────────────────────────────────────
== 6. Fall zur Selbstprüfung

#text(size: 8.5pt)[
  *Situation:* 54-jähriger Mann, seit gestern Nacht „wieder Podagra“ rechts. MTP-I gerötet, heiß, extrem berührungsempfindlich; Vorfuß unbelastbar. Bier + Thiazid. Heute Fiebergefühl, oral 38,3 °C, abgeschlagen. Bittet um „lokale Entlastung und Mobilisation wie beim letzten Schub“.
]

#v(5pt)
#set text(size: 8.5pt)
*Transferfragen — Antwortanker*
#v(3pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 10pt,
  [
    #text(weight: "bold", font: fonts.sans, size: 8.5pt)[(1) Vordergrund?]
    #v(2pt)
    Heißes Mono + Fieber → septisch bis Ausschluss; Infekt-Triage — nicht „Gichtschub mobilisieren“.
  ],
  [
    #text(weight: "bold", font: fonts.sans, size: 8.5pt)[(2) Kontraindiziert?]
    #v(2pt)
    Forcierte Mobilisation, „wie letzter Schub“, i.a. Maßnahmen, abwartendes Probebehandeln.
  ],
  [
    #text(weight: "bold", font: fonts.sans, size: 8.5pt)[(3) Sicherer Schritt?]
    #v(2pt)
    Sitzung stoppen · gleichtags NA / 112 je AZ · Übergabe dokumentieren.
  ],
)

// ── DDx ───────────────────────────────────────────────────────
== DDx-Minimal

#table(
  columns: (38mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 0pt, y: 4pt),
  [#text(weight: "bold", size: 8.5pt)[Gicht]],
  [#text(size: 8.5pt)[Hochakut Stunden, oft MTP-I, Trigger, frühere Attacken — ohne schwere Systembedrohung]],
  [
    #text(weight: "bold", size: 8.5pt, fill: palette.danger)[Septische Arthritis]
    #linebreak()
    #text(size: 7.5pt, weight: "bold", font: fonts.sans, fill: palette.danger)[MUST-NOT-MISS]
  ],
  [#text(size: 8.5pt)[Heißes Gelenk + Fieber/Systemik/Belastungsunfähigkeit; *auch bei Gichtanamnese* bis Ausschluss]],
  [#text(weight: "bold", size: 8.5pt)[CPPD]],
  [#text(size: 8.5pt)[Oft größere Gelenke (Knie); im Erstkontakt oft untrennbar]],
  [#text(weight: "bold", size: 8.5pt)[Trauma / Fraktur]],
  [#text(size: 8.5pt)[Klare Mechanik; entzündliches Mono-Bild fehlt oder atypisch]],
  [#text(weight: "bold", size: 8.5pt)[Erysipel]],
  [#text(size: 8.5pt)[Primär kutan; Gelenk oft freier — im Zweifel nicht herabstufen]],
)

#v(8pt)
#align(center)[
  #text(size: 7.5pt, fill: palette.text-muted)[
    Form Lab Pass T (b-wave) · medium: type+icon · claims pinned to monograph · not production Accept
  ]
]
