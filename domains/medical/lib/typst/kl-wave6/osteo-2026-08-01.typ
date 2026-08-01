// Clean slate 2026-08-01 · Osteoporose kl-kurz · slug kl-osteo-2026-08-01
// Pins: copy-through C chapter-v-3-osteoporose only
// Quieter L2–L4 — no L6 theater, no free vision, solid danger only T1

#import "/packages/bookkit/theme.typ": palette
#import "/domains/medical/lib/typst/kl-core/us-time-scope.typ": time-tier, scope-frame

// ── U-urgency + U-scope (L4 quieter) ──────────────────────────

#let us-osteo() = {
  set text(size: 8pt)

  stack(
    spacing: 4pt,
    time-tier(
      code: "T1",
      title: "112 / Sofort",
      bar: palette.danger,
      fill: rgb("#fef2f2"),
      solid-header: true,
      action: [
        Behandlung *sofort abbrechen*. Vitalzeichen und orientierende Neurologie prüfen.
        *112* rufen oder unverzüglich Notaufnahme. Betroffene Region *nicht* belasten.
        Übergabe: Trauma, Antikoagulationsstatus, neurologische Ausfälle.
      ],
      triggers: list(
        [Neurologische Ausfälle bei Verdacht auf Wirbelkörperfraktur (Kompression)],
        [Sturz *plus* Antikoagulation *plus* Kopftrauma (Verdacht SHT / Blutung)],
      ),
    ),
    time-tier(
      code: "T2",
      title: "Notaufnahme / gleichtags Arzt",
      bar: palette.warning,
      fill: rgb("#fff7ed"),
      action: [
        Ärztliche Bildgebung und Frakturversorgung veranlassen.
        Physiotherapie an der betroffenen Region bis zur ärztlichen Freigabe *stoppen*.
        *Keine* forcierte Flexion und *keine* Impulsmanipulation (HVT) bei unklarem Wirbelkörperstatus.
      ],
      triggers: list(
        [Akuter gürtelförmiger Rückenschmerz nach Bagatell / Bücken (WK-Fraktur-Verdacht)],
        [Trauma *plus* Unfähigkeit, eine Extremität zu belasten],
        [Fraktur nach Bagatellereignis allgemein],
      ),
    ),
    time-tier(
      code: "T4",
      title: "Behandeln mit Sicherheitsnetz",
      bar: palette.primary,
      fill: rgb("#f0fdfa"),
      action: [
        Sturzprävention, Kraft- und Gleichgewichtstraining im Kompetenzrahmen, Aktivitätsberatung.
        *Rückkehrgründe:* neuer akuter Rückenschmerz nach Bagatell, plötzliche Belastungunfähigkeit,
        Neurologie, Sturz mit Kopftrauma → sofort Notaufnahme/112.
        Interprofessionelle Anbindung an Osteologie (DXA, Labor) und ärztliche Therapie.
      ],
      triggers: list(
        [Stabiles Muster *ohne* Red Flags: bekannte Osteoporose oder Risikoprofil, keine akute Fraktur, keine Neurologie],
      ),
    ),
  )

  v(5pt)
  scope-frame[
    Diagnose Osteoporose, DXA-Indikation, medikamentöse Osteoporosetherapie und Frakturversorgung
    sind *ärztlich*. Aufgabe im Direktzugang: Fraktur- und Red-Flag-Screening, Stopp gefährlicher Maßnahmen,
    Triage, Sturzprävention.
  ]

  v(4pt)
  block(
    width: 100%,
    inset: 6.5pt,
    radius: 2pt,
    fill: rgb("#fff7ed"),
    stroke: (left: 3pt + palette.warning, rest: 0.4pt + palette.warning.lighten(40%)),
  )[
    #set text(size: 7.4pt)
    #text(weight: "bold", fill: palette.warning.darken(15%))[Absolute / relative KI bei unklarem WK-Fraktur-Verdacht: ]
    keine forcierte Rumpfbeugung, keine Impulsmanipulation (HVT) der Wirbelsäule,
    keine belastende Mobilisation der verdächtigen Region bis zur ärztlichen Freigabe.
    Sturzprävention hat Vorrang vor aggressiver „Lockerung“.
  ]
}

// ── U-mimic (3 rows) ──────────────────────────────────────────

#let mimic-osteo() = {
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
        columns: (42mm, 12mm, 1fr),
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
      "Akuter Lumbago / Block",
      "osteoporotische WK-Fraktur möglich",
      consequence: "Bildgebung + Belastungspause, kein „Einrenken“",
    ),
    row(
      "Prellung nach Bagatell",
      "frakturverdächtig bis Ausschluss",
      consequence: "Belastungunfähigkeit / lokaler Druckschmerz",
    ),
    row(
      "Glukokortikoid übersehen",
      "zentraler Risikofaktor",
      consequence: "osteologischer Pfad sonst verpasst",
    ),
  )
}

// ── U-criteria quiet panel ────────────────────────────────────

#let criteria-osteo() = {
  set text(size: 8pt)

  text(size: 9pt, weight: "bold", fill: palette.primary-dark)[
    Fragilitätsfraktur — Verdachtscluster
  ]
  v(2pt)
  text(size: 7pt, fill: palette.text-muted)[
    Systemische Knochenminderung zeigt sich oft erst als Fraktur nach *Bagatell* — nicht als „spektakuläres“ Trauma.
  ]
  v(5pt)

  grid(
    columns: (1fr, 1fr),
    column-gutter: 6pt,
    row-gutter: 5pt,
    block(
      width: 100%, inset: 7pt, radius: 2pt,
      fill: rgb("#f0fdfa"), stroke: 0.45pt + palette.primary.lighten(30%),
    )[
      #text(size: 7.8pt, weight: "bold", fill: palette.primary)[Energie / Auslöser]
      #v(3pt)
      #set text(size: 7.3pt)
      Niederenergetisch: Sturz aus Standhöhe, Bücken, Heben, Husten — typisch WK, Schenkelhals, Radius, Becken, Rippe.
    ],
    block(
      width: 100%, inset: 7pt, radius: 2pt,
      fill: rgb("#f8fafc"), stroke: 0.45pt + palette.border,
    )[
      #text(size: 7.8pt, weight: "bold", fill: palette.text-body)[Risikokontext]
      #v(3pt)
      #set text(size: 7.3pt)
      Alter, postmenopausaler Status, systemische Glukokortikoide, Immobilität, Rauchen, Untergewicht, endokrine Störungen, frühere Fragilitätsfrakturen, wiederholte Stürze.
    ],
    block(
      width: 100%, inset: 7pt, radius: 2pt,
      fill: rgb("#fff7ed"), stroke: 0.45pt + palette.warning.lighten(35%),
    )[
      #text(size: 7.8pt, weight: "bold", fill: palette.warning.darken(10%))[Wirbelkörper]
      #v(3pt)
      #set text(size: 7.3pt)
      Akuter gürtelförmiger Rückenschmerz nach Bagatell/Bücken; *lokaler Druck-/Klopfschmerz* über betroffener Etage; Größenabnahme / Rundrücken im Verlauf.
    ],
    block(
      width: 100%, inset: 7pt, radius: 2pt,
      fill: rgb("#fef2f2"), stroke: 0.45pt + palette.danger.lighten(40%),
    )[
      #text(size: 7.8pt, weight: "bold", fill: palette.danger)[Extremität / nicht übersehen]
      #v(3pt)
      #set text(size: 7.3pt)
      Belastung unmöglich, Schwellung, Fehlstellung nach Bagatell.
      *Nicht übersehen:* maligne Fraktur/Myelom, Spondylodiszitis, Neuro-Kompression, SHT bei Sturz unter Antikoagulation.
    ],
  )
}
