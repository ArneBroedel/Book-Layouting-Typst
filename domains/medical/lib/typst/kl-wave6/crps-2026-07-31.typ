// Clean slate 2026-07-31 · CRPS (Morbus Sudeck) kl-kurz
// slug: kl-crps-2026-07-31
// Pins: copy-through C chapter-v-3-crps-sudeck only
// Do NOT import old crps.typ / crps-rerun / crps-wp9 as SoT
// Design CLEAN: urgency · mimic · regional-cues

#import "/packages/bookkit/theme.typ": palette
#import "/domains/medical/lib/typst/kl-core/us-time-scope.typ": time-tier, scope-frame

// ── U-urgency + U-scope (L4 stack, all T1–T4) ─────────────────

#let us-crps() = {
  set text(size: 8pt)

  stack(
    spacing: 4pt,
    time-tier(
      code: "112",
      title: "Sofort — Notfalltransport",
      bar: palette.danger,
      fill: rgb("#fef2f2"),
      solid-header: true,
      action: [Behandlung *sofort abbrechen*. Notfalltransport veranlassen. Übergabe: Trauma-/OP-Kontext, Zeitverlauf, Red-Flag-Befunde.],
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
      action: [Physiotherapie *stoppen*. Unverzüglich Notaufnahme oder gleichtags ärztlich abklären. *Keine* forcierte Mobilisation.],
      triggers: list(
        [Starke, ausstrahlende oder progrediente Schmerzen mit systemischen Symptomen (Infekt-/Thromboseverdacht, drohendes Kompartiment) *ohne* unmittelbare 112-Lage],
        [Unklare akute Verschlechterung posttrauma],
      ),
    ),
    time-tier(
      code: "T3",
      title: "Zeitnah Facharzt — Arbeitsverdacht CRPS",
      bar: palette.primary-light,
      fill: rgb("#f8fafc"),
      action: [Befunde dokumentieren (Seitenvergleich, Allodynie, Temperatur/Farbe, Trauma-Anamnese). *Zeitnah* Schmerzmedizin, Neurologie oder Unfallchirurgie. Budapest-Diagnose und Systemtherapie erfolgen *ärztlich*.],
      triggers: list(
        [Disproportionierter Extremitätenschmerz plus vegetative oder trophische Zeichen nach Trauma/OP *ohne* Notfall-Red-Flags],
      ),
    ),
    time-tier(
      code: "T4",
      title: "Behandeln + Sicherheitsnetz",
      bar: palette.primary,
      fill: rgb("#f0fdfa"),
      action: [Nur nach Ausschluss von Notfall-DDx und bei laufender oder geplanter fachärztlicher Mitbetreuung; keine hochgradige Allodynie ohne interprofessionellen Plan. Modifizierte, schmerzadaptierte Therapie. *Keine* forcierte schmerzhafte Mobilisation. Rückkehrgründe: Fieber, rasche Schwellung, Pulse/Farbe, progrediente Parese.],
      triggers: none,
    ),
  )

  v(5pt)
  scope-frame[
    Budapest-Diagnose; bildgebende/laborchemische Ausschlussdiagnostik; Systemtherapie (Medikamente, Interventionen); endgültige DDx Infekt/Kompartment/Ischämie/TVT. HP Physio *screent und triagiert* — stellt CRPS nicht abschließend fest und führt keine Systemtherapie durch.
  ]
}

// ── U-mimic (4 rows) ──────────────────────────────────────────

#let mimic-crps() = {
  set text(size: 8pt)
  text(size: 9pt, weight: "bold", fill: palette.danger)[
    Trügerische Erklärungen
  ]
  v(4pt)

  let row(frame, danger) = {
    block(
      width: 100%,
      inset: 5.5pt,
      radius: 2pt,
      stroke: 0.45pt + palette.border,
      fill: white,
    )[
      #grid(
        columns: (42mm, 10mm, 1fr),
        column-gutter: 3pt,
        align(horizon)[
          #text(size: 7.6pt)[#frame]
        ],
        align(center + horizon)[
          #text(size: 12pt, fill: palette.danger, weight: "bold")[→]
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
      [„Normaler Heilungsschmerz“],
      [entwarnt bei klarer Disproportionalität und vegetativen Zeichen *nicht*],
    ),
    row(
      [„Psychosomatik / Überempfindlichkeit“],
      [psychische Anteile schließen organische Notfall-DDx und CRPS *nicht* aus],
    ),
    row(
      [„Nur Nervenläsion / isolierte Neuropathie“],
      [erklärt kein volles regionales vegetativ-trophisches Bild — und umgekehrt],
    ),
    row(
      [„Entzündliches CRPS“ bei Fieber/Eiter],
      [Infektzeichen (Osteomyelitis, septische Arthritis, Wundinfekt) haben *Vorrang* vor dem CRPS-Label],
    ),
  )
}

// ── U-regional-cues ───────────────────────────────────────────
// Ship: clinical recognition panel (L3–L4 typography). No fake hand blobs.
// Free PNGs demoted (illustration-semantics FAIL) — provenance only.
// Doctrine: no decorative color theater; pins = C; Seitenvergleich as exam job.

#let regional-cues-crps-code() = {
  set text(size: 8.2pt)

  // Lead: defining recognition pattern (scan-first)
  block(
    width: 100%,
    inset: (x: 9pt, y: 8pt),
    radius: 2pt,
    fill: white,
    stroke: (left: 3.5pt + palette.primary, rest: 0.5pt + palette.border),
  )[
    #text(size: 9pt, weight: "bold", fill: palette.primary)[
      Erkennungscluster — regionales CRPS-Signal
    ]
    #v(4pt)
    #set text(size: 8.2pt, fill: palette.text-body)
    Nach Trauma/OP einer Extremität: *disproportionaler* Schmerz
    (deutlich stärker als zur Verletzung passend)
    *plus* vegetative und/oder trophische Zeichen
    *plus* Allodynie — *distales, regionales* Verteilungsmuster.
    #v(3pt)
    #text(size: 7.5pt, fill: palette.text-muted)[
      Arbeitsverdacht und Weiterleitung — *keine* Budapest-Diagnose durch HP Physio.
    ]
  ]

  v(8pt)

  // Seitenvergleich as real exam table (content pins), not color blocks
  text(size: 9pt, weight: "bold", fill: palette.text-body)[
    Seitenvergleich — was prüfen?
  ]
  v(4pt)
  set text(size: 7.8pt)
  table(
    columns: (32mm, 1fr, 1fr),
    stroke: 0.4pt + palette.border,
    inset: 5.5pt,
    fill: (_, y) => {
      if y == 0 { rgb("#f0fdfa") }
      else if calc.odd(y) { rgb("#fafafa") }
      else { white }
    },
    align: (left, left, left),
    [*Dimension*], [*Betroffene Extremität (Signal)*], [*Gegenseite (Referenz)*],
    [Schmerz], [brennend / stechend / dumpf; *deutlich stärker als zur Verletzung passend*], [passend zum Trauma / erwarteter Heilungsverlauf],
    [Berührung], [Allodynie bei *leichter* Berührung; Berührungsempfindlichkeit], [normale Berührungsempfindlichkeit],
    [Temperatur / Farbe], [Differenz: wärmer/kälter; blass, rötlich oder livide], [Bezug für Seitenvergleich],
    [Schwellung], [asymmetrische Schwellung, typisch *distal*], [kein entsprechendes Ödem-Muster],
    [Schwitzen], [vermehrt oder verändert], [Referenzseite],
    [Trophik / Beobachtung], [Haut, Nägel, Behaarung verändert; Schonhaltung], [unauffällig im Vergleich],
  )

  v(7pt)

  // Quiet clinical jobs under the table
  grid(
    columns: (1fr, 1fr),
    column-gutter: 6pt,
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: rgb("#f8fafc"),
      stroke: 0.4pt + palette.border,
    )[
      #text(size: 7.8pt, weight: "bold", fill: palette.primary)[Untersuchung mitdenken]
      #v(3pt)
      #set text(size: 7.4pt)
      Kraft und Sensibilität · periphere Pulse · Wundstatus und systemische Infektzeichen (C §3).
    ],
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: white,
      stroke: 0.55pt + palette.text-muted,
    )[
      #text(size: 7.8pt, weight: "bold", fill: palette.text-muted)[Grenze / Sicherheit]
      #v(3pt)
      #set text(size: 7.4pt)
      Budapest-Diagnose und Systemtherapie erfolgen *ärztlich*. HP Physio screent und triagiert. Bei Fieber, eitriger Wunde, rascher Spannungszunahme oder Pulslosigkeit *sofortige* Notfall-Re-Triage.
    ],
  )
}

#let regional-cues-crps(
  asset: none,
  mode: "code",
) = {
  // asset/hybrid intentionally ignored for ship path after illustration-semantics FAIL
  regional-cues-crps-code()
}

// ── U-for-against + must-not-miss (L3/L4 sequential) ──────────

#let discrimination-crps() = {
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
        [disproportionaler Extremitätenschmerz nach Trauma/OP],
        [plus vegetative und/oder trophische Zeichen (Temperatur-/Farbdifferenz, Schwellung, Schwitzen, Allodynie)],
        [distales, regionales Verteilungsmuster],
      )
    ],
    block(
      width: 100%,
      inset: 5pt,
      radius: 2pt,
      fill: rgb("#f8fafc"),
      stroke: 0.45pt + palette.border,
    )[
      #text(size: 8pt, weight: "bold", fill: palette.text-muted)[Passt eher nicht]
      #v(3pt)
      #set text(size: 7.3pt)
      #list(
        [reiner Heilungsschmerz mit klarer Zeit- und Belastungskorrelation *ohne* autonome/trophische Zeichen],
        [isoliertes mononeuropathisches Defizit ohne regionales vegetatives Bild],
        [bei Unsicherheit: ärztlich klären],
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
      [*Infekt / Osteomyelitis:* Fieber und eitrige Wunde],
      [*Kompartmentsyndrom:* extreme Schwellung und Spannungsblase *frisch* posttrauma],
      [*Arterielle Ischämie:* akute Blässe, Kälte und Pulslosigkeit],
      [*TVT:* einseitige Beinschwellung mit Risikofaktoren],
    )
  ]
}

// ── Big picture three-beat ────────────────────────────────────

#let bp-crps() = {
  set text(size: 8pt)
  grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 5pt,
    block(
      width: 100%,
      inset: 6.5pt,
      radius: 2pt,
      fill: rgb("#f0fdfa"),
      stroke: 0.4pt + palette.primary.lighten(35%),
    )[
      #text(size: 7.2pt, weight: "bold", fill: palette.primary)[Was]
      #v(2pt)
      #text(size: 6.8pt)[Regionales Schmerzsyndrom nach Trauma/OP einer Extremität — Schmerz *deutlich stärker* als passend, plus sensorische, motorische, vasomotorische und trophische Störungen distal.]
    ],
    block(
      width: 100%,
      inset: 6pt,
      radius: 2pt,
      fill: rgb("#fef2f2"),
      stroke: 0.4pt + palette.danger.lighten(35%),
    )[
      #text(size: 7.5pt, weight: "bold", fill: palette.danger)[Gefahr]
      #v(2pt)
      #text(size: 7pt)[Hinter „Sudeck“: Infekt, Kompartmentsyndrom oder arterieller Gefäßnotfall. *Oder* echtes CRPS wird als Heilungsschmerz/Psychosomatik bagatellisiert. Unbehandelt: Chronifizierung.]
    ],
    block(
      width: 100%,
      inset: 6pt,
      radius: 2pt,
      fill: rgb("#fff7ed"),
      stroke: 0.4pt + palette.warning.lighten(25%),
    )[
      #text(size: 7.5pt, weight: "bold", fill: palette.warning.darken(15%))[Richtung]
      #v(2pt)
      #text(size: 7pt)[HP Physio: Früherkennung, Ausschluss Notfall-DDx, zeitnahe Facharztzuweisung. Budapest und Systemtherapie *ärztlich*.]
    ],
  )
}
