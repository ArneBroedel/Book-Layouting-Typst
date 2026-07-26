// US-D urgency dashboard — TIME stack (left) + orthogonal SCOPE (right)
// Inspired by free vision kl-us-d-urgency/vision-free-01; fixes:
//   · German content labels only (no "Action:" / "Trigger cluster")
//   · No form-meta in figure ("keine Dringlichkeitsstufe")
//   · SCOPE title = content label only
//   · Erysipel pins: T1 · T2 · T4 + SCOPE (no T3, no Treat-ohne-Netz)
// Ontology v1.1 · Form Spec kl-u-urgency-scope

#import "/packages/bookkit/theme.typ": palette

// ── building blocks ───────────────────────────────────────────

/// One TIME tier: left accent bar + solid header + body (Handlung + optional Auslöser).
/// `bar` drives accent + header (T1 danger solid · T2 amber · T4 teal).
/// Left stroke forms a continuous vertical accent when tiers are stacked.
#let _tier-card(
  code: "",
  title: "",
  bar: palette.danger,
  action: [],
  triggers: none,
  fill: white,
) = {
  block(
    width: 100%,
    radius: 0pt,
    clip: true,
    breakable: false,
    // Vertical accent segment — full tier height, no % height needed
    stroke: (left: 5pt + bar),
  )[
    // Solid header
    #block(width: 100%, fill: bar, inset: (x: 8pt, y: 5.5pt))[
      #set text(fill: white, weight: "bold", size: 9pt)
      #code: #title
    ]
    // Body: Handlung payload + optional Auslöser (same card)
    #block(width: 100%, fill: fill, inset: (x: 8pt, y: 6pt))[
      #set text(size: 7.4pt, fill: palette.text-body)
      #text(weight: "bold")[Handlung: ]
      #action
      #if triggers != none {
        v(4pt)
        block(
          width: 100%,
          inset: (x: 6pt, y: 5pt),
          radius: 3pt,
          fill: palette.bg-subtle,
          stroke: 0.4pt + palette.border-light,
        )[
          #text(size: 7pt, weight: "bold", fill: palette.text-muted)[Auslöser]
          #v(2pt)
          #set text(size: 7pt, fill: palette.text-body)
          #triggers
        ]
      }
    ]
  ]
}

/// SCOPE frame: optically outside TIME (rounded card, primary border, no T-chip).
/// Title is content label only — never form-meta.
#let scope-card(body, title: [Grenze der eigenen Zuständigkeit]) = {
  block(
    width: 100%,
    inset: (x: 9pt, y: 10pt),
    radius: 4pt,
    fill: white,
    stroke: 1.1pt + palette.primary,
    breakable: false,
  )[
    #set align(center)
    #text(size: 9pt, weight: "bold", fill: palette.text-body)[#title]
    #v(6pt)
    #set align(left)
    #set text(size: 7.3pt, fill: palette.text-muted)
    #body
  ]
}

// ── US-D Erysipel dashboard ───────────────────────────────────

/// US-D dual-axis dashboard for Erysipel demo pins (Form Spec).
/// Left: TIME stack T1→T2→T4 with vertical accent bar.
/// Right: SCOPE card (competence boundary).
#let us-d-erysipel() = {
  set text(font: "Libertinus Serif", size: 8pt, fill: palette.text-body)
  set par(justify: false, leading: 0.62em)

  // Outer chrome: teal title band (script/teal genre; danger solid only on T1)
  block(
    width: 100%,
    radius: 4pt,
    clip: true,
    stroke: 0.7pt + palette.primary.lighten(35%),
    breakable: false,
  )[
    #block(width: 100%, fill: palette.primary, inset: (x: 10pt, y: 6pt))[
      #set text(fill: white, weight: "bold", size: 10pt)
      Dringlichkeit & Handlungskarten
    ]

    #block(width: 100%, inset: 8pt, fill: white)[
      #grid(
        columns: (1fr, 42mm),
        column-gutter: 8pt,
        // ── LEFT: TIME stack with vertical accent bar ──
        block(
          width: 100%,
          radius: 4pt,
          clip: true,
          stroke: 0.65pt + palette.border,
          breakable: false,
        )[
          #stack(
            dir: ttb,
            _tier-card(
              code: "T1",
              title: "112 / Sofort",
              bar: palette.danger,
              fill: white,
              action: [
                Therapie abbrechen, Vitalzeichen erheben, *Notruf 112*. Keine Physiotherapie.
              ],
              triggers: [
                Extrem unverhältnismäßiger Schmerz („Vernichtungsschmerz“) ·
                rasche Ausbreitung · unscharfe Begrenzung · Blasen/Nekrosen ·
                Hautemphysem oder Krepitation · Schockzeichen
              ],
            ),
            line(length: 100%, stroke: 0.45pt + palette.border-light),
            _tier-card(
              code: "T2",
              title: "Notaufnahme / gleichtags Arzt",
              bar: palette.warning,
              fill: white,
              action: [
                Therapie abbrechen; Notaufnahme bzw. gleichtags Arzt;
                keine manuelle Lymphdrainage / intensive Wärme auf floridem Areal.
              ],
              triggers: [
                Flächiges scharf begrenztes Erythem plus Fieber oder systemische Zeichen ·
                Immunsuppression mit rasch progredientem Weichteilerythem ·
                unilaterale Beinschwellung ohne klares Erysipel-Muster (TVT-DDx)
              ],
            ),
            line(length: 100%, stroke: 0.45pt + palette.border-light),
            // T3 omitted — content has no Zeitnah row
            _tier-card(
              code: "T4",
              title: "Behandeln + Sicherheitsnetz",
              bar: palette.primary,
              fill: white,
              action: [
                Nur ohne Red Flags: Begleitung außerhalb des verdächtigen Areals;
                Rückkehrgründe Rötung, Fieber, Schüttelfrost, rasche Schwellung, Schmerzexplosion.
              ],
              triggers: none,
            ),
          )
        ],

        // ── RIGHT: SCOPE card (optically not a TIME tier) ──
        scope-card[
          Keine Erysipel-Diagnosesicherung, keine Antibiotika;
          manuelle Techniken/Lymphdrainage auf floridem Erysipel ohne Freigabe
          *absolut kontraindiziert*; TVT und nekrotisierende Infektion werden
          *nicht* physiotherapeutisch ausgeschlossen.
        ],
      )
    ]
  ]
}
