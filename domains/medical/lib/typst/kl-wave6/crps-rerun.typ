// Wave-6 · CRPS (Morbus Sudeck) · slug kl-crps-rerun-2026-07-30
// Pins copy-through C chapter-v-3-crps-sudeck.md only
// Form Specs: kl-crps-rerun-2026-07-30-{urgency,mimic,regional-cues,discrimination}
// HARD BAN: does not import domains/.../crps.typ or old pilot paths
// Rules: German only · no form-meta · SCOPE orthogonal · T1–T4 all from C · no anatomy

#import "/packages/bookkit/theme.typ": palette
#import "/domains/medical/lib/typst/kl-core/us-time-scope.typ": time-tier, scope-frame
#import "@preview/cetz:0.5.2": canvas, draw

// ── U-bigpicture ──────────────────────────────────────────────

#let bp-crps-rerun() = {
  set text(size: 8pt)
  // stack-only (no height:100% bar that stretches empty column)
  stack(
    spacing: 0pt,
    block(
      width: 100%,
      inset: 7pt,
      fill: palette.bg-subtle,
      radius: (top: 3pt, rest: 0pt),
      stroke: (left: 3.5pt + palette.primary, rest: 0pt),
    )[
      #text(size: 7pt, fill: palette.text-muted, weight: "bold")[WAS]
      #v(2pt)
      #set text(size: 8pt)
      Das *komplexe regionale Schmerzsyndrom (CRPS, Morbus Sudeck)* ist ein regionales Schmerzsyndrom nach Trauma oder Operation einer Extremität: Schmerzen *deutlich stärker als zur Verletzung passend*, mit sensorischen, motorischen, vasomotorischen und trophischen Störungen — typischerweise *distal* der Läsion.
    ],
    block(
      width: 100%,
      inset: 7pt,
      fill: rgb("#fef2f2"),
      stroke: (left: 3.5pt + palette.danger, rest: 0pt),
    )[
      #text(size: 7pt, fill: palette.danger, weight: "bold")[GEFAHR]
      #v(2pt)
      #set text(size: 8pt)
      Hinter dem Label „Sudeck“ können Infekt, Kompartmentsyndrom oder arterieller Gefäßnotfall stecken — und unbehandeltes CRPS chronifiziert. Fehllabel: Notfall-DDx als „CRPS“ abtun *oder* echtes CRPS als „normalen Heilungsschmerz“ / reine Psychosomatik bagatellisieren.
    ],
    block(
      width: 100%,
      inset: 7pt,
      fill: rgb("#f0fdfa"),
      radius: (bottom: 3pt, rest: 0pt),
      stroke: (left: 3.5pt + palette.primary, rest: 0pt),
    )[
      #text(size: 7pt, fill: palette.primary, weight: "bold")[RICHTUNG]
      #v(2pt)
      #set text(size: 8pt)
      Früherkennung, Ausschluss von Notfall-Differenzialdiagnosen und zeitnahe Facharztzuweisung. Budapest-Diagnose ist *ärztlich*. HP Physio führt keine eigenständige Systemtherapie durch.
    ],
  )
}

// ── U-enabling ────────────────────────────────────────────────

#let enabling-crps-rerun() = {
  set text(size: 7.5pt)
  let panel(title, body, bar) = {
    block(
      width: 100%,
      inset: 6pt,
      radius: 2pt,
      fill: white,
      stroke: (top: 3pt + bar, rest: 0.4pt + palette.border-light),
    )[
      #text(size: 7.5pt, weight: "bold", fill: bar)[#title]
      #v(3pt)
      #set text(size: 7pt, fill: palette.text-body)
      #body
    ]
  }
  grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 4pt,
    panel(
      [Risiken & Auslöser],
      [Fraktur, Operation, Distorsion oder Nervenverletzung an einer Extremität (Arm oder Bein).],
      palette.primary,
    ),
    panel(
      [Kontext],
      [Postoperative oder posttraumatische Nachsorge. Vorbestehende Schmerzsyndrome oder psychische Belastungen erklären ein disproportionales Bild *nicht*.],
      palette.primary-light,
    ),
    panel(
      [Beginn & Tempo],
      [Tage bis Wochen nach dem Trauma; Schmerz und vegetative/trophische Zeichen entwickeln sich oft schleichend und bleiben oder nehmen zu.],
      palette.warning,
    ),
  )
  v(5pt)
  block(width: 100%, inset: (y: 2pt))[
    #set text(size: 6.5pt, fill: palette.text-muted)
    #grid(
      columns: (1fr, 1fr, 1fr, 1fr),
      align(center)[Stunden],
      align(center)[Tage],
      align(center)[*Tage–Wochen*],
      align(center)[Monate],
    )
    #v(2pt)
    #box(width: 100%, height: 8pt, radius: 2pt, clip: true)[
      #grid(
        columns: (1fr, 1fr, 1.6fr, 1fr),
        rect(width: 100%, height: 100%, fill: palette.bg-muted),
        rect(width: 100%, height: 100%, fill: palette.bg-muted),
        rect(width: 100%, height: 100%, fill: palette.warning),
        rect(width: 100%, height: 100%, fill: palette.bg-muted),
      )
    ]
  ]
}

// ── U-mechanism ───────────────────────────────────────────────

#let mechanism-crps-rerun() = {
  set text(size: 8pt)
  align(center)[
    #canvas(length: 1cm, {
      let nodes = (
        (0.0, 0.25, "Extremitäten-\ntrauma / OP"),
        (3.3, 0.25, "Entzündlich\n· nerval\n· autonom"),
        (6.6, 0.25, "Regionäre\nFehlregulation"),
        (9.9, 0.25, "Disprop.\nSchmerz\n+ Zeichen"),
      )
      for (x, y, lab) in nodes {
        draw.rect(
          (x, y),
          (x + 2.5, y + 1.55),
          fill: palette.primary.lighten(88%),
          stroke: 1pt + palette.primary,
          radius: 0.12,
        )
        draw.content(
          (x + 1.25, y + 0.78),
          text(size: 6.6pt, weight: "bold", fill: palette.primary-dark, align(center, lab)),
        )
      }
      for i in range(3) {
        let x0 = nodes.at(i).at(0) + 2.5
        let x1 = nodes.at(i + 1).at(0)
        let mid = 0.25 + 0.78
        draw.line(
          (x0 + 0.05, mid),
          (x1 - 0.05, mid),
          stroke: 1.15pt + palette.primary.darken(5%),
          mark: (end: "stealth", fill: palette.primary.darken(5%)),
        )
      }
      // Chronifizierung
      let lx = 9.9 + 1.25
      draw.line((lx, 0.25), (lx, -0.45), stroke: 1.05pt + palette.warning, mark: (end: "stealth", fill: palette.warning))
      draw.rect(
        (8.4, -1.75),
        (12.4, -0.45),
        fill: rgb("#fff7ed"),
        stroke: 1pt + palette.warning,
        radius: 0.12,
      )
      draw.content(
        (10.4, -1.1),
        text(size: 6.6pt, weight: "bold", fill: palette.warning, align(center)[Unbehandelt:\nChronifizierung\n+ Funktionsverlust]),
      )
      // DDx first
      draw.rect(
        (0.2, -1.75),
        (7.6, -0.45),
        fill: rgb("#fef2f2"),
        stroke: 1pt + palette.danger,
        radius: 0.12,
      )
      draw.content(
        (3.9, -1.1),
        text(
          size: 6.5pt,
          weight: "bold",
          fill: palette.danger,
          align(center)[Zuerst ausschließen:\nInfekt · Kompartment · Ischämie · TVT],
        ),
      )
    })
  ]
  v(3pt)
  block(width: 100%, inset: 6pt, fill: palette.bg-subtle, radius: 2pt)[
    #set text(size: 7.5pt)
    Das CRPS-Label darf *nicht* darüber hinwegtäuschen, dass sich darunter ein Infekt, ein Kompartmentsyndrom oder ein Gefäßnotfall verbergen kann.
  ]
}

// ── U-cues (4 channels) ───────────────────────────────────────

#let cues-crps-rerun() = {
  set text(size: 7.6pt)
  table(
    columns: (26mm, 1fr),
    stroke: 0.4pt + palette.border-light,
    inset: 6pt,
    fill: (_, y) => {
      if y == 0 { palette.primary }
      else if y == 3 { rgb("#fff7ed") }
      else if calc.odd(y) { palette.bg-subtle }
      else { white }
    },
    table.header(
      text(fill: white, weight: "bold", size: 7.5pt)[Kanal],
      text(fill: white, weight: "bold", size: 7.5pt)[Merkmale],
    ),
    text(weight: "bold", fill: palette.primary)[Anamnese],
    [Trauma/OP der Extremität; brennender, stechender oder dumpfer Schmerz *deutlich stärker als zur Verletzung passend*; Berührungsempfindlichkeit; Schwellung; Farb- oder Temperaturdifferenz; vermehrtes Schwitzen; motorische Unsicherheit],
    text(weight: "bold", fill: palette.primary)[Beobachtung],
    [Asymmetrische Schwellung; Hautfarbe blass, rötlich oder livide; sichtbare trophische Veränderungen (Haut, Nägel, Behaarung); Schonhaltung],
    text(weight: "bold", fill: palette.warning)[Untersuchung],
    [Seitenvergleich (Temperatur, Farbe, Schwitzen); Allodynie bei leichter Berührung; Hyperalgesie; Kraft und Sensibilität; periphere Pulse; Wundstatus und systemische Infektzeichen],
    text(weight: "bold", fill: palette.primary)[Verlauf],
    [Tage bis Wochen post Trauma; Persistenz oder Zunahme statt erwarteter Heilung; bei Fieber, eitriger Wunde, rascher Spannungszunahme oder Pulslosigkeit *sofortige* Notfall-Re-Triage],
  )
}

// ── U-regional-cues (hierarchy-faithful code after free vision) ─

#let regional-cues-crps-rerun() = {
  // Harvest from free vision: hub CORE + 4 channel cards; Untersuchung emphasis ribbon
  set text(size: 7.3pt)
  text(size: 9pt, weight: "bold", fill: palette.primary-dark)[Regionale Verdachtskriterien]
  v(5pt)

  let ch(title, body, bar: palette.primary, fill: white, badge: none) = {
    block(
      width: 100%,
      inset: 6pt,
      radius: 2pt,
      fill: fill,
      stroke: 0.55pt + bar.lighten(25%),
    )[
      #text(size: 7.4pt, weight: "bold", fill: bar)[#title]
      #if badge != none {
        v(2pt)
        box(
          fill: palette.warning,
          inset: (x: 4pt, y: 1.5pt),
          radius: 1pt,
          text(size: 6.2pt, weight: "bold", fill: white)[#badge],
        )
      }
      #v(3pt)
      #set text(size: 6.8pt, fill: palette.text-body)
      #body
    ]
  }

  grid(
    columns: (1fr, 1.15fr, 1fr),
    column-gutter: 5pt,
    row-gutter: 5pt,
    // row 1
    ch(
      [Anamnese],
      list(
        [Trauma/OP],
        [Schmerz deutlich stärker als zur Verletzung passend],
        [Berührungsempfindlichkeit; Schwellung; Farb-/Temperaturdifferenz; Schwitzen; motorische Unsicherheit],
      ),
    ),
    // center hub spanning visual weight
    block(
      width: 100%,
      inset: 8pt,
      radius: 3pt,
      fill: palette.danger,
    )[
      #align(center)[
        #text(size: 7.2pt, weight: "bold", fill: white)[Core-Verdacht]
        #v(3pt)
        #set text(size: 7pt, fill: white)
        Disproportionaler Extremitätenschmerz nach Trauma/OP plus vegetative und/oder trophische Zeichen; distales, regionales Verteilungsmuster
      ]
    ],
    ch(
      [Beobachtung],
      list(
        [Asymmetrische Schwellung],
        [Hautfarbe blass/rötlich/livide],
        [Trophische Veränderungen],
        [Schonhaltung],
      ),
      bar: palette.primary-light,
    ),
    // row 2
    ch(
      [Untersuchung],
      [
        Seitenvergleich · Allodynie bei leichter Berührung · Hyperalgesie · Kraft/Sensibilität · periphere Pulse · Wundstatus und systemische Infektzeichen
      ],
      bar: palette.warning,
      fill: rgb("#fff7ed"),
      badge: [Allodynie & Seitenvergleich],
    ),
    [],
    ch(
      [Verlauf],
      list(
        [Tage bis Wochen post Trauma],
        [Persistenz oder Zunahme],
        [Fieber, eitrige Wunde, rasche Spannungszunahme oder Pulslosigkeit → *sofortige* Notfall-Re-Triage],
      ),
      bar: palette.accent-dark,
    ),
  )
}

// ── U-discrimination ──────────────────────────────────────────

#let discrimination-crps-rerun() = {
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
      Disproportionaler Extremitätenschmerz nach Trauma/OP plus vegetative und/oder trophische Zeichen (Temperatur-/Farbdifferenz, Schwellung, Schwitzen, Allodynie); distales, regionales Verteilungsmuster.
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
      Reiner Heilungsschmerz mit klarer Zeit- und Belastungskorrelation und ohne autonome/trophische Zeichen; isoliertes mononeuropathisches Defizit ohne regionales vegetatives Bild — bei Unsicherheit ärztlich klären.
    ],
  )
  v(5pt)
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
      [Fieber und eitrige Wunde (Infekt/Osteomyelitis)],
      [Extreme Schwellung und Spannungsblase frisch posttrauma (Kompartmentsyndrom)],
      [Akute Blässe, Kälte und Pulslosigkeit (arterielle Ischämie)],
      [Einseitige Beinschwellung mit Risikofaktoren (TVT)],
    )
  ]
}

// ── U-mimic map ───────────────────────────────────────────────

#let mimic-crps-rerun() = {
  set text(size: 8pt)
  text(size: 9pt, weight: "bold", fill: palette.danger)[Trügerische Erklärungen]
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
        columns: (48mm, 10mm, 1fr),
        column-gutter: 4pt,
        align(horizon)[
          #text(size: 7.8pt)[„#frame“]
        ],
        align(center + horizon)[
          #text(size: 13pt, fill: palette.danger, weight: "bold")[→]
        ],
        align(horizon)[
          #text(size: 7.6pt, weight: "bold", fill: palette.danger)[#danger]
        ],
      )
    ]
  }

  stack(
    spacing: 3.5pt,
    row(
      "Normaler Heilungsschmerz",
      "entwarnt bei klarer Disproportionalität und vegetativen Zeichen *nicht*",
    ),
    row(
      "Psychosomatik / Überempfindlichkeit",
      "psychische Anteile schließen organische Notfall-DDx und CRPS *nicht* aus",
    ),
    row(
      "Nur Nervenläsion / isolierte Neuropathie",
      "erklärt kein volles regionales vegetativ-trophisches Bild",
    ),
    row(
      "Entzündliches CRPS bei Fieber/Eiter",
      "Infektzeichen (Osteomyelitis, septische Arthritis, Wundinfekt) haben *Vorrang* vor dem CRPS-Label",
    ),
  )
}

// ── U-mimic peel (hierarchy-faithful code after free vision) ───

#let mimic-peel-crps-rerun() = {
  // Harvest: 4 vertical peel cards; frame top / danger bottom; card-4 danger border
  set text(size: 7pt)
  text(size: 9pt, weight: "bold", fill: palette.danger)[Trügerische Erklärungen]
  v(5pt)

  let peel(frame, danger, alert: false) = {
    let border = if alert { 1.4pt + palette.danger } else { 0.5pt + palette.border }
    block(
      width: 100%,
      radius: 3pt,
      clip: true,
      stroke: border,
    )[
      block(
        width: 100%,
        fill: white,
        inset: (x: 5pt, y: 7pt),
        stroke: (bottom: 0.8pt + palette.border),
      )[
        #align(center)[
          #text(size: 7pt, weight: "bold", fill: palette.text-body)[„#frame“]
        ]
      ]
      block(
        width: 100%,
        fill: luma(30),
        inset: (x: 5pt, y: 7pt),
      )[
        #if alert {
          align(center)[
            #text(size: 8pt, fill: palette.danger, weight: "bold")[!]
            #v(2pt)
          ]
        }
        #align(center)[
          #set text(size: 6.5pt, fill: white, weight: "bold")
          #danger
        ]
      ]
    ]
  }

  grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    column-gutter: 4pt,
    peel(
      "Normaler Heilungsschmerz",
      [entwarnt bei klarer Disproportionalität und vegetativen Zeichen *nicht*],
    ),
    peel(
      "Psychosomatik / Überempfindlichkeit",
      [psychische Anteile schließen organische Notfall-DDx und CRPS *nicht* aus],
    ),
    peel(
      "Nur Nervenläsion / isolierte Neuropathie",
      [isolierte Nervenverletzung erklärt kein volles regionales vegetativ-trophisches Bild],
    ),
    peel(
      "Entzündliches CRPS bei Fieber/Eiter",
      [Infektzeichen (Osteomyelitis, septische Arthritis, Wundinfekt) haben *Vorrang* vor dem CRPS-Label],
      alert: true,
    ),
  )
}

// ── U-urgency + U-scope ───────────────────────────────────────

#let us-crps-rerun() = {
  set text(size: 8pt)

  block(
    width: 100%,
    inset: (x: 7pt, y: 5pt),
    radius: 2pt,
    fill: rgb("#fef2f2"),
    stroke: (left: 3pt + palette.danger, rest: 0.4pt + palette.danger.lighten(45%)),
  )[
    #set text(size: 7.5pt)
    #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
    #text(fill: palette.text-body)[Hinter dem Label „Sudeck“ können Infekt, Kompartmentsyndrom oder arterieller Gefäßnotfall stecken — und unbehandeltes CRPS chronifiziert.]
  ]

  v(4.5pt)
  stack(
    spacing: 4.5pt,
    time-tier(
      code: "T1",
      title: "112 / Sofort",
      bar: palette.danger,
      fill: rgb("#fef2f2"),
      solid-header: true,
      action: [Behandlung *sofort abbrechen*. Notfalltransport veranlassen. Übergabe mit Trauma-/OP-Kontext, Zeitverlauf und Red-Flag-Befunden.],
      triggers: list(
        [Akute Blässe, Pulslosigkeit, kalte Extremität (arterieller Gefäßnotfall)],
        [Spannungsblase, extreme Schwellung und Schmerz deutlich stärker als zur Verletzung passend frisch posttrauma (Kompartmentsyndrom)],
        [Fieber, eitrige Wunde oder systemische Infektzeichen mit drohender Sepsis],
      ),
    ),
    time-tier(
      code: "T2",
      title: "Notaufnahme / gleichtags Arzt",
      bar: palette.warning,
      fill: rgb("#fff7ed"),
      action: [Physiotherapie stoppen. Unverzüglich in die Notaufnahme einweisen oder gleichtags ärztlich abklären lassen. *Keine* forcierte Mobilisation.],
      triggers: list(
        [Starke, ausstrahlende oder progrediente Schmerzen mit systemischen Symptomen (Infektverdacht, Thromboseverdacht, drohendes Kompartiment) ohne unmittelbare 112-Lage],
        [Unklare akute Verschlechterung posttrauma],
      ),
    ),
    time-tier(
      code: "T3",
      title: "Zeitnah Facharzt",
      bar: palette.primary-light,
      fill: rgb("#f8fafc"),
      action: [Befunde dokumentieren (Seitenvergleich, Allodynie, Temperatur/Farbe, Trauma-Anamnese). *Zeitnah* der Schmerzmedizin, Neurologie oder Unfallchirurgie zuweisen. Budapest-Diagnose und Systemtherapie *ärztlich*.],
      triggers: list(
        [Disproportionierter Extremitätenschmerz plus vegetative oder trophische Zeichen nach Trauma/OP *ohne* Notfall-Red-Flags – Arbeitsverdacht CRPS],
      ),
    ),
    time-tier(
      code: "T4",
      title: "Behandeln + Sicherheitsnetz",
      bar: palette.primary,
      fill: rgb("#f0fdfa"),
      action: [Modifizierte, schmerzadaptierte Therapie. *Keine* forcierte schmerzhafte Mobilisation. Klare Rückkehrgründe: Fieber, rasche Schwellung, Pulse/Farbe, progrediente Parese.],
      triggers: list(
        [Nur nach Ausschluss von Notfall-DDx und bei laufender oder geplanter fachärztlicher Mitbetreuung; keine hochgradige Allodynie ohne interprofessionellen Plan],
      ),
    ),
  )

  v(5pt)
  scope-frame[
    Budapest-Diagnose, bildgebende/laborchemische Ausschlussdiagnostik, Systemtherapie (Medikamente, Interventionen), endgültige DDx Infekt/Kompartment/Ischämie/TVT — HP Physio *screent und triagiert* – stellt CRPS nicht abschließend fest und führt keine Systemtherapie durch.
  ]
}

// ── U-transfer ────────────────────────────────────────────────

#let transfer-crps-rerun() = {
  set text(size: 8pt)
  block(
    width: 100%,
    radius: 3pt,
    clip: true,
    stroke: 0.7pt + palette.primary,
  )[
    #block(width: 100%, fill: palette.primary, inset: 6pt)[
      #set text(fill: white, size: 8pt, weight: "bold")
      Fall zur Selbstprüfung
    ]
    #block(width: 100%, inset: 8pt, fill: white)[
      #set text(size: 7.8pt)
      45-jährige Patientin, vor sechs Wochen distale Radiusfraktur konservativ behandelt. Sie kommt zur „Nachbehandlung“. Die Hand schmerzt brennend, ist berührungsempfindlich, geschwollen und wärmer als die Gegenseite; die Haut glänzt, die Finger bewegen sich kaum. Fieber besteht nicht, Pulse sind tastbar, die Wunde ist reizlos. Die Patientin meint, sie sei „einfach überempfindlich“.
      #v(5pt)
      #grid(
        columns: (1fr, 1fr, 1fr),
        column-gutter: 4pt,
        block(width: 100%, inset: 5pt, fill: palette.bg-subtle, radius: 2pt)[
          #text(size: 7pt, weight: "bold", fill: palette.primary)[(1)]
          #v(2pt)
          #text(size: 7pt)[Was ist jetzt vorrangig?]
        ],
        block(width: 100%, inset: 5pt, fill: palette.bg-subtle, radius: 2pt)[
          #text(size: 7pt, weight: "bold", fill: palette.primary)[(2)]
          #v(2pt)
          #text(size: 7pt)[Was ist kontraindiziert?]
        ],
        block(width: 100%, inset: 5pt, fill: palette.bg-subtle, radius: 2pt)[
          #text(size: 7pt, weight: "bold", fill: palette.primary)[(3)]
          #v(2pt)
          #text(size: 7pt)[Nächster sicherer Schritt?]
        ],
      )
    ]
  ]
}

// ── Quiet DDx delta table ─────────────────────────────────────

#let ddx-crps-rerun() = {
  set text(size: 7.4pt)
  table(
    columns: (32mm, 1fr),
    stroke: 0.4pt + palette.border-light,
    inset: 5.5pt,
    fill: (_, y) => if y == 0 { palette.primary } else if calc.odd(y) { palette.bg-subtle } else { white },
    table.header(
      text(fill: white, weight: "bold", size: 7.3pt)[Eher …],
      text(fill: white, weight: "bold", size: 7.3pt)[Diskriminierende Unterschiede],
    ),
    text(weight: "bold", fill: palette.primary)[CRPS],
    [Tage–Wochen post Trauma; disproportionaler Schmerz + Allodynie + vegetative/trophische Zeichen regional distal],
    text(weight: "bold")[Akutes Kompartmentsyndrom],
    [Stundenkritisch posttrauma/post-OP; brettharte Loge, passiver Dehnungsschmerz, rasche Eskalation → *Notfall*],
    text(weight: "bold")[Tiefe Infektion],
    [Fieber, eitrige Wunde, systemische Infektzeichen, lokale Rötung/Hitze mit Toxizität],
    text(weight: "bold")[Arterielle Ischämie],
    [Plötzlich kalt, blass, oft pulslos],
    text(weight: "bold")[TVT],
    [Subakut, oft Unterschenkel/Bein, Risikofaktoren, weniger Allodynie/trophisches Vollbild],
    text(weight: "bold")[Isolierte Nervenläsion],
    [Defizit im Nervenversorgungsgebiet *ohne* regionales vegetativ-trophisches Muster],
  )
}
