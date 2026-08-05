// Form Lab Pass C — Melanom ABCDE · Color / Chrome / simple forms
// lab: melanom-abcde-2026-08-b · pin: chapter-v-10-melanom-abcde-hautscreening.md

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Melanom ABCDE — Form Lab Pass C", author: "form-lab/melanom-abcde-2026-08-b/C")
#set page(
  paper: "a4",
  margin: (inside: 18mm, outside: 15mm, top: 12mm, bottom: 13mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(
      columns: (1fr, auto),
      [Melanom / ABCDE · Form Lab · Pass C (Color/Chrome)],
      [Screen · zuweisen · keine Exzision],
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
            #box(fill: white, inset: (x: 5pt, y: 2pt), radius: 2pt,
              text(size: 8pt, weight: "bold", fill: bar)[#code])
          ],
          align(horizon)[#text(size: 9pt, weight: "bold")[#title]],
        )
        #v(3pt)
        #set text(size: 7.5pt)
        #text(weight: "bold")[Handlung: ] #action
      ]
      #if triggers != none {
        block(width: 100%, fill: fill, inset: 7pt)[
          #set text(size: 7.2pt)
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
          #box(fill: bar, inset: (x: 5pt, y: 2pt), radius: 2pt,
            text(size: 7.5pt, weight: "bold", fill: white)[#code])
        ],
        [
          #text(size: 8.5pt, weight: "bold", fill: bar)[#title]
          #v(2pt)
          #set text(size: 7.3pt)
          #text(weight: "bold")[Handlung: ] #action
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
  block(width: 100%, inset: (x: 8pt, y: 7pt), fill: white, stroke: 0.9pt + palette.text-muted)[
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
= Melanom-Verdacht — ABCDE und Hautscreening im Direktzugang

#text(size: 9pt, fill: palette.text-muted, font: fonts.sans)[
  Strukturierter Blick + Zuweisung · Pass C: Color / Chrome
]

#v(5pt)
#danger-band[Keine Melanom-Diagnose und keine destruktiven Maßnahmen an suspekten Läsionen. ABCDE-suspekt → gleichtags–zeitnah zuweisen; 112 nur bei vitaler Begleitlage.]

// ── Big Picture ────────────────────────────────────────────────
== Big Picture

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  soft-card(
    [HP-Rolle],
    [Strukturierter Blick (ABCDE + Ugly Duckling) beim Entkleiden · beschreiben · *zuweisen* — nicht diagnostizieren oder exzidieren.],
    fill: rgb("#f0fdfa"),
    stroke-c: palette.primary.lighten(30%),
  ),
  soft-card(
    [Gefahr Fehllabel],
    [„Alter Fleck“, „seborrhoische Keratose“, „Nagelhämatom“ ohne Evolutionsfrage und ohne Zuweisung → verzögerte Diagnostik.],
    fill: rgb("#fef2f2"),
    stroke-c: palette.danger.lighten(40%),
    title-fill: palette.danger,
  ),
  soft-card(
    [Dringlichkeit],
    [Melanom typisch *nicht* 112. Blutend/ulzeriert/ABCDE-suspekt → gleichtags–zeitnah HA/Derm. MSK oft fortsetzbar, wenn Läsion unberührt.],
    fill: rgb("#f8fafc"),
  ),
)

// ── ABCDE chrome ───────────────────────────────────────────────
== ABCDE — Erkennungscluster

#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  column-gutter: 3.5pt,
  soft-card([*A*], [Asymmetrie — eine Hälfte ≠ andere], fill: rgb("#fef2f2"), stroke-c: palette.danger.lighten(40%), title-fill: palette.danger),
  soft-card([*B*], [Border — unregelmäßig, ausgefranst], fill: rgb("#fff7ed"), stroke-c: palette.warning.lighten(30%), title-fill: palette.warning.darken(10%)),
  soft-card([*C*], [Color — ≥2 Farben / ungleichmäßig], fill: rgb("#f0fdfa"), stroke-c: palette.primary.lighten(30%)),
  soft-card([*D*], [Diameter — oft ≥6 mm (nicht absolut)], fill: rgb("#f8fafc")),
  soft-card([*E*], [Evolution — Form, Farbe, Größe, Juckreiz, Blutung], fill: rgb("#fef2f2"), stroke-c: palette.danger.lighten(40%), title-fill: palette.danger),
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
  #text(weight: "bold", fill: palette.warning.darken(15%))[
    #fa-icon("duck", solid: true, size: 8pt)  Ugly Duckling
  ]
  #v(2pt)
  #text(size: 7.5pt)[
    Die Läsion, die *anders* ist als die übrigen Naevi des Patienten — auch ohne volles ABCDE. Einzeln und im Vergleich bewerten.
  ]
]

// ── Enabling ───────────────────────────────────────────────────
== 1. Wann ist daran zu denken?

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  soft-card(
    [#fa-icon("sun", solid: true, size: 7.5pt)  Risiken],
    [UV-Exposition; heller Hauttyp; viele Naevi; positive Familien-/Eigenanamnese Melanom.],
  ),
  soft-card(
    [#fa-icon("eye", solid: true, size: 7.5pt)  Kontext],
    [Entkleiden (Rücken, Nacken); subunguale Pigmentierung; B-Symptome + multiple Hautknoten.],
  ),
  soft-card(
    [#fa-icon("clock", solid: true, size: 7.5pt)  Evolution],
    [Patient: „schon ewig“ ersetzt keine Evolutionsfrage — Form, Farbe, Größe, Juckreiz, Blutung.],
  ),
)

// ── Mechanism ──────────────────────────────────────────────────
== 2. Mechanismus (kurz)

#block(
  width: 100%,
  inset: (left: 9pt, rest: 7pt),
  radius: 2pt,
  fill: rgb("#f0fdfa"),
  stroke: (left: 3.5pt + palette.primary, rest: 0.4pt + palette.primary.lighten(35%)),
)[
  #text(size: 8pt, weight: "bold", fill: palette.primary)[Melanozyten → invasives Wachstum]
  #v(3pt)
  #set text(size: 7.5pt)
  Maligne Transformation pigmentbildender Zellen; horizontale und vertikale Ausbreitung. Frühe Erkennung und *ärztliche* Exzisionsabklärung verbessern Prognose. HP: Screen und zuweisen — nicht histologisch einordnen.
]

// ── Clinical ───────────────────────────────────────────────────
== 3. Klinische Hinweise

#grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 5pt,
  soft-card(
    [#fa-icon("comments", solid: true, size: 7pt)  Anamnese],
    [Evolution? Juckreiz/Blutung? Trauma am Nagel? B-Symptome? Hautkrebs-Screening bekannt?],
  ),
  soft-card(
    [#fa-icon("eye", solid: true, size: 7pt)  Beobachtung],
    [ABCDE-Merkmale; Ugly Duckling; Nagelwall-Pigment (Hutchinson-Zeichen-Verdacht); Rücken/Nacken mitinspizieren.],
  ),
  soft-card(
    [#fa-icon("hand", solid: true, size: 7pt)  Untersuchung],
    [Visuell beschreiben — *keine* destruktive Probe, keine Kürettage, keine „Abtragung“.],
  ),
  soft-card(
    [#fa-icon("clock-rotate-left", solid: true, size: 7pt)  Verlauf],
    [Rasche Größenzunahme, neue Farben, Ulzeration → Dringlichkeit hochstufen.],
  ),
)

// ── Mimic ──────────────────────────────────────────────────────
== 4. Verdacht, Abgrenzung, trügerische Erklärungen

#block(breakable: false, width: 100%)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 6pt,
    soft-card(
      [Erhärtet den Verdacht],
      list(
        [≥2 ABCDE-Kriterien oder klare Evolution],
        [Ugly Duckling],
        [Blutung/Ulzeration unklarer Läsion],
        [Subungual + Nagelwall-Pigment ohne Trauma],
      ),
      fill: rgb("#f0fdfa"),
      stroke-c: palette.primary.lighten(30%),
    ),
    soft-card(
      [Nicht übersehen],
      list(
        [Melanom hinter seborrhoischer Keratose-Anmutung],
        [Subunguales Melanom vs. Hämatom],
        [Amelanotische Formen],
        [B-Symptome + multiple Hautknoten (Metastasen-Screen)],
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
  mimic-row([„Alter Fleck“], [Ohne Evolutionsfrage wird maligne Transformation verpasst]),
  mimic-row([„Seborrhoische Keratose“], [Endgültige Einordnung *ärztlich*; bei Suspekt zuweisen]),
  mimic-row([„Nagelhämatom“], [Ohne Trauma + Nagelwall-Pigment → Melanom-DDx zeitnah]),
  mimic-row([„Rücken nicht Ziel“], [Patient sieht Läsion oft nicht — mitinspizieren und zuweisen]),
)

// ── TIME ───────────────────────────────────────────────────────
== 5. Handeln und Dringlichkeit (TIME)

#stack(
  spacing: 3pt,
  time-tier(
    code: "112",
    title: "Selten — nur vitale Begleitlage",
    bar: palette.danger,
    fill: rgb("#fef2f2"),
    solid-header: true,
    action: [Notruf + Standard-Notfallmanagement (schwere Blutung, Schock) — onkologisch-derm. sonst zeitkritisch, nicht reanimationspflichtig.],
    triggers: list(
      [Melanom typisch *nicht* primär 112],
      [Ausnahme: vital bedrohliche Begleitlage],
    ),
  ),
  time-tier(
    code: "NA",
    title: "Gleichtags / heute — suspekte Läsion",
    bar: palette.warning,
    fill: rgb("#fff7ed"),
    action: [Läsion *nicht* behandeln · keine Destruktion · HA/Derm · schriftlich „Melanom-DDx / ABCDE-suspekt?“],
    triggers: list(
      [Blutende/ulzerierte unklare Läsion],
      [ABCDE-suspekt oder rasch wachsend],
      [B-Symptome + multiple Hautknoten],
    ),
  ),
  time-tier(
    code: "T3",
    title: "Zeitnah Derm / HA",
    bar: palette.primary-light,
    fill: rgb("#f8fafc"),
    action: [Schriftliche Zuweisung zur Exzisionsabklärung · Dringlichkeit + Rückkehrgründe.],
    triggers: list(
      [Subunguale Pigmentierung + Nagelwall (Hutchinson-Verdacht)],
      [Ugly Duckling ohne akute Blutung],
    ),
  ),
  time-tier(
    code: "Beh.",
    title: "Behandeln + Screen-Hinweis",
    bar: palette.primary,
    fill: rgb("#f0fdfa"),
    action: [MSK fortsetzen · neu auffällige Läsion → stoppen + zuweisen · Hautkrebs-Screening (DE ab 35 J., alle 2 J.) hinweisen.],
    triggers: list(
      [Ohne suspekte Kriterien],
    ),
  ),
)

#scope-frame[
  Keine Melanom-Diagnose, keine Exzision, keine destruktiven Maßnahmen an suspekten Läsionen. Endgültige DDx (seborrhoische Keratose vs. Melanom) ist *ärztlich*.
]

// ── Case + DDx + Merksatz (unbreakable — no orphan page)

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
  52 J. nach Diskektomie. Schulterblatt: asymmetrisch, unregelmäßig, mehrfarbig ~8 mm, „schon ewig, juckt manchmal.“ Keine B-Symptome. Will mobilisiert werden.
]

#v(3pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  soft-card(
    [(1) Maßgeblich?],
    [ABCDE-suspekt → gleichtags–zeitnah zuweisen. MSK nur bei unberührter Läsion.],
    fill: rgb("#fef2f2"),
    stroke-c: palette.danger.lighten(40%),
    title-fill: palette.danger,
  ),
  soft-card(
    [(2) Kontraindiziert?],
    [Destruktion; „alter Fleck“; Abwarten ohne Zuweisung.],
    fill: rgb("#fff7ed"),
    stroke-c: palette.warning.lighten(30%),
    title-fill: palette.warning.darken(10%),
  ),
  soft-card(
    [(3) Sicherer Schritt?],
    [Beschreiben · schriftlich Derm/HA · Sicherheitsnetz.],
    fill: rgb("#f0fdfa"),
    stroke-c: palette.primary.lighten(30%),
  ),
)

== DDx-Minimal

#table(
  columns: (38mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 4.5pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else if y == 1 { rgb("#fef2f2") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Eher …*], [*Diskriminierende Unterschiede*],
  [*Melanom (Verdacht)*], [ABCDE+ / Evolution / Ugly Duckling / Blutung → zuweisen],
  [Atypischer Nävus], [Nur ärztlich/histologisch trennen],
  [Seborrhoische Keratose], [Bei Unsicherheit nicht selbst etikettieren],
  [Subunguales Hämatom], [Ohne Trauma + Nagelwall → Melanom-DDx],
  [BCC / Hämangiom], [Unklare pigmentierte/blutende Läsion immer ärztlich],
)

#v(3pt)
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: (top: 3pt + palette.danger))[
    #set text(size: 7.2pt)
    #text(weight: "bold", fill: palette.danger)[ABCDE] · A–E + Evolution
  ],
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#fff7ed"), stroke: (top: 3pt + palette.warning))[
    #set text(size: 7.2pt)
    #text(weight: "bold", fill: palette.warning.darken(12%))[Ugly] · Anders als die anderen
  ],
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: (top: 3pt + palette.primary-light))[
    #set text(size: 7.2pt)
    #text(weight: "bold", fill: palette.primary)[Zuweisen] · Heute / zeitnah Derm
  ],
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#f0fdfa"), stroke: (top: 3pt + palette.primary))[
    #set text(size: 7.2pt)
    #text(weight: "bold", fill: palette.primary-dark)[Grenze] · Keine Destruktion
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
  ABCDE + Ugly Duckling screenen · suspekt → zuweisen · *keine* destruktiven Maßnahmen · MSK oft fortsetzbar bei unberührter Läsion.
]
#v(2pt)
#align(center)[
  #text(size: 7.5pt, fill: palette.text-muted)[
    Form Lab Pass C · medium: color/chrome · claims pinned · not production Accept
  ]
]

