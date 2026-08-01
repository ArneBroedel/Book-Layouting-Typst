// Clean slate 2026-08-01 · Gicht kl-kurz
// slug: kl-gicht-2026-08-01
// Pins: copy-through C chapter-v-3-gicht only
// Do NOT import old gicht.typ / kl-gicht* as SoT
// Design CLEAN: urgency · mimic · hot-joint

#import "/packages/bookkit/theme.typ": palette
#import "/domains/medical/lib/typst/kl-core/us-time-scope.typ": time-tier, scope-frame

// ── U-urgency + U-scope (L4 stack, all T1–T4) ─────────────────

#let us-gicht() = {
  set text(size: 8pt)

  stack(
    spacing: 4pt,
    time-tier(
      code: "112",
      title: "Sofort — Notfalltransport",
      bar: palette.danger,
      fill: rgb("#fef2f2"),
      solid-header: true,
      action: [Behandlung abbrechen; Vitalzeichen; *112*; keine Manipulation, keine Injektion.],
      triggers: list(
        [Heißes, geschwollenes Gelenk *plus* Fieber/Systemik *plus* deutliche Allgemeinzustandsverschlechterung / Sepsis-Zeichen],
        [Polyartikulärer Entzündungssturm mit schwerer Systembedrohung],
      ),
    ),
    time-tier(
      code: "NA",
      title: "Notaufnahme / gleichtags Arzt",
      bar: palette.warning,
      fill: rgb("#fff7ed"),
      action: [Physiotherapie *abbrechen*. *Noch heute* Notaufnahme bzw. orthopädischen Notdienst. Bis zum ärztlichen Ausschluss von einem *septischen* Geschehen ausgehen. Übergabe: Zeitverlauf, Temperatur, Belastbarkeit, Gichtanamnese, Hautbefund, Injektions-/OP-Anamnese.],
      triggers: list(
        [Akutes heißes Mono-Gelenk mit *Belastungsunfähigkeit* oder *stärkstem Ruheschmerz* (auch *ohne* Fieber — septisch bis zum Ausschluss)],
        [Heißes Gelenk *mit* Fieber oder Systemzeichen (auch bei bekannter Gicht)],
        [Heißes Gelenk nach i. a. Injektion, OP oder Trauma],
        [Hochrisiko (Dialyse, Immunsuppression o. Ä.)],
        [Polyartikulärer Sturm mit Systemik ohne Schockbild],
        [Ulcus/Tophi und lokale Infektzeichen],
      ),
    ),
    time-tier(
      code: "T3",
      title: "Zeitnah Facharzt / Hausarzt",
      bar: palette.primary-light,
      fill: rgb("#f8fafc"),
      action: [Keine endgültige Gichtdiagnose im HP-Setting. Zeitnah Hausarzt/Rheumatologie. Sicherheitsnetz: Rückkehr bei Fieber, Hitze-Zunahme, neuer Belastungsunfähigkeit.],
      triggers: list(
        [Nur bei *bereits ärztlich eingeordnetem* rezidivierendem Muster *ohne* aktuelles heißes Mono mit Belastungsunfähigkeit/stärkstem Ruheschmerz und *ohne* Systemik],
        [Stoffwechsel-/Nierenkontext zur Weiterversorgung],
      ),
    ),
    time-tier(
      code: "T4",
      title: "Behandeln + Sicherheitsnetz",
      bar: palette.primary,
      fill: rgb("#f0fdfa"),
      action: [Schmerzarmer Bewegungsrahmen; *keine* forcierte Belastung im akuten heißen Anfall; Rückkehrgründe: Fieber, Systemik, neue Hitze, polyartikuläre Ausbreitung.],
      triggers: list(
        [Stabiles, bereits ärztlich eingeordnetes Muster *ohne* Red Flags],
        [Interprofessionell abgestimmte mobilisierende Maßnahmen nach Anfall],
      ),
    ),
  )

  v(5pt)
  scope-frame[
    Kristallnachweis; Gelenkpunktion; Antibiose; harnsäuresenkende Therapie; endgültige Abgrenzung septisch vs. kristallin. HP Physio *screent und triagiert* — punktiert und injiziert nicht; keine Intraartikulär-Injektion.
  ]

  v(4pt)
  block(
    width: 100%,
    inset: 6.5pt,
    radius: 2pt,
    fill: rgb("#fef2f2"),
    stroke: (left: 3pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
  )[
    #set text(size: 7.4pt)
    #text(weight: "bold", fill: palette.danger)[Absolute Kontraindikationen bis zum Ausschluss: ]
    forcierte Manipulation und invasive lokale Maßnahmen am unklar heißen Gelenk; Intraartikulär-Injektion durch HP; abwartendes „Probebehandeln“ bei Fieber/Systemik.
  ]
}

// ── U-mimic (3 rows) ──────────────────────────────────────────

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
      [„Umgeknickt / Podagra als Distorsion“],
      [fehlt adäquate Traumamechanik und entzündliches Bild → Gicht *und* Infekt weiterhin zwingend mitdenken],
    ),
    row(
      [„Bekannte Gicht – also nur Schub“],
      [Gichtanamnese und *sogar Kristallnachweis* schließen bakterielle Gelenkinfektion *nicht* aus; Fieber/Systemik → Infekt-Triage],
    ),
    row(
      [„Knie-Schub = immer Gicht“],
      [am Knie Pseudogicht/CPPD häufig, im Erstkontakt oft ununterscheidbar; septische Arthritis bleibt Must-not-miss],
    ),
  )
}

// ── U-hot-joint (L3–L4 clinical panel; free PNG optional hybrid) ─
// Ship path: solid recognition panel + required safety band.
// Free vision: label-free gestalt only; hybrid if asset readable + claim PASS.
// Never decorative geometry theater after free FAIL.

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
    Hochakuter, hochschmerzhafter Monoarthritis-Anfall — *klassisch am Großzehengrundgelenk (MTP-I)*:
    *Rötung, Überwärmung, Schwellung*, Schonhaltung; oft *Belastungsunfähigkeit* des Vorfußes; starke Druck- und Bewegungsschmerzhaftigkeit.
    #v(3pt)
    #text(size: 7.5pt, fill: palette.text-muted)[
      Grobe Funktionsprüfung *ohne* forcierte Manipulation am unklar heißen Gelenk.
    ]
  ]

  v(6pt)

  grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 5pt,
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: rgb("#fef2f2"),
      stroke: 0.4pt + palette.danger.lighten(35%),
    )[
      #text(size: 7.8pt, weight: "bold", fill: palette.danger)[Oberfläche]
      #v(3pt)
      #set text(size: 7.4pt)
      Rötung · Überwärmung · Schwellung am Mono-Gelenk (oft MTP-I).
    ],
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: rgb("#fff7ed"),
      stroke: 0.4pt + palette.warning.lighten(30%),
    )[
      #text(size: 7.8pt, weight: "bold", fill: palette.warning.darken(10%))[Funktion]
      #v(3pt)
      #set text(size: 7.4pt)
      Schonhaltung · oft Vorfuß unbelastet · starker Druck-/Bewegungsschmerz.
    ],
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: rgb("#f8fafc"),
      stroke: 0.4pt + palette.border,
    )[
      #text(size: 7.8pt, weight: "bold", fill: palette.primary)[Kontext]
      #v(3pt)
      #set text(size: 7.4pt)
      Stunden-Tempo · Trigger Alkohol/Diuretika/purinreich · frühere Attacken stützen, entwarnen Systemik *nicht*.
    ],
  )

  // Safety band: chapter-level danger banner already states septic mask —
  // omit second identical red wall (layout revise: anti-dupe intensity)
}

#let hot-joint-gicht(
  asset: none,
  mode: "code",
) = {
  // Default ship: solid clinical panel. Hybrid only if asset path set AND claim audit PASS.
  if mode == "hybrid" and asset != none {
    set text(size: 8.2pt)
    // Dense crop: figure left (height-capped), cue strip right — no sparse hero
    grid(
      columns: (1.05fr, 0.95fr),
      column-gutter: 7pt,
      align(
        horizon,
        block(
          width: 100%,
          inset: 3pt,
          radius: 2pt,
          fill: white,
          stroke: 0.5pt + palette.border,
        )[
          #image(asset, width: 100%, height: 42mm, fit: "contain")
        ],
      ),
      align(
        horizon,
        stack(
          spacing: 4pt,
          block(
            width: 100%,
            inset: 6.5pt,
            radius: 2pt,
            fill: rgb("#fef2f2"),
            stroke: 0.4pt + palette.danger.lighten(35%),
          )[
            #text(size: 7.8pt, weight: "bold", fill: palette.danger)[Oberfläche]
            #v(2pt)
            #set text(size: 7.3pt)
            Rötung · Überwärmung · Schwellung am Mono-Gelenk (oft MTP-I).
          ],
          block(
            width: 100%,
            inset: 6.5pt,
            radius: 2pt,
            fill: rgb("#fff7ed"),
            stroke: 0.4pt + palette.warning.lighten(30%),
          )[
            #text(size: 7.8pt, weight: "bold", fill: palette.warning.darken(10%))[Funktion]
            #v(2pt)
            #set text(size: 7.3pt)
            Schonhaltung · oft Vorfuß unbelastet · starker Druck-/Bewegungsschmerz.
          ],
          block(
            width: 100%,
            inset: 6.5pt,
            radius: 2pt,
            fill: rgb("#f8fafc"),
            stroke: 0.4pt + palette.border,
          )[
            #text(size: 7.8pt, weight: "bold", fill: palette.primary)[Kontext]
            #v(2pt)
            #set text(size: 7.3pt)
            Stunden-Tempo · Trigger Alkohol/Diuretika · frühere Attacken stützen, entwarnen Systemik *nicht*.
          ],
        ),
      ),
    )
    v(5pt)
    block(
      width: 100%,
      inset: 8pt,
      radius: 2pt,
      fill: rgb("#fef2f2"),
      stroke: (left: 3.5pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
    )[
      #set text(size: 8pt)
      #text(weight: "bold", fill: palette.danger)[Gefahr: ]
      Eine „typische Podagra“ kann eine septische Arthritis maskieren; Kristallnachweis und Gichtanamnese entwarnen *nicht*.
    ]
  } else {
    hot-joint-gicht-code()
  }
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
      #text(size: 8pt, weight: "bold", fill: palette.primary)[Erhärtet den Verdacht (Gichtanfall)]
      #v(3pt)
      #set text(size: 7.3pt)
      #list(
        [hochakute Monarthritis binnen Stunden, typischerweise MTP-I],
        [starke Rötung/Überwärmung],
        [bekannte Hyperurikämie oder frühere Attacken],
        [passender Trigger (Alkohol, Diuretika) — *ohne* schwere Systembedrohung],
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
        [rein mechanisches Trauma mit klarer Verletzungsmechanik *ohne* entzündliches Bild],
        [chronisch-symmetrische Polyarthritis kleiner Gelenke ohne akuten Mono-Schub],
        [freies Gelenk bei rein kutanem Erysipel (klinisch unsicher)],
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
      [*Septische Arthritis:* heißes Gelenk + Fieber/Systemik/Belastungsunfähigkeit; *auch bei Gichtanamnese* bis Ausschluss],
      [*Pseudogicht / CPPD:* oft Knie; im Erstkontakt oft untrennbar],
      [*Trauma / Fraktur:* klare Mechanik, ggf. Hämatom],
      [*Erysipel / Weichteilinfekt:* primär kutan; Gelenk freier — im Zweifel nicht herabstufen],
      [*RA / SpA-Schub:* oft polyartikulär/chronisch-schubförmig; akute Mono mit Hitze bleibt infektpflichtig],
      [*Tophi-Infekt:* Hautläsionen/Ulzera über Tophi],
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
      Klinische Manifestation einer Hyperurikämie mit Natriumuratkristallen in Gelenken/Weichteilen — im DA hochakuter Monoarthritis-Anfall (klassisch Podagra).
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
      „Typische Podagra“ / bekannte Gicht kann septische Arthritis *maskieren*; Kristalle und Anamnese entwarnen *nicht*.
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
      Screen auf Infekt-/Systemzeichen, triagieren, zuweisen. Diagnosesicherung und Anfallstherapie *ärztlich*. Bei Systembedrohung *112*, bei heißem Gelenk mit Infektverdacht gleichtags Notaufnahme.
    ],
  )
}
