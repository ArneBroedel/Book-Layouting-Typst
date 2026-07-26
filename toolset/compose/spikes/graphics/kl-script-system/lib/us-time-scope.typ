// Wave G3 — US-A / US-B recreate (ontology v1.1 + Form Spec kl-u-urgency-scope)
// TIME stack + orthogonal SCOPE · ACTION = payload inside tiers
// Pins: Erysipel + ACS (Welle-06) copy-through

#import "/packages/bookkit/theme.typ": palette

// ── building blocks ───────────────────────────────────────────

/// SCOPE: optically outside the TIME ladder (different geometry, no T-chip).
/// Do NOT meta-explain ("keine Dringlichkeitsstufe") inside the figure —
/// separation must be self-evident from form alone.
#let scope-frame(body, title: [Grenze der eigenen Zuständigkeit]) = {
  v(2pt)
  // full-width hairline + gap = end of TIME stack
  line(length: 100%, stroke: 0.9pt + palette.border)
  v(5pt)
  block(
    width: 100%,
    inset: (x: 8pt, y: 7pt),
    // square corners + double-line frame: not a rounded "tier card"
    radius: 0pt,
    fill: white,
    stroke: 0.9pt + palette.text-muted,
  )[
    #text(
      size: 8pt,
      weight: "bold",
      fill: palette.text-muted,
      tracking: 0.4pt,
    )[#upper(title)]
    #v(3pt)
    #set text(size: 7.2pt, fill: palette.text-body)
    #body
  ]
}

/// One TIME tier: chip + title + action + optional triggers inside
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
    // T1 hard card
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

// ── US-A Erysipel: T1 · T2 · T4 + SCOPE (no T3) ───────────────

#let us-a-erysipel() = {
  set text(size: 8pt)

  stack(
    spacing: 4.5pt,
    time-tier(
      code: "T1",
      title: "112 / Sofort",
      bar: palette.danger,
      fill: rgb("#fef2f2"),
      solid-header: true,
      action: [Therapie abbrechen · Vitalzeichen · *Notruf 112* · keine Physiotherapie.],
      triggers: list(
        [Extrem unverhältnismäßiger Schmerz („Vernichtungsschmerz“)],
        [Rasche Ausbreitung, unscharfe Begrenzung, Blasen/Nekrosen],
        [Hautemphysem/Krepitation, Schockzeichen],
      ),
    ),
    time-tier(
      code: "T2",
      title: "Notaufnahme / gleichtags Arzt",
      bar: palette.warning,
      fill: rgb("#fff7ed"),
      action: [Therapie abbrechen · Notaufnahme oder gleichtags Arzt · *keine* manuelle Lymphdrainage / intensive Wärme auf floridem Areal.],
      triggers: list(
        [Scharf begrenztes Erythem + Fieber/systemische Zeichen],
        [Immunsuppression + rasch progredientes Weichteilerythem],
        [Unilaterale Beinschwellung ohne klares Muster (TVT-DDx)],
      ),
    ),
    // T3 omitted — content has no Zeitnah row (US-C collapse)
    time-tier(
      code: "T4",
      title: "Behandeln + Sicherheitsnetz",
      bar: palette.primary,
      fill: rgb("#f0fdfa"),
      action: [Nur ohne Red Flags / Systemik / Vernichtungsschmerz. Rückkehrgründe: Rötung↑, Fieber, Schüttelfrost, rasche Schwellung, Schmerzexplosion.],
      triggers: none,
    ),
  )

  v(5pt)
  scope-frame[
    Keine Erysipel-Diagnosesicherung, keine Antibiotika. Manuelle Techniken und Lymphdrainage auf floridem Erysipel ohne ärztliche Freigabe *absolut kontraindiziert*. TVT und nekrotisierende Infektion werden physiotherapeutisch *nicht* ausgeschlossen.
  ]
}

// ── US-B ACS: nested multi-T1 + T2 + T4 + SCOPE ───────────────

#let us-b-acs() = {
  set text(size: 8pt)

  stack(
    spacing: 4.5pt,
    time-tier(
      code: "T1",
      title: "112 / Sofort — ACS-Verdacht",
      bar: palette.danger,
      fill: rgb("#fef2f2"),
      solid-header: true,
      action: [*112 wählen* · Sitzung beenden · absolute Ruhe · keine Belastung · keine manuelle Thorax-„Abklärung“.],
      triggers: list(
        [Retrosternaler Vernichtungs-/anhaltender Druckschmerz + Ausstrahlung Arm/Kiefer/Rücken + vegetativ],
        [Akute Dyspnoe, Synkope oder Schock bei Infarktverdacht],
        [Bekannte KHK + neu progredienter Ruheschmerz],
        [Oberbauchschmerz + Vegetativum + kardiale Risikofaktoren],
      ),
    ),
    time-tier(
      code: "T2",
      title: "Notaufnahme / gleichtags — nur ohne 112-Bild",
      bar: palette.warning,
      fill: rgb("#fff7ed"),
      action: [*Keine PT.* Unklar, aber ohne ACS-Vollbild und ohne 112-Kriterien → unverzüglich ärztlich; bei Verschlechterung *sofort 112*.],
      triggers: none,
    ),
    time-tier(
      code: "T4",
      title: "Behandeln + Sicherheitsnetz",
      bar: palette.primary,
      fill: rgb("#f0fdfa"),
      action: [Nur bei *gesicherter* MSK-Erklärung ohne Red Flags (± ärztliche Freigabe). Abbruchkriterien vorab.],
      triggers: none,
    ),
  )

  v(5pt)
  scope-frame[
    ACS-Ausschluss, EKG, Troponin, STEMI/NSTEMI-Zuordnung, Reperfusion — *nicht* HP/PT. Marburger Herz-Score *nicht* als Ausschluss nutzen.
  ]
}
