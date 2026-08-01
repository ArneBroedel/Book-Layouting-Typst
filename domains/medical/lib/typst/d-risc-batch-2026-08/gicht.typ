// d-risc-batch 2026-08 · Gicht kl-kurz
// slug: kl-gicht-batch-2026-08
// Pins: copy-through C chapter-v-3-gicht (2026-08-d-risc-batch) + notes only
// Grammar transfer from kl-wave6/gicht-2026-08-01.typ allowed; claims re-pinned to NEW batch wording
// Design CLEAN: urgency · mimic · hot-joint (code panel)

#import "/packages/bookkit/theme.typ": palette
#import "/domains/medical/lib/typst/kl-core/us-time-scope.typ": time-tier, scope-frame

// ── U-urgency + U-scope (aligned to content §5 table) ─────────

#let us-gicht() = {
  set text(size: 8pt)

  stack(
    spacing: 4pt,
    // T1 — 112 only for sepsis instability (parenthetical in §5 row 1)
    time-tier(
      code: "112",
      title: "Sofort — Notfalltransport",
      bar: palette.danger,
      fill: rgb("#fef2f2"),
      solid-header: true,
      action: [Behandlung abbrechen; Vitalzeichen; *112*; keine Manipulation, keine Injektion.],
      triggers: list(
        [Heißes Gelenk mit *Sepsis-Instabilität* (Schock, Kreislaufversagen, bedrohliche Systemik)],
      ),
    ),
    // T2 — Notaufnahme: §5 rows 1–2 bulk
    time-tier(
      code: "NA",
      title: "Notaufnahme",
      bar: palette.warning,
      fill: rgb("#fff7ed"),
      action: [Physiotherapie *stoppen*. *Notaufnahme*. Bis zum ärztlichen Ausschluss *septisch* — *auch bei Gichtanamnese*. Übergabe: Zeitverlauf, Temperatur, AZ, Belastbarkeit, Gichtanamnese, Hautbefund.],
      triggers: list(
        [Heißes Gelenk + *Fieber / Schüttelfrost / schwerer Allgemeinzustand*],
        [*Polyartikulärer Sturm* + Systemik — Infekt / systemische Krise; *keine Probebehandlung*],
      ),
    ),
    // gleichtags — §5 row 3 (same-day MD, distinct from NA)
    time-tier(
      code: "G",
      title: "gleichtags Arzt",
      bar: palette.warning.darken(8%),
      fill: rgb("#fffbeb"),
      action: [Infektkomplikation mitdenken; *gleichtags* ärztlich vorstellen; *keine* invasiven Lokalmaßnahmen.],
      triggers: list(
        [Bekannte Gicht + *Tophi/Ulcus* mit *lokalen Infektzeichen*],
      ),
    ),
    // T3 — §5 row 4
    time-tier(
      code: "T3",
      title: "zeitnah Hausarzt / Rheumatologie / Orthopädie",
      bar: palette.primary-light,
      fill: rgb("#f8fafc"),
      action: [Diagnosesicherung *ärztlich*; *keine* Eigen-Injektion. Sicherheitsnetz: Rückkehr bei Fieber, Hitze-Zunahme, neuer Belastungsunfähigkeit.],
      triggers: list(
        [*Erste unklare Monarthritis* — auch bei „typisch Podagra“-Muster],
      ),
    ),
    // T4 — §5 row 5
    time-tier(
      code: "T4",
      title: "Behandeln mit Sicherheitsnetz",
      bar: palette.primary,
      fill: rgb("#f0fdfa"),
      action: [Entlastung, Aufklärung, interprofessionell; bei *neuem Fieber* Re-Triage.],
      triggers: list(
        [Gesicherte Gicht *nach* ärztlicher Klärung, stabil, ohne Red Flags],
      ),
    ),
  )

  v(5pt)
  // §5 row 6 — SCOPE
  scope-frame[
    Gelenkpunktion; Kristall-/Erregernachweis; harnsäuresenkende und Anfallsmedikation; *i.\,a. Injektion* — *streng ärztlich*. HP Physio *screent und triagiert* — punktiert und injiziert nicht.
  ]

  v(7pt)
  block(
    width: 100%,
    inset: 6.5pt,
    radius: 2pt,
    fill: rgb("#fef2f2"),
    stroke: (left: 3pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
  )[
    #set text(size: 7.4pt)
    #text(weight: "bold", fill: palette.danger)[Absolute Kontraindikationen bis zum Ausschluss: ]
    forcierte Manipulation und invasive lokale Maßnahmen am unklar heißen Gelenk; Intraartikulär-Injektion / Punktion durch HP-PT; abwartendes „Probebehandeln“ bei Fieber/Systemik.
  ]
}

// ── U-mimic (3 rows = content §4 „Trügerische Erklärungen“) ───

#let mimic-gicht() = {
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
      [„Umgeknickt — sicher Bänder“],
      [Podagra beginnt oft *ohne* adäquates Trauma und wird als Distorsion fehlgedeutet — Gicht *und* Infekt weiter mitdenken],
    ),
    row(
      [„Bekannte Gicht, also kein Infekt“],
      [Vorbekannte Gicht *schließt septische Arthritis nicht aus*; Fieber und Systemik erzwingen den *Infektpfad*],
    ),
    row(
      [„Kein Fieber, also sicher Gicht“],
      [Fieberfreiheit entlastet den septischen Zweifel *nicht zuverlässig*; heißes Gelenk + AZ-Verschlechterung → *ärztlich klären*],
    ),
  )
}

// ── U-hot-joint (L3–L4 clinical panel; code default, no free vision) ─

// Single scan layer: Erkennungscluster absorbs surface/function/context
// (2026-08 revise: removed redundant 3-card row vs. Vier Kanäle)
#let hot-joint-gicht-code() = {
  set text(size: 8.2pt)

  block(
    width: 100%,
    inset: (x: 9pt, y: 8pt),
    radius: 2pt,
    fill: white,
    stroke: (left: 3.5pt + palette.warning, rest: 0.5pt + palette.border),
  )[
    #text(size: 9pt, weight: "bold", fill: palette.warning.darken(15%))[
      Erkennungscluster — heiße Monarthritis (klassisch MTP-I / Podagra)
    ]
    #v(4pt)
    #set text(size: 8.2pt, fill: palette.text-body)
    Hochakuter, oft *nächtlich beginnender* Monoarthritis-Anfall — *klassisch am Großzehengrundgelenk (MTP-I)*.
    #v(4pt)
    #grid(
      columns: (1fr, 1fr, 1fr),
      column-gutter: 6pt,
      [
        #text(size: 7.5pt, weight: "bold", fill: palette.danger)[Oberfläche]
        #linebreak()
        #text(size: 7.3pt)[Rötung · Überwärmung · Schwellung am Mono-Gelenk]
      ],
      [
        #text(size: 7.5pt, weight: "bold", fill: palette.warning.darken(10%))[Funktion]
        #linebreak()
        #text(size: 7.3pt)[Schonhaltung · Unmöglichkeit Belastung · starker Druck-/Bewegungsschmerz]
      ],
      [
        #text(size: 7.5pt, weight: "bold", fill: palette.primary)[Kontext]
        #linebreak()
        #text(size: 7.3pt)[Stunden-Tempo · Trigger · frühere Attacken entwarnen Systemik *nicht*]
      ],
    )
    #v(3pt)
    #text(size: 7.5pt, fill: palette.text-muted)[
      Grobe Funktionsprüfung *ohne* forcierte Gelenktests am unklar heißen Gelenk.
    ]
  ]
}

#let hot-joint-gicht() = {
  hot-joint-gicht-code()
}

// ── U-for-against + must-not-miss (sequential) ─────────────────

#let discrimination-gicht() = {
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
      #text(size: 8pt, weight: "bold", fill: palette.primary)[Erhärtet den Verdacht (Gicht-Muster)]
      #v(3pt)
      #set text(size: 7.3pt)
      #list(
        [klassisches Podagra-Tempo (Stunden; oft Großzehe)],
        [bekannte Hyperurikämie / frühere Attacken],
        [typische Trigger (Alkohol, Diuretika, Diät)],
        [— *aber* Muster ersetzt keine ärztliche Diagnosesicherung bei Erstmanifestation],
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
        [chronisch symmetrische Polyarthritis ohne akute Mono-Krise],
        [rein traumatisches Umknick-Ereignis mit Frakturzeichen],
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
      [*Bakterielle (septische) Arthritis:* heißes Gelenk + Fieber/Systemik; *auch bei Gichtanamnese* bis Ausschluss],
      [*Pseudogicht / CPPD:* oft Knie/Handgelenk; im Erstkontakt oft untrennbar],
      [*Erysipel* angrenzend],
      [*Fraktur / Trauma*],
      [*Reaktive Arthritis / SpA-Schub*],
      [*Kristall vs. bakteriell* im PT-Setting früh *nicht sicher trennbar*],
    )
  ]
}

// ── Big Picture three-beat helper ─────────────────────────────

#let bp-gicht() = {
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
      #text(size: 7.8pt, weight: "bold", fill: palette.primary)[Was ist Gicht?]
      #v(3pt)
      #set text(size: 7.3pt)
      Kristallarthropathie durch Natriumurat-Ablagerungen — klinisch hochakuter, oft nächtlich beginnender Monoarthritis-Anfall (klassisch Podagra).
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
      Jedes unklare heiße Gelenk gilt bis zur ärztlichen Klärung als *potenziell septisch* — auch bei Gichtanamnese. Podagra-Muster ersetzt keinen Infekt-Screen.
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
      Screen auf Infekt-/Systemzeichen, triagieren, zuweisen. Diagnose, Punktion und medikamentöse Anfallstherapie *außerhalb* der PT-Zuständigkeit; bei Fieber/Systemik endet die Behandlung.
    ],
  )
}
