// KL Wave-5 grammar — Suizidalität / Eskalation (VI-4)
// U-urgency+scope · U-mimic · safety-chrome (calm teal; solid red only T1)
// Pins copy-through C · Form Specs: kl-suicid-urgency · kl-suicid-mimic · kl-suicid-chrome
// NO methods / weapons / noose imagery · NO form-meta in figures

#import "/packages/bookkit/theme.typ": palette
#import "/toolset/compose/spikes/graphics/kl-script-system/lib/us-time-scope.typ": time-tier, scope-frame

// ── U-urgency + U-scope ───────────────────────────────────────
// T1 nested multi-trigger quiet-strong · T2 gleichtags–48 h as ONE tier · T4 · SCOPE no PsychKG
// T3 collapsed (content has no „Zeitnah Arzt“ row)

#let us-suicid() = {
  set text(size: 8pt)

  stack(
    spacing: 4.5pt,
    // T1 — one solid-danger card; all hard triggers inside (nested multi-trigger)
    time-tier(
      code: "T1",
      title: "112 / Sofort",
      bar: palette.danger,
      fill: rgb("#fef2f2"),
      solid-header: true,
      action: [
        Sitzung *sofort beenden*; Person möglichst *nicht allein lassen*;
        *112* / Notarzt (Polizei nur zur Gefahrenabwehr);
        Leistungsdiagnostik, Training, isolierte Kabinenbehandlung *unterlassen*.
      ],
      triggers: list(
        [Plan und/oder Mittel und/oder akute Absicht bzw. Handlungsdruck],
        [Frischer Suizidversuch],
        [Keine Absprachefähigkeit],
        [Imperative Stimmen],
        [Schwere Intoxikation plus Suizidalität],
        [Akute Selbst- oder Fremdgefährdung],
      ),
    ),
    // T2 — entire gleichtags / noch heute / ≤24–48 h corridor as ONE tier (not T3)
    time-tier(
      code: "T2",
      title: "Gleichtags bis ≤24–48 h medizinisch-psychiatrisch",
      bar: palette.warning,
      fill: rgb("#fff7ed"),
      action: [
        Physiotherapie *pausieren* bzw. *nicht isoliert fortsetzen*;
        geordnet *weiterleiten* (Hausarzt, psychiatrische Ambulanz, Krisendienst, Notaufnahme je nach Lage).
        *Noch heute*; bei Risiko und Unsicherheit *eher sofort* ärztlich/psychiatrisch.
        Krisennummern: *112*; Telefonseelsorge *0800 111 0 111* / *0800 111 0 222*.
        Kurz und wörtlich *dokumentieren* (Gedanken bejaht/verneint; Plan?; Weiterleitung an …; Uhrzeit).
      ],
      triggers: list(
        [bejahte Suizidgedanken (auch ohne greifbaren Plan) *plus* Risikofaktoren],
        [aktiver Todeswunsch ohne sicheres Setting],
        [PHQ-9 Item 9 positiv mit belastendem Kontext],
        [pragmatisch C-SSRS-Kategorien *1–3* (Gedanken / Methode ohne akute Umsetzung)],
      ),
    ),
    // T3 omitted — US-C collapse
    time-tier(
      code: "T4",
      title: "Behandeln mit Sicherheitsnetz",
      bar: palette.primary,
      fill: rgb("#f0fdfa"),
      action: [
        Nur bei depressiver Stimmung *ohne* Suizidgedanken, stabiler sozialer Einbindung und
        ohne Hinweis auf Selbst- oder Fremdgefährdung:
        Behandlung fortsetzen; ärztliche Mitbetreuung motivieren; bei Verschlechterung *erneut fragen*.
        *Kein* Treat-ohne-Netz.
      ],
      triggers: none,
    ),
  )

  v(5pt)
  scope-frame[
    Direkt und wertfrei *fragen*; Absprachefähigkeit / Distanzierung einschätzen; Setting sichern;
    bei T1/T2 übergeben bzw. anbinden; *dokumentieren*.
    *Keine* Psychotherapie; *keine* medikamentöse Krisenintervention; *keine* Rechtsberatung;
    kein „Antisuizidvertrag“ als *alleinige* Maßnahme;
    *keine* Zwangsunterbringung / *kein PsychKG* durch HP Physio (obliegt Ärzt:innen und Behörden).
    Score-Zeilen (PHQ-9 Item 9 / C-SSRS): *Orientierung, kein Ausschluss* — ersetzen keine klinische Einschätzung.
  ]
}

// ── U-mimic (FRAME-ERROR) — bagatellisierende Frames ──────────

#let mimic-suicid() = {
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
          #text(size: 7.5pt)[„#frame“]
        ],
        align(center + horizon)[
          #text(size: 13pt, fill: palette.danger, weight: "bold")[→]
        ],
        align(horizon)[
          #text(size: 7.5pt, weight: "bold", fill: palette.danger)[#danger]
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
      "Non-Compliance / Termine absagen, Antriebslosigkeit",
      "schwere depressive Episode mit Suizidgedanken kann dahinter stecken",
      consequence: "nicht als bloße Non-Compliance abtun",
    ),
    row(
      "Schlafstörung bei Schmerzchronifizierung",
      "ohne explizite Frage bleibt Suizidalität unsichtbar",
    ),
    row(
      "Das war nur ein Scherz",
      "bagatellisierte Todeswünsche = Warnsignal, kein Smalltalk",
    ),
    row(
      "Endlich ruhiger geworden / plötzliche Gelassenheit nach Krise",
      "präsuizidaler Zustand mit gefasstem Plan",
      consequence: "Alarm, kein Beruhigungszeichen",
    ),
  )
}
