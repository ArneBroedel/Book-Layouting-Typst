// Clean slate 2026-08-01 · Myokardinfarkt / ACS kl-voll
// slug: kl-mi-2026-08-01
// Pins: copy-through C chapter-v-1-myokardinfarkt only
// Grammar transfer from kl-wave5/mi.typ; do NOT import old as clinical SoT
// Design CLEAN: urgency (nested multi-T1) · mimic

#import "/packages/bookkit/theme.typ": palette
#import "/domains/medical/lib/typst/kl-core/us-time-scope.typ": time-tier, scope-frame

// ── U-urgency + U-scope (US-B nested multi-T1, T3 collapse) ───

#let us-mi() = {
  set text(size: 8pt)

  // Default-to-Danger maxim — quiet-strong, not a fifth tier
  block(
    width: 100%,
    inset: (x: 7pt, y: 5pt),
    radius: 2pt,
    fill: rgb("#fef2f2"),
    stroke: (left: 3pt + palette.danger, rest: 0.4pt + palette.danger.lighten(45%)),
  )[
    #set text(size: 7.5pt)
    #text(weight: "bold", fill: palette.danger)[Im Zweifel Notruf.]
    #text(fill: palette.text-body)[ Default bei ACS-Möglichkeit bleibt der Notruf.]
  ]

  v(4.5pt)
  stack(
    spacing: 4.5pt,
    time-tier(
      code: "T1",
      title: "112 / Sofort — ACS-Verdacht",
      bar: palette.danger,
      fill: rgb("#fef2f2"),
      solid-header: true,
      action: [*112 wählen* · Sitzung beenden · absolute Ruhe · keine Belastung · keine manuelle Thorax-Intervention · bis Rettungsdienst überwachen.],
      triggers: list(
        [Retrosternaler Vernichtungs- oder anhaltender Druckschmerz mit Ausstrahlung Arm/Kiefer/Rücken und vegetativen Zeichen],
        [Akute Dyspnoe, Synkope oder Schock bei Infarktverdacht],
        [Bekannte KHK plus neu progredienter Ruheschmerz],
        [Oberbauchschmerz plus Vegetativum und kardiale Risikofaktoren],
      ),
    ),
    time-tier(
      code: "T2",
      title: "Notaufnahme / gleichtags Arzt",
      bar: palette.warning,
      fill: rgb("#fff7ed"),
      action: [*Keine PT.* Unklar, aber ohne ACS-Vollbild und ohne 112-Kriterien → unverzüglich ärztlich; bei Verschlechterung oder nachträglich erkannten ACS-Hinweisen *sofort 112*.],
      triggers: none,
    ),
    // T3 omitted — content silent (US-C collapse)
    time-tier(
      code: "T4",
      title: "Behandeln + Sicherheitsnetz",
      bar: palette.primary,
      fill: rgb("#f0fdfa"),
      action: [Nur bei *gesicherter* MSK-Erklärung, ohne Red Flags, niedrigem Risiko (± ärztliche Freigabe). PT möglich; auf neue Enge/Dyspnoe achten; Abbruchkriterien vorab. Abbruch bei neuem Druck/Dyspnoe/Vegetativum → 112.],
      triggers: none,
    ),
  )

  v(5pt)
  scope-frame[
    ACS-Ausschluss, EKG, Troponin, STEMI/NSTEMI-Zuordnung, Reperfusion, Belastungstests, medikamentöse Infarkttherapie — *nicht* HP/PT. Marburger Herz-Score *nicht* als Ausschluss nutzen; niedriger MHS schließt ACS *nicht* aus. GRACE/HEART/TIMI nicht für den Direktzugang operationalisieren. STEMI und NSTE-ACS: *beides Notfallpfad* — keine EKG-Differenzierung als Aufgabe. ACS ist *kein* physiotherapeutisches Behandlungsfeld: Verdacht → Triage, meist 112.
  ]
}

// ── U-mimic (FRAME-ERROR map, 4 frames) ───────────────────────

#let mimic-mi() = {
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
          #text(size: 8pt)[„#frame“]
        ],
        align(center + horizon)[
          #text(size: 13pt, fill: palette.danger, weight: "bold")[→]
        ],
        align(horizon)[
          #text(size: 8pt, weight: "bold", fill: palette.danger)[#danger]
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
      "Magen / Gastritis",
      "Epigastrischer Schmerz mit Vegetativum und Risikofaktoren kann ACS-Mimikry sein",
      consequence: "nicht als rein gastrointestinal abtun",
    ),
    row(
      "Linke Schulter / BWS-Blockade",
      "Ausstrahlung oder Ischämie-Äquivalent hinter scheinbar orthopädischem Bild",
      consequence: "bei retrosternalem Druck/Dyspnoe → Notfallverdacht",
    ),
    row(
      "Panik / Hyperventilation",
      "Vernichtungsschmerz, Kaltschweiß und Risikoprofil ersetzen keine 112-Entscheidung",
      consequence: none,
    ),
    row(
      "Druckschmerzhaft, also muskulär",
      "Palpation senkt in ärztlichen MHS-Kohorten die KHK-Wahrscheinlichkeit — im Direktzugang *niemals* alleinige Entwarnung",
      consequence: "nie allein durch Palpation entwarnen, wenn Anamnese kardial klingt",
    ),
  )
}

// ── U-for-against + U-must-not-miss ───────────────────────────

#let fa-mi() = {
  set text(size: 8pt)
  grid(
    columns: (1fr, 1fr),
    column-gutter: 5pt,
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: rgb("#f0fdfa"),
      stroke: (left: 3.5pt + palette.primary, rest: 0.4pt + palette.border-light),
    )[
      #text(size: 8pt, weight: "bold", fill: palette.primary)[Erhärtet den Verdacht]
      #v(3pt)
      #set text(size: 7.2pt, fill: palette.text-body)
      Typischer anginöser Ruheschmerz mit vegetativen Zeichen; bekannte KHK mit neuem Ruhe- oder Crescendo-Schmerz; Oberbauchschmerz plus Vegetativum und kardiale Risikofaktoren; Synkope oder Schock im Kontext.
    ],
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: palette.bg-subtle,
      stroke: (left: 3.5pt + palette.text-muted, rest: 0.4pt + palette.border-light),
    )[
      #text(size: 8pt, weight: "bold", fill: palette.text-muted)[Passt eher nicht]
      #v(3pt)
      #set text(size: 7.2pt, fill: palette.text-body)
      Klar reproduzierbarer, rein bewegungsabhängiger Schmerz *ohne* vegetatives Begleitbild und *ohne* Risikoprofil. *Cave:* nie allein durch Palpation entwarnen, wenn Anamnese kardial klingt.
    ],
  )
}

#let nm-mi() = {
  set text(size: 8pt)
  block(
    width: 100%,
    inset: 7pt,
    radius: 2pt,
    fill: rgb("#fff7ed"),
    stroke: (left: 3.5pt + palette.warning, rest: 0.5pt + palette.warning.lighten(40%)),
  )[
    #text(size: 8pt, weight: "bold", fill: palette.warning)[Nicht übersehen]
    #v(3pt)
    #set text(size: 7.3pt, fill: palette.text-body)
    #list(
      [Atypisches ACS (Dyspnoe oder Epigastrium dominant)],
      [STEMI und NSTE-ACS: *beides* Notfallpfad — keine EKG-Differenzierung als Aufgabe],
      [Aortendissektion, Lungenembolie — nicht als MSK belasten],
    )
  ]
}

#let discrimination-mi() = {
  fa-mi()
  v(5pt)
  nm-mi()
}

/// Full §4 stack: FA + NM + mimic
#let section-four-mi() = {
  discrimination-mi()
  v(6pt)
  mimic-mi()
}
