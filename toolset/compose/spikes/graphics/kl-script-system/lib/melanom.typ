// Melanom transfer — V-10 pins (Welle-06) copy-through
// Grammar: urgency exception-T1 · mimic map · discrimination · BP · enabling
// Ambition: ABCDE letter cascade + Ugly Duckling
// Rule: no form-meta inside figures

#import "/packages/bookkit/theme.typ": palette
#import "us-time-scope.typ": time-tier, scope-frame

// ── U-bigpicture ──────────────────────────────────────────────

#let bp-melanom() = {
  set text(size: 8pt)
  grid(
    columns: (3.5mm, 1fr),
    column-gutter: 6pt,
    block(
      width: 100%,
      height: 100%,
      fill: gradient.linear(palette.primary-dark, palette.warning, angle: 90deg),
      radius: 1pt,
    ),
    stack(
      spacing: 4pt,
      block(
        width: 100%,
        inset: 7pt,
        fill: palette.bg-subtle,
        radius: (top-right: 3pt, rest: 0pt),
        stroke: (rest: 0pt, bottom: 0.4pt + palette.border-light),
      )[
        #text(size: 7pt, fill: palette.text-muted, weight: "bold")[WAS]
        #v(2pt)
        #set text(size: 8pt)
        Malignes Melanom: aggressiver Tumor der Melanozyten mit relevanter Metastasierungstendenz. Im Direktzugang entfällt die dermatologische Feindiagnostik — maßgeblich sind strukturierter Blick (ABCDE, Ugly Duckling) und rechtzeitige ärztliche Zuweisung.
      ],
      block(
        width: 100%,
        inset: 7pt,
        fill: rgb("#fef2f2"),
        stroke: (left: 3pt + palette.danger, rest: 0pt),
      )[
        #text(size: 7pt, fill: palette.danger, weight: "bold")[GEFAHR]
        #v(2pt)
        #set text(size: 8pt)
        Bagatellisierung als „alter Fleck“ ohne Evolutionsfrage; Übersehen schwer einsehbarer Läsionen (Rücken, Nacken); Verwechslung subunguales Melanom vs. Hämatom ohne Trauma-Anamnese.
      ],
      block(
        width: 100%,
        inset: 7pt,
        fill: rgb("#f0fdfa"),
        radius: (bottom-right: 3pt, rest: 0pt),
        stroke: (left: 3pt + palette.primary, rest: 0pt),
      )[
        #text(size: 7pt, fill: palette.primary, weight: "bold")[RICHTUNG]
        #v(2pt)
        #set text(size: 8pt)
        Bei ABCDE-suspekt, rascher Evolution, Blutung/Ulzeration: gleichtags bis zeitnah zuweisen — *keine* destruktiven Maßnahmen. Ohne suspekte Kriterien MSK fortsetzen, mit klarem Sicherheitsnetz.
      ],
    ),
  )
}

// ── U-enabling ────────────────────────────────────────────────
// Tempo = clinical contrast (evolution vs stable), NOT a fake continuous
// urgency spectrum. No unlabeled color bar (Human 2026-07-26).

#let enabling-melanom() = {
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
      [Intensive/intermittierende UV-Exposition, Solarium; heller Hauttyp (I–II); zahlreiche/atypische Nävi; familiäres Melanom; Immunsuppression.],
      palette.primary,
    ),
    panel(
      [Kontext],
      [Dysplastische Nävi; vorangegangene Hauttumoren; schlechte Eigeninspektion Rücken/Nacken/Fußsohlen; Nagelveränderungen ohne Trauma.],
      palette.primary-light,
    ),
    panel(
      [Beginn & Tempo],
      [Neu aufgetretene Pigmentläsion oder Veränderung (Form, Farbe, Größe, Juckreiz, Blutung).],
      palette.warning,
    ),
  )
  v(6pt)
  // Explicit two-pole tempo: readable without a legend-less bar
  text(size: 7.5pt, weight: "bold", fill: palette.primary-dark)[
    Tempo der Läsion — was zählt?
  ]
  v(3pt)
  grid(
    columns: (1fr, 1fr),
    column-gutter: 5pt,
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: rgb("#fff7ed"),
      stroke: (left: 3.5pt + palette.warning, rest: 0.45pt + palette.warning.lighten(40%)),
    )[
      #text(size: 7.5pt, weight: "bold", fill: palette.warning)[Evolution · Wochen bis Monate]
      #v(3pt)
      #set text(size: 7.2pt, fill: palette.text-body)
      Veränderung von Form, Farbe, Größe, Juckreiz oder Blutung — *klinisch besonders relevant* und hinweisend auf Suspekt.
    ],
    block(
      width: 100%,
      inset: 7pt,
      radius: 2pt,
      fill: palette.bg-subtle,
      stroke: (left: 3.5pt + palette.text-muted, rest: 0.4pt + palette.border-light),
    )[
      #text(size: 7.5pt, weight: "bold", fill: palette.text-muted)[Jahre unverändert]
      #v(3pt)
      #set text(size: 7.2pt, fill: palette.text-body)
      Symmetrisch, scharf begrenzt, einfarbig, *ohne* Evolution — eher weniger verdächtig; bei Unsicherheit trotzdem *ärztlich* klären, nicht „wegtherapieren“.
    ],
  )
}

// ── U-mechanism (compact chain) ───────────────────────────────

#let mechanism-melanom() = {
  set text(size: 7.5pt)
  let node(t, fill, stroke) = {
    block(
      width: 100%,
      inset: 6pt,
      radius: 2pt,
      fill: fill,
      stroke: 0.6pt + stroke,
      align(center)[
        #set text(size: 7pt, weight: "bold", fill: stroke)
        #t
      ],
    )
  }
  grid(
    columns: (1fr, auto, 1fr, auto, 1fr, auto, 1fr),
    column-gutter: 2pt,
    align(horizon, node([UV-DNA-\ Schaden], palette.primary.lighten(88%), palette.primary)),
    align(center + horizon, text(size: 12pt, fill: palette.text-muted)[→]),
    align(horizon, node([Melanozyten-\ Wachstum], palette.primary.lighten(88%), palette.primary)),
    align(center + horizon, text(size: 12pt, fill: palette.text-muted)[→]),
    align(horizon, node([horizontal →\ vertikal], rgb("#fff7ed"), palette.warning)),
    align(center + horizon, text(size: 12pt, fill: palette.text-muted)[→]),
    align(horizon, node([Frühe Exzision\ = bessere Prognose], rgb("#f0fdfa"), palette.primary)),
  )
  v(4pt)
  block(
    width: 100%,
    inset: 6pt,
    radius: 2pt,
    fill: palette.bg-subtle,
    stroke: 0.4pt + palette.border-light,
  )[
    #set text(size: 7.5pt)
    *Direktzugang-Beitrag:* strukturierter Blick und rechtzeitige Zuweisung — nicht die Exzision selbst.
  ]
}

// ── U-cues (four channels) ────────────────────────────────────

#let cues-melanom() = {
  set text(size: 7.5pt)
  let ch(title, body, bar, emphasize: false) = {
    block(
      width: 100%,
      inset: 6pt,
      radius: 2pt,
      fill: if emphasize { rgb("#f0fdfa") } else { white },
      stroke: (
        left: (if emphasize { 3.5pt } else { 2.5pt }) + bar,
        rest: 0.4pt + palette.border-light,
      ),
    )[
      #text(size: 7.5pt, weight: "bold", fill: bar)[#title]
      #v(3pt)
      #set text(size: 7pt, fill: palette.text-body)
      #body
    ]
  }
  grid(
    columns: (1fr, 1fr),
    gutter: 4pt,
    ch(
      [Anamnese],
      [Neuauftreten/Veränderung; Juckreiz, Blutung, Ulzeration; familiäres Melanom; UV/Solarium; bei subungual: Trauma erfragen.],
      palette.primary,
    ),
    ch(
      [Beobachtung],
      [ABCDE; Ugly Duckling; Lokalisation Rumpf/Beine/Kopf/Akren/Schleimhäute.],
      palette.primary,
      emphasize: true,
    ),
    ch(
      [Untersuchung],
      [Sichtbare Areale und bei Entkleidung mitinspizieren (Rücken!). Keine Biopsie, Kürettage, destruktiven Maßnahmen.],
      palette.warning,
      emphasize: true,
    ),
    ch(
      [Verlauf],
      [Zunahme Größe/Form/Farbe; neue Blutung/Ulzeration; B-Symptomatik, multiple Hautknoten → fortgeschritten.],
      palette.text-muted,
    ),
  )
}

// ── Ambition: ABCDE + Ugly Duckling ───────────────────────────

#let abcde-melanom() = {
  set text(size: 8pt)
  text(size: 9pt, weight: "bold", fill: palette.primary-dark)[
    Strukturierter Blick · ABCDE + Ugly Duckling
  ]
  v(2pt)
  text(size: 7pt, fill: palette.text-muted)[
    Früherkennung suspekter Veränderungen — rechtzeitige ärztliche Zuweisung, keine destruktiven Maßnahmen.
  ]
  v(5pt)

  let letter(L, body, fill) = {
    grid(
      columns: (11mm, 1fr),
      column-gutter: 5pt,
      align(center + horizon)[
        #box(
          width: 10mm,
          height: 10mm,
          radius: 2pt,
          fill: fill,
          stroke: 0.5pt + fill.darken(25%),
          align(center + horizon)[
            #text(size: 14pt, weight: "bold", fill: white)[#L]
          ],
        )
      ],
      align(horizon)[
        #block(
          width: 100%,
          inset: (x: 7pt, y: 5pt),
          radius: 2pt,
          fill: white,
          stroke: 0.45pt + palette.border,
        )[
          #set text(size: 8pt, fill: palette.text-body)
          #body
        ]
      ],
    )
  }

  stack(
    spacing: 3.5pt,
    letter("A", [Asymmetrie], palette.primary-dark),
    letter("B", [Unscharfe / unregelmäßige Begrenzung], palette.primary),
    letter("C", [Farbvielfalt (Color)], palette.primary-light),
    letter("D", [Durchmesser typisch > 5 mm], palette.warning),
    letter("E", [Evolution (Form, Farbe, Größe, Juckreiz, Blutung)], palette.danger.lighten(15%)),
  )

  v(6pt)
  block(
    width: 100%,
    inset: 8pt,
    radius: 3pt,
    fill: rgb("#fff7ed"),
    stroke: (left: 4pt + palette.warning, rest: 0.5pt + palette.warning.lighten(35%)),
  )[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 8pt,
      align(horizon)[
        #box(
          inset: (x: 6pt, y: 3pt),
          radius: 2pt,
          fill: palette.warning,
          text(size: 7.5pt, weight: "bold", fill: white)[Ugly Duckling],
        )
      ],
      align(horizon)[
        #set text(size: 8pt)
        Eine Läsion unterscheidet sich klar von den übrigen Nävi.
      ],
    )
  ]

  v(5pt)
  block(
    width: 100%,
    inset: 6pt,
    radius: 2pt,
    fill: rgb("#f0fdfa"),
    stroke: 0.45pt + palette.primary.lighten(40%),
  )[
    #set text(size: 7.5pt)
    #text(weight: "bold", fill: palette.primary)[Bei Suspekt:]
    Zuweisung — *keine* Biopsie, Kürettage oder destruktiven Maßnahmen an suspekten Läsionen.
  ]
}

// ── §4 discrimination ─────────────────────────────────────────

#let fa-melanom() = {
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
      ABCDE-positiv oder rasche Evolution; Ugly Duckling; blutende/ulzerierte unklare Läsion; neu aufgetretene subunguale Pigmentierung kombiniert mit Nagelwall-Pigmentierung (Verdacht auf Hutchinson-Zeichen).
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
      Seit Jahren unveränderte, symmetrische, scharf begrenzte, einfarbige Läsion ohne Evolution und ohne Ugly-Duckling-Charakter — dennoch bei Unsicherheit ärztlich klären lassen, nicht „wegtherapieren“.
    ],
  )
}

#let nm-melanom() = {
  set text(size: 8pt)
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
      [Melanom hinter seborrhoischer Keratose-Anmutung (ärztliche DDx)],
      [Subunguales Melanom vs. Hämatom],
      [Amelanotische Formen (weniger pigmentiert, leichter zu verkennen)],
      [B-Symptomatik mit multiplen Hautknoten (Metastasen-Screen)],
    )
  ]
}

#let discrimination-melanom() = {
  fa-melanom()
  v(5pt)
  nm-melanom()
}

// ── U-mimic map ───────────────────────────────────────────────

#let mimic-melanom() = {
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
        columns: (42mm, 10mm, 1fr),
        column-gutter: 4pt,
        align(horizon)[
          #text(size: 7.5pt)[„#frame“]
        ],
        align(center + horizon)[
          #text(size: 13pt, fill: palette.danger, weight: "bold")[→]
        ],
        align(horizon)[
          #text(size: 7.5pt, weight: "bold", fill: palette.danger)[#danger]
        ],
      )
    ]
  }

  stack(
    spacing: 3.5pt,
    row(
      "Alter Fleck, den man schon immer hatte",
      "Ohne Evolutionsfrage (Form, Farbe, Größe, Juckreiz, Blutung) maligne Transformation verpassen",
    ),
    row(
      "Seborrhoische Keratose / harmloser Nävus",
      "Endgültige Einordnung ärztlich; bei ABCDE-Suspekt zuweisen, nicht eigenetikettieren",
    ),
    row(
      "Subunguales Hämatom nach Trauma",
      "Ohne Trauma + Nagelwall-Pigment → Melanom-DDx zeitnah dermatologisch",
    ),
    row(
      "Rücken ist nicht das Behandlungsziel",
      "Rücken/Nacken mitinspizieren; bei Auffälligkeit zuweisen",
    ),
  )
}

#let section-four-melanom() = {
  discrimination-melanom()
  v(6pt)
  mimic-melanom()
}

// ── U-urgency + U-scope (exceptional T1) ───────────────────────

#let us-melanom() = {
  set text(size: 8pt)

  // T1 as compact exception — not primary 112 wall
  block(
    width: 100%,
    inset: 6pt,
    radius: 2pt,
    fill: rgb("#fef2f2"),
    stroke: (left: 3pt + palette.danger, rest: 0.45pt + palette.danger.lighten(40%)),
  )[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 6pt,
      align(horizon)[
        #box(
          fill: palette.danger,
          inset: (x: 5pt, y: 2pt),
          radius: 2pt,
          text(size: 7pt, weight: "bold", fill: white)[T1 · Ausnahme],
        )
      ],
      [
        #text(size: 7.5pt, weight: "bold", fill: palette.danger)[112 nur bei vitaler Begleitlage]
        #v(2pt)
        #set text(size: 7.1pt)
        Im Melanom-Screening typischerweise *nicht* primär 112. Ausnahme: akute schwere Blutung, Schock → Notruf und Standard-Notfallmanagement. Melanom selbst ist primär onkologisch-dermatologisch zeitkritisch, nicht reanimationspflichtig.
      ],
    )
  ]

  v(4.5pt)
  stack(
    spacing: 4.5pt,
    time-tier(
      code: "T2",
      title: "Notaufnahme / gleichtags Arzt",
      bar: palette.warning,
      fill: rgb("#fff7ed"),
      action: [Therapie an der Läsion stoppen · *keine* destruktiven Maßnahmen · gleichtags Hausarzt/Dermatologie · schriftlich „Melanom-DDx / ABCDE-suspekt?“ + Befundbeschreibung.],
      triggers: list(
        [Blutende oder ulzerierte unklare Hautläsion],
        [ABCDE-suspekte oder rasch wachsende pigmentierte Läsion],
        [B-Symptomatik plus multiple Hautknoten],
      ),
    ),
    time-tier(
      code: "T3",
      title: "Zeitnah Dermatologie / Arzt",
      bar: palette.info,
      fill: rgb("#eff6ff"),
      action: [Schriftliche Zuweisung zur Exzisionsabklärung · Patient über Dringlichkeit und Rückkehrgründe informieren.],
      triggers: list(
        [Subunguale Pigmentierung + Nagelwall-Pigmentierung (Hutchinson-Verdacht)],
        [Ugly Duckling ohne akute Blutung],
      ),
    ),
    time-tier(
      code: "T4",
      title: "Behandeln + Sicherheitsnetz",
      bar: palette.primary,
      fill: rgb("#f0fdfa"),
      action: [Ohne suspekte Kriterien: MSK fortsetzen. Neu auffällige Läsion im Verlauf → sofort stoppen und zuweisen. Hinweis auf gesetzliches Hautkrebs-Screening (DE ab 35 J., alle 2 Jahre) — ersetzt Screening nicht.],
      triggers: none,
    ),
  )

  v(5pt)
  scope-frame[
    Keine Melanom-Diagnose, keine Exzision, keine destruktiven Maßnahmen an suspekten Läsionen. Endgültige DDx (seborrhoische Keratose vs. Melanom) ist *ärztlich*.
  ]
}

// ── U-transfer ────────────────────────────────────────────────

#let transfer-melanom() = {
  set text(size: 8pt)
  block(
    width: 100%,
    inset: 8pt,
    radius: 3pt,
    fill: white,
    stroke: 0.6pt + palette.primary,
  )[
    #text(size: 8pt, weight: "bold", fill: palette.primary-dark)[Fall zur Selbstprüfung]
    #v(4pt)
    #set text(size: 7.5pt)
    52-jähriger Patient nach lumbaler Diskektomie. Beim Entkleiden: am rechten Schulterblatt asymmetrische, unregelmäßig begrenzte, mehrfarbige Pigmentläsion ca. 8 mm. Patient: „Den Fleck habe ich schon ewig, der juckt nur manchmal.“ Keine B-Symptome, Kreislauf stabil. Will „heute endlich richtig mobilisiert“ werden.
    #v(5pt)
    #text(size: 7.5pt, weight: "bold")[Fragen]
    #v(2pt)
    #set text(size: 7.5pt)
    #enum(
      [Welches Vorgehen ist nun maßgeblich?],
      [Welche Maßnahmen sind kontraindiziert?],
      [Welcher sichere Schritt muss erfolgen?],
    )
    #v(3pt)
    #text(size: 6.5pt, fill: palette.text-muted)[
      (Antworten nicht spoilernd in der Figur — im Lehrtext / Seminar)
    ]
  ]
}
