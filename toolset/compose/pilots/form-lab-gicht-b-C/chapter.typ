// Form Lab Pass C — Gicht · Color / Chrome / simple forms
// lab: gicht-2026-08-b · content pin: Kursbuch5 chapter-v-3-gicht.md (read-only)
// ALLOW: semantic color, left bars, bands, cards, grids, TIME stack, mimic rows
// DENY: free-vision photos, large SVG illustration systems

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Gicht — Form Lab Pass C", author: "form-lab/gicht-2026-08-b/C")
#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 14mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(
      columns: (1fr, auto),
      [Gicht · Form Lab · Pass C (Color/Chrome)],
      [kristall · septisch bis Ausschluss],
    )
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
#show heading.where(level: 3): it => {
  set text(font: fonts.sans, size: 9pt, weight: "bold", fill: palette.primary-dark)
  block(below: 3pt, above: 6pt)[#it.body]
}

// ── Chrome primitives (self-contained) ─────────────────────────

#let danger-band(body) = block(
  width: 100%,
  inset: 8pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger, rest: 0.45pt + palette.danger.lighten(40%)),
)[
  #set text(size: 8.5pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  #body
]

#let card-bar(bar, fill, title, body) = block(
  width: 100%,
  inset: (left: 9pt, rest: 7pt),
  radius: 2pt,
  fill: fill,
  stroke: (left: 3.5pt + bar, rest: 0.4pt + bar.lighten(40%)),
)[
  #text(size: 8pt, weight: "bold", fill: bar)[#title]
  #v(3pt)
  #set text(size: 7.5pt)
  #body
]

#let soft-card(title, body, fill: rgb("#f8fafc"), stroke-c: none, title-fill: none) = {
  let sc = if stroke-c == none { palette.border } else { stroke-c }
  let tf = if title-fill == none { palette.primary } else { title-fill }
  block(
    width: 100%,
    inset: 6.5pt,
    radius: 2pt,
    fill: fill,
    stroke: 0.4pt + sc,
  )[
    #text(size: 8pt, weight: "bold", fill: tf)[#title]
    #v(2.5pt)
    #set text(size: 7.5pt)
    #body
  ]
}

#let time-tier(
  code: "",
  title: "",
  bar: palette.danger,
  fill: rgb("#fef2f2"),
  solid-header: false,
  action: [],
  triggers: none,
) = {
  if solid-header {
    block(
      width: 100%,
      radius: 3pt,
      clip: true,
      stroke: 0.6pt + bar,
    )[
      #block(width: 100%, fill: bar, inset: 7pt)[
        #set text(fill: white)
        #grid(
          columns: (auto, 1fr),
          column-gutter: 6pt,
          align(horizon)[
            #box(
              fill: white,
              inset: (x: 5pt, y: 2pt),
              radius: 2pt,
              text(size: 8pt, weight: "bold", fill: bar)[#code],
            )
          ],
          align(horizon)[
            #text(size: 9pt, weight: "bold")[#title]
          ],
        )
        #v(3pt)
        #set text(size: 7.5pt)
        #text(weight: "bold")[Handlung: ]
        #action
      ]
      #if triggers != none {
        block(width: 100%, fill: fill, inset: 7pt)[
          #set text(size: 7.2pt, fill: palette.text-body)
          #triggers
        ]
      }
    ]
  } else {
    block(
      width: 100%,
      inset: (left: 9pt, rest: 6.5pt),
      radius: 2pt,
      fill: fill,
      stroke: (left: 4pt + bar, rest: 0.5pt + bar.lighten(45%)),
    )[
      #grid(
        columns: (auto, 1fr),
        column-gutter: 6pt,
        align(horizon)[
          #box(
            fill: bar,
            inset: (x: 5pt, y: 2pt),
            radius: 2pt,
            text(size: 7.5pt, weight: "bold", fill: white)[#code],
          )
        ],
        [
          #text(size: 8.5pt, weight: "bold", fill: bar)[#title]
          #v(2pt)
          #set text(size: 7.3pt)
          #text(weight: "bold")[Handlung: ]
          #action
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
  block(
    width: 100%,
    inset: (x: 8pt, y: 7pt),
    radius: 0pt,
    fill: white,
    stroke: 0.9pt + palette.text-muted,
  )[
    #text(size: 8pt, weight: "bold", fill: palette.text-muted, tracking: 0.4pt)[
      #upper[Grenze der eigenen Zuständigkeit]
    ]
    #v(3pt)
    #set text(size: 7.3pt, fill: palette.text-body)
    #body
  ]
}

#let mimic-row(frame, danger) = block(
  width: 100%,
  inset: 5.5pt,
  radius: 2pt,
  stroke: 0.45pt + palette.border,
  fill: white,
)[
  #grid(
    columns: (44mm, 10mm, 1fr),
    column-gutter: 3pt,
    align(horizon)[
      #text(size: 7.5pt)[#frame]
    ],
    align(center + horizon)[
      #text(size: 12pt, fill: palette.danger, weight: "bold")[→]
    ],
    align(horizon)[
      #text(size: 7.5pt, weight: "bold", fill: palette.danger)[#danger]
    ],
  )
]

// ── Title ──────────────────────────────────────────────────────
= Gicht — hochakute Monarthritis und das septische Gelenk

#text(size: 9pt, fill: palette.text-muted, font: fonts.sans)[
  Kristallarthropathie im Direktzugang · Pass C: Color / Chrome / simple forms
]

#v(5pt)
#danger-band[Eine „typische Podagra“ kann eine septische Arthritis maskieren; Kristallnachweis und Gichtanamnese entwarnen _nicht_.]

// ── Big Picture ────────────────────────────────────────────────
== Big Picture

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  soft-card(
    [Was ist Gicht?],
    [Hyperurikämie → Natriumuratkristalle → im DA hochakuter Monoarthritis-Anfall (klassisch Podagra / MTP-I).],
    fill: rgb("#f0fdfa"),
    stroke-c: palette.primary.lighten(30%),
  ),
  soft-card(
    [Gefahr Fehllabel],
    [„Typische Podagra“ / bekannte Gicht kann septische Arthritis *maskieren*; Kristalle und Anamnese entwarnen *nicht*.],
    fill: rgb("#fef2f2"),
    stroke-c: palette.danger.lighten(40%),
    title-fill: palette.danger,
  ),
  soft-card(
    [HP-Rolle],
    [Screen Infekt-/Systemzeichen · triagieren · zuweisen. Diagnosesicherung und Anfallstherapie *ärztlich*. Systembedrohung → *112*; Infektverdacht → gleichtags NA.],
    fill: rgb("#f8fafc"),
  ),
)

#v(3pt)
#set text(size: 8.2pt)
Im Direktzugang zählt das _heiße Mono-Gelenk_ — Stunden-Tempo, Rötung/Überwärmung, oft Belastungsunfähigkeit. Fieber oder Systemik nie als „nur Gicht“ abtun.

// ── 1 Enabling ─────────────────────────────────────────────────
== 1. Wann ist daran zu denken?

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  soft-card(
    [#fa-icon("flask", solid: true, size: 7.5pt)  Risiken / Auslöser],
    [Hyperurikämie; purinreiche Ernährung; Alkohol; Diuretika; Adipositas; eingeschränkte Nierenfunktion.],
  ),
  soft-card(
    [#fa-icon("user", solid: true, size: 7.5pt)  Kontext],
    [Frühere Attacken oder Tophi; metabolisches Syndrom; Nierenerkrankung; Hautläsionen/Ulzera über Tophi.],
  ),
  soft-card(
    [#fa-icon("clock", solid: true, size: 7.5pt)  Zeit / Trigger],
    [Akut binnen Stunden; oft nach Alkohol, Mahlzeit, Medikamentenwechsel. Rezidive stützen — entwarnen Systemik *nicht*.],
  ),
)

// ── 2 Mechanism ────────────────────────────────────────────────
== 2. Entstehung und Mechanismus

#card-bar(
  palette.primary,
  rgb("#f0fdfa"),
  [Kristall → Entzündung (kurz)],
  [
    Erhöhte Harnsäurespiegel → Ausfällung von Natriumuratkristallen in Synovia und periartikulärem Gewebe → rasche neutrophile Entzündung mit Schmerz, Rötung, Schwellung. Chronisch: Tophi und Gelenkschäden.
    #v(3pt)
    *Direktzugang:* Klinisches Bild einer Kristallarthropathie ist eindrucksvoll, aber oft *nicht sicher* von bakterieller Arthritis zu trennen — Superinfektion von Tophi oder Gelenk bleibt möglich.
  ],
)

// ── 3 Clinical ─────────────────────────────────────────────────
== 3. Klinische Hinweise — heißes Gelenk

#block(
  width: 100%,
  inset: (x: 9pt, y: 8pt),
  radius: 2pt,
  fill: white,
  stroke: (left: 3.5pt + palette.warning, rest: 0.5pt + palette.border),
)[
  #text(size: 9pt, weight: "bold", fill: palette.warning.darken(15%))[
    Erkennungscluster — heiße Monarthritis (klassisch MTP-I / Podagra)
  ]
  #v(4pt)
  #set text(size: 8.2pt)
  Hochakuter, hochschmerzhafter Monoarthritis-Anfall — *klassisch am Großzehengrundgelenk (MTP-I)*:
  *Rötung, Überwärmung, Schwellung*, Schonhaltung; oft *Belastungsunfähigkeit* des Vorfußes; starke Druck- und Bewegungsschmerzhaftigkeit.
  #v(3pt)
  #text(size: 7.5pt, fill: palette.text-muted)[
    Grobe Funktionsprüfung *ohne* forcierte Manipulation am unklar heißen Gelenk.
  ]
]

#v(5pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  soft-card(
    [Oberfläche],
    [Rötung · Überwärmung · Schwellung am Mono-Gelenk (oft MTP-I).],
    fill: rgb("#fef2f2"),
    stroke-c: palette.danger.lighten(40%),
    title-fill: palette.danger,
  ),
  soft-card(
    [Funktion],
    [Schonhaltung · oft Vorfuß unbelastet · starker Druck-/Bewegungsschmerz.],
    fill: rgb("#fff7ed"),
    stroke-c: palette.warning.lighten(30%),
    title-fill: palette.warning.darken(10%),
  ),
  soft-card(
    [Kontext],
    [Stunden-Tempo · Trigger Alkohol/Diuretika/purinreich · frühere Attacken stützen, entwarnen Systemik *nicht*.],
    fill: rgb("#f8fafc"),
  ),
)

#v(4pt)
#text(size: 8.5pt, weight: "bold", fill: palette.primary)[Vier Kanäle]
#v(2.5pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 5pt,
  soft-card(
    [#fa-icon("comments", solid: true, size: 7pt)  Anamnese],
    [Hochakuter Mono-Gelenkschmerz binnen Stunden; oft MTP-I; frühere Attacken; Alkohol, Diuretika, purinreiche Kost; *Fieber?* *Hautverletzung?*],
  ),
  soft-card(
    [#fa-icon("eye", solid: true, size: 7pt)  Beobachtung],
    [Rötung, Überwärmung, Schwellung; Schonhaltung; ggf. Tophi; bei Systemik blasser/mitgenommener Gesamteindruck.],
  ),
  soft-card(
    [#fa-icon("hand", solid: true, size: 7pt)  Untersuchung],
    [Starke Druck-/Bewegungsschmerzhaftigkeit; oft Belastungsunfähigkeit; grobe Funktionsprüfung *ohne* forcierte Manipulation.],
  ),
  soft-card(
    [#fa-icon("clock-rotate-left", solid: true, size: 7pt)  Verlauf],
    [Anfall: Stunden bis wenige Tage; rezidivierend möglich; polyartikulärer Entzündungssturm mit Systemik ≠ gewöhnlicher Gichtschub.],
  ),
)

// ── 4 Mimic / DDx ──────────────────────────────────────────────
== 4. Verdacht, Abgrenzung, trügerische Erklärungen

// Pair only: avoid orphan card shells across page break
#block(breakable: false, width: 100%)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 6pt,
    soft-card(
      [Erhärtet den Verdacht (Gichtanfall)],
      list(
        [hochakute Monarthritis binnen Stunden, typischerweise MTP-I],
        [starke Rötung/Überwärmung],
        [bekannte Hyperurikämie oder frühere Attacken],
        [passender Trigger — *ohne* schwere Systembedrohung],
      ),
      fill: rgb("#f0fdfa"),
      stroke-c: palette.primary.lighten(30%),
    ),
    soft-card(
      [Passt eher nicht],
      list(
        [rein mechanisches Trauma mit klarer Verletzungsmechanik *ohne* entzündliches Bild],
        [chronisch-symmetrische Polyarthritis kleiner Gelenke ohne akuten Mono-Schub],
        [freies Gelenk bei rein kutanem Erysipel (klinisch unsicher)],
      ),
      fill: rgb("#f8fafc"),
    ),
  )
]

#v(4pt)
#block(
  width: 100%,
  inset: 6.5pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
)[
  #text(size: 8pt, weight: "bold", fill: palette.danger)[Nicht übersehen]
  #v(2.5pt)
  #set text(size: 7.2pt)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 6pt,
    row-gutter: 2.5pt,
    [*Septische Arthritis:* heißes Gelenk + Fieber/Systemik/Belastungsunfähigkeit; *auch bei Gichtanamnese* bis Ausschluss],
    [*Pseudogicht / CPPD:* oft Knie; im Erstkontakt oft untrennbar],
    [*Trauma / Fraktur:* klare Mechanik, ggf. Hämatom],
    [*Erysipel / Weichteilinfekt:* primär kutan; Gelenk freier — im Zweifel nicht herabstufen],
    [*RA / SpA-Schub:* oft polyartikulär; akute Mono mit Hitze bleibt infektpflichtig],
    [*Tophi-Infekt:* Hautläsionen/Ulzera über Tophi],
  )
]

#v(4pt)
#text(size: 9pt, weight: "bold", fill: palette.danger)[Trügerische Erklärungen]
#v(3pt)
#stack(
  spacing: 2.5pt,
  mimic-row(
    [„Umgeknickt / Podagra als Distorsion“],
    [fehlt adäquate Traumamechanik und entzündliches Bild → Gicht *und* Infekt weiterhin zwingend mitdenken],
  ),
  mimic-row(
    [„Bekannte Gicht – also nur Schub“],
    [Gichtanamnese und *sogar Kristallnachweis* schließen bakterielle Gelenkinfektion *nicht* aus; Fieber/Systemik → Infekt-Triage],
  ),
  mimic-row(
    [„Knie-Schub = immer Gicht“],
    [am Knie Pseudogicht/CPPD häufig, im Erstkontakt oft ununterscheidbar; septische Arthritis bleibt Must-not-miss],
  ),
)

// ── 5 TIME ─────────────────────────────────────────────────────
== 5. Handeln und Dringlichkeit (TIME)

#stack(
  spacing: 3pt,
  time-tier(
    code: "112",
    title: "Sofort — Notfalltransport",
    bar: palette.danger,
    fill: rgb("#fef2f2"),
    solid-header: true,
    action: [Behandlung abbrechen; Vitalzeichen; *112*; keine Manipulation, keine Injektion.],
    triggers: list(
      [Heißes, geschwollenes Gelenk *plus* Fieber/Systemik *plus* deutliche AZ-Verschlechterung / Sepsis-Zeichen],
      [Polyartikulärer Entzündungssturm mit schwerer Systembedrohung],
    ),
  ),
  time-tier(
    code: "NA",
    title: "Notaufnahme / gleichtags Arzt",
    bar: palette.warning,
    fill: rgb("#fff7ed"),
    action: [Physiotherapie *abbrechen*. *Noch heute* NA / ortho Notdienst. Septisch bis Ausschluss. Übergabe: Zeitverlauf, Temperatur, Belastbarkeit, Gichtanamnese, Haut, Injektion/OP.],
    triggers: list(
      [Akutes heißes Mono mit *Belastungsunfähigkeit* oder *stärkstem Ruheschmerz* (auch *ohne* Fieber)],
      [Heißes Gelenk *mit* Fieber/Systemzeichen (auch bei bekannter Gicht); nach i. a. Injektion/OP/Trauma; Hochrisiko; Ulcus/Tophi + Infektzeichen],
    ),
  ),
  time-tier(
    code: "T3",
    title: "Zeitnah Facharzt / Hausarzt",
    bar: palette.primary-light,
    fill: rgb("#f8fafc"),
    action: [Keine endgültige Gichtdiagnose im HP-Setting. Zeitnah HA/Rheumatologie. Sicherheitsnetz: Fieber, Hitze-Zunahme, neue Belastungsunfähigkeit.],
    triggers: list(
      [Nur *bereits ärztlich eingeordnetes* rezidivierendes Muster *ohne* heißes Mono mit Belastungsunfähigkeit und *ohne* Systemik],
    ),
  ),
  time-tier(
    code: "T4",
    title: "Behandeln + Sicherheitsnetz",
    bar: palette.primary,
    fill: rgb("#f0fdfa"),
    action: [Schmerzarmer Bewegungsrahmen; *keine* forcierte Belastung im akuten heißen Anfall; Rückkehrgründe: Fieber, Systemik, neue Hitze, polyartikuläre Ausbreitung.],
    triggers: list(
      [Stabiles, ärztlich eingeordnetes Muster *ohne* Red Flags; abgestimmte Maßnahmen nach Anfall],
    ),
  ),
)

#scope-frame[
  Kristallnachweis; Gelenkpunktion; Antibiose; harnsäuresenkende Therapie; endgültige Abgrenzung septisch vs. kristallin. HP Physio *screent und triagiert* — punktiert und injiziert nicht; keine Intraartikulär-Injektion.
]

#v(3pt)
#block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
)[
  #set text(size: 7.4pt)
  #text(weight: "bold", fill: palette.danger)[Absolute Kontraindikationen bis zum Ausschluss: ]
  forcierte Manipulation und invasive lokale Maßnahmen am unklar heißen Gelenk; Intraartikulär-Injektion durch HP; abwartendes „Probebehandeln“ bei Fieber/Systemik.
]

// ── 6 Mini-case ────────────────────────────────────────────────
== 6. Fall zur Selbstprüfung

#block(
  width: 100%,
  inset: 7.5pt,
  radius: 2pt,
  fill: rgb("#f8fafc"),
  stroke: (left: 3.5pt + palette.primary, rest: 0.45pt + palette.border),
)[
  #set text(size: 8.4pt)
  #text(weight: "bold", fill: palette.primary)[Situation: ]
  54-jähriger Mann, seit gestern Nacht „wieder Podagra“ am rechten Großzeh. Das MTP-I ist gerötet, heiß und extrem berührungsempfindlich; er belastet den Vorfuß nicht. Er trinkt regelmäßig Bier und nimmt ein Thiazid-Diuretikum. Heute Morgen Fiebergefühl, oral 38,3 °C, er wirkt abgeschlagen. Er bittet um „lokale Entlastung und Mobilisation wie beim letzten Schub“.
]

#v(4pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  soft-card(
    [(1) Vordergrund?],
    [Heißes Mono + Fieber → septisch bis Ausschluss; Infekt-Triage — nicht „Gichtschub mobilisieren“.],
    fill: rgb("#fef2f2"),
    stroke-c: palette.danger.lighten(40%),
    title-fill: palette.danger,
  ),
  soft-card(
    [(2) Kontraindiziert?],
    [Forcierte Mobilisation, „wie letzter Schub“, i.a. Maßnahmen, abwartendes Probebehandeln.],
    fill: rgb("#fff7ed"),
    stroke-c: palette.warning.lighten(30%),
    title-fill: palette.warning.darken(10%),
  ),
  soft-card(
    [(3) Sicherer Schritt?],
    [Sitzung stoppen · gleichtags NA / 112 je AZ · Übergabe dokumentieren.],
    fill: rgb("#f0fdfa"),
    stroke-c: palette.primary.lighten(30%),
  ),
)

// ── DDx ────────────────────────────────────────────────────────
== DDx-Minimal

#table(
  columns: (38mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else if y == 2 { rgb("#fef2f2") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Eher …*], [*Diskriminierende Unterschiede*],
  [Gicht (Kristallarthropathie)], [Hochakut Stunden, oft MTP-I, Trigger Alkohol/Diuretika, frühere Attacken — ohne schwere Systembedrohung],
  [*Must-not-miss: Septische Arthritis*], [Heißes Gelenk + Fieber/Systemik/Belastungsunfähigkeit; *auch bei Gichtanamnese* bis Ausschluss],
  [Pseudogicht / CPPD], [Oft größere Gelenke (Knie); klinisch im Erstkontakt oft untrennbar],
  [Trauma / Fraktur], [Klare Mechanik, ggf. Hämatom; entzündliches Mono-Bild fehlt oder ist atypisch],
  [Erysipel / Weichteilinfekt], [Primär kutan; Gelenkbeweglichkeit oft freier — im Zweifel nicht herabstufen],
  [RA / SpA-Schub], [Oft polyartikulär/chronisch-schubförmig; akute Monoarthritis mit Hitze bleibt infektpflichtig],
)

#v(6pt)
// Compact job-scan recap (pinned claims only; fills residual air on case page)
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: (top: 3pt + palette.danger))[
    #set text(size: 7.3pt)
    #text(weight: "bold", fill: palette.danger)[112]
    #v(2pt)
    Systemik + heißes Gelenk
  ],
  block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#fff7ed"), stroke: (top: 3pt + palette.warning))[
    #set text(size: 7.3pt)
    #text(weight: "bold", fill: palette.warning.darken(12%))[NA]
    #v(2pt)
    Heißes Mono / unbelastbar
  ],
  block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: (top: 3pt + palette.primary-light))[
    #set text(size: 7.3pt)
    #text(weight: "bold", fill: palette.primary)[Mimic]
    #v(2pt)
    „Nur Schub“ entwarnt nicht
  ],
  block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#f0fdfa"), stroke: (top: 3pt + palette.primary))[
    #set text(size: 7.3pt)
    #text(weight: "bold", fill: palette.primary-dark)[Grenze]
    #v(2pt)
    Keine Punktion / Injektion
  ],
)

#v(5pt)
#block(
  width: 100%,
  inset: 6.5pt,
  radius: 2pt,
  fill: rgb("#f0fdfa"),
  stroke: (left: 3.5pt + palette.primary, rest: 0.4pt + palette.primary.lighten(35%)),
)[
  #set text(size: 7.8pt)
  #text(weight: "bold", fill: palette.primary)[Direktzugang-Merksatz: ]
  Heißes Gelenk → immer bakterielle Arthritis mitdenken · Kristalle und Gichtanamnese entwarnen *nicht* · HP screent und triagiert, punktiert und injiziert *nicht*.
]

#v(5pt)
#align(center)[
  #text(size: 7.5pt, fill: palette.text-muted)[
    Form Lab Pass C · medium: color/chrome · claims pinned to monograph · not production Accept
  ]
]
