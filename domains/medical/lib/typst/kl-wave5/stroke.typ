// Wave-5 · Schlaganfall / TIA — nested multi-T1 + mimic + FAST code fallback
// Form Specs: kl-stroke-urgency · kl-stroke-mimic · kl-stroke-fast
// Pins copy-through C · no form-meta · T3 collapse · SCOPE orthogonal
// FAST: code letter cascade (fallback; free vision owns creative first pass)

#import "/packages/bookkit/theme.typ": palette
#import "/domains/medical/lib/typst/kl-core/us-time-scope.typ": time-tier, scope-frame

// ── U-urgency + U-scope (nested multi-T1, 4 clusters) ─────────

#let us-stroke() = {
  set text(size: 8pt)

  block(
    width: 100%,
    inset: (x: 7pt, y: 5pt),
    radius: 2pt,
    fill: rgb("#fef2f2"),
    stroke: (left: 3pt + palette.danger, rest: 0.4pt + palette.danger.lighten(45%)),
  )[
    #set text(size: 7.5pt)
    #text(weight: "bold", fill: palette.danger)[Im Zweifel den Notruf wählen,]
    #text(fill: palette.text-body)[ statt abzuwarten oder den Patienten zu mobilisieren.]
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
      action: [Sofort *112 wählen*. Sitzung beenden. Patienten sichern (Mobilisation vermeiden). Keine weiteren diagnostischen Tests. Stroke-Unit-Pfad einleiten. *TIA:* Remission entwarnt *nicht* — *keine* PT, *kein* Abwarten.],
      triggers: list(
        [FAST-positiv (Face, Arm, Speech) mit plötzlichem Beginn],
        [Plötzliche halbseitige Sensibilitäts- oder Sehstörung],
        [Plötzlicher Schwindel *plus* fokales neurologisches Defizit],
        [TIA-ähnliche flüchtige Symptome (auch wenn bereits remittiert), insbesondere in den letzten 48 h],
      ),
    ),
    time-tier(
      code: "T2",
      title: "Notaufnahme / gleichtags Arzt",
      bar: palette.warning,
      fill: rgb("#fff7ed"),
      action: [Nur wenn *kein* akutes fokal-neurologisches Bild und *keine* 112-Kriterien, aber unklare langsam progrediente neurologische Symptome (Tage/Wochen): PT bis zur ärztlichen Klärung aussetzen. Bei akuter Verschlechterung oder neuen fokal-neurologischen Zeichen *sofort 112*.],
      triggers: none,
    ),
    // T3 omitted
    time-tier(
      code: "T4",
      title: "Behandeln + Sicherheitsnetz",
      bar: palette.primary,
      fill: rgb("#f0fdfa"),
      action: [Nur bei *gesicherter* muskuloskelettaler Ursache, ohne Red Flags; bei bekannter TIA/Schlaganfall-Historie nach ärztlicher Freigabe aus der Akutphase. Vigilanz für neue fokal-neurologische Zeichen; Abbruchkriterien vorab.],
      triggers: none,
    ),
  )

  v(5pt)
  scope-frame[
    Ausschluss Schlaganfall/TIA, Bildgebung, Lyse/Thrombektomie, ABCD² als Therapieentscheidung — *nicht* HP/PT. ABCD²-Score nur informativ; ersetzt *keine* Notfallabklärung. BE-FAST ersetzt die FAST-112-Logik *nicht*. Keine Provokationstests zur eigenen Abklärung. Absolute Behandlungssperre bei neuen, ungeklärten neurologischen Defiziten. *Keine* HWS-Manipulation bei Verdacht auf vertebrobasiläre Ischämie oder Dissektion. Ischämie und Blutung im Erstkontakt nicht unterscheidbar → *112*. Bei Verfügbarkeit und Kompetenz Blutzucker prüfen *ohne* den Notruf zu verzögern.
  ]
}

// ── U-mimic (4 frames) ────────────────────────────────────────

#let mimic-stroke() = {
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
      "Periphere Fazialisparese / Bell",
      "Zentrale Parese / Schlaganfall, wenn Stirn-Check fehlt; Begleitdefizite Arm, Sprache",
      consequence: "bei Unsicherheit oder Begleitdefizit → 112; Stirnrunzeln prüfen",
    ),
    row(
      "HWS-Blockade / Schwindel vom Nacken",
      "Hirnstamm- oder Posterior-Infarkt; plötzlicher Schwindel plus fokales Defizit oder akute Ataxie",
      consequence: "keine Mobilisation vor Ausschluss; zentrale Ursache zuerst",
    ),
    row(
      "Migräne-Aura",
      "TIA oder Infarkt bei Aura-ähnlichen flüchtigen Symptomen ohne sichere Migräne-Anamnese",
      consequence: "Unsicherheit = Notfallpfad; keine Selbst-Entwarnung",
    ),
    row(
      "Schulter-Arm / Radikulopathie",
      "Hemiparese bei einseitiger Armschwäche mit apoplektiformem Beginn und zentralen Begleitzeichen",
      consequence: "nicht „erstmal mobilisieren“; Hemiparese bis zum Beweis des Gegenteils",
    ),
  )
}

// ── FAST code (Wave-5 Accept winner after free-vision density fail) ──
// Dense, book-readable: no empty icon wells; larger body text.
// T = Time/Notruf (action), not a body-sign peer.

#let fast-stroke-code() = {
  set text(size: 9pt)
  text(size: 11pt, weight: "bold", fill: palette.primary-dark)[
    FAST · strukturierter Blick bei Schlaganfallverdacht
  ]
  v(2pt)
  text(size: 8pt, fill: palette.text-muted)[
    Prähospitales Screening — Sicherheit, nicht Ausschluss. Untersuchung *nicht* verzögern.
  ]
  v(5pt)

  // F·A·S as three dense equal columns — full width text, no decorative empty wells
  let col(L, title, body, bar) = {
    block(
      width: 100%,
      height: auto,
      inset: 7pt,
      radius: 2pt,
      fill: white,
      stroke: (top: 3.5pt + bar, rest: 0.5pt + palette.border),
    )[
      #grid(
        columns: (auto, 1fr),
        column-gutter: 5pt,
        align(horizon)[
          #box(
            width: 9mm,
            height: 9mm,
            radius: 2pt,
            fill: bar,
            align(center + horizon)[
              #text(size: 13pt, weight: "bold", fill: white)[#L]
            ],
          )
        ],
        align(horizon)[
          #text(size: 9pt, weight: "bold", fill: bar)[#title]
        ],
      )
      #v(4pt)
      #set text(size: 8.2pt, fill: palette.text-body)
      #body
    ]
  }

  grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 4pt,
    col(
      "F",
      [Gesicht],
      list(
        tight: true,
        [Mundwinkel asymmetrisch?],
        [Zum Lächeln auffordern],
        [Einseitiges Hängen sichtbar?],
      ),
      palette.primary-dark,
    ),
    col(
      "A",
      [Arme],
      list(
        tight: true,
        [Armhalteversuch],
        [Beide Arme vorstrecken],
        [Ein Arm sinkt ab / weicht ab?],
      ),
      palette.primary,
    ),
    col(
      "S",
      [Sprache],
      list(
        tight: true,
        [Einfachen Satz nachsprechen],
        [Undeutlich / verwaschen?],
        [Aphasie oder Dysarthrie?],
      ),
      palette.primary-light,
    ),
  )

  v(5pt)
  // T full-width danger action bar — denser than free vision
  block(
    width: 100%,
    radius: 3pt,
    clip: true,
    stroke: 0.7pt + palette.danger,
  )[
    #block(width: 100%, fill: palette.danger, inset: (x: 9pt, y: 8pt))[
      #set text(fill: white)
      #grid(
        columns: (11mm, 1fr, auto),
        column-gutter: 8pt,
        align(horizon)[
          #box(
            width: 10mm,
            height: 10mm,
            radius: 2pt,
            fill: white,
            align(center + horizon)[
              #text(size: 15pt, weight: "bold", fill: palette.danger)[T]
            ],
          )
        ],
        align(horizon)[
          #text(size: 10pt, weight: "bold")[Time · Handlungszeit · Notruf]
          #v(2pt)
          #set text(size: 8.5pt)
          „Last seen normal“ notieren · *kein* Körperzeichen · *sofort* handeln
        ],
        align(horizon)[
          #box(
            inset: (x: 8pt, y: 4pt),
            radius: 2pt,
            fill: white,
            text(size: 12pt, weight: "bold", fill: palette.danger)[112],
          )
        ],
      )
    ]
  ]

  v(4pt)
  block(
    width: 100%,
    inset: 8pt,
    radius: 2pt,
    fill: rgb("#fef2f2"),
    stroke: (left: 4pt + palette.danger, rest: 0.5pt + palette.danger.lighten(40%)),
  )[
    #text(size: 9pt, weight: "bold", fill: palette.danger)[
      FAST ≥ 1 Kriterium mit plötzlichem Beginn → 112 wählen
    ]
    #v(2pt)
    #set text(size: 8pt, fill: palette.text-body)
    Keine weiteren Tests, die den Notruf verzögern. Keine HWS-Manipulation bei Verdacht.
  ]

  v(5pt)
  text(size: 8.5pt, weight: "bold", fill: palette.text-muted)[
    BE-FAST · Extension (posteriorer Kreislauf)
  ]
  v(3pt)
  grid(
    columns: (1fr, 1fr),
    column-gutter: 4pt,
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: palette.bg-subtle,
      stroke: 0.4pt + palette.border-light,
    )[
      #text(size: 8.5pt, weight: "bold")[B · Balance]
      #v(2pt)
      #set text(size: 8pt)
      Unsicherheit Stehen/Gehen · Ataxie — *sensibilisiert*, ersetzt FAST-112 *nicht*
    ],
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: palette.bg-subtle,
      stroke: 0.4pt + palette.border-light,
    )[
      #text(size: 8.5pt, weight: "bold")[E · Eyes / Sehen]
      #v(2pt)
      #set text(size: 8pt)
      Sehstörung · Doppelbilder · Hemianopsie-Kontext — *ohne* Notruf zu verzögern
    ],
  )
  v(3pt)
  block(
    width: 100%,
    inset: 6pt,
    radius: 2pt,
    fill: white,
    stroke: 0.45pt + palette.border,
  )[
    #set text(size: 7.2pt, fill: palette.text-body)
    Sensibilisiert für den posterioren Kreislauf; ersetzt die FAST-112-Logik *nicht*.
    Kein eigenständiger DE-Leitlinien-Primärscore für HP/Physio; Validierung im Direktzugang fehlt;
    nur *ohne* die Triage zu verzögern.
  ]

  v(5pt)
  // Posterior gap
  block(
    width: 100%,
    inset: 7pt,
    radius: 2pt,
    fill: rgb("#fff7ed"),
    stroke: (left: 3.5pt + palette.warning, rest: 0.45pt + palette.warning.lighten(40%)),
  )[
    #text(size: 7.5pt, weight: "bold", fill: palette.warning)[Posterior / Hirnstamm]
    #v(3pt)
    #set text(size: 7.3pt, fill: palette.text-body)
    FAST allein ist unempfindlich für Posterior-/Hirnstamm-Infarkte (Schwindel, Ataxie, Sehstörung).
    FAST-negativ entwarnt *nicht* bei Schwindel plus fokal-neurologischem Defizit.
  ]
}
