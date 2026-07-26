// Melanom U-urgency + U-scope — exceptional-T1 transfer
// Form Spec: domains/medical/briefs/kl-melanom-urgency.form-spec.md
// Geometry ideas: us-time-scope.typ (TIME stack + orthogonal SCOPE)
// Pins: Welle-06 V-10 Melanom copy-through · German only · no form-meta

#import "/packages/bookkit/theme.typ": palette

// ── building blocks (pattern transfer from us-time-scope) ─────

/// SCOPE: optically outside the TIME ladder (square frame, no T-chip).
/// Separation is self-evident from form alone — no meta-caption.
#let scope-frame(body, title: [Grenze der eigenen Zuständigkeit]) = {
  v(2pt)
  line(length: 100%, stroke: 0.9pt + palette.border)
  v(5pt)
  block(
    width: 100%,
    inset: (x: 8pt, y: 7pt),
    radius: 0pt,
    fill: white,
    stroke: 0.9pt + palette.text-muted,
  )[
    #text(
      size: 8pt,
      weight: "bold",
      fill: palette.text-muted,
      tracking: 0.4pt,
    )[#upper(title)]
    #v(3pt)
    #set text(size: 7.2pt, fill: palette.text-body)
    #body
  ]
}

/// Full TIME tier card: chip + title + Handlung + optional triggers.
#let time-tier(
  code: "",
  title: "",
  bar: palette.danger,
  fill: rgb("#fef2f2"),
  action: [],
  triggers: none,
) = {
  block(
    width: 100%,
    inset: (left: 9pt, rest: 6.5pt),
    radius: 2pt,
    fill: fill,
    stroke: (left: 4pt + bar, rest: 0.5pt + bar.lighten(45%)),
  )[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 6pt,
      align(horizon)[
        #box(
          fill: bar,
          inset: (x: 5pt, y: 2pt),
          radius: 2pt,
          text(size: 7.5pt, weight: "bold", fill: white)[#code],
        )
      ],
      [
        #text(size: 8.5pt, weight: "bold", fill: bar)[#title]
        #v(2pt)
        #set text(size: 7.3pt)
        #text(weight: "bold")[Handlung: ]
        #action
        #if triggers != none {
          v(3pt)
          set text(size: 7.1pt)
          triggers
        }
      ],
    )
  ]
}

/// T1 as compact exception strip — not a solid-red primary 112 wall.
#let t1-exception(
  body,
  title: [112 nur bei vitaler Begleitlage],
) = {
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
        #text(size: 7.5pt, weight: "bold", fill: palette.danger)[#title]
        #v(2pt)
        #set text(size: 7.1pt, fill: palette.text-body)
        #body
      ],
    )
  ]
}

// ── U-urgency + U-scope (exceptional T1 · Melanom screening) ──

/// Joint TIME + SCOPE for Melanom. T2 ≥ T3 > T4; T1 quiet exception.
#let us-melanom() = {
  set text(size: 8pt)

  // T1 exception — screening-style; not ACS/BLS 112-first wall
  t1-exception[
    Im Melanom-Screening typischerweise *nicht* primär 112; Ausnahme nur bei vital bedrohlicher Begleitlage (z. B. akute schwere Blutung, Schock). Dann Notruf und Standard-Notfallmanagement; Melanom selbst ist primär onkologisch-dermatologisch zeitkritisch, nicht reanimationspflichtig.
  ]

  v(4.5pt)

  // Clinical weight: T2 (amber, full) ≥ T3 (cool/info) > T4 (teal)
  stack(
    spacing: 4.5pt,
    time-tier(
      code: "T2",
      title: "Gleichtags bis zeitnah",
      bar: palette.warning,
      fill: rgb("#fff7ed"),
      action: [
        Therapie an der Läsion stoppen; *keine* destruktiven Maßnahmen;
        gleichtags Hausarzt/Dermatologie bzw. onkologisch-dermatologische Abklärung;
        schriftlich „Melanom-DDx / ABCDE-suspekt?“ und Befundbeschreibung mitgeben.
        (Bei Blutung/Ulzeration und systemischen Zeichen eher gleichtags.)
      ],
      triggers: list(
        [Blutende oder ulzerierte unklare Hautläsion],
        [ABCDE-suspekte oder rasch wachsende pigmentierte Läsion],
        [B-Symptomatik plus multiple Hautknoten],
      ),
    ),
    time-tier(
      code: "T3",
      title: "Zeitnah",
      bar: palette.info,
      fill: rgb("#eff6ff"),
      action: [
        Schriftliche Zuweisung Dermatologie/Hausarzt zur Exzisionsabklärung;
        Patient über Dringlichkeit und Rückkehrgründe informieren.
      ],
      triggers: list(
        [Neu aufgetretene subunguale Pigmentierung kombiniert mit Nagelwall-Pigmentierung (Verdacht auf Hutchinson-Zeichen)],
        [Ugly Duckling ohne akute Blutung],
      ),
    ),
    time-tier(
      code: "T4",
      title: "Behandeln + Sicherheitsnetz",
      bar: palette.primary,
      fill: rgb("#f0fdfa"),
      action: [
        Ohne suspekte Kriterien: MSK-Therapie fortsetzen;
        bei neu auffälliger Läsion im Verlauf sofort stoppen und zuweisen;
        auf gesetzliches Hautkrebs-Screening (in DE ab 35 Jahren alle 2 Jahre) hinweisen, ohne Screening zu ersetzen.
      ],
      triggers: none,
    ),
  )

  v(5pt)

  // SCOPE orthogonal — square frame after hairline break
  scope-frame[
    Keine Melanom-Diagnose, keine Exzision, *keine* destruktiven Maßnahmen an suspekten Läsionen;
    endgültige DDx (seborrhoische Keratose vs. Melanom) ist *ärztlich*.
  ]
}
