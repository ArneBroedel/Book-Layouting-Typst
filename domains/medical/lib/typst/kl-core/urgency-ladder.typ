// F2 — Urgency Ladder variants (KL Script System Phase 1)
// Claim pins: Erysipel + ACS §5 (Welle-06) — copy-through, no invented thresholds

#import "/packages/bookkit/theme.typ": palette

#let _tier-label(text-str, fill, text-fill: white) = {
  box(
    fill: fill,
    inset: (x: 6pt, y: 3pt),
    radius: 2pt,
    text(size: 8pt, weight: "bold", fill: text-fill, text-str),
  )
}

// ── Variant A: refined styled table (Erysipel) ─────────────────
#let f2-table-erysipel() = {
  set text(size: 8pt)
  table(
    columns: (28mm, 18mm, 1fr),
    stroke: 0.4pt + palette.border-light,
    inset: 5pt,
    fill: (_, y) => if y == 0 { palette.bg-muted } else if y == 1 {
      rgb("#fef2f2")
    } else if y == 2 {
      rgb("#fff7ed")
    } else if y == 3 {
      palette.bg-subtle
    } else {
      white
    },
    table.header(
      text(weight: "bold")[Situation],
      text(weight: "bold")[Dringlichkeit],
      text(weight: "bold")[Handlung],
    ),
    [
      #_tier-label("112", palette.danger)
      #v(2pt)
      Extrem unverhältnismäßiger Schmerz („Vernichtungsschmerz“), rasche Ausbreitung, unscharfe Begrenzung, Blasen/Nekrosen, Hautemphysem/Krepitation, Schockzeichen
    ],
    text(weight: "bold", fill: palette.danger)[Sofort],
    [Therapie abbrechen, Vitalzeichen erheben, *Notruf 112*. Übergabe mit Zeitverlauf und Hautbefund. *Keine Physiotherapie.*],
    [
      #_tier-label("Notaufnahme / gleichtags", palette.warning, text-fill: white)
      #v(2pt)
      Scharf begrenztes Erythem + Fieber/Systemik; Immunsuppression mit rasch progredientem Erythem; unilaterale Schwellung (TVT-DDx)
    ],
    text(weight: "bold", fill: palette.warning)[Sofort–gleichtags],
    [Therapie abbrechen. Toxisch → Notaufnahme; sonst gleichtags Arzt. Keine manuelle Lymphdrainage / intensive Wärme auf floridem Areal.],
    [
      #_tier-label("Behandeln + Netz", palette.primary)
      #v(2pt)
      Ohne Red Flags / ohne Systemik / ohne unverhältnismäßigen Schmerz
    ],
    [Mit Netz],
    [Begleitung außerhalb des verdächtigen Areals; Rückkehrgründe: Rötung↑, Fieber, Schüttelfrost, rasche Schwellung, Schmerzexplosion.],
    [
      #_tier-label("Zuständigkeit", palette.text-muted)
    ],
    [Immer],
    [Keine Diagnosesicherung, keine Antibiotika; manuelle Techniken/Lymphdrainage auf floridem Erysipel ohne Freigabe *absolut kontraindiziert*; TVT/nekrotisierende Infektion nicht PT-Ausschluss.],
  )
}

// ── Variant B: vertical urgency lanes (Erysipel) ───────────────
#let _lane(title, fill, bar, body) = {
  block(
    width: 100%,
    inset: (left: 10pt, rest: 7pt),
    radius: 3pt,
    fill: fill,
    stroke: (left: 4pt + bar, rest: 0.55pt + bar.lighten(45%)),
  )[
    #text(size: 8.5pt, weight: "bold", fill: bar)[#title]
    #v(3pt)
    #set text(size: 7.5pt, fill: palette.text-body)
    #body
  ]
}

#let f2-lanes-erysipel() = {
  set text(size: 8pt)
  stack(
    spacing: 5pt,
    _lane("112 — Sofort", rgb("#fef2f2"), palette.danger)[
      *Trigger:* Vernichtungsschmerz, rasche Ausbreitung, unscharfe Grenzen, Blasen/Nekrosen, Krepitation/Emphysem, Schockzeichen.\
      *Handlung:* Therapie abbrechen · Vitalzeichen · *Notruf 112* · keine PT.
    ],
    _lane("Notaufnahme / gleichtags Arzt", rgb("#fff7ed"), palette.warning)[
      *Trigger:* scharf begrenztes Erythem + Fieber/Systemik; Immunsuppression + Progression; unilaterale Schwellung (TVT-DDx).\
      *Handlung:* Abbruch · NA oder gleichtags · keine Lymphdrainage/Wärme auf floridem Areal.
    ],
    _lane("Behandeln mit Sicherheitsnetz", rgb("#f0fdfa"), palette.primary)[
      *Nur ohne* Red Flags / Systemik / Vernichtungsschmerz. Rückkehrgründe klar benennen.
    ],
    _lane("Grenze der Zuständigkeit", palette.bg-subtle, palette.text-muted)[
      Keine Antibiotika/Diagnosesicherung; manuelle Techniken auf floridem Erysipel ohne Freigabe absolut kontraindiziert; TVT/nekrotisierende Infektion kein PT-Ausschluss.
    ],
  )
}

// ── Variant C: ACS hard-stop stack (single dominant 112) ───────
#let f2-hardstop-acs() = {
  set text(size: 8pt)
  block(
    width: 100%,
    fill: palette.danger,
    inset: 8pt,
    radius: 3pt,
  )[
    #set text(fill: white)
    #text(size: 10pt, weight: "bold")[112 — ACS-Verdacht · Sofortstopp]
    #v(3pt)
    #text(size: 8pt)[
      Jeder plausible ACS-Verdacht: *Sitzung beenden · absolute Ruhe · Notruf 112 · keine Belastung · keine manuelle Thorax-„Abklärung“.*
    ]
  ]
  v(4pt)
  block(
    width: 100%,
    stroke: 1.2pt + palette.danger,
    inset: 7pt,
    radius: 3pt,
    fill: rgb("#fef2f2"),
  )[
    #text(size: 8pt, weight: "bold", fill: palette.danger)[112-Trigger (gebündelt)]
    #v(2pt)
    #set text(size: 7.5pt)
    #list(
      marker: text(fill: palette.danger)[■],
      [Retrosternaler Vernichtungs-/anhaltender Druckschmerz + Ausstrahlung Arm/Kiefer/Rücken + vegetativ],
      [Akute Dyspnoe, Synkope oder Schock bei Infarktverdacht],
      [Bekannte KHK + neu progredienter Ruheschmerz],
      [Oberbauchschmerz + Vegetativum + kardiale Risikofaktoren],
    )
  ]
  v(4pt)
  grid(
    columns: (1fr, 1fr),
    column-gutter: 5pt,
    block(
      width: 100%,
      fill: rgb("#fff7ed"),
      stroke: 0.6pt + palette.warning,
      inset: 6pt,
      radius: 3pt,
    )[
      #text(size: 8pt, weight: "bold", fill: palette.warning)[Notaufnahme / gleichtags]
      #v(2pt)
      #text(size: 7pt)[
        Nur wenn *kein* ACS-Vollbild und *keine* 112-Kriterien, aber Thoraxschmerz unklar → *keine PT*; bei Verschlechterung *sofort 112*.
      ]
    ],
    block(
      width: 100%,
      fill: palette.bg-subtle,
      stroke: 0.6pt + palette.border,
      inset: 6pt,
      radius: 3pt,
    )[
      #text(size: 8pt, weight: "bold", fill: palette.text-muted)[Zuständigkeit]
      #v(2pt)
      #text(size: 7pt)[
        ACS-Ausschluss, EKG, Troponin, STEMI/NSTEMI-Zuordnung, Reperfusion — *nicht* HP/PT. MHS nicht als Ausschluss.
      ]
    ],
  )
  v(3pt)
  block(
    width: 100%,
    fill: rgb("#f0fdfa"),
    stroke: 0.5pt + palette.primary,
    inset: 6pt,
    radius: 3pt,
  )[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Behandeln + Netz]
    #v(2pt)
    #text(size: 7pt)[
      Nur bei *gesicherter* MSK-Erklärung ohne Red Flags (± ärztliche Freigabe). Abbruchkriterien vorab.
    ]
  ]
}

// ── Variant D: multi-112 as equal table (ANTI — for compare) ───
#let f2-acs-flat-anti() = {
  set text(size: 7pt)
  text(size: 7.5pt, fill: palette.danger, weight: "bold")[
    Anti-Pattern (zum Vergleich): Multi-112 als gleich laute Tabellenzeilen
  ]
  v(3pt)
  table(
    columns: (1fr, 18mm, 1fr),
    stroke: 0.35pt + palette.border,
    inset: 4pt,
    fill: (_, y) => if y == 0 { palette.bg-muted } else { white },
    table.header([*Situation*], [*Dringl.*], [*Handlung*]),
    [112 – Retrosternaler Vernichtungsschmerz + vegetativ], [Sofort], [112 wählen; absolute Ruhe],
    [112 – Dyspnoe/Synkope/Schock], [Sofort], [112 wählen; keine Mobilisation],
    [112 – KHK + Crescendo-Ruheschmerz], [Sofort], [112 wählen; keine PT],
    [112 – Oberbauch + Vegetativum + RF], [Sofort], [112 wählen; ACS-Mimikry],
    [Notaufnahme / gleichtags], […], [Keine PT; unklar → Arzt],
    [Behandeln + Netz], […], [Nur gesicherte MSK],
    [Zuständigkeit], [Immer], [EKG/Troponin/Reperfusion nicht PT],
  )
}
