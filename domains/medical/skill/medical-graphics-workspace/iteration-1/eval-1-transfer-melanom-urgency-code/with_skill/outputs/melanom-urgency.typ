// Melanom U-urgency + U-scope — pattern transfer (exceptional-T1)
// Recipe: kl-urgency-scope-stack + exceptional-T1
// Form Spec: domains/medical/briefs/kl-melanom-urgency.form-spec.md
// Geometry: transfer from toolset/compose/spikes/graphics/kl-script-system/lib/us-time-scope.typ
// Pins: Melanom Welle-06 §5 copy-through only — no form-meta in figure

#import "/packages/bookkit/theme.typ": palette

// ── building blocks (geometry from us-time-scope; local only) ──

/// SCOPE: optically outside the TIME ladder (square frame, hairline break).
/// Separation is self-evident from form alone — no meta caption.
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

/// Standard TIME tier (T2–T4): left bar + chip + Handlung + optional triggers.
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

/// Exceptional T1: compact quiet-strong strip — not ACS solid-header wall.
/// Use when content de-emphasizes primary 112 (Melanom screening).
#let t1-exception(
  title: "",
  body: [],
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

// ── Melanom U-urgency + U-scope ────────────────────────────────

/// TIME stack (exceptional T1 · T2 · T3 · T4) + orthogonal SCOPE.
/// Weight: T2 ≥ T3 > T4; T1 quiet exception only.
#let us-melanom() = {
  set text(size: 8pt)

  // T1 exception — screening path is not 112-first
  t1-exception(
    title: [112 nur bei vitaler Begleitlage],
    body: [
      Im Melanom-Screening typischerweise *nicht* primär 112; Ausnahme nur bei vital bedrohlicher Begleitlage (z. B. akute schwere Blutung, Schock).
      Dann Notruf und Standard-Notfallmanagement; Melanom selbst ist primär onkologisch-dermatologisch zeitkritisch, nicht reanimationspflichtig.
    ],
  )

  v(4.5pt)
  stack(
    spacing: 4.5pt,
    // T2 — primary same-day medical (loudest clinical path)
    time-tier(
      code: "T2",
      title: "Gleichtags bis zeitnah · ärztlich",
      bar: palette.warning,
      fill: rgb("#fff7ed"),
      action: [
        Therapie an der Läsion stoppen; *keine* destruktiven Maßnahmen; gleichtags Hausarzt/Dermatologie bzw. onkologisch-dermatologische Abklärung; schriftlich „Melanom-DDx / ABCDE-suspekt?“ und Befundbeschreibung mitgeben.
        #v(1.5pt)
        #text(size: 6.9pt, fill: palette.text-muted)[
          Timing: gleichtags bis zeitnah (bei Blutung/Ulzeration und systemischen Zeichen eher gleichtags).
        ]
      ],
      triggers: list(
        [Blutende oder ulzerierte unklare Hautläsion],
        [ABCDE-suspekte oder rasch wachsende pigmentierte Läsion],
        [B-Symptomatik plus multiple Hautknoten],
      ),
    ),
    // T3 — zeitnah, distinct from T2
    time-tier(
      code: "T3",
      title: "Zeitnah Dermatologie / Hausarzt",
      bar: palette.info,
      fill: rgb("#eff6ff"),
      action: [
        Schriftliche Zuweisung Dermatologie/Hausarzt zur Exzisionsabklärung; Patient über Dringlichkeit und Rückkehrgründe informieren.
        #v(1.5pt)
        #text(size: 6.9pt, fill: palette.text-muted)[Timing: zeitnah.]
      ],
      triggers: list(
        [Neu aufgetretene subunguale Pigmentierung kombiniert mit Nagelwall-Pigmentierung (Verdacht auf Hutchinson-Zeichen)],
        [Ugly Duckling ohne akute Blutung],
      ),
    ),
    // T4 — treat MSK + net + screening hint
    time-tier(
      code: "T4",
      title: "Behandeln + Sicherheitsnetz",
      bar: palette.primary,
      fill: rgb("#f0fdfa"),
      action: [
        Ohne suspekte Kriterien: MSK-Therapie fortsetzen; bei neu auffälliger Läsion im Verlauf sofort stoppen und zuweisen; auf gesetzliches Hautkrebs-Screening (in DE ab 35 Jahren alle 2 Jahre) hinweisen, ohne Screening zu ersetzen.
      ],
      triggers: none,
    ),
  )

  v(5pt)
  scope-frame[
    Keine Melanom-Diagnose, keine Exzision, keine destruktiven Maßnahmen an suspekten Läsionen; endgültige DDx (seborrhoische Keratose vs. Melanom) ist *ärztlich*.
  ]
}
