// Wave-6 · CRPS WP9 unit pilot · slug kl-crps-wp9-2026-07-31
// WP9d: mechanism → honest simple (Human: no clear graphic gain)
//        mimic → dense dual-band rows (error hierarchy earns form)
// HARD BAN: no crps-rerun.typ / old winners as SoT
// Pins: C · German only · no form-meta · no anatomy

#import "/packages/bookkit/theme.typ": palette

// ── U-mechanism (WP9d simple) ─────────────────────────────────
// Contract: choose simple — list/prose teaches equally; no diagram chrome.
// Space budget: ~⅛–⅙ page. Gain vs compact text: none/weak → simple wins.

#let mechanism-crps-wp9() = {
  set text(size: 8pt)
  set par(leading: 1.05em)

  block(
    width: 100%,
    breakable: false,
    inset: (x: 0pt, y: 0pt),
  )[
    #text(fill: palette.text-body)[
      Nach *Extremitäten-Trauma / OP* greifen *entzündliche*, *nervale* und *autonome* Anteile
      *zusammen* und münden in eine *regionäre Fehlregulation* mit *disproportionalem Schmerz und Zeichen*.
    ]
    #v(3pt)
    #text(size: 7.6pt, fill: palette.text-body)[
      *Zuerst ausschließen:* Infekt · Kompartment · Ischämie · TVT. \
      *Unbehandelt:* Chronifizierung + Funktionsverlust. \
      Das CRPS-Label darf *nicht* darüber hinwegtäuschen, dass sich darunter Infekt, Kompartmentsyndrom oder Gefäßnotfall verbergen kann.
    ]
  ]
}

// ── U-mimic (WP9c/d dense dual-band rows) ─────────────────────
// Hierarchy frame quiet / danger loud earns form; dense for book scale.

#let mimic-crps-wp9() = {
  set text(size: 7.6pt)
  block(width: 100%, breakable: false)[
    #text(size: 8.5pt, weight: "bold", fill: palette.danger)[Trügerische Erklärungen]
    #h(4pt)
    #text(size: 6.6pt, fill: palette.text-muted)[Maske → klinische Wahrheit]
    #v(4pt)

    #let row(frame, danger, alert: false) = {
      let border = if alert { 1pt + palette.danger } else { 0.4pt + palette.border }
      let frame-fill = if alert { rgb("#fff5f5") } else { white }
      let danger-fill = if alert { rgb("#7f1d1d") } else { luma(30) }

      block(
        width: 100%,
        breakable: false,
        radius: 1.5pt,
        clip: true,
        stroke: border,
      )[
        #grid(
          columns: (50mm, 1fr),
          block(
            width: 100%,
            fill: frame-fill,
            inset: (x: 5pt, y: 4pt),
            stroke: (right: 0.45pt + palette.border-light),
          )[
            #set text(size: 7.2pt, fill: palette.text-body)
            #set par(leading: 0.95em)
            „#frame“
          ],
          block(
            width: 100%,
            fill: danger-fill,
            inset: (x: 5pt, y: 4pt),
          )[
            #set text(size: 7pt, weight: "bold", fill: white)
            #set par(leading: 0.95em)
            #danger
          ],
        )
      ]
    }

    #stack(
      spacing: 2.5pt,
      row(
        "Normaler Heilungsschmerz",
        [entwarnt bei klarer Disproportionalität und vegetativen Zeichen *nicht*],
      ),
      row(
        "Psychosomatik / Überempfindlichkeit",
        [psychische Anteile schließen organische Notfall-DDx und CRPS *nicht* aus],
      ),
      row(
        "Nur Nervenläsion / isolierte Neuropathie",
        [isolierte Nervenverletzung erklärt kein volles regionales vegetativ-trophisches Bild],
      ),
      row(
        "Entzündliches CRPS bei Fieber/Eiter",
        [Infektzeichen (Osteomyelitis, septische Arthritis, Wundinfekt) haben *Vorrang* vor dem CRPS-Label],
        alert: true,
      ),
    )
  ]
}
