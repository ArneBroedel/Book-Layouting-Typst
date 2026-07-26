// KL Wave-5 grammar — Akutes Kompartmentsyndrom (V-3)
// U-urgency+scope · U-mimic · U-spatial criteria fallback (code)
// Pins copy-through C · Form Specs: kl-compartment-urgency · kl-compartment-mimic · kl-compartment-spatial
// NO form-meta · solid red only T1 · no elevation-as-help · pulses NOT excluding

#import "/packages/bookkit/theme.typ": palette
#import "/toolset/compose/spikes/graphics/kl-script-system/lib/us-time-scope.typ": time-tier, scope-frame
#import "@preview/cetz:0.5.2": canvas, draw

// ── U-urgency + U-scope ───────────────────────────────────────
// T1 ≠ T2 hard · T3 collapsed · T4 = CECS-like + Re-Triage net

#let us-compartment() = {
  set text(size: 8pt)

  stack(
    spacing: 4.5pt,
    time-tier(
      code: "T1",
      title: "112 / Sofort",
      bar: palette.danger,
      fill: rgb("#fef2f2"),
      solid-header: true,
      action: [
        Behandlung *sofort abbrechen*; Notfalltransport;
        Übergabe mit Zeitverlauf, Trauma-/OP-Kontext und Red-Flag-Befunden.
      ],
      triggers: list(
        [Rasche Verschlechterung],
        [progrediente neurologische Ausfälle (*Parese*, *Hypästhesie*)],
        [schwere Allgemeinzustandsverschlechterung bei ACS-Verdacht],
      ),
    ),
    time-tier(
      code: "T2",
      title: "Notaufnahme / Unfallchirurgie",
      bar: palette.warning,
      fill: rgb("#fff7ed"),
      action: [
        Physiotherapie *sofort abbrechen*.
        Weder Belastung noch Kompression, forcierte Dehnung oder tiefe myofasziale Release-Techniken.
        Verband nach Möglichkeit *lockern oder öffnen*.
        Extremität *nicht* über Herzhöhe lagern.
        Unverzüglich NA oder Unfallchirurgie.
      ],
      triggers: list(
        [Klinischer ACS-Verdacht: *disproportionaler Schmerz* und/oder *passiver Dehnungsschmerz* und/oder *brettharte Loge* — *auch bei tastbaren Pulsen*],
        [zunehmender Schmerz unter engem Gips/Verband],
      ),
    ),
    // T3 omitted
    time-tier(
      code: "T4",
      title: "Behandeln mit Sicherheitsnetz",
      bar: palette.primary,
      fill: rgb("#f0fdfa"),
      action: [
        PT möglich mit engmaschigem Red-Flag-Monitoring;
        bei Eskalation Richtung ACS → *sofort Re-Triage* und Stopp.
        Posttrauma/-OP nur nach *ärztlicher Freigabe*.
      ],
      triggers: list(
        [Nur *rein belastungsabhängiger* Logenschmerz (exertional), in Ruhe abklingend, *weiche Loge*, kein Dehnungsschmerz in Ruhe, keine neurologischen Ausfälle],
      ),
    ),
  )

  v(5pt)
  scope-frame[
    Kompartmentdruckmessung; Fasziotomie-Indikation; operative Entlastung;
    endgültige Differenzialdiagnose arterielle Ischämie / nekrotisierende Infektion
    sind *ärztlich*. HP Physio triagiert und stoppt — behandelt ACS *nicht*.
  ]
}

// ── U-mimic (FRAME-ERROR) ─────────────────────────────────────

#let mimic-compartment() = {
  set text(size: 8pt)
  text(size: 9pt, weight: "bold", fill: palette.danger)[
    Trügerische Erklärungen
  ]
  v(4pt)

  let row(frame, danger, consequence: none) = {
    block(
      width: 100%,
      inset: 6pt,
      radius: 2pt,
      stroke: 0.45pt + palette.border,
      fill: white,
    )[
      #grid(
        columns: (40mm, 12mm, 1fr),
        column-gutter: 4pt,
        align(horizon)[
          #text(size: 7.5pt)[„#frame“]
        ],
        align(center + horizon)[
          #text(size: 13pt, fill: palette.danger, weight: "bold")[→]
        ],
        align(horizon)[
          #text(size: 7.5pt, weight: "bold", fill: palette.danger)[#danger]
          #if consequence != none {
            text(size: 7pt, fill: palette.text-muted)[ — #consequence]
          }
        ],
      )
    ]
  }

  stack(
    spacing: 3.5pt,
    row(
      "Muskelkater / DOMS / Zerrung",
      "ACS eskaliert über Stunden mit extremem Dehnungsschmerz",
      consequence: "belastungsabhängig und bessert in Ruhe — ACS nicht",
    ),
    row(
      "Enger Gips/Verband",
      "iatrogener Trigger möglich",
      consequence: "Spaltung allein ist kein sicherer Ausschluss",
    ),
    row(
      "Prellung ohne Fraktur",
      "ACS entsteht auch ohne knöcherne Beteiligung",
      consequence: "suggeriert Harmlosigkeit",
    ),
    row(
      "Erhaltene Pulse",
      "klassischer Fallstrick — Pulse schließen ACS nicht aus",
    ),
  )
}

// ── Spatial criteria fallback (pin-safe code list) ────────────
// For U-spatial-compartment when free vision is not yet Accept-ready.
// Teaches the clinical cluster without 6P alphabet / mmHg / fasciotomy.

#let criteria-compartment-code() = {
  set text(size: 8pt)

  text(size: 9pt, weight: "bold", fill: palette.primary-dark)[
    Klinische Zeichen · vorderes Unterschenkelkompartiment
  ]
  v(2pt)
  text(size: 7pt, fill: palette.text-muted)[
    Kritischer Druckanstieg im osteofaszialen Fach → Ischämie in *wenigen Stunden*, wenn unbehandelt.
  ]
  v(5pt)

  let chip(title, body, bar, fill, loud: false) = {
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: fill,
      stroke: (
        left: (if loud { 4pt } else { 3pt }) + bar,
        rest: 0.45pt + bar.lighten(40%),
      ),
    )[
      #text(size: 8pt, weight: "bold", fill: bar)[#title]
      #v(3pt)
      #set text(size: 7.3pt, fill: palette.text-body)
      #body
    ]
  }

  stack(
    spacing: 3.5pt,
    chip(
      [Disproportionaler Schmerz],
      [Schmerz deutlich stärker als zur Verletzung passend; analgetisch kaum beherrschbar.],
      palette.warning,
      rgb("#fff7ed"),
      loud: true,
    ),
    chip(
      [Passiver Dehnungsschmerz],
      [Massiver / extrem verstärkter Schmerz bei *passiver Muskeldehnung* (z. B. Plantarflexion bei vorderem Unterschenkelkompartiment).],
      palette.warning,
      rgb("#fff7ed"),
      loud: true,
    ),
    chip(
      [Brettharte Loge],
      [Prall-bretthartes Kompartiment / brettharte Loge.],
      palette.warning,
      rgb("#fff7ed"),
      loud: true,
    ),
    // Pulse-KI — danger accent; co-located critical claim
    chip(
      [Pulse schließen ACS nicht aus],
      [Pulse können erhalten / tastbar sein — *auch bei tastbaren Pulsen* bleibt der ACS-Verdacht. Keine Entwarnung über Pulse.],
      palette.danger,
      rgb("#fef2f2"),
      loud: true,
    ),
  )

  v(5pt)
  // Anti-elevation + localisation + action micro
  grid(
    columns: (1fr, 1fr),
    column-gutter: 4pt,
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: rgb("#fef2f2"),
      stroke: (left: 3.5pt + palette.danger, rest: 0.45pt + palette.danger.lighten(40%)),
    )[
      #text(size: 7.5pt, weight: "bold", fill: palette.danger)[Nicht über Herzhöhe lagern]
      #v(3pt)
      #set text(size: 7.1pt, fill: palette.text-body)
      Extremität *nicht* über Herzhöhe lagern.
      Hochlagerung mindert die arterielle Perfusion — *kein* Ersatz für Notfallversorgung.
    ],
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: rgb("#f0fdfa"),
      stroke: (left: 3.5pt + palette.primary, rest: 0.45pt + palette.primary.lighten(40%)),
    )[
      #text(size: 7.5pt, weight: "bold", fill: palette.primary)[Lokalisation · Tempo]
      #v(3pt)
      #set text(size: 7.1pt, fill: palette.text-body)
      Vor allem Unterschenkel (*vorderes* Kompartiment) und Unterarm.
      Eskalation *stundenkritisch* / über Stunden.
    ],
  )

  v(4pt)
  block(
    width: 100%,
    inset: 7pt,
    radius: 2pt,
    fill: palette.bg-subtle,
    stroke: 0.45pt + palette.border,
  )[
    #set text(size: 7.3pt)
    #text(weight: "bold", fill: palette.primary-dark)[Handlung:]
    Screening → *sofortiger Therapieabbruch* → Notfallweiterleitung
    (Unfallchirurgie / Notaufnahme; bei rascher Verschlechterung *112*).
    Keine Belastung, Kompression, forcierte Dehnung, tiefe myofasziale Release-Techniken.
    Verband nach Möglichkeit *lockern oder öffnen*.
  ]

  v(4pt)
  block(
    width: 100%,
    inset: 6pt,
    radius: 2pt,
    fill: white,
    stroke: 0.45pt + palette.primary.lighten(35%),
  )[
    #set text(size: 7.2pt)
    #text(weight: "bold", fill: palette.primary)[CECS-Abgrenzung:]
    belastungsabhängiger Logenschmerz, der in Ruhe *abklingt* — *kein* akuter Ischämie-Notfall;
    bei Eskalation zu Ruhe- oder Dehnungsschmerz → *sofortige Re-Triage*.
  ]
}

// ── Spatial: controlled CeTZ lower-leg cross-section (Accept candidate) ──
// Replaces failed Typst-hexagon "free vision" (Wave-5 post-mortem).
// Right mid-leg, proximal view (looking toward knee): Tibia large medial-anterior,
// Fibula small lateral; four osteofascial compartments labeled.
// Anterior compartment = high-pressure highlight (not a hexagon placeholder).

#let spatial-compartment-cetz() = {
  set text(size: 8pt)

  text(size: 10pt, weight: "bold", fill: palette.primary-dark)[
    Akutes Kompartmentsyndrom · Querschnitt Unterschenkel
  ]
  v(2pt)
  text(size: 7.5pt, fill: palette.text-muted)[
    Osteofasziales Fach · Druckanstieg → Ischämie in Stunden · *schematisch anatomisch* (CeTZ), kein Hexagon-Placeholder
  ]
  v(4pt)

  align(center)[
    #canvas(length: 1cm, {
      import draw: *

      // Soft tissue outline
      circle((0, 0.1), radius: (2.6, 3.1), fill: rgb("#f7f6f2"), stroke: 1.2pt + palette.text-muted)

      // --- Compartments (schematic, standard mid-leg topology) ---
      // Lateral (fibula side, left of viewer if medial is right — use classic: medial RIGHT for right leg looking up? 
      // Textbook often: anterior top, medial left (patient right leg, looking distal). We'll use:
      // TOP = anterior, RIGHT = medial (tibia), LEFT = lateral (fibula)

      // Superficial posterior (bottom)
      circle((0, -1.55), radius: (2.15, 1.25), fill: rgb("#e8eef0"), stroke: 0.5pt + palette.border)

      // Deep posterior (center-low)
      circle((0.35, -0.35), radius: (1.15, 0.95), fill: rgb("#dce6ea"), stroke: 0.5pt + palette.border)

      // Lateral compartment (left / fibular)
      circle((-1.55, 0.35), radius: (0.72, 1.15), fill: rgb("#e8eef0"), stroke: 0.5pt + palette.border)

      // Anterior compartment (top — HIGHLIGHT pressure)
      circle((0.15, 1.55), radius: (1.55, 1.05),
        fill: rgb("#fecaca"),
        stroke: 1.6pt + palette.danger,
      )

      // Bones
      // Tibia — large, anteromedial (top-right)
      circle((1.05, 0.55), radius: (0.72, 0.85), fill: rgb("#f5f0e6"), stroke: 1.1pt + palette.text-muted)
      // Fibula — small, lateral (left)
      circle((-1.55, 0.15), radius: (0.32, 0.38), fill: rgb("#f5f0e6"), stroke: 1.0pt + palette.text-muted)

      // Labels inside / near
      content((0.15, 1.85), text(size: 7pt, weight: "bold", fill: palette.danger)[Anteriores\nKompartiment])
      content((0.15, 1.15), text(size: 6.2pt, fill: palette.danger)[↑ Druck / Ischämie])
      content((1.05, 0.55), text(size: 6.5pt, weight: "bold", fill: palette.text-muted)[Tibia])
      content((-1.55, 0.15), text(size: 5.8pt, weight: "bold", fill: palette.text-muted)[Fibula])
      content((-1.55, 1.05), text(size: 6pt, fill: palette.text-body)[Lateral])
      content((0.35, -0.35), text(size: 6pt, fill: palette.text-body)[Tief\nposterior])
      content((0, -1.85), text(size: 6.2pt, fill: palette.text-body)[Oberflächlich posterior])

      // Pressure arrows into anterior
      line((0.15, 2.85), (0.15, 2.35), stroke: (paint: palette.danger, thickness: 1.3pt), mark: (end: "stealth"))
      line((-0.55, 2.55), (-0.25, 2.15), stroke: (paint: palette.danger, thickness: 1pt), mark: (end: "stealth"))
      line((0.85, 2.55), (0.55, 2.15), stroke: (paint: palette.danger, thickness: 1pt), mark: (end: "stealth"))

      // Legend corner
      content((-2.2, 2.9), anchor: "west",
        text(size: 5.8pt, fill: palette.text-muted)[Blick: proximal (zur Kniekehle)\nRechts = medial])
    })
  ]

  v(5pt)
  // Clinical cluster beside figure (dense)
  grid(
    columns: (1fr, 1fr),
    column-gutter: 5pt,
    stack(
      spacing: 3pt,
      block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#fff7ed"),
        stroke: (left: 3pt + palette.warning, rest: 0.4pt + palette.border))[
        #text(size: 7.5pt, weight: "bold", fill: palette.warning)[Kernzeichen]
        #v(2pt)
        #set text(size: 7.2pt)
        #list(tight: true,
          [Disproportionaler Schmerz],
          [Passiver Dehnungsschmerz],
          [Brettharte Loge],
        )
      ],
      block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#fef2f2"),
        stroke: (left: 3pt + palette.danger, rest: 0.4pt + palette.border))[
        #text(size: 7.5pt, weight: "bold", fill: palette.danger)[Pulse schließen ACS *nicht* aus]
        #v(2pt)
        #set text(size: 7.2pt)
        Erhaltene Pulse entwarnen *nicht*.
      ],
    ),
    stack(
      spacing: 3pt,
      block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#fef2f2"),
        stroke: (left: 3pt + palette.danger, rest: 0.4pt + palette.border))[
        #text(size: 7.5pt, weight: "bold", fill: palette.danger)[Verbot]
        #v(2pt)
        #set text(size: 7.2pt)
        *Nicht* über Herzhöhe lagern · keine forcierte Dehnung / Deep Release
      ],
      block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#f0fdfa"),
        stroke: (left: 3pt + palette.primary, rest: 0.4pt + palette.border))[
        #text(size: 7.5pt, weight: "bold", fill: palette.primary)[Handlung]
        #v(2pt)
        #set text(size: 7.2pt)
        PT abbrechen · Verband lockern · Notaufnahme / Unfallchirurgie (bei rascher Verschlechterung 112)
      ],
    ),
  )

  v(3pt)
  text(size: 6.5pt, fill: palette.text-muted)[
    Schematische Lage der vier Fächer am Unterschenkel (vorderes Fach hervorgehoben). Keine mmHg-Werte · keine Fasziotomie-Technik · Pins copy-through C.
  ]
}

/// Default spatial unit for textbook: principle schematic (not atlas anatomy)
#let spatial-compartment() = {
  spatial-compartment-principle()
}

// ── Spatial PRINCIPLE schematic (preferred textbook form) ─────
// Human 2026-07: do NOT imply atlas-correct anatomy. Show the *principle*:
// closed loge + rising pressure + ischemia risk. Flat abstract shapes only.

#let spatial-compartment-principle() = {
  set text(size: 8.5pt)

  text(size: 10.5pt, weight: "bold", fill: palette.primary-dark)[
    Prinzip · Druck in der geschlossenen Loge
  ]
  v(2pt)
  text(size: 7.5pt, fill: palette.text-muted)[
    Schematisch — *keine* anatomische Atlas-Abbildung. Lernjob: warum „Muskelkater“ irreführt.
  ]
  v(6pt)

  // Abstract: rigid ring (Faszie) + rising pressure core + labels
  align(center)[
    #block(width: 100%, inset: (y: 4pt))[
      #align(center)[
        // Outer rigid shell
        #box(
          width: 78mm,
          height: 78mm,
          radius: 39mm,
          stroke: 2.2pt + palette.text-muted,
          fill: rgb("#f7f6f2"),
          inset: 8mm,
        )[
          #align(center + horizon)[
            // Inner pressure mass
            #box(
              width: 100%,
              height: 100%,
              radius: 50%,
              fill: gradient.radial(
                rgb("#fecaca"),
                rgb("#fca5a5"),
                rgb("#ef4444").lighten(35%),
              ),
              stroke: 1.4pt + palette.danger,
              inset: 6mm,
            )[
              #align(center + horizon)[
                #stack(
                  spacing: 3pt,
                  text(size: 9pt, weight: "bold", fill: palette.danger)[↑ Druck],
                  text(size: 8pt, weight: "bold", fill: white)[geschlossene Loge],
                  text(size: 7pt, fill: white)[Ischämie-Risiko],
                )
              ]
            ]
          ]
        ]
      ]
    ]
  ]

  v(2pt)
  align(center)[
    #text(size: 7.5pt, fill: palette.text-muted)[
      äußerer Ring = unnachgiebige Begrenzung (Prinzip) · Kern = steigender Druck
    ]
  ]

  v(6pt)
  grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 4pt,
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: rgb("#fff7ed"),
      stroke: (top: 3pt + palette.warning, rest: 0.4pt + palette.border),
    )[
      #text(size: 7.5pt, weight: "bold", fill: palette.warning)[Disproportional]
      #v(3pt)
      #set text(size: 7.2pt)
      Schmerz ≫ Verletzungsbild
    ],
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: rgb("#fff7ed"),
      stroke: (top: 3pt + palette.warning, rest: 0.4pt + palette.border),
    )[
      #text(size: 7.5pt, weight: "bold", fill: palette.warning)[Dehnung]
      #v(3pt)
      #set text(size: 7.2pt)
      Passiv massiv schmerzhaft
    ],
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: rgb("#fff7ed"),
      stroke: (top: 3pt + palette.warning, rest: 0.4pt + palette.border),
    )[
      #text(size: 7.5pt, weight: "bold", fill: palette.warning)[Bretthart]
      #v(3pt)
      #set text(size: 7.2pt)
      Loge prall-hart (Prinzip)
    ],
  )

  v(4pt)
  block(
    width: 100%,
    inset: 7pt,
    radius: 2pt,
    fill: rgb("#fef2f2"),
    stroke: (left: 3.5pt + palette.danger, rest: 0.45pt + palette.danger.lighten(40%)),
  )[
    #set text(size: 8pt)
    #text(weight: "bold", fill: palette.danger)[Pulse schließen ACS *nicht* aus]
    #text(fill: palette.text-body)[ — erhaltene Pulse entwarnen nicht.]
  ]

  v(3pt)
  block(
    width: 100%,
    inset: 6pt,
    radius: 2pt,
    fill: palette.bg-subtle,
    stroke: 0.4pt + palette.border,
  )[
    #set text(size: 7.5pt)
    #text(weight: "bold")[Handlung (kurz):]
    PT abbrechen · Verband lockern · *nicht* über Herzhöhe lagern · Notaufnahme/Unfallchirurgie
  ]
}
