// Form Lab Pass C — Schlaganfall · Color / Chrome / simple forms
// lab: schlaganfall-2026-08 · pin: chapter-v-4-schlaganfall.md
// ALLOW: semantic color, left bars, bands, cards, grids, TIME stack, mimic rows
// DENY: free-vision photos, large SVG illustration systems

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Schlaganfall — Form Lab Pass C", author: "form-lab/schlaganfall-2026-08/C")
#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 14mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(
      columns: (1fr, auto),
      [Schlaganfall/TIA · Form Lab · Pass C (Color/Chrome)],
      [FAST · 112 · TIA = Notfall],
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
    fill: white,
    stroke: 0.9pt + palette.text-muted,
  )[
    #text(size: 8pt, weight: "bold", fill: palette.text-muted, tracking: 0.4pt)[
      #upper[Grenze der eigenen Zuständigkeit]
    ]
    #v(3pt)
    #set text(size: 7.3pt)
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
    align(horizon)[#text(size: 7.5pt)[#frame]],
    align(center + horizon)[#text(size: 12pt, fill: palette.danger, weight: "bold")[→]],
    align(horizon)[#text(size: 7.5pt, weight: "bold", fill: palette.danger)[#danger]],
  )
]

// ── Title ──────────────────────────────────────────────────────
= Schlaganfall und TIA — fokal, plötzlich, 112

#text(size: 9pt, fill: palette.text-muted, font: fonts.sans)[
  Fokal-neurologischer Notfall im Direktzugang · Pass C: Color / Chrome
]

#v(5pt)
#danger-band[Verdacht → *112* / Stroke-Unit; kein MSK-Abwarten, keine HWS-Manipulation. Remission entwarnt _nicht_ (TIA = Notfall).]

// ── Big Picture ────────────────────────────────────────────────
== Big Picture

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  soft-card(
    [Was ist es?],
    [Schlaganfall: plötzlicher Hirnfunktionsausfall (Ischämie ~80–85 % / Blutung ~15–20 %). TIA: flüchtiges fokal-neurologisches Defizit — bis Ausschluss *Notfall*.],
    fill: rgb("#f0fdfa"),
    stroke-c: palette.primary.lighten(30%),
  ),
  soft-card(
    [Gefahr Fehllabel],
    [„HWS-Blockade“, periphere Fazialis, Migräne-Aura oder Schulter-Arm vernichten das Lysefenster (< 4,5 h nach *Last seen normal*).],
    fill: rgb("#fef2f2"),
    stroke-c: palette.danger.lighten(40%),
    title-fill: palette.danger,
  ),
  soft-card(
    [HP-Rolle],
    [Screen FAST/BE-FAST · *112* bei Verdacht · sichern · *keine* Provokationstests. Diagnostik/Lyse *ärztlich*.],
    fill: rgb("#f8fafc"),
  ),
)

#v(3pt)
#set text(size: 8.2pt)
Entscheidungsschwelle bewusst niedrig: Im Zweifel Notruf statt Abwarten oder Mobilisieren.

// ── FAST chrome ────────────────────────────────────────────────
== FAST / BE-FAST — Erkennungscluster

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  soft-card(
    [#fa-icon("face-frown", solid: true, size: 8pt)  F · Face],
    [Mundwinkel asymmetrisch? Stirnrunzeln: zentral vs. peripher.],
    fill: rgb("#fef2f2"),
    stroke-c: palette.danger.lighten(40%),
    title-fill: palette.danger,
  ),
  soft-card(
    [#fa-icon("hand", solid: true, size: 8pt)  A · Arm],
    [Armhalteversuch; einseitiges Absinken.],
    fill: rgb("#fff7ed"),
    stroke-c: palette.warning.lighten(30%),
    title-fill: palette.warning.darken(10%),
  ),
  soft-card(
    [#fa-icon("comment", solid: true, size: 8pt)  S · Speech],
    [Aphasie oder Dysarthrie — undeutlich, Wortfindung.],
    fill: rgb("#f0fdfa"),
    stroke-c: palette.primary.lighten(30%),
  ),
  soft-card(
    [#fa-icon("clock", solid: true, size: 8pt)  T · Time],
    [Notruf *jetzt*; *Last seen normal* dokumentieren.],
    fill: rgb("#fef2f2"),
    stroke-c: palette.danger.lighten(40%),
    title-fill: palette.danger,
  ),
)

#v(4pt)
#block(
  width: 100%,
  inset: 7pt,
  radius: 2pt,
  fill: rgb("#fff7ed"),
  stroke: (left: 3.5pt + palette.warning, rest: 0.4pt + palette.warning.lighten(35%)),
)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.warning.darken(15%))[BE-FAST — posteriorer Kreislauf]
  #v(2pt)
  #text(size: 7.5pt)[
    *B*alance (plötzliche Stand-/Gangunsicherheit) · *E*yes (plötzliche Sehstörung). FAST allein ist unempfindlich für Posterior-Infarkte — Schwindel *plus* fokal → *112*.
  ]
]

// ── 1 Enabling ─────────────────────────────────────────────────
== 1. Wann ist daran zu denken?

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  soft-card(
    [#fa-icon("heart-pulse", solid: true, size: 7.5pt)  Risiken],
    [Hypertonie; Vorhofflimmern; Diabetes; Rauchen; Atherosklerose — oft initial *nicht* bekannt.],
  ),
  soft-card(
    [#fa-icon("user", solid: true, size: 7.5pt)  Kontext],
    [Frühere TIA/Schlaganfall; kardiovaskuläre Vorerkrankungen.],
  ),
  soft-card(
    [#fa-icon("bolt", solid: true, size: 7.5pt)  Zeit],
    [*Apoplektiform* Sekunden–Minuten; entscheidende Angabe: *Last seen normal*.],
  ),
)

// ── 2 Mechanism ────────────────────────────────────────────────
== 2. Entstehung und Mechanismus

#block(
  width: 100%,
  inset: (left: 9pt, rest: 7pt),
  radius: 2pt,
  fill: rgb("#f0fdfa"),
  stroke: (left: 3.5pt + palette.primary, rest: 0.4pt + palette.primary.lighten(35%)),
)[
  #text(size: 8pt, weight: "bold", fill: palette.primary)[Verschluss / Blutung → Penumbra]
  #v(3pt)
  #set text(size: 7.5pt)
  Arterielle Unterbrechung → Nervenzellen in der Penumbra sterben ohne Reperfusion. Fokal-neurologische Ausfälle je Territorium (Hemiparese, Aphasie, Hemianopsie, Ataxie). *Direktzugang:* Verzögerte Triage vernichtet Lysefenster — Verdacht → Notruf, *keine* MSK-Verzögerung.
]

// ── 3 Clinical ─────────────────────────────────────────────────
== 3. Klinische Hinweise — vier Kanäle

#grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 5pt,
  soft-card(
    [#fa-icon("comments", solid: true, size: 7pt)  Anamnese],
    [Plötzliche halbseitige Schwäche/Taubheit; hängender Mundwinkel; Sprachstörung; Sehstörung; Schwindel + fokal; *Last seen normal*.],
  ),
  soft-card(
    [#fa-icon("eye", solid: true, size: 7pt)  Beobachtung],
    [Gesichtsasymmetrie; hängende Extremität; unklare Sprache; Unsicherheit Stand/Gang.],
  ),
  soft-card(
    [#fa-icon("hand", solid: true, size: 7pt)  Untersuchung],
    [FAST (≥ 1 → Verdacht); BE-FAST grob — *ohne* Triage zu verzögern; *keine* Provokationstests.],
  ),
  soft-card(
    [#fa-icon("clock-rotate-left", solid: true, size: 7pt)  Verlauf],
    [Perakut; *bereits remittierte* Symptome = TIA-Verdacht bis Ausschluss.],
  ),
)

// ── 4 Mimic ────────────────────────────────────────────────────
== 4. Verdacht, Abgrenzung, trügerische Erklärungen

#block(breakable: false, width: 100%)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 6pt,
    soft-card(
      [Erhärtet den Verdacht],
      list(
        [FAST-positiv mit plötzlichem Beginn],
        [Plötzliche Hemiparese, Aphasie, Hemianopsie],
        [Schwindel *plus* fokal-neurologisches Defizit],
        [Flüchtige TIA-ähnliche Symptome in den letzten 48 h],
      ),
      fill: rgb("#f0fdfa"),
      stroke-c: palette.primary.lighten(30%),
    ),
    soft-card(
      [Nicht übersehen],
      list(
        [Posteriore Infarkte (Schwindel, Ataxie, Sehstörung)],
        [Hypoglykämie als lebensbedrohlicher Mimic],
        [Zentrale vs. periphere Fazialis (Stirnrunzeln)],
        [TIA remittiert ≠ harmlos],
      ),
      fill: rgb("#fef2f2"),
      stroke-c: palette.danger.lighten(40%),
      title-fill: palette.danger,
    ),
  )
]

#v(4pt)
#text(size: 9pt, weight: "bold", fill: palette.danger)[Trügerische Erklärungen]
#v(3pt)
#stack(
  spacing: 2.5pt,
  mimic-row(
    [„HWS-Blockade / Schwindel“],
    [Schwindel + fokal → *112*; *keine* HWS-Mobilisation],
  ),
  mimic-row(
    [„Periphere Fazialis“],
    [Stirn-Check; Begleitdefizite (Arm, Sprache) → Stroke-Pfad],
  ),
  mimic-row(
    [„Migräne-Aura“],
    [Ohne sichere Anamnese und Zeitfenster-Bewusstsein → Notfallpfad],
  ),
  mimic-row(
    [„Schulter-Arm / MSK“],
    [Apoplektiforme Armschwäche + zentrale Zeichen = Hemiparese bis Beweis des Gegenteils],
  ),
)

// ── 5 TIME ─────────────────────────────────────────────────────
== 5. Handeln und Dringlichkeit (TIME)

#stack(
  spacing: 3pt,
  time-tier(
    code: "112",
    title: "Sofort — Notruf / Stroke-Unit",
    bar: palette.danger,
    fill: rgb("#fef2f2"),
    solid-header: true,
    action: [Sitzung stoppen · *112* · Patient sichern · keine weiteren Tests · Stroke-Unit-Pfad.],
    triggers: list(
      [FAST ≥ 1 mit plötzlichem Beginn],
      [Plötzliche halbseitige Sensibilitäts- oder Sehstörung],
      [Schwindel *plus* fokal-neurologisches Defizit],
      [TIA-ähnlich flüchtig — *auch remittiert*, besonders letzte 48 h],
    ),
  ),
  time-tier(
    code: "NA",
    title: "Gleichtags Arzt (ohne 112-Kriterien)",
    bar: palette.warning,
    fill: rgb("#fff7ed"),
    action: [PT aussetzen · gleichtags ärztlich · bei neuer fokal-neurologischer Dynamik *sofort 112*.],
    triggers: list(
      [Nur *ohne* akutes fokal-neurologisches Bild und *ohne* 112-Kriterien],
      [Unklare langsame Progredienz (Tage/Wochen)],
    ),
  ),
  time-tier(
    code: "Beh.",
    title: "Behandeln + Sicherheitsnetz",
    bar: palette.primary,
    fill: rgb("#f0fdfa"),
    action: [PT möglich · Vigilanz · Abbruchkriterien vorab.],
    triggers: list(
      [Gesicherte MSK-Ursache, keine Red Flags],
      [Bekannte TIA/Schlaganfall-Historie erst nach Freigabe aus Akutphase],
    ),
  ),
)

#scope-frame[
  Ausschluss Schlaganfall/TIA, Bildgebung, Lyse/Thrombektomie, ABCD² als Therapieentscheidung — *nicht* HP. Absolute KI: HWS-Manipulation, Provokationstests und Abwarten bei ungeklärtem fokal-neurologischem Defizit. ABCD² nur informativ; ersetzt *keine* Notfallabklärung.
]

// ── 6 Case + DDx + Merksatz: keep together (no orphan merksatz page)

== 6. Fall zur Selbstprüfung

#block(
  width: 100%,
  inset: 6.5pt,
  radius: 2pt,
  fill: rgb("#f8fafc"),
  stroke: (left: 3.5pt + palette.primary, rest: 0.45pt + palette.border),
)[
  #set text(size: 8.2pt)
  #text(weight: "bold", fill: palette.primary)[Situation: ]
  67-jährige Patientin wegen „steifer HWS und Schwindel“. Vor ~40 min linke Hand „weg“, Sprache undeutlich — fast remittiert. Hypertonie. Wünscht HWS-Mobilisation.
]

#v(3pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  soft-card(
    [(1) Vordergrund?],
    [Flüchtige Hand-/Sprachstörung = TIA bis Ausschluss — nicht „HWS lösen“.],
    fill: rgb("#fef2f2"),
    stroke-c: palette.danger.lighten(40%),
    title-fill: palette.danger,
  ),
  soft-card(
    [(2) Kontraindiziert?],
    [HWS-Mobilisation, Provokationstests, Abwarten.],
    fill: rgb("#fff7ed"),
    stroke-c: palette.warning.lighten(30%),
    title-fill: palette.warning.darken(10%),
  ),
  soft-card(
    [(3) Sicherer Schritt?],
    [Stopp · *112* / NA · Last seen normal übergeben.],
    fill: rgb("#f0fdfa"),
    stroke-c: palette.primary.lighten(30%),
  ),
)

== DDx-Minimal

#table(
  columns: (38mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 4.5pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else if y == 2 or y == 3 { rgb("#fef2f2") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Eher …*], [*Diskriminierende Unterschiede*],
  [Ischämischer Schlaganfall], [Apoplektiform, fokal → *112*],
  [*Must-not-miss: TIA*], [Flüchtig/remittiert möglich → *112* / NA bis Ausschluss],
  [*Must-not-miss: Hypoglykämie*], [BZ prüfen *ohne* Notruf-Verzögerung],
  [Intrazerebrale Blutung], [Im Erstkontakt nicht von Ischämie unterscheidbar → *112*],
  [Periphere Fazialis], [Stirn *mit* betroffen — Unsicherheit = *112*],
  [MSK / Radikulopathie], [Segmental, nicht apoplektiform, ohne zentrale Zeichen],
)

#v(3pt)
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: (top: 3pt + palette.danger))[
    #set text(size: 7.2pt)
    #text(weight: "bold", fill: palette.danger)[112] · FAST ≥ 1 / TIA
  ],
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#fff7ed"), stroke: (top: 3pt + palette.warning))[
    #set text(size: 7.2pt)
    #text(weight: "bold", fill: palette.warning.darken(12%))[BE-FAST] · Posterior oft FAST−
  ],
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: (top: 3pt + palette.primary-light))[
    #set text(size: 7.2pt)
    #text(weight: "bold", fill: palette.primary)[Mimic] · „HWS“ entwarnt nicht
  ],
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#f0fdfa"), stroke: (top: 3pt + palette.primary))[
    #set text(size: 7.2pt)
    #text(weight: "bold", fill: palette.primary-dark)[Grenze] · Keine HWS-Manip.
  ],
)
#v(3pt)
#block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#f0fdfa"),
  stroke: (left: 3.5pt + palette.primary, rest: 0.4pt + palette.primary.lighten(35%)),
)[
  #set text(size: 7.6pt)
  #text(weight: "bold", fill: palette.primary)[Direktzugang-Merksatz: ]
  FAST ≥ 1 oder TIA-ähnlich → *112* · Remission entwarnt *nicht* · *Last seen normal* · keine HWS-Manipulation bei Verdacht.
]
#v(2pt)
#align(center)[
  #text(size: 7.5pt, fill: palette.text-muted)[
    Form Lab Pass C · medium: color/chrome · claims pinned · not production Accept
  ]
]

