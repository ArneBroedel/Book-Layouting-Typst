// F2 redesign v2 — urgency ONLY (Dimension A); scope separate (Dimension B)
// Pins: Erysipel + ACS Welle-06

#import "/packages/bookkit/theme.typ": palette

#let scope-bar(body) = {
  block(
    width: 100%,
    inset: 6pt,
    radius: 2pt,
    fill: palette.bg-subtle,
    stroke: (top: 0.8pt + palette.text-muted, rest: 0.4pt + palette.border),
  )[
    #text(size: 7pt, weight: "bold", fill: palette.text-muted)[
      Zuständigkeitsgrenze — *keine* Dringlichkeitsstufe
    ]
    #v(2pt)
    #set text(size: 7pt, fill: palette.text-body)
    #body
  ]
}

/// One urgency step: rank label + time word + body (triggers + action)
#let urgency-step(
  rank: "",
  time-word: "",
  fill: white,
  bar: palette.danger,
  action: [],
  triggers: none,
) = {
  block(
    width: 100%,
    inset: (left: 9pt, rest: 6pt),
    radius: 2pt,
    fill: fill,
    stroke: (left: 4pt + bar, rest: 0.45pt + bar.lighten(50%)),
  )[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 8pt,
      align(horizon)[
        #box(
          fill: bar,
          inset: (x: 5pt, y: 2.5pt),
          radius: 2pt,
          text(size: 7.5pt, weight: "bold", fill: white)[#rank],
        )
      ],
      [
        #text(size: 8pt, weight: "bold", fill: bar)[#time-word]
        #if action != [] {
          v(2pt)
          set text(size: 7.5pt)
          text(weight: "bold")[Handlung: ]
          action
        }
        #if triggers != none {
          v(3pt)
          text(size: 7pt, fill: palette.text-muted)[Wann diese Stufe (Trigger):]
          v(1.5pt)
          set text(size: 7pt)
          triggers
        }
      ],
    )
  ]
}

// ── Erysipel: 3 urgency steps + separate scope ────────────────
#let f2-erysipel-v2() = {
  stack(
    spacing: 4pt,
    urgency-step(
      rank: "112",
      time-word: "Sofort — Rettungskette",
      fill: rgb("#fef2f2"),
      bar: palette.danger,
      action: [Therapie abbrechen · Vitalzeichen · *Notruf 112* · keine PT.],
      triggers: list(
        [Extrem unverhältnismäßiger Schmerz („Vernichtungsschmerz“)],
        [Rasche Ausbreitung, unscharfe Begrenzung, Blasen/Nekrosen],
        [Hautemphysem/Krepitation, Schockzeichen],
      ),
    ),
    urgency-step(
      rank: "Heute",
      time-word: "Notaufnahme oder gleichtags Arzt",
      fill: rgb("#fff7ed"),
      bar: palette.warning,
      action: [Therapie abbrechen · NA oder gleichtags Arzt · *keine* manuelle Lymphdrainage / intensive Wärme auf floridem Areal.],
      triggers: list(
        [Scharf begrenztes Erythem + Fieber/systemische Zeichen],
        [Immunsuppression + rasch progredientes Weichteilerythem],
        [Unilaterale Beinschwellung ohne klares Muster (TVT-DDx)],
      ),
    ),
    urgency-step(
      rank: "PT",
      time-word: "Behandeln mit Sicherheitsnetz",
      fill: rgb("#f0fdfa"),
      bar: palette.primary,
      action: [Nur ohne Red Flags / ohne Systemik / ohne Vernichtungsschmerz. Rückkehrgründe: Rötung↑, Fieber, Schüttelfrost, rasche Schwellung, Schmerzexplosion.],
      triggers: none,
    ),
  )
  v(5pt)
  scope-bar[
    Keine Erysipel-Diagnosesicherung, keine Antibiotika. Manuelle Techniken und Lymphdrainage auf floridem Erysipel ohne ärztliche Freigabe *absolut kontraindiziert*. TVT und nekrotisierende Infektion werden physiotherapeutisch *nicht* ausgeschlossen.
  ]
}

// ── Same ladder WITH optional "Zeitnah" (illustrates band model; ──
// content for Erysipel has no separate Zeitnah row — shown as
// "pattern for other monographs", clearly labeled)
#let f2-band-model-four-steps() = {
  set text(size: 7.5pt)
  text(size: 7.5pt, fill: palette.text-muted)[
    *Band-Modell (Content-Inventur):* Viele Monographien haben eine eigene Zeile
    *„Zeitnah Arzt“* zwischen gleichtags und Treat. Erysipel hat sie *nicht* —
    hier nur zur Verdeutlichung der *Dimension Dringlichkeit*.
  ]
  v(4pt)
  stack(
    spacing: 3.5pt,
    urgency-step(
      rank: "112",
      time-word: "Sofort",
      fill: rgb("#fef2f2"),
      bar: palette.danger,
      action: [Rettungskette / Notruf.],
    ),
    urgency-step(
      rank: "Heute",
      time-word: "Notaufnahme / gleichtags",
      fill: rgb("#fff7ed"),
      bar: palette.warning,
      action: [Unverzüglich medizinisch abklären.],
    ),
    urgency-step(
      rank: "Bald",
      time-word: "Zeitnah Arzt (Tage, nicht monatelang)",
      fill: rgb("#eff6ff"),
      bar: palette.info,
      action: [Geplante, priorisierte ärztliche Vorstellung — *kein* Notfallpfad.],
    ),
    urgency-step(
      rank: "PT",
      time-word: "Behandeln + Sicherheitsnetz",
      fill: rgb("#f0fdfa"),
      bar: palette.primary,
      action: [PT möglich; Rückkehrgründe und Abbruchkriterien.],
    ),
  )
  v(4pt)
  scope-bar[Scope / Zuständigkeit — *quer* zu allen Stufen, nie „unterste Ampelfarbe“.]
}

// ── ACS: one 112 step with internal triggers (not a second rung) ─
#let f2-acs-v2() = {
  stack(
    spacing: 4pt,
    block(
      width: 100%,
      inset: 8pt,
      radius: 3pt,
      fill: palette.danger,
    )[
      #set text(fill: white, size: 8pt)
      #text(size: 10pt, weight: "bold")[112 — Sofortstopp bei ACS-Verdacht]
      #v(3pt)
      Sitzung beenden · absolute Ruhe · *Notruf 112* · keine Belastung · keine manuelle Thorax-„Abklärung“.
      #v(4pt)
      #text(size: 7.5pt, weight: "bold")[Diese Stufe gilt bei (Trigger — *dieselbe* Dringlichkeit):]
      #v(2pt)
      #set text(size: 7.5pt)
      #list(
        marker: text(fill: white)[▪],
        [Retrosternaler Vernichtungs-/anhaltender Druckschmerz + Ausstrahlung + vegetativ],
        [Akute Dyspnoe, Synkope oder Schock bei Infarktverdacht],
        [Bekannte KHK + neu progredienter Ruheschmerz],
        [Oberbauch + Vegetativum + kardiale Risikofaktoren],
      )
    ],
    urgency-step(
      rank: "Heute",
      time-word: "Nur wenn kein 112-Bild — gleichtags / unverzüglich Arzt",
      fill: rgb("#fff7ed"),
      bar: palette.warning,
      action: [*Keine PT.* Unklar, aber ohne ACS-Vollbild und ohne 112-Kriterien → unverzüglich ärztlich; bei Verschlechterung *sofort 112*.],
    ),
    urgency-step(
      rank: "PT",
      time-word: "Behandeln mit Sicherheitsnetz",
      fill: rgb("#f0fdfa"),
      bar: palette.primary,
      action: [Nur bei *gesicherter* MSK-Erklärung ohne Red Flags (± ärztliche Freigabe). Abbruchkriterien vorab.],
    ),
  )
  v(5pt)
  scope-bar[
    ACS-Ausschluss, EKG, Troponin, STEMI/NSTEMI-Zuordnung, Reperfusion — *nicht* HP/PT. Marburger Herz-Score *nicht* als Ausschluss.
  ]
}
