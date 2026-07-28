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

// ── Spatial: comic-schematic lower-leg cut (topology correct, not atlas) ──
// First glance = didactic schematic. Second glance = bones/compartments in right places.
// Convention: TOP=anterior, RIGHT=medial (tibia large), LEFT=lateral (fibula small).

#let spatial-compartment-cetz() = {
  set text(size: 8pt)

  text(size: 10.5pt, weight: "bold", fill: palette.primary-dark)[
    Kompartimente Unterschenkel · Prinzip + grobe Topologie
  ]
  v(2pt)
  text(size: 7.5pt, fill: palette.text-muted)[
    Comic-schematisch (dicke Linien, flache Flächen) — *kein* Atlas. Vorderes Fach = Druckkammer.
  ]
  v(5pt)

  align(center)[
    #canvas(length: 1cm, {
      import draw: *

      // Soft-tissue oval — thick comic outline
      circle((0, 0), radius: (2.7, 3.15),
        fill: rgb("#faf8f4"), stroke: 2.2pt + palette.text-muted)

      // Superficial posterior (bottom, large quiet zone)
      circle((0, -1.5), radius: (2.2, 1.35),
        fill: rgb("#e2e8f0"), stroke: 1.3pt + palette.border)

      // Deep posterior (central-low, quiet)
      circle((0.4, -0.25), radius: (1.05, 0.9),
        fill: rgb("#cbd5e1"), stroke: 1.2pt + palette.border)

      // Lateral (left of fibula)
      circle((-1.65, 0.25), radius: (0.7, 1.05),
        fill: rgb("#e2e8f0"), stroke: 1.2pt + palette.border)

      // Anterior (top) — PRESSURE highlight, thicker stroke
      circle((0.1, 1.55), radius: (1.5, 1.0),
        fill: rgb("#fecaca"), stroke: 2.4pt + palette.danger)

      // Interosseous membrane (simple line tibia–fibula)
      line((0.55, 0.35), (-1.15, 0.2),
        stroke: (paint: palette.primary.lighten(20%), thickness: 1.1pt, dash: "dashed"))

      // Bones: flat bone-beige, thick outline — no micro-detail
      circle((1.1, 0.5), radius: (0.78, 0.9),
        fill: rgb("#f5f0e0"), stroke: 2pt + rgb("#8b7355"))
      circle((-1.55, 0.1), radius: (0.34, 0.4),
        fill: rgb("#f5f0e0"), stroke: 1.8pt + rgb("#8b7355"))

      // Pressure arrows only inside anterior
      line((0.1, 2.0), (0.1, 1.45),
        stroke: (paint: palette.danger, thickness: 1.6pt), mark: (end: "stealth"))
      line((-0.45, 1.85), (-0.15, 1.4),
        stroke: (paint: palette.danger, thickness: 1.3pt), mark: (end: "stealth"))
      line((0.65, 1.85), (0.35, 1.4),
        stroke: (paint: palette.danger, thickness: 1.3pt), mark: (end: "stealth"))

      // Labels — few, large
      content((0.1, 1.65), text(size: 7.5pt, weight: "bold", fill: palette.danger)[Vorderes\nKompartiment])
      content((0.1, 1.15), text(size: 6.5pt, weight: "bold", fill: palette.danger)[Druck ↑])
      content((1.1, 0.5), text(size: 7pt, weight: "bold", fill: rgb("#5c4a32"))[Tibia])
      content((-1.55, 0.1), text(size: 6pt, weight: "bold", fill: rgb("#5c4a32"))[Fibula])
      content((-1.65, 1.15), text(size: 6pt, fill: palette.text-muted)[lateral])
      content((0.4, -0.25), text(size: 5.8pt, fill: palette.text-muted)[tief\npost.])
      content((0, -1.85), text(size: 6.2pt, fill: palette.text-muted)[oberfl. posterior])

      content((2.55, 2.7), anchor: "west",
        text(size: 5.5pt, fill: palette.text-muted)[oben = vorne\nrechts = medial])
    })
  ]

  v(5pt)
  grid(
    columns: (1fr, 1fr),
    column-gutter: 5pt,
    block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#fff7ed"),
      stroke: (left: 3.5pt + palette.warning, rest: 0.4pt + palette.border))[
      #text(size: 8pt, weight: "bold", fill: palette.warning)[Kernzeichen]
      #v(3pt)
      #set text(size: 7.5pt)
      #list(tight: true,
        [Disproportionaler Schmerz],
        [Passiver Dehnungsschmerz],
        [Brettharte Loge],
      )
    ],
    block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#fef2f2"),
      stroke: (left: 3.5pt + palette.danger, rest: 0.4pt + palette.border))[
      #text(size: 8pt, weight: "bold", fill: palette.danger)[Pulse schließen ACS *nicht* aus]
      #v(3pt)
      #set text(size: 7.5pt)
      Erhaltene Pulse entwarnen *nicht*.\
      *Nicht* über Herzhöhe lagern · PT abbrechen · Verband lockern · NA/Unfallchirurgie
    ],
  )

  v(3pt)
  text(size: 6.5pt, fill: palette.text-muted)[
    Nur die fürs Prinzip nötigen Strukturen — topologisch grob korrekt, bewusst unvollständig.
  ]
}

// ── PATHOPHYSIOLOGY sweet spot (textbook level) ───────────────
// Human critique: not toy-simple; not atlas-cut; not free expansion of calf.
// Core: unyielding fascia encloses muscle + NV; volume cannot escape → P↑ inside.
// Style: medical schematic (thick lines, flat fills) — correct *relations*, incomplete anatomy.

#let spatial-compartment-patho() = {
  set text(size: 8.5pt)

  text(size: 11pt, weight: "bold", fill: palette.primary-dark)[
    Akutes Kompartmentsyndrom · pathophysiologisches Prinzip
  ]
  v(2pt)
  text(size: 7.5pt, fill: palette.text-muted)[
    Unnachgiebige Faszienloge · Inhalt (Muskel, Gefäß, Nerv) · Volumen kann nicht ausweichen → Druck steigen.
    Schematisch — *kein* Atlas, *kein* MRT-Schnitt.
  ]
  v(6pt)

  // Main diagram: rigid shell + content + NV + pressure against wall
  align(center)[
    #block(
      width: 100%,
      inset: 10pt,
      radius: 3pt,
      fill: rgb("#faf9f6"),
      stroke: 0.5pt + palette.border,
    )[
      #align(center)[
        // Outer fascia ring (rigid) — thick cool stroke
        #box(
          width: 92mm,
          height: 72mm,
          radius: 8pt,
          stroke: 3.2pt + rgb("#475569"),
          fill: white,
          inset: 5mm,
        )[
          // Muscle mass fills most of interior
          #box(
            width: 100%,
            height: 100%,
            radius: 5pt,
            fill: gradient.linear(rgb("#fecaca"), rgb("#fca5a5"), angle: 90deg),
            stroke: 0.6pt + palette.danger.lighten(30%),
            inset: (x: 8pt, y: 6pt),
          )[
            #grid(
              columns: (1fr, auto),
              column-gutter: 6pt,
              align(horizon)[
                #stack(
                  spacing: 3pt,
                  text(size: 9pt, weight: "bold", fill: palette.danger.darken(10%))[Muskulatur],
                  text(size: 7pt, fill: palette.text-body)[(Inhalt der Loge)],
                  v(4pt),
                  // pressure against wall: arrows toward perimeter (not free expansion)
                  text(size: 8pt, weight: "bold", fill: palette.danger)[Druck ↑ *innen*],
                  text(size: 6.5pt, fill: palette.text-muted)[gegen die unnachgiebige Wand],
                )
              ],
              align(horizon)[
                // NV bundle schematic — threatened
                #box(
                  inset: 6pt,
                  radius: 3pt,
                  fill: white,
                  stroke: 1pt + palette.warning,
                )[
                  #stack(
                    spacing: 3pt,
                    text(size: 7pt, weight: "bold", fill: palette.warning)[bedroht:],
                    // vessel
                    box(
                      width: 18mm, height: 3.5mm, radius: 1.5mm,
                      fill: rgb("#dc2626").lighten(40%),
                      stroke: 0.6pt + palette.danger,
                    ),
                    text(size: 6.5pt)[Gefäß],
                    v(1pt),
                    // nerve
                    box(
                      width: 18mm, height: 3.5mm, radius: 1.5mm,
                      fill: rgb("#fbbf24").lighten(30%),
                      stroke: 0.6pt + palette.warning,
                    ),
                    text(size: 6.5pt)[Nerv],
                  )
                ]
              ],
            )
          ]
        ]
      ]
      #v(3pt)
      #align(center)[
        #text(size: 7.5pt, weight: "bold", fill: rgb("#334155"))[
          äußerer Rahmen = Faszie (unnachgiebig) · nicht dehnbare Hülle
        ]
      ]
    ]
  ]

  v(5pt)
  // Mechanism strip: the key contrast
  grid(
    columns: (1fr, auto, 1fr),
    column-gutter: 4pt,
    block(
      width: 100%, inset: 7pt, radius: 2pt,
      fill: palette.bg-subtle, stroke: 0.45pt + palette.border,
    )[
      #text(size: 7.5pt, weight: "bold", fill: palette.text-muted)[Wenn die Hülle *nachgiebig* wäre…]
      #v(3pt)
      #set text(size: 7.2pt)
      Volumen↑ → Bein *würde* dicker · Druck bliebe eher niedrig
    ],
    align(center + horizon)[
      #text(size: 14pt, fill: palette.danger, weight: "bold")[→]
    ],
    block(
      width: 100%, inset: 7pt, radius: 2pt,
      fill: rgb("#fef2f2"), stroke: (left: 3.5pt + palette.danger, rest: 0.45pt + palette.danger.lighten(40%)),
    )[
      #text(size: 7.5pt, weight: "bold", fill: palette.danger)[Faszie hält starr]
      #v(3pt)
      #set text(size: 7.2pt)
      Volumen↑ *ohne* Ausweichraum → *Druck steigt* → Ischämie / Nervenschaden
    ],
  )

  v(5pt)
  // Clinical triad + pulse — compact
  grid(
    columns: (1.2fr, 1fr),
    column-gutter: 5pt,
    block(
      width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#fff7ed"),
      stroke: (top: 3pt + palette.warning, rest: 0.4pt + palette.border),
    )[
      #text(size: 8pt, weight: "bold", fill: palette.warning)[Klinische Hinweise]
      #v(3pt)
      #set text(size: 7.3pt)
      #list(tight: true,
        [Disproportionaler Schmerz],
        [Passiver Dehnungsschmerz],
        [Brettharte Loge],
      )
    ],
    block(
      width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#fef2f2"),
      stroke: (top: 3pt + palette.danger, rest: 0.4pt + palette.border),
    )[
      #text(size: 8pt, weight: "bold", fill: palette.danger)[Fallstrick]
      #v(3pt)
      #set text(size: 7.3pt)
      Erhaltene Pulse schließen ACS *nicht* aus — Kapillarperfusion im Fach kann schon kritisch sein.
    ],
  )

  v(4pt)
  block(
    width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f0fdfa"),
    stroke: (left: 3pt + palette.primary, rest: 0.4pt + palette.border),
  )[
    #set text(size: 7.5pt)
    #text(weight: "bold", fill: palette.primary)[Handlung:]
    PT abbrechen · Verband lockern/öffnen · *nicht* über Herzhöhe lagern · Notaufnahme/Unfallchirurgie (bei rascher Verschlechterung 112)
  ]

  v(3pt)
  text(size: 6.5pt, fill: palette.text-muted)[
    Didaktische Prinzipfigur — unvollständig absichtlich; Topologie der *Beziehungen* (Hülle–Inhalt–NV–Druck) steht im Vordergrund.
  ]
}

/// Default "spatial" unit: non-body clinical criteria (anatomy free paused 2026-07-29)
#let spatial-compartment() = {
  criteria-compartment-code()
}

// ── Spatial PRINCIPLE (minimal; demoted if too toy-like) ─────
// Human: no CT/MRI-slice look, no bone inventory labels.

#let spatial-compartment-principle() = {
  set text(size: 8.5pt)

  text(size: 10.5pt, weight: "bold", fill: palette.primary-dark)[
    Prinzip · Druck in der geschlossenen Loge
  ]
  v(2pt)
  text(size: 7.5pt, fill: palette.text-muted)[
    Nur das Wesentliche — bewusst *kein* Schnittbild, *keine* Knochen-Benennungen.
  ]
  v(8pt)

  // Two-column: abstract shell | minimal comic shin (outer silhouette only)
  grid(
    columns: (1fr, 1fr),
    column-gutter: 10pt,
    // A: pure principle ring
    align(center)[
      #stack(
        spacing: 4pt,
        text(size: 7.5pt, weight: "bold", fill: palette.text-muted)[A · reine Prinzipform],
        v(2pt),
        box(
          width: 58mm,
          height: 58mm,
          radius: 29mm,
          stroke: 2.8pt + palette.text-muted,
          fill: rgb("#f4f3ef"),
          inset: 7mm,
        )[
          #align(center + horizon)[
            #box(
              width: 100%,
              height: 100%,
              radius: 50%,
              fill: gradient.radial(rgb("#fecaca"), rgb("#f87171").lighten(20%)),
              stroke: 1.6pt + palette.danger,
            )[
              #align(center + horizon)[
                #stack(
                  spacing: 2pt,
                  text(size: 11pt, weight: "bold", fill: palette.danger)[Druck ↑],
                  text(size: 7.5pt, fill: white)[geschlossene Loge],
                )
              ]
            ]
          ]
        ],
      )
    ],
    // B: outer silhouette only — NOT a cut; red zone = tense front (no bone names)
    align(center)[
      #stack(
        spacing: 4pt,
        text(size: 7.5pt, weight: "bold", fill: palette.text-muted)[B · grobe Lage am Bein (kein Schnitt)],
        v(2pt),
        // Simplified comic lower leg: capsule + red anterior band
        box(width: 42mm, height: 70mm)[
          #place(top + center)[
            // leg outline (rounded stadium)
            #box(
              width: 28mm,
              height: 62mm,
              radius: 10mm,
              stroke: 2.2pt + palette.text-muted,
              fill: rgb("#faf8f4"),
            )
          ]
          // tense zone on "front" (left of silhouette as anterior in 2D cartoon)
          #place(top + center, dy: 14mm)[
            #box(
              width: 22mm,
              height: 28mm,
              radius: 6mm,
              fill: rgb("#fecaca"),
              stroke: 1.5pt + palette.danger,
            )[
              #align(center + horizon)[
                #text(size: 7pt, weight: "bold", fill: palette.danger)[prall / hart]
              ]
            ]
          ]
          #place(bottom + center, dy: -2mm)[
            #text(size: 6.5pt, fill: palette.text-muted)[Unterschenkel · Schema]
          ]
        ],
      )
    ],
  )

  v(8pt)
  // Three clinical chips — short, no anatomy
  grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 4pt,
    block(
      width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#fff7ed"),
      stroke: (top: 3pt + palette.warning, rest: 0.4pt + palette.border),
    )[
      #text(size: 7.5pt, weight: "bold", fill: palette.warning)[Disproportional]
      #v(2pt)
      #set text(size: 7.2pt)
      Schmerz ≫ Verletzung
    ],
    block(
      width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#fff7ed"),
      stroke: (top: 3pt + palette.warning, rest: 0.4pt + palette.border),
    )[
      #text(size: 7.5pt, weight: "bold", fill: palette.warning)[Dehnungsschmerz]
      #v(2pt)
      #set text(size: 7.2pt)
      Passiv massiv
    ],
    block(
      width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#fff7ed"),
      stroke: (top: 3pt + palette.warning, rest: 0.4pt + palette.border),
    )[
      #text(size: 7.5pt, weight: "bold", fill: palette.warning)[Bretthart]
      #v(2pt)
      #set text(size: 7.2pt)
      Loge prall-hart
    ],
  )

  v(5pt)
  block(
    width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#fef2f2"),
    stroke: (left: 3.5pt + palette.danger, rest: 0.45pt + palette.danger.lighten(40%)),
  )[
    #set text(size: 8pt)
    #text(weight: "bold", fill: palette.danger)[Pulse schließen ACS *nicht* aus.]
    #text[ Erhaltene Pulse entwarnen nicht.]
  ]

  v(3pt)
  block(
    width: 100%, inset: 6pt, radius: 2pt, fill: palette.bg-subtle,
    stroke: 0.4pt + palette.border,
  )[
    #set text(size: 7.5pt)
    #text(weight: "bold")[Handlung:]
    PT abbrechen · Verband lockern · *nicht* über Herzhöhe lagern · Notaufnahme/Unfallchirurgie
  ]
}
