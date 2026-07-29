// Wave-6 · CRPS / Morbus Sudeck — kl-kurz exploration recreate
// Form Specs: kl-crps-urgency · kl-crps-mimic · kl-crps-regional-cues · kl-crps-discrimination
// Pins copy-through C · no form-meta · SCOPE orthogonal · multi-T1 one solid card
// Polish 2026-07-30: redundancy controls (show-danger, NM once, show-title)

#import "/packages/bookkit/theme.typ": palette
#import "/domains/medical/lib/typst/kl-core/us-time-scope.typ": time-tier, scope-frame

// ── U-urgency + U-scope ───────────────────────────────────────

/// show-danger: set false when chapter already has the Gefahr callout (E3).
#let us-crps(show-danger: true) = {
  set text(size: 8pt)

  if show-danger {
    block(
      width: 100%,
      inset: (x: 7pt, y: 5pt),
      radius: 2pt,
      fill: rgb("#fef2f2"),
      stroke: (left: 3pt + palette.danger, rest: 0.4pt + palette.danger.lighten(45%)),
    )[
      #set text(size: 7.5pt)
      #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
      #text(fill: palette.text-body)[
        Hinter dem Label „Sudeck“ können Infekt, Kompartmentsyndrom oder arterieller Gefäßnotfall stecken – und unbehandeltes CRPS chronifiziert.
      ]
    ]
    v(4.5pt)
  }

  // E4: keep each TIME tier intact across page breaks.
  block(width: 100%, breakable: false)[
    #stack(
      spacing: 4.5pt,
      time-tier(
        code: "T1",
        title: "112 / Sofort",
        bar: palette.danger,
        fill: rgb("#fef2f2"),
        solid-header: true,
        action: [
          Behandlung *sofort abbrechen*. Notfalltransport veranlassen. Übergabe mit Trauma-/OP-Kontext, Zeitverlauf und Red-Flag-Befunden durchführen.
        ],
        triggers: list(
          [Akute Blässe, Pulslosigkeit, kalte Extremität (arterieller Gefäßnotfall)],
          [Spannungsblase, extreme Schwellung und Schmerz deutlich stärker als zur Verletzung passend *frisch posttrauma* (Kompartmentsyndrom)],
          [Fieber, eitrige Wunde oder systemische Infektzeichen mit drohender Sepsis],
        ),
      ),
      time-tier(
        code: "T2",
        title: "Notaufnahme / gleichtags Arzt",
        bar: palette.warning,
        fill: rgb("#fff7ed"),
        action: [
          Physiotherapie stoppen. Unverzüglich in die Notaufnahme einweisen oder gleichtags ärztlich abklären lassen. *Keine* forcierte Mobilisation durchführen.
        ],
        triggers: list(
          [Starke, ausstrahlende oder progrediente Schmerzen mit systemischen Symptomen (Infektverdacht, Thromboseverdacht, drohendes Kompartiment) *ohne* unmittelbare 112-Lage],
          [Unklare akute Verschlechterung posttrauma],
        ),
      ),
      time-tier(
        code: "T3",
        title: "Zeitnah Facharzt",
        bar: palette.primary-light,
        fill: rgb("#f8fafc"),
        action: [
          Befunde dokumentieren (Seitenvergleich, Allodynie, Temperatur/Farbe, Trauma-Anamnese). *Zeitnah* der Schmerzmedizin, Neurologie oder Unfallchirurgie zuweisen. Die Budapest-Diagnose und Systemtherapie erfolgen *ärztlich*.
        ],
        triggers: list(
          [Disproportionierter Extremitätenschmerz plus vegetative oder trophische Zeichen nach Trauma/OP *ohne* Notfall-Red-Flags – Arbeitsverdacht CRPS],
        ),
      ),
      time-tier(
        code: "T4",
        title: "Behandeln + Sicherheitsnetz",
        bar: palette.primary,
        fill: rgb("#f0fdfa"),
        action: [
          Modifizierte, schmerzadaptierte Therapie anwenden. *Keine* forcierte schmerzhafte Mobilisation durchführen. Klare Rückkehrgründe: Fieber, rasche Schwellung, Pulse/Farbe, progrediente Parese.
        ],
        triggers: list(
          [Nur nach Ausschluss von Notfall-DDx und bei laufender oder geplanter fachärztlicher Mitbetreuung; keine hochgradige Allodynie ohne interprofessionellen Plan],
        ),
      ),
    )
  ]

  v(5pt)
  scope-frame[
    Budapest-Diagnose, bildgebende/laborchemische Ausschlussdiagnostik, Systemtherapie (Medikamente, Interventionen), endgültige DDx Infekt/Kompartment/Ischämie/TVT — HP Physio screent und triagiert – stellt CRPS *nicht* abschließend fest und führt *keine* Systemtherapie durch.
  ]
}

// ── U-mimic (4 frames + NM chips) ─────────────────────────────

/// show-nm-chips: only place for NM in full chapter (no parallel CAVE).
#let mimic-crps(show-nm-chips: true) = {
  set text(size: 8pt)
  text(size: 9pt, weight: "bold", fill: palette.danger)[
    Trügerische Erklärungen
  ]
  v(4pt)

  let row(frame, danger, accent: false) = {
    block(
      width: 100%,
      inset: 6pt,
      radius: 2pt,
      breakable: false,
      stroke: if accent { 1.1pt + palette.danger } else { 0.45pt + palette.border },
      fill: if accent { rgb("#fef2f2") } else { white },
    )[
      #grid(
        columns: (52mm, 10mm, 1fr),
        column-gutter: 4pt,
        align(horizon)[
          #text(size: 7.8pt)[„#frame“]
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
      "Normaler Heilungsschmerz",
      [entwarnt bei klarer Disproportionalität und vegetativen Zeichen *nicht*.],
    ),
    row(
      "Psychosomatik / Überempfindlichkeit",
      [psychische Anteile schließen organische Notfall-DDx und CRPS *nicht* aus.],
    ),
    row(
      "Nur Nervenläsion / isolierte Neuropathie",
      [eine isolierte Nervenverletzung erklärt kein volles regionales vegetativ-trophisches Bild – und umgekehrt.],
    ),
    row(
      "Entzündliches CRPS bei Fieber/Eiter",
      [systemische oder lokale Infektzeichen (Osteomyelitis, septische Arthritis, Wundinfekt) haben Vorrang vor dem CRPS-Label.],
      accent: true,
    ),
  )

  if show-nm-chips {
    v(6pt)
    text(size: 8pt, weight: "bold", fill: palette.text-muted)[
      Nicht übersehen (Vorrang vor CRPS-Label)
    ]
    v(3pt)
    block(width: 100%, breakable: false)[
      #grid(
        columns: (1fr, 1fr),
        gutter: 4pt,
        ..(
          ([Fieber und eitrige Wunde (Infekt/Osteomyelitis)], palette.danger),
          ([Extreme Schwellung und Spannungsblase frisch posttrauma (Kompartmentsyndrom)], palette.danger),
          ([Akute Blässe, Kälte und Pulslosigkeit (arterielle Ischämie)], palette.danger),
          ([Einseitige Beinschwellung mit Risikofaktoren (TVT)], palette.warning),
        ).map(((t, c)) => {
          block(
            width: 100%,
            inset: 5pt,
            radius: 2pt,
            fill: c.lighten(92%),
            stroke: 0.45pt + c.lighten(40%),
          )[
            #set text(size: 7pt)
            #text(weight: "bold", fill: c)[• ]
            #t
          ]
        }),
      )
    ]
  }
}

// ── U-cues (regional board) ───────────────────────────────────

#let cues-crps() = {
  set text(size: 8pt)

  block(width: 100%, breakable: false)[
    #block(
      width: 100%,
      inset: (x: 8pt, y: 6pt),
      radius: 2pt,
      fill: palette.primary.lighten(92%),
      stroke: 0.5pt + palette.primary.lighten(40%),
    )[
      #text(size: 8.5pt, weight: "bold", fill: palette.primary-dark)[
        Disproportionaler Extremitätenschmerz nach Trauma/OP
      ]
      #text(size: 7.5pt, fill: palette.text-body)[
        · typischerweise *distal* der Läsion · regionales vegetativ-trophisches Muster
      ]
    ]

    #v(5pt)

    #let tile(title, body) = {
      block(
        width: 100%,
        height: auto,
        inset: 7pt,
        radius: 3pt,
        fill: white,
        stroke: 0.5pt + palette.border,
      )[
        #text(size: 8pt, weight: "bold", fill: palette.primary-dark)[#title]
        #v(3pt)
        #set text(size: 7.2pt, fill: palette.text-body)
        #body
      ]
    }

    #grid(
      columns: (1fr, 1fr),
      gutter: 5pt,
      tile(
        [Anamnese],
        list(
          [Trauma/OP der Extremität],
          [brennender, stechender oder dumpfer Schmerz *deutlich stärker als zur Verletzung passend*],
          [Berührungsempfindlichkeit; Schwellung; Farb- oder Temperaturdifferenz; vermehrtes Schwitzen; motorische Unsicherheit],
        ),
      ),
      tile(
        [Beobachtung],
        list(
          [Asymmetrische Schwellung],
          [Hautfarbe blass, rötlich oder livide],
          [sichtbare trophische Veränderungen (Haut, Nägel, Behaarung); Schonhaltung],
        ),
      ),
      tile(
        [Untersuchung],
        list(
          [Seitenvergleich (Temperatur, Farbe, Schwitzen)],
          [Allodynie bei leichter Berührung; Hyperalgesie],
          [Kraft und Sensibilität; periphere Pulse; Wundstatus und *systemische Infektzeichen*],
        ),
      ),
      tile(
        [Verlauf],
        list(
          [Tage bis Wochen post Trauma],
          [Persistenz oder Zunahme statt erwarteter Heilung],
        ),
      ),
    )

    #v(5pt)
    #block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: palette.danger,
    )[
      #set text(fill: white, size: 7.5pt)
      #text(weight: "bold")[Sofortige Notfall-Re-Triage: ]
      bei Fieber, eitriger Wunde, rascher Spannungszunahme oder Pulslosigkeit.
    ]
  ]
}

// ── U-discrimination (DDx-Minimal) ────────────────────────────

/// show-title: false when the chapter heading already names the unit (E3).
/// show-footer: Parent-System line under the table.
#let ddx-crps(show-title: true, show-footer: true) = {
  set text(size: 7.5pt)
  if show-title {
    text(size: 9pt, weight: "bold", fill: palette.primary-dark)[DDx-Minimal]
    v(4pt)
  }
  // E4: keep table as one block when space allows.
  block(width: 100%, breakable: false)[
    #table(
      columns: (38mm, 1fr),
      stroke: 0.4pt + palette.border-light,
      inset: 5pt,
      fill: (_, y) => if y == 0 { palette.bg-muted } else if y == 1 {
        rgb("#f0fdfa")
      } else if calc.odd(y) { palette.bg-subtle } else { white },
      table.header(
        text(weight: "bold")[Eher …],
        text(weight: "bold")[Diskriminierende Unterschiede],
      ),
      [*CRPS*],
      [Tage–Wochen post Trauma; disproportionaler Schmerz + Allodynie + vegetative/trophische Zeichen regional distal],
      [*Akutes Kompartmentsyndrom*],
      [Stundenkritisch posttrauma/post-OP; brettharte Loge, passiver Dehnungsschmerz, rasche Eskalation → *Notfall*],
      [*Tiefe Infektion / Osteomyelitis / septische Arthritis*],
      [Fieber, eitrige Wunde, systemische Infektzeichen, lokale Rötung/Hitze mit Toxizität],
      [*Arterielle Ischämie*],
      [Plötzlich kalt, blass, oft pulslos],
      [*TVT der Extremität*],
      [Subakut, oft Unterschenkel/Bein, Risikofaktoren, weniger Allodynie/trophisches Vollbild],
      [*Isolierte periphere Nervenläsion*],
      [Defizit im Nervenversorgungsgebiet *ohne* regionales vegetativ-trophisches Muster],
      [*Somatische Belastungsstörung*],
      [*erst nach* Ausschluss organischer und notfallrelevanter Ursachen],
    )
  ]
  if show-footer {
    v(4pt)
    text(size: 7pt, fill: palette.text-muted)[
      Parent-System V-3 · MSK-Nachbehandlung erst nach Ausschluss zeitkritischer Differenzialdiagnosen und bei CRPS-Verdacht mit Facharztanbindung.
    ]
  }
}
