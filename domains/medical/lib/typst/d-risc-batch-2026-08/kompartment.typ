// d-risc-batch-2026-08 · ACS kl-kurz · slug kl-kompartment-batch-2026-08
// Density: compact book body — tight rhythm, no sparse page ends
// Re-pin: batch C chapter-v-3-kompartmentsyndrom + Notes critical claims

#import "/packages/bookkit/theme.typ": palette
#import "/domains/medical/lib/typst/kl-core/us-time-scope.typ": time-tier, scope-frame
#import "/domains/medical/lib/typst/kl-wave5/compartment.typ": (
  mimic-compartment,
)

#let mimic-acs = mimic-compartment

// ── U-urgency + U-scope (re-pin batch C §5) ───────────────────

#let us-acs() = {
  set text(size: 7.6pt)

  stack(
    spacing: 3pt,
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
        [Rasche Verschlechterung bei ACS-Verdacht],
        [neurologische Ausfälle (*Parese*, *Hypästhesie*, *Fußheberschwäche*)],
        [schwere Allgemeinzustandsverschlechterung],
      ),
    ),
    time-tier(
      code: "T2",
      title: "Notaufnahme / Unfallchirurgie",
      bar: palette.warning,
      fill: rgb("#fff7ed"),
      action: [
        Physiotherapie *sofort abbrechen*.
        Weder Belastung noch Kompression, forcierte Dehnung oder manuelle „Lockerungstechniken“.
        Verband nach Möglichkeit *lockern oder öffnen*.
        Extremität *nicht* über Herzhöhe lagern.
        Unverzüglich Notaufnahme oder Unfallchirurgie.
      ],
      triggers: list(
        [Klinischer ACS-Verdacht: *out-of-proportion-Schmerz* und/oder *passiver Dehnungsschmerz* und/oder *brettharte Loge* — *auch bei tastbaren Pulsen*],
        [zunehmender Schmerz unter engem Gips/Verband — *nicht abwarten*],
      ),
    ),
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

  v(3.5pt)
  scope-frame[
    Kompartmentdruckmessung; Fasziotomie-Indikation; operative Entlastung;
    endgültige Differenzialdiagnose arterielle Ischämie / nekrotisierende Infektion
    sind *ärztlich*. HP/PT *misst keinen* Kompartmentdruck und behandelt ACS *nicht*.
  ]
}

/// Criteria 2×2 + anti-elev (call channels-acs after)
#let criteria-acs() = {
  set text(size: 7.8pt)
  set align(left)
  set par(first-line-indent: 0pt)

  // Sub-label under H2 — small gap, not a second cramped section head
  text(size: 8.2pt, weight: "bold", fill: palette.primary)[
    Klinische Zeichen · vorderes Unterschenkelkompartiment
  ]
  v(2.5pt)
  text(size: 7pt, fill: palette.text-muted)[
    Kritischer Druckanstieg im osteofaszialen Fach → Ischämie in wenigen Stunden, wenn unbehandelt.
  ]
  v(4.5pt)

  grid(
    columns: (1fr, 1fr),
    column-gutter: 4.5pt,
    row-gutter: 4pt,
    block(
      width: 100%, inset: 5.5pt, radius: 2pt,
      fill: white,
      stroke: (left: 2.75pt + palette.warning, rest: 0.4pt + palette.border),
    )[
      #text(size: 7.6pt, weight: "bold", fill: palette.warning.darken(12%))[1 · Out-of-proportion-Schmerz]
      #v(2pt)
      #text(size: 7.1pt)[Schmerz *deutlich stärker* als zur Verletzung passend; analgetisch kaum beherrschbar.]
    ],
    block(
      width: 100%, inset: 5.5pt, radius: 2pt,
      fill: white,
      stroke: (left: 2.75pt + palette.warning, rest: 0.4pt + palette.border),
    )[
      #text(size: 7.6pt, weight: "bold", fill: palette.warning.darken(12%))[2 · Passiver Dehnungsschmerz]
      #v(2pt)
      #text(size: 7.1pt)[Massiver Schmerz bei *passiver* Muskeldehnung (z. B. Plantarflexion bei vorderer Loge).]
    ],
    block(
      width: 100%, inset: 5.5pt, radius: 2pt,
      fill: white,
      stroke: (left: 2.75pt + palette.warning, rest: 0.4pt + palette.border),
    )[
      #text(size: 7.6pt, weight: "bold", fill: palette.warning.darken(12%))[3 · Brettharte Loge]
      #v(2pt)
      #text(size: 7.1pt)[Prall-bretthartes Kompartiment / brettharte Loge bei Untersuchung.]
    ],
    block(
      width: 100%, inset: 5.5pt, radius: 2pt,
      fill: white,
      stroke: (left: 2.75pt + palette.danger, rest: 0.4pt + palette.danger.lighten(35%)),
    )[
      #text(size: 7.6pt, weight: "bold", fill: palette.danger)[4 · Pulse schließen ACS *nicht* aus]
      #v(2pt)
      #text(size: 7.1pt)[Tastbare Pulse *entwarnen nicht* — gleiche Dringlichkeit; Pulse fallen oft spät aus.]
    ],
  )

  v(4pt)
  grid(
    columns: (1fr, 1fr),
    column-gutter: 4.5pt,
    block(
      width: 100%, inset: 5.5pt, radius: 2pt,
      fill: rgb("#fef2f2"),
      stroke: (left: 2.75pt + palette.danger, rest: 0.35pt + palette.danger.lighten(40%)),
    )[
      #text(size: 7.4pt, weight: "bold", fill: palette.danger)[Nicht über Herzhöhe lagern]
      #v(1.5pt)
      #text(size: 7pt)[Hochlagerung mindert arterielle Perfusion — *kein* Ersatz für Notfallversorgung.]
    ],
    block(
      width: 100%, inset: 5.5pt, radius: 2pt,
      fill: rgb("#f0fdfa"),
      stroke: 0.35pt + palette.primary.lighten(30%),
    )[
      #text(size: 7.4pt, weight: "bold", fill: palette.primary)[Lokalisation · Tempo]
      #v(1.5pt)
      #text(size: 7pt)[Vord. Unterschenkel / Unterarm · *stundenkritisch* / über Stunden eskalierend.]
    ],
  )
}

/// Vier Kanäle — call after criteria; keep breakable:false with parent if needed
#let channels-acs() = {
  set text(size: 7pt)
  set align(left)
  set par(first-line-indent: 0pt)
  // Clear gap above sub-label (reads as next unit under §3, not jammed list)
  v(5pt)
  text(size: 8.2pt, weight: "bold", fill: palette.primary)[Vier Kanäle (Detail)]
  v(3.5pt)
  grid(
    columns: (1fr, 1fr),
    column-gutter: 4pt,
    row-gutter: 3.5pt,
    block(width: 100%, inset: 4.5pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.35pt + palette.border)[
      #text(weight: "bold", fill: palette.primary, size: 7.1pt)[Anamnese]
      #v(1.5pt)
      Trauma / OP / enger Verband; Schmerz *deutlich stärker* als zur Verletzung passend; Analgetika greifen kaum.
    ],
    block(width: 100%, inset: 4.5pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.35pt + palette.border)[
      #text(weight: "bold", fill: palette.primary, size: 7.1pt)[Beobachtung]
      #v(1.5pt)
      Prall-„brettharte“ Loge, glänzende Haut; Schonhaltung; spät: blass/kühl (nicht zuverlässig früh).
    ],
    block(width: 100%, inset: 4.5pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.35pt + palette.border)[
      #text(weight: "bold", fill: palette.primary, size: 7.1pt)[Untersuchung]
      #v(1.5pt)
      Starke Schmerzverstärkung bei *passiver Dehnung*; Sensibilitätsstörung / Parese möglich; *Pulse können erhalten sein*.
    ],
    block(width: 100%, inset: 4.5pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.35pt + palette.border)[
      #text(weight: "bold", fill: palette.primary, size: 7.1pt)[Verlauf]
      #v(1.5pt)
      Stunden; Zunahme unter Verband/Gips; Neuro-Defizite und Pulsverlust sind *Spätzeichen*.
    ],
  )
}
