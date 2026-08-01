// Clean slate 2026-08-01 · Lungenembolie · slug kl-le-2026-08-01
// Pins: copy-through C chapter-v-2-lungenembolie only
// Grammar transfer from le.typ (nested multi-T1 + mimic + Wells SCOPE brake)
// Do NOT import old le.typ as clinical SoT
// Design CLEAN: urgency · mimic · free vision SKIP (code densifies multi-T1)

#import "/packages/bookkit/theme.typ": palette
#import "/domains/medical/lib/typst/kl-core/us-time-scope.typ": time-tier, scope-frame

// ── U-urgency + U-scope (L4 nested multi-T1 stack) ────────────

#let us-le() = {
  set text(size: 8pt)

  block(
    width: 100%,
    inset: (x: 7pt, y: 5pt),
    radius: 2pt,
    fill: rgb("#fef2f2"),
    stroke: (left: 3pt + palette.danger, rest: 0.4pt + palette.danger.lighten(45%)),
  )[
    #set text(size: 7.5pt)
    #text(weight: "bold", fill: palette.danger)[Plausibler LE-Verdacht = Triagefall.]
    #text(fill: palette.text-body)[ Keine Behandlungsprobe · keine Belastungstests zur „Klärung“.]
  ]

  v(4.5pt)
  stack(
    spacing: 4.5pt,
    time-tier(
      code: "112",
      title: "Sofort — High-Risk LE-Verdacht",
      bar: palette.danger,
      fill: rgb("#fef2f2"),
      solid-header: true,
      action: [Behandlung sofort stoppen · Patient:in *nicht* aufstehen oder gehen lassen · Oberkörper hoch lagern soweit toleriert · Vitalzeichen dokumentieren · *112* · Basismaßnahmen bis Übergabe.],
      triggers: list(
        [Hämodynamische Instabilität: Schock, persistierende Hypotonie (syst. RR unter 90 bzw. Abfall ≥40), Kaltschweißigkeit, Schockindex über 1],
        [Synkope/Präsynkope bei Dyspnoe/Thoraxschmerz],
        [Plötzliche Ruhedyspnoe + Tachykardie (über 100/min) *plus* VTE-Risikofaktor],
        [Massive Hämoptyse / schwere Hypoxämie als *stützendes* Schwerezeichen],
      ),
    ),
    time-tier(
      code: "NA",
      title: "Notaufnahme / gleichtags Arzt",
      bar: palette.warning,
      fill: rgb("#fff7ed"),
      action: [Session abbrechen · absolute körperliche Schonung · schriftlich Verdacht und Zeitverlauf mitgeben · Transport organisieren (nicht allein belasten) · Notaufnahme bzw. gleichtägige ärztliche Abklärung.],
      triggers: list(
        [Stabil, aber LE-Verdacht: Belastungsdyspnoe und/oder atemabhängiger Thoraxschmerz nach OP/Immobilität],
        [Hämoptyse + pleuritischer Schmerz; klinische TVT-Zeichen + beginnende Dyspnoe],
        [Wells-Items stark positiv als *Sensibilisierung* — kein HP-Ausschluss],
      ),
    ),
    time-tier(
      code: "T4",
      title: "Behandeln + Sicherheitsnetz",
      bar: palette.primary,
      fill: rgb("#f0fdfa"),
      action: [Nur bei *sicher* muskuloskelettalem Korrelat *ohne* Dyspnoe, ohne Tachykardie/Hypoxämie und ohne VTE-Red-Flags — oder nach *ärztlich* freigegebener, stabiler Niedrigrisiko-LE unter Antikoagulation. Bei neuer Dyspnoe, Tachykardie, Schwindel oder Beinschwellung: sofort Abbruch und Re-Triage.],
      triggers: none,
    ),
  )

  v(5pt)
  scope-frame[
    LE-Ausschluss, D-Dimer, Bildgebung, Antikoagulation und Risikostratifizierung (High/Intermediate/Low Risk) — *nicht* HP. Wells-/YEARS-Items nur als Warnhinweis, *nie* als „LE ausgeschlossen“. Keine Belastungstests zur „Klärung“. Thoraxpalpation schließt LE *nicht* aus.
  ]
}

// ── U-mimic (4 frames) ────────────────────────────────────────

#let mimic-le() = {
  set text(size: 8pt)
  text(size: 9pt, weight: "bold", fill: palette.danger)[
    Trügerische Erklärungen
  ]
  v(2pt)
  text(size: 7pt, fill: palette.text-muted)[
    Wenn BWS, Post-OP oder „Wadenzerrung“ die LE maskieren
  ]
  v(4pt)

  let row(frame, danger) = {
    block(
      width: 100%,
      inset: 6pt,
      radius: 2pt,
      stroke: 0.45pt + palette.border,
      fill: white,
    )[
      #grid(
        columns: (48mm, 12mm, 1fr),
        column-gutter: 4pt,
        align(horizon)[
          #text(size: 7.8pt)[#frame]
        ],
        align(center + horizon)[
          #text(size: 13pt, fill: palette.danger, weight: "bold")[→]
        ],
        align(horizon)[
          #text(size: 7.8pt, weight: "bold", fill: palette.danger)[#danger]
        ],
      )
    ]
  }

  stack(
    spacing: 3.5pt,
    row(
      [„BWS-Blockade / Brustwand“],
      [Palpationsempfindlichkeit maskiert LE bei Dyspnoe oder Tachykardie],
    ),
    row(
      [Post-OP-Verspannung],
      [Schulter-/Thoraxschmerz nach OP trotz massiv erhöhtem VTE-Risiko],
    ),
    row(
      [„Wadenzerrung“ nach Flug],
      [Einseitiger Beinschmerz = TVT mit Embolierisiko — kein Belastungstest],
    ),
    row(
      [„Pleuritis nach Infekt“],
      [Postinfektiöses VTE-Risiko; pleuritischer Schmerz + Dyspnoe nicht entwarnen],
    ),
  )
}

// ── U-for-against + must-not-miss (sequential) ─────────────────

#let discrimination-le() = {
  set text(size: 8pt)

  grid(
    columns: (1fr, 1fr),
    column-gutter: 6pt,
    block(
      width: 100%,
      inset: 6.5pt,
      radius: 2pt,
      fill: rgb("#f0fdfa"),
      stroke: 0.45pt + palette.primary.lighten(30%),
    )[
      #text(size: 8pt, weight: "bold", fill: palette.primary)[Erhärtet den Verdacht]
      #v(3pt)
      #set text(size: 7.3pt)
      #list(
        [perakute Dyspnoe und/oder pleuritischer Schmerz *plus* VTE-Risiko (OP, Immobilität, Malignom, frühere VTE)],
        [TVT-Zeichen; Hämoptyse; Tachykardie; Synkope im Kontext],
      )
    ],
    block(
      width: 100%,
      inset: 6.5pt,
      radius: 2pt,
      fill: rgb("#f8fafc"),
      stroke: 0.45pt + palette.border,
    )[
      #text(size: 8pt, weight: "bold", fill: palette.text-muted)[Passt eher nicht]
      #v(3pt)
      #set text(size: 7.3pt)
      #list(
        [rein bewegungsabhängiger, klar reproduzierbarer MSK-Thoraxschmerz *ohne* Dyspnoe],
        [ohne vegetative/vitale Auffälligkeit und ohne VTE-Risikokontext],
        [bei neuer Luftnot *nie* allein über Palpation entlasten],
      )
    ],
  )

  v(5pt)
  block(
    width: 100%,
    inset: 6.5pt,
    radius: 2pt,
    fill: rgb("#fef2f2"),
    stroke: (left: 3.5pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
  )[
    #text(size: 8pt, weight: "bold", fill: palette.danger)[Nicht übersehen]
    #v(3pt)
    #set text(size: 7.3pt)
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 6pt,
      row-gutter: 3pt,
      [*Hämodynamische Instabilität / Synkope:* *112*],
      [*Parallel-DDx vor MSK:* ACS, Aortendissektion, Pneumothorax],
    )
  ]
}

// ── Big Picture three-beat helper ─────────────────────────────

#let bp-le() = {
  set text(size: 8pt)
  grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 5pt,
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: rgb("#f0fdfa"),
      stroke: 0.4pt + palette.primary.lighten(25%),
    )[
      #text(size: 7.8pt, weight: "bold", fill: palette.primary)[Was ist LE?]
      #v(3pt)
      #set text(size: 7.3pt)
      Plötzliche oder subakute Verlegung von Lungenarterien — meist Thromben aus TVT; klinisch schwerwiegendstes VTE-Ereignis.
    ],
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: rgb("#fef2f2"),
      stroke: 0.4pt + palette.danger.lighten(35%),
    )[
      #text(size: 7.8pt, weight: "bold", fill: palette.danger)[Gefahr Fehllabel]
      #v(3pt)
      #set text(size: 7.3pt)
      „BWS-Blockade“, Brustwand oder post-OP-Verspannung maskieren LE, während Instabilität, Synkope oder Ruhedyspnoe + Tachykardie Notfall sind.
    ],
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: rgb("#f8fafc"),
      stroke: 0.4pt + palette.border,
    )[
      #text(size: 7.8pt, weight: "bold", fill: palette.text-body)[HP-Rolle]
      #v(3pt)
      #set text(size: 7.3pt)
      Jeder plausible LE-Verdacht = *Triagefall*, keine Behandlungsprobe. Bei Instabilität *112*; stabil-aber-verdächtig: Notaufnahme/gleichtags — absolute Schonung.
    ],
  )
}
