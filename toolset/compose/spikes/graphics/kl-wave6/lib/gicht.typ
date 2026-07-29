// Wave-6 · Gicht — standard kl-kurz stack T1–T4 + mimic
// Form Specs: kl-gicht-urgency · kl-gicht-mimic
// Pins copy-through C · no form-meta · SCOPE orthogonal

#import "/packages/bookkit/theme.typ": palette
#import "/toolset/compose/spikes/graphics/kl-script-system/lib/us-time-scope.typ": time-tier, scope-frame

// ── U-urgency + U-scope ───────────────────────────────────────

#let us-gicht() = {
  set text(size: 8pt)

  block(
    width: 100%,
    inset: (x: 7pt, y: 5pt),
    radius: 2pt,
    fill: rgb("#fef2f2"),
    stroke: (left: 3pt + palette.danger, rest: 0.4pt + palette.danger.lighten(45%)),
  )[
    #set text(size: 7.5pt)
    #text(weight: "bold", fill: palette.danger)[Heißes Gelenk: septisch bis zum Ausschluss.]
    #text(fill: palette.text-body)[ Gichtanamnese und Kristallnachweis entwarnen *nicht*.]
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
      action: [Behandlung abbrechen · Vitalzeichen · *112 wählen* · keine Manipulation · keine Injektion.],
      triggers: list(
        [Heißes, geschwollenes Gelenk *plus* Fieber/Systemik *plus* deutliche Allgemeinzustandsverschlechterung / Sepsis-Zeichen],
        [Polyartikulärer Entzündungssturm mit schwerer Systembedrohung],
      ),
    ),
    time-tier(
      code: "T2",
      title: "Notaufnahme / gleichtags Arzt",
      bar: palette.warning,
      fill: rgb("#fff7ed"),
      action: [Physiotherapie abbrechen. *Noch heute* Notaufnahme bzw. orthopädischen Notdienst. Bis zum ärztlichen Ausschluss von einem septischen Geschehen ausgehen. Übergabe: Zeitverlauf, Temperatur, Belastbarkeit, Gichtanamnese, Hautbefund, Injektions-/OP-Anamnese.],
      triggers: list(
        [Akutes heißes Mono-Gelenk mit Belastungsunfähigkeit oder stärkstem Ruheschmerz — *auch ohne Fieber*],
        [Heißes Gelenk mit Fieber oder Systemzeichen (*auch bei bekannter Gicht*)],
        [Heißes Gelenk nach i. a. Injektion, OP oder Trauma; Hochrisiko (Dialyse, Immunsuppression)],
        [Ulcus/Tophi und lokale Infektzeichen; polyartikulärer Sturm ohne Schockbild],
      ),
    ),
    time-tier(
      code: "T3",
      title: "Zeitnah Facharzt / Hausarzt",
      bar: palette.primary-light,
      fill: rgb("#f8fafc"),
      action: [Nur bei *bereits ärztlich eingeordnetem* rezidivierendem Muster *ohne* aktuelles heißes Mono mit Belastungsunfähigkeit/stärkstem Ruheschmerz und *ohne* Systemik. Keine endgültige Gichtdiagnose im HP-Setting. Sicherheitsnetz: Rückkehr bei Fieber, Hitze-Zunahme, neuer Belastungsunfähigkeit.],
      triggers: none,
    ),
    time-tier(
      code: "T4",
      title: "Behandeln + Sicherheitsnetz",
      bar: palette.primary,
      fill: rgb("#f0fdfa"),
      action: [Stabiles, bereits ärztlich eingeordnetes Muster *ohne* Red Flags; interprofessionell abgestimmte mobilisierende Maßnahmen *nach* Anfall. Schmerzarmer Bewegungsrahmen; keine forcierte Belastung im akuten heißen Anfall. Rückkehrgründe: Fieber, Systemik, neue Hitze, polyartikuläre Ausbreitung.],
      triggers: none,
    ),
  )

  v(4pt)
  block(
    width: 100%,
    inset: 6pt,
    radius: 2pt,
    fill: white,
    stroke: 0.5pt + palette.danger.lighten(30%),
  )[
    #set text(size: 7.2pt)
    #text(weight: "bold", fill: palette.danger)[Absolute Kontraindikationen bis zum Ausschluss: ]
    #text[forcierte Manipulation und invasive lokale Maßnahmen am unklar heißen Gelenk; Intraartikulär-Injektion durch HP; abwartendes „Probebehandeln“ bei Fieber/Systemik.]
  ]

  v(5pt)
  scope-frame[
    Kristallnachweis, Gelenkpunktion, Antibiose, harnsäuresenkende Therapie und endgültige Abgrenzung septisch vs. kristallin — *nicht* HP. Screent und triagiert — punktiert und injiziert nicht.
  ]
}

// ── U-mimic (3 frames) ────────────────────────────────────────

#let mimic-gicht() = {
  set text(size: 8pt)
  text(size: 9pt, weight: "bold", fill: palette.danger)[
    Trügerische Erklärungen
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
        columns: (46mm, 12mm, 1fr),
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
      "Umgeknickt / Distorsion",
      "Ohne adäquate Traumamechanik und mit entzündlichem Bild: Gicht *und* Infekt mitdenken",
    ),
    row(
      "Bekannte Gicht – nur Schub",
      "Gichtanamnese und Kristallnachweis schließen bakterielle Gelenkinfektion *nicht* aus",
    ),
    row(
      "Knie-Schub = immer Gicht",
      "CPPD häufig; septische Arthritis bleibt Must-not-miss",
    ),
  )
}
