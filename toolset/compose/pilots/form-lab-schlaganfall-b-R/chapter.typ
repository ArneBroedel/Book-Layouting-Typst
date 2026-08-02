// Form Lab Pass R — Schlaganfall · Raster aspects
// lab: schlaganfall-2026-08-b · assets under domains/medical/assets/form-lab/schlaganfall-2026-08-b/R/

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Schlaganfall — Form Lab Pass R", author: "form-lab/schlaganfall-2026-08-b/R")
#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 14mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Schlaganfall · Form Lab · Pass R (Raster aspects)], [viele kleine Kacheln · Typst-Text außerhalb])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(3pt)
    grid(columns: (1fr, auto), [Form Lab · raster aspects], counter(page).display("1"))
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
  block(below: 5pt, above: 10pt)[
    #it.body
    #v(2pt)
    #line(length: 24mm, stroke: 1pt + palette.primary)
  ]
}

#let atom(path, w: 38mm, cap: none) = {
  block(
    width: w + 4mm,
    inset: 2pt,
    radius: 2pt,
    stroke: 0.4pt + palette.border,
    fill: white,
  )[
    #image(path, width: w)
    #if cap != none {
      v(2pt)
      set text(size: 6.5pt, fill: palette.text-muted, font: fonts.sans)
      align(center)[#cap]
    }
  ]
}

#let safety(body) = block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger),
)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.danger)[Safety (Text außerhalb Raster): ]
  #body
]

#let A = "/domains/medical/assets/form-lab/schlaganfall-2026-08-b/R"

// ── Title ─────────────────────────────────────────────────────
= Schlaganfall und TIA — fokal, plötzlich, 112

#text(size: 9pt, fill: palette.text-muted, font: fonts.sans)[
  Pass R: viele *kleine* Raster-Kacheln · Claims im Typst-Text · keine Mega-Infografik
]

#v(5pt)
#safety[Verdacht → *112* / Stroke-Unit; kein MSK-Abwarten. TIA remittiert entwarnt *nicht*. Bilder lehren Gestalt, nicht die Diagnose.]

// ── FAST montage ──────────────────────────────────────────────
== FAST — Kachel-Montage

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 5pt,
  align(center)[
    #atom(A + "/aspect-face-droop.jpg", w: 36mm, cap: [Kachel F · Face / Mundwinkel])
  ],
  align(center)[
    #atom(A + "/aspect-arm-drift.jpg", w: 36mm, cap: [Kachel A · Arm-Drift])
  ],
  align(center)[
    #atom(A + "/aspect-speech.jpg", w: 36mm, cap: [Kachel S · Speech])
  ],
  align(center)[
    #atom(A + "/aspect-clock.jpg", w: 36mm, cap: [Kachel T · Time / 112])
  ],
)

#v(4pt)
#set text(size: 8.5pt)
*Claim-Audit (Kacheln):* Bilder zeigen *Gestalt* (Asymmetrie, Absinken, Sprachkontext, Zeitdruck) — sie *diagnostizieren* keinen Schlaganfall. FAST ≥ 1 mit plötzlichem Beginn → *112*. BE-FAST (Balance/Eyes) ergänzt Posterior-Kreislauf; FAST allein unempfindlich.

// ── Big Picture ───────────────────────────────────────────────
== Big Picture

Schlaganfall: plötzlicher Hirnfunktionsausfall (Ischämie ~80–85 % / Blutung ~15–20 %). TIA: flüchtiges fokal-neurologisches Defizit — bis Ausschluss *Notfall*. HP: Screen · triagieren · *112* — nicht mobilisieren.

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  block(inset: 6pt, fill: rgb("#f8fafc"), radius: 2pt, stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold")[Wann denken?]
    #v(2pt)
    #text(size: 7.5pt)[Hypertonie, VHF, Diabetes, Rauchen; frühere TIA/Stroke; *apoplektiform*; Last seen normal.]
  ],
  block(inset: 6pt, fill: rgb("#f8fafc"), radius: 2pt, stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold")[Mechanismus]
    #v(2pt)
    #text(size: 7.5pt)[Verschluss/Blutung → Penumbra stirbt ohne Reperfusion. Verzögerte Triage vernichtet Lysefenster.]
  ],
  block(inset: 6pt, fill: rgb("#fef2f2"), radius: 2pt, stroke: 0.4pt + palette.danger.lighten(40%))[
    #text(size: 8pt, weight: "bold", fill: palette.danger)[Nicht entwarnen]
    #v(2pt)
    #text(size: 7.5pt)[TIA remittiert ≠ harmlos. „HWS-Blockade“ entwarnt zentrale Zeichen *nicht*.]
  ],
)

// ── Clinical ──────────────────────────────────────────────────
== Klinische Hinweise

#table(
  columns: (28mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 0pt, y: 4pt),
  [*Anamnese*], [Plötzliche halbseitige Schwäche; Mundwinkel; Sprache; Sehstörung; Schwindel + fokal; *Last seen normal*],
  [*Beobachtung*], [Gesichtsasymmetrie; hängende Extremität; unklare Sprache; Unsicherheit Stand/Gang],
  [*Untersuchung*], [FAST (≥ 1 → Verdacht); BE-FAST grob; *keine* Provokationstests],
  [*Verlauf*], [Perakut; *bereits remittiert* = TIA-Verdacht bis Ausschluss],
)

// ── Mimic ─────────────────────────────────────────────────────
== Trügerische Erklärungen

#set text(size: 8.5pt)
1. *„HWS-Blockade / Schwindel“* → Schwindel + fokal = *112*; keine HWS-Mobilisation. \
2. *„Periphere Fazialis“* → Stirn-Check; Begleitdefizite → Stroke-Pfad. \
3. *„Migräne-Aura“* → ersetzt keine Zeitfenster-Dringlichkeit. \
4. *„Schulter-Arm“* → apoplektiforme Armschwäche = Hemiparese bis Beweis des Gegenteils.

// ── TIME ──────────────────────────────────────────────────────
== Handeln und Dringlichkeit

#set text(size: 8pt)
#table(
  columns: (22mm, 1fr, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  fill: (_, y) => if y == 0 { rgb("#fef2f2") } else if y == 1 { rgb("#fff7ed") } else { white },
  [*112*], [FAST ≥ 1; halbseitige Sensibilitäts-/Sehstörung; Schwindel + fokal; TIA-ähnlich (auch remittiert)], [Stopp · *112* · sichern · Stroke-Unit],
  [*NA*], [Nur ohne akutes fokal-neurologisches Bild; unklare langsame Progredienz], [PT aussetzen · bei Dynamik *112*],
  [*Beh.*], [Gesicherte MSK ohne Red Flags; nach TIA/Stroke nach Freigabe], [Vigilanz · Abbruchkriterien],
)

#v(3pt)
#safety[Grenze: keine HWS-Manipulation / Provokationstests bei Verdacht; ABCD² ersetzt keine Notfallabklärung. Absolute KI bei ungeklärtem fokal-neurologischem Defizit.]

// ── Case ──────────────────────────────────────────────────────
== Fall zur Selbstprüfung

#grid(
  columns: (auto, auto, 1fr),
  column-gutter: 6pt,
  atom(A + "/aspect-face-droop.jpg", w: 28mm),
  atom(A + "/aspect-speech.jpg", w: 28mm),
  text(size: 8.5pt)[
    67 J., „steife HWS und Schwindel“. Vor ~40 min linke Hand „weg“, Sprache undeutlich — fast wieder weg. Hypertonie. Wünscht HWS-Mobilisation.
    #v(3pt)
    *(1)* TIA bis Ausschluss · *(2)* keine HWS-Mobilisation · *(3)* Stopp · *112* · Last seen normal.
  ],
)

#v(8pt)

#v(6pt)

#v(5pt)
#set text(size: 8pt)
#table(
  columns: (28mm, 1fr, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else { white },
  [*Job*], [*Medium-Beitrag*], [*Grenze*],
  [Danger], [Lead/Safety sichtbar], [Keine Claim-Erfindung],
  [Erkennung], [Atoms/Schema/Text], [Gestalt ≠ Diagnose],
  [Handlung], [TIME/Sequenz lesbar], [HP-Grenze genannt],
  [Transfer], [Mini-Fall beantwortet], [KI explizit],
)
#v(4pt)
#text(size: 8.2pt)[
  *Residual (dieses Medium):* Was hier noch schwach bleibt, motiviert die anderen Form-Lab-Pässe — dokumentiert in `comparison/matrix.md`, nicht durch leere Seiten kaschiert.
]

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
#align(center)[
  #text(size: 7.5pt, fill: palette.text-muted)[
    Form Lab Pass R · 4 raster atoms · claim text outside images · not production Accept
  ]
]
