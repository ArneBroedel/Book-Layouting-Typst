// Wave-6 · Sepsis-Flags — nested multi-T1 + flag-cluster + mimic
// Form Specs: kl-sepsis-urgency · kl-sepsis-flag-cluster · kl-sepsis-mimic
// Pins copy-through C · no form-meta · T3 collapse · SCOPE orthogonal

#import "/packages/bookkit/theme.typ": palette
#import "/domains/medical/lib/typst/kl-core/us-time-scope.typ": time-tier, scope-frame

// ── Gatekeeper flag-cluster (new recipe kl-flag-cluster) ──────

#let flag-cluster-sepsis() = {
  set text(size: 8pt)

  text(size: 9pt, weight: "bold", fill: palette.danger)[
    Gatekeeper-Instabilität
  ]
  v(2pt)
  text(size: 7pt, fill: palette.text-muted)[
    Im Infektkontext: bereits *ein* Kriterium genügt — bewusst konservativer als formaler qSOFA ≥2 allein.
  ]
  v(5pt)

  block(
    width: 100%,
    inset: (x: 7pt, y: 5pt),
    radius: 2pt,
    fill: palette.bg-subtle,
    stroke: 0.4pt + palette.border,
  )[
    #set text(size: 7.5pt)
    #text(weight: "bold", fill: palette.primary-dark)[Voraussetzung:]
    #text[ vermuteter oder gesicherter Infekt / systemische Infektlage]
  ]

  v(5pt)
  grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 4pt,
    ..{
      let chip(code, title, detail) = {
        block(
          width: 100%,
          inset: 7pt,
          radius: 3pt,
          fill: rgb("#fef2f2"),
          stroke: 0.7pt + palette.danger,
        )[
          #align(center)[
            #box(
              fill: palette.danger,
              inset: (x: 6pt, y: 2pt),
              radius: 2pt,
              text(size: 8pt, weight: "bold", fill: white)[#code],
            )
            #v(4pt)
            #text(size: 8pt, weight: "bold", fill: palette.danger)[#title]
            #v(2pt)
            #text(size: 7pt, fill: palette.text-body)[#detail]
          ]
        ]
      }
      (
        chip([RR], [Syst. RR ≤ 100], [mmHg]),
        chip([AF], [Atemfrequenz ≥ 22], [/min]),
        chip([Vig.], [Vigilanz ↓], [GCS < 15 / neu verwirrt]),
      )
    },
  )

  v(5pt)
  block(
    width: 100%,
    inset: 8pt,
    radius: 3pt,
    fill: palette.danger,
  )[
    #set text(fill: white, size: 8.5pt)
    #align(center)[
      #text(weight: "bold")[Bereits *eins* dieser Kriterien → 112 wählen]
      #v(2pt)
      #text(size: 7.5pt)[Sitzung beenden · keine Belastung · Vitale ohne Notrufverzögerung]
    ]
  ]

  v(5pt)
  block(
    width: 100%,
    inset: 7pt,
    radius: 2pt,
    fill: white,
    stroke: 0.55pt + palette.warning,
  )[
    #set text(size: 7.5pt)
    #text(weight: "bold", fill: palette.warning)[qSOFA (sekundär):]
    #text[ formaler Score ≥ 2 → *ebenfalls 112*. ]
    #text(weight: "bold")[qSOFA < 2 schließt Sepsis *nicht* aus]
    #text[ (geringe Sensitivität im Frühstadium).]
  ]
}

// ── U-urgency + U-scope (nested multi-T1, 6 clusters) ─────────

#let us-sepsis() = {
  set text(size: 8pt)

  block(
    width: 100%,
    inset: (x: 7pt, y: 5pt),
    radius: 2pt,
    fill: rgb("#fef2f2"),
    stroke: (left: 3pt + palette.danger, rest: 0.4pt + palette.danger.lighten(45%)),
  )[
    #set text(size: 7.5pt)
    #text(weight: "bold", fill: palette.danger)[Infekt + Systembedrohung → kein PT-Fall.]
    #text(fill: palette.text-body)[ Gatekeeper-Schwelle bewusst konservativer als qSOFA ≥2 allein.]
  ]

  v(4.5pt)
  stack(
    spacing: 4.5pt,
    time-tier(
      code: "T1",
      title: "112 / Sofort — Sepsis-Verdacht",
      bar: palette.danger,
      fill: rgb("#fef2f2"),
      solid-header: true,
      action: [*112 wählen* · Sitzung beenden · keine Belastung · keine manuelle Therapie · Vitalparameter ohne Notrufverzögerung · Übergabe: Infektverdacht, Zeitverlauf, Vitalwerte, Organzeichen.],
      triggers: list(
        [Infekt plus Hypotonie, Verwirrtheit *oder* schwere Dyspnoe],
        [Gatekeeper: bereits *ein* Kriterium syst. RR ≤100 *oder* AF ≥22 *oder* Vigilanz↓ *oder* Schockzeichen im Infektkontext],
        [formaler qSOFA ≥2],
        [Ruhedyspnoe mit Atemnotzeichen; Oligurie *plus* Kreislaufinstabilität],
        [Petechien/Purpura plus schweres Krankheitsgefühl],
        [postoperativ oder immungeschwächt mit raschem Funktionsknick und Infektzeichen],
      ),
    ),
    time-tier(
      code: "T2",
      title: "Notaufnahme / gleichtags Arzt",
      bar: palette.warning,
      fill: rgb("#fff7ed"),
      action: [Infekt plus deutliche Systemzeichen *ohne* unmittelbar greifbare Vitalbedrohung (z. B. isolierte Oligurie, progrediente Schwäche, Wundinfekt mit Fieber, geriatrische Hypothermie) → *keine* PT; gleichtags Notaufnahme oder Akut-Arzt. Bei jeder Verschlechterung *sofort 112*.],
      triggers: none,
    ),
    time-tier(
      code: "T4",
      title: "Behandeln + Sicherheitsnetz",
      bar: palette.primary,
      fill: rgb("#f0fdfa"),
      action: [Nur unspezifische Abgeschlagenheit oder milder lokaler Infekt *ohne* Systemzeichen und mit unauffälligen Vitalparametern. Vorsichtige PT; engmaschig dokumentieren; *keine* Belastungseskalation bei Unsicherheit. Rückkehrgründe: Fieber, Verwirrtheit, Dyspnoe, RR-Abfall, Oligurie, Petechien.],
      triggers: none,
    ),
  )

  v(5pt)
  scope-frame[
    Diagnosesicherung, SOFA/Labor, Antiinfektiva, Schocktherapie und Score als Ausschluss — *nicht* HP Physio. qSOFA und NEWS2 *sensibilisieren*, ersetzen *keine* ärztliche Ausschlussdiagnostik. Fokus: Screening, Stopp, 112/Weiterleitung.
  ]
}

// ── U-mimic (5 frames) ────────────────────────────────────────

#let mimic-sepsis() = {
  set text(size: 8pt)
  text(size: 9pt, weight: "bold", fill: palette.danger)[
    Trügerische Erklärungen
  ]
  v(2pt)
  text(size: 7pt, fill: palette.text-muted)[
    Wenn „Rücken“, Delir oder Abgeschlagenheit den Notfall maskieren
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
        columns: (42mm, 12mm, 1fr),
        column-gutter: 4pt,
        align(horizon)[
          #text(size: 8pt)[„#frame“]
        ],
        align(center + horizon)[
          #text(size: 13pt, fill: palette.danger, weight: "bold")[→]
        ],
        align(horizon)[
          #text(size: 8pt, weight: "bold", fill: palette.danger)[#danger]
        ],
      )
    ]
  }

  stack(
    spacing: 3.5pt,
    row(
      "MSK / Hexenschuss",
      "Sepsis oder Implantat-/Weichteilinfekt ohne Vital- und Infektcheck",
    ),
    row(
      "Demenz wird schlimmer",
      "Delir bei Sepsis — Notfallkette, keine Fortsetzung der Mobilisation",
    ),
    row(
      "Vagal / Kreislaufschwach",
      "Beginnender Schock ohne Ausschluss von Infekt und Organzeichen",
    ),
    row(
      "Grippe, auskurieren",
      "Progredienz, Ruhedyspnoe oder Vigilanzknick → gleichtags oder 112",
    ),
    row(
      "Post-OP-Muskelkater",
      "Wund- oder Implantatinfekt mit systemischer Beteiligung",
    ),
  )
}
