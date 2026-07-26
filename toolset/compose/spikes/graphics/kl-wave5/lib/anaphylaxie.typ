// Wave-5 · Anaphylaxie — nested multi-T1 (5 clusters) + mimic (5 frames)
// Form Specs: kl-anaphylaxie-urgency · kl-anaphylaxie-mimic
// Pins copy-through C · no form-meta · T3 collapse · SCOPE orthogonal
// Autoinjektor: payload *and* SCOPE constraint; no drug protocol

#import "/packages/bookkit/theme.typ": palette
#import "/toolset/compose/spikes/graphics/kl-script-system/lib/us-time-scope.typ": time-tier, scope-frame

// ── U-urgency + U-scope (nested multi-T1, 5 clusters) ─────────

#let us-anaphylaxie() = {
  set text(size: 8pt)

  // Progredienz-Regel near T1 — not a separate tier
  block(
    width: 100%,
    inset: (x: 7pt, y: 5pt),
    radius: 2pt,
    fill: rgb("#fef2f2"),
    stroke: (left: 3pt + palette.danger, rest: 0.4pt + palette.danger.lighten(45%)),
  )[
    #set text(size: 7.5pt)
    #text(weight: "bold", fill: palette.danger)[Progredienz zählt.]
    #text(fill: palette.text-body)[ Auch bei zunächst milden Beschwerden: jede Progredienz oder jedes neu auftretende Atemwegs- oder Kreislaufzeichen erfordert *sofort 112*.]
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
      action: [*112 wählen* · Sitzung beenden · Notfall- bzw. Schocklagerung · keine Belastung · keine fortgesetzte PT · *BLS bei Bedarf* · *Autoinjektor-Support* nur patienteneigen, verordnet, Anwendung bekannt · überwachen bis Rettungsdienst · *kein* medikamentöses Eigenprotokoll.],
      triggers: list(
        [Atemnot, Stridor, Zungenschwellung, Schluckstörung oder kloßige Sprache nach möglicher Allergenexposition],
        [Kreislaufkollaps, Hypotonie, Bewusstseinsstörung oder Schock im allergischen Kontext],
        [Generalisierte Urtikaria *plus* gastrointestinale *und* respiratorische Zeichen],
        [Bekannte schwere Allergie plus erneute Exposition mit klarer Progredienz (Haut → Atemwege/Kreislauf oder Mehrorgan)],
        [Rapide Progression über mehrere Organsysteme oder progredientes Angioödem],
      ),
    ),
    time-tier(
      code: "T2",
      title: "Notaufnahme / gleichtags Arzt",
      bar: palette.warning,
      fill: rgb("#fff7ed"),
      action: [Persistierende, milde, *nicht* progressive Beschwerden; isolierte stabile Hautreaktion ohne Atemwegs-/Kreislaufbeteiligung; unklare Ursache bei bekannter Allergie *ohne* 112-Kriterien → *keine* PT als reines Abwarten; gleichtags ärztlich. Bei jeder Verschlechterung *sofort 112*. Biphasischen Verlauf (erneute Verschlechterung ca. 6–24 h) nicht allein häuslich riskieren, wenn ärztliche Beobachtung indiziert ist.],
      triggers: none,
    ),
    // T3 omitted
    time-tier(
      code: "T4",
      title: "Behandeln + Sicherheitsnetz",
      bar: palette.primary,
      fill: rgb("#f0fdfa"),
      action: [*Keine* vermutete akute allergische Reaktion im Direktzugang als PT-Primärindikation. Vermutete allergische Akutreaktion mindestens ambulant ärztlich abklären. PT *erst nach* Klärung und ohne akute Red Flags.],
      triggers: none,
    ),
  )

  v(5pt)
  scope-frame[
    *Verboten:* Ausschlussdiagnostik; Schweregradfeinabstufung; i.m./i.v. Notfallmedikation aus eigener Kompetenz; Allergiediagnostik; medikamentöses Eskalationsprotokoll; erst mobilisieren / MSK-„Abklärung“ der Enge. *Fokus:* Screening, Sitzungsabbruch, Notfalllagerung, *BLS* bei Bedarf, Unterstützung beim *patienteneigenen* Adrenalin-Autoinjektor (nur wenn verordnet und Anwendung bekannt). Im Zweifel Notruf und BLS priorisieren — Autoinjektor ersetzt *nicht* den Notruf. Es gibt *keine* validierte alleinige Score-Skala, die im Direktzugang die 112-Entscheidung ersetzt. Ring/Messmer Grad I–IV primär deskriptiv — *nicht* als HP/Physio-Ausschlussinstrument.
  ]
}

// ── U-mimic (5 frames) ────────────────────────────────────────

#let mimic-anaphylaxie() = {
  set text(size: 8pt)
  text(size: 9pt, weight: "bold", fill: palette.danger)[
    Trügerische Erklärungen
  ]
  v(2pt)
  text(size: 7pt, fill: palette.text-muted)[
    Wenn Flush, Engegefühl oder „Panik“ den Notfall maskieren
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
      "Nur Quaddeln / Haut",
      "Generalisierte Urtikaria kann Vorläufer/Teil systemisch sein",
      consequence: "ohne Fragen zu Atemnot, Kloßgefühl, Schwindel und ohne Dynamik → Unter-Triage",
    ),
    row(
      "Panikattacke / Hyperventilation",
      "Unruhe und beschleunigte Atmung kommen bei Anaphylaxie vor",
      consequence: "ohne Ausschluss Schwellung, Stridor, Kreislaufinstabilität ist psychische Erstlabelung gefährlich",
    ),
    row(
      "Asthma-Schub",
      "Allergenbezug, Haut-/Schleimhaut, GI oder Kreislauf → Anaphylaxie-Notfallpfad",
      consequence: "112",
    ),
    row(
      "HWS-/BWS-Blockade, Enge vom Training",
      "Zervikothorakales Engegefühl nach Exposition oder mit Schwellung/Juckreiz/Schwindel",
      consequence: "kein Freifahrtschein für manuelle Techniken",
    ),
    row(
      "Vasovagal, wird gleich wieder",
      "Flush, Urtikaria, Atemwegsobstruktion, Allergenbezug → anaphylaktischer Schock",
      consequence: "im Zweifel 112",
    ),
  )
}
