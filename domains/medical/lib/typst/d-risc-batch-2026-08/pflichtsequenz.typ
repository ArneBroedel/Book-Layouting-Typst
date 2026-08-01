// II-1 D-RISC batch 2026-08 — Pflichtsequenz R → I → S → C
// Pure D-RISC (Akronym order). NOT the old R→S→I explore module.
// Framework OS teal chrome — NOT emergency solid-red wall.
// layout: "vertical" (default) | density: "compact" (default) | "airy"

#import "/packages/bookkit/theme.typ": palette
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")
#import "/domains/medical/lib/typst/explore-2026-08/chrome.typ": (
  chrome-band,
  chrome-module-title,
)

#let _badge(n, fill: palette.primary, fg: white, size: 1.2em, tsize: 7.5pt) = box(
  width: size,
  height: size,
  radius: 100%,
  fill: fill,
  baseline: 15%,
  align(center + horizon)[
    #set text(fill: fg, weight: "bold", size: tsize)
    #n
  ],
)

// ── Compact step — unified chrome (quiet|flag) ─────────────────

#let _os-step-compact(
  num,
  title,
  when-body,
  then-body,
  icon: none,
  accent: palette.primary,
  level: "quiet",
) = chrome-band(
  [
    #grid(
      columns: (auto, 1fr) + if icon != none { (auto,) } else { () },
      column-gutter: 6pt,
      align: horizon,
      _badge(num, fill: accent, size: 1.15em, tsize: 7pt),
      text(
        weight: "bold",
        size: 8.5pt,
        fill: if level == "flag" { accent.darken(10%) } else { palette.primary-dark },
      )[#title],
      ..if icon != none {
        ({ set text(fill: accent, size: 9pt); icon },)
      } else { () },
    )
    #v(2pt)
    #set text(size: 7.3pt, fill: palette.text-body)
    #set par(leading: 0.32em)
    #grid(
      columns: (auto, 1fr),
      column-gutter: 5pt,
      row-gutter: 1.5pt,
      text(size: 6.8pt, fill: palette.text-muted, weight: "bold")[Wenn],
      when-body,
      text(size: 6.8pt, fill: accent.darken(10%), weight: "bold")[Dann],
      then-body,
    )
  ],
  accent: accent,
  level: level,
  inset: (x: 7pt, y: 4.5pt),
)

#let _os-step-airy(
  num,
  title,
  when-body,
  then-body,
  icon: none,
  accent: palette.primary,
  fill: none,
  solid-header: false,
) = {
  let card-fill = if fill != none { fill } else { accent.lighten(93%) }
  block(
    width: 100%,
    inset: 0pt,
    radius: 7pt,
    fill: card-fill,
    stroke: 0.85pt + accent.lighten(25%),
    breakable: false,
  )[
    #block(
      width: 100%,
      inset: (x: 10pt, y: 7pt),
      fill: if solid-header { accent } else { accent.lighten(88%) },
      radius: (top: 7pt, bottom: 0pt),
    )[
      #grid(
        columns: (auto, 1fr) + if icon != none { (auto,) } else { () },
        column-gutter: 8pt,
        align: horizon,
        _badge(num, fill: if solid-header { white.transparentize(70%) } else { accent }),
        text(
          weight: "bold",
          size: 9.5pt,
          fill: if solid-header { white } else { accent.darken(15%) },
        )[#title],
        ..if icon != none {
          ({
            set text(fill: if solid-header { white } else { accent }, size: 10pt)
            icon
          },)
        } else { () },
      )
    ]
    #block(width: 100%, inset: (x: 10pt, y: 7pt))[
      #set text(size: 8pt, fill: palette.text-body)
      #set par(leading: 0.36em)
      #grid(
        columns: (auto, 1fr),
        column-gutter: 6pt,
        row-gutter: 3pt,
        text(size: 7.5pt, fill: palette.text-muted, weight: "bold")[Wenn],
        when-body,
        text(size: 7.5pt, fill: accent.darken(10%), weight: "bold")[Dann],
        then-body,
      )
    ]
  ]
}

#let _arrow-down-airy(fill: palette.primary) = align(center)[
  #v(1.5pt)
  #text(size: 14pt, weight: "bold", fill: fill)[#fa-arrow-down()]
  #v(1.5pt)
]

// Binary rule — quiet OS chrome
#let _binary-banner(compact: true) = chrome-band(
  [
    #grid(
      columns: (auto, 1fr),
      column-gutter: 7pt,
      align: horizon,
      text(size: if compact { 11pt } else { 13pt }, fill: palette.primary-dark)[#fa-lock()],
      {
        set text(size: if compact { 7.5pt } else { 8.5pt }, fill: palette.text-body)
        text(weight: "bold", size: if compact { 8.5pt } else { 9.5pt }, fill: palette.primary-dark)[
          *Kein C ohne ausgesprochenes R + I + S.*
        ]
        if not compact {
          linebreak()
          text(size: 7.5pt, fill: palette.text-muted)[
            „RF positiv“ allein ist *kein* Plan. Reihenfolge = Akronym *R → I → S → C*.
          ]
        } else {
          h(4pt)
          text(size: 7pt, fill: palette.text-muted)[
            („RF positiv“ allein ≠ Plan · *R → I → S → C*)
          ]
        }
      },
    )
  ],
  accent: palette.primary-dark,
  level: "quiet",
  inset: if compact { (x: 8pt, y: 5pt) } else { 9pt },
)

// Asymmetry in RISC order: R (Default) · I (Burden) · S (Default)
#let _asymmetry-panel(compact: true) = block(
  width: 100%,
  inset: if compact { 6pt } else { 8pt },
  radius: 3pt,
  fill: palette.bg-subtle,
  stroke: 0.55pt + palette.border,
)[
  #set text(size: if compact { 7pt } else { 7.5pt }, fill: palette.text-muted)
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 6pt,
    [
      #text(weight: "bold", fill: palette.danger.darken(5%))[
        #fa-triangle-exclamation() R · Default-to-Danger
      ]
      #linebreak()
      Lage: Start bei *R4*, bis Befunde herabstufen
    ],
    [
      #text(weight: "bold", fill: palette.primary-dark)[
        #fa-scale-balanced() I · Burden-of-Proof
      ]
      #linebreak()
      Nutzen: Start bei *I1*, muss *belegt* werden
    ],
    [
      #text(weight: "bold", fill: palette.warning.darken(12%))[
        #fa-shield-halved() S · Default-to-Danger
      ]
      #linebreak()
      Maßnahme: Start bei *S4*, bis *diese* Technik sicher
    ],
  )
]

// ── Bodies: R → I → S → C → SN (Akronym order) ─────────────────

#let _vertical-body-compact(show-footer) = {
  _binary-banner(compact: true)
  v(4pt)
  grid(
    columns: 1fr,
    row-gutter: 3.5pt,
    _os-step-compact(
      "1", [*R zuerst*],
      [Abklärungsbedarf / Lebensgefahr-Cluster / schwere RF],
      [*Lage klären* — ggf. *C: Stop & 112 / ED*; I und „Nutzen“ nachrangig],
      icon: fa-heart-pulse(),
      accent: palette.danger,
      level: "flag",
    ),
    _os-step-compact(
      "2", [*I begründen*],
      [R erlaubt Handlungsspielraum],
      [Nutzen *belegen* (Muster, Ziel, Evidenzrahmen) — *nicht* unterstellen],
      icon: fa-user-doctor(),
      accent: palette.primary,
      level: "quiet",
    ),
    _os-step-compact(
      "3", [*S klären*],
      [geplante Maßnahme unsicher],
      [Maßnahme stoppen/ändern (*S4/S3*); ggf. nur PT-Lite (*S2*)],
      icon: fa-shield-halved(),
      accent: palette.primary,
      level: "quiet",
    ),
    _os-step-compact(
      "4", [*C benennen*],
      [R, I, S gesetzt],
      [*einen* konkreten Plan in einem Satz (`R… · I… · S… → C: …`)],
      icon: fa-clipboard-check(),
      accent: palette.primary-dark,
      level: "quiet",
    ),
    _os-step-compact(
      "5", [*Safety-Netting*],
      [Treat / Treat+Refer],
      [Was bei Verschlechterung? Frist Re-Evaluation (`→ II-2`, `→ II-3 geplant`)],
      icon: fa-arrows-rotate(),
      accent: palette.primary,
      level: "quiet",
    ),
  )
  v(4pt)
  _asymmetry-panel(compact: true)
  if show-footer {
    v(3pt)
    block(
      width: 100%,
      inset: (x: 5pt, y: 4pt),
      radius: 2pt,
      fill: palette.bg-subtle,
    )[
      #set text(size: 6.5pt, fill: palette.text-muted)
      *Scan-Pfad:* *R → I → S → C* → Safety-Netting · Flag-Detail `→ II-2` · Framework-OS (kein Notfall-Chrome).
    ]
  }
}

#let _vertical-body-airy(show-footer) = {
  _binary-banner(compact: false)
  v(7pt)
  _os-step-airy(
    "1", [*R zuerst*],
    [Abklärungsbedarf / Lebensgefahr-Cluster / schwere RF],
    [*Lage klären* — ggf. *C: Stop & 112 / ED*; I und „Nutzen“ nachrangig],
    icon: fa-heart-pulse(), accent: palette.danger, solid-header: true,
  )
  _arrow-down-airy(fill: palette.danger.lighten(20%))
  _os-step-airy(
    "2", [*I begründen*],
    [R erlaubt Handlungsspielraum],
    [Nutzen *belegen* (Muster, Ziel, Evidenzrahmen) — *nicht* unterstellen],
    icon: fa-user-doctor(), accent: palette.primary,
  )
  _arrow-down-airy()
  _os-step-airy(
    "3", [*S klären*],
    [geplante Maßnahme unsicher],
    [Maßnahme stoppen/ändern (*S4/S3*); ggf. nur PT-Lite (*S2*)],
    icon: fa-shield-halved(), accent: palette.primary,
  )
  _arrow-down-airy()
  _os-step-airy(
    "4", [*C benennen*],
    [R, I, S gesetzt],
    [*einen* konkreten Plan in einem Satz],
    icon: fa-clipboard-check(), accent: palette.primary-dark,
  )
  _arrow-down-airy(fill: palette.primary-dark)
  _os-step-airy(
    "5", [*Safety-Netting*],
    [Treat / Treat+Refer],
    [Was bei Verschlechterung? Frist Re-Evaluation (`→ II-2`, `→ II-3 geplant`)],
    icon: fa-arrows-rotate(), accent: palette.primary, fill: palette.bg-subtle,
  )
  v(8pt)
  _asymmetry-panel(compact: false)
  if show-footer {
    v(8pt)
    block(width: 100%, inset: 6pt, radius: 3pt, fill: palette.bg-subtle)[
      #set text(size: 7pt, fill: palette.text-muted)
      *Scan-Pfad:* R zuerst → I begründen → S klären → C benennen → Safety-Netting.
      Flag-Lexikon: `→ II-2`. Layout: *airy* (nicht Print-Default).
    ]
  }
}

/// Full II-1 Pflichtsequenz — pure D-RISC, Akronym order R → I → S → C.
/// - `layout: "vertical"` — portrait stack (default, A4 chapter body)
/// - `density: "compact"` — print-dense bands (default, book body)
/// - `density: "airy"` — large free-vision cards + fat arrows (NOT for print body)
#let pflichtsequenz-risc(
  title: [II-1  PFLICHTSEQUENZ · R → I → S → C],
  subtitle: [Gatekeeper-OS — Methodik, kein Notfall-Algorithmus],
  show-footer: true,
  layout: "vertical",
  density: "compact",
) = block(
  width: 100%,
  breakable: density == "compact" and layout == "vertical",
  inset: 0pt,
)[
  #if density == "compact" and layout == "vertical" {
    chrome-module-title(
      [#fa-list-check() #h(4pt) #title],
      subtitle: [#subtitle · kompakt · Chrome: quiet/flag · *RISC-Reihenfolge*],
    )
  } else {
    block(
      width: 100%,
      inset: (x: 10pt, y: 9pt),
      fill: palette.primary,
      radius: (top: 3pt, bottom: 0pt),
    )[
      #set text(fill: white, weight: "bold", size: 9.5pt)
      #align(center)[
        #fa-list-check() #h(4pt) #title
        #linebreak()
        #text(size: 7pt, weight: "regular", fill: white.transparentize(12%))[
          #subtitle
        ]
      ]
    ]
  }

  #block(
    width: 100%,
    inset: (x: if density == "compact" { 7pt } else { 10pt }, y: if density == "compact" { 6pt } else { 10pt }),
    stroke: 0.7pt + palette.border,
    radius: (top: 0pt, bottom: 3pt),
    fill: white,
  )[
    #set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)
    #set par(leading: 0.36em)
    #if density == "airy" {
      _vertical-body-airy(show-footer)
    } else {
      _vertical-body-compact(show-footer)
    }
  ]
]
