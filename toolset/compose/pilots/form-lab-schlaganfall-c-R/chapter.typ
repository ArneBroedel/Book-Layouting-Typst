// Form Lab Pass R (c-wave) — Schlaganfall · many small raster Kacheln
// lab: schlaganfall-2026-08-c · pin: chapter-v-4-schlaganfall.md
// ALLOW: many small rasters with Semantic Read PASS · DENY: mega free-vision, FAIL mounts, "Atom T" captions

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Schlaganfall — Form Lab Pass R (c-wave)", author: "form-lab/schlaganfall-2026-08-c/R")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Schlaganfall · Form Lab c · Pass R (Raster)], [Kacheln · Semantic Read PASS only])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [Form Lab · raster · wave c], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.4pt)
#set par(leading: 0.55em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 13.5pt, weight: "bold", fill: palette.primary-dark)
  block(below: 3pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 9.5pt, weight: "bold", fill: palette.primary)
  block(below: 3pt, above: 6pt)[
    #it.body
    #v(1pt)
    #line(length: 18mm, stroke: 1pt + palette.primary)
  ]
}

#let asset-root = "/domains/medical/assets/form-lab/schlaganfall-2026-08-c/R/"

#let kachel(file, cap, w: 100%) = block(
  width: 100%,
  inset: 3pt,
  radius: 2pt,
  stroke: 0.4pt + palette.border,
  fill: white,
)[
  #align(center)[
    #image(asset-root + file, width: w)
  ]
  #v(2pt)
  #align(center)[
    #set text(size: 6.2pt, fill: palette.text-muted, font: fonts.sans)
    #cap
  ]
]

#let soft(title, body, bar: palette.primary, fill: rgb("#f0fdfa")) = block(
  width: 100%,
  inset: (left: 6pt, rest: 4pt),
  radius: 2pt,
  fill: fill,
  stroke: (left: 3pt + bar, rest: 0.35pt + bar.lighten(45%)),
)[
  #text(size: 7.4pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
  #v(1pt)
  #set text(size: 7.2pt)
  #body
]

// ── Chapter ───────────────────────────────────────────────────
= Schlaganfall und TIA — Raster-Kacheln

#text(size: 7.8pt, fill: palette.text-muted, font: fonts.sans)[
  Pass R: viele *kleine* Foto-Kacheln · nur Semantic-Read-PASS · Claims im Typst · Captions = Kachel/Gestalt
]

#v(2pt)
#block(
  width: 100%,
  inset: 5pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger),
)[
  #set text(size: 7.8pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr: ]
  Verdacht → *112* / Stroke-Unit. Kein MSK-Abwarten · keine HWS-Manipulation · TIA auch remittiert = Notfall.
]

== FAST-Erkennung (Raster · PASS)

#grid(
  columns: (1fr, 1fr, 0.85fr),
  column-gutter: 5pt,
  kachel("kachel-face-droop.jpg", [Face · einseitiger Mundwinkel-Hang], w: 100%),
  kachel("kachel-arm-drift.jpg", [Arm · Drift / Pronation im Halteversuch], w: 100%),
  soft(
    "Time · Last seen normal",
    [Dokumentieren: *Last seen normal*. Lysefenster typ. \< 4,5 h. Keine Test-Verzögerung. (Generic-Uhr-Raster demoted: caption-abhängig)],
    bar: palette.danger,
    fill: rgb("#fef2f2"),
  ),
)

#v(3pt)
#soft("Speech · Residual (kein FAIL-Mount)", [Statische Foto-Kachel für *Speech* nicht PASS. Speech-Job: Pass-V-Vektor + Typ. Kandidat archiviert als kachel-speech-candidate.jpg.], bar: palette.warning, fill: rgb("#fffbeb"))

== Handlung · Mimics · Transfer

#grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  soft("112 · Sofort", [FAST ≥ 1 plötzlich; Schwindel + fokal; TIA auch remittiert → Sitzung beenden, Patient sichern, *112*, Stroke-Unit.], bar: palette.danger, fill: rgb("#fef2f2")),
  soft("Grenze · keine HWS", [Keine HWS-Manipulation / Provokationstests bei Verdacht. ABCD² nur informativ.], bar: palette.primary-dark, fill: rgb("#f8fafc")),
)

#v(3pt)
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  soft("Fazialis", [Stirn-Check: zentral oft Stirn erhalten + Begleitdefizite.], bar: palette.warning, fill: rgb("#fffbeb")),
  soft("HWS-Schwindel", [Schwindel + fokal/Ataxie → zentral zuerst; keine Mobilisation.], bar: palette.warning, fill: rgb("#fffbeb")),
  soft("Migräne-Aura", [Unsicherheit = Notfallpfad; keine Selbst-Entwarnung.], bar: palette.warning, fill: rgb("#fffbeb")),
  soft("Schulter-Arm", [Apoplektiform + fokal = Hemiparese bis Ausschluss.], bar: palette.warning, fill: rgb("#fffbeb")),
)

== Mini-Fall

#grid(
  columns: (0.34fr, 1fr),
  column-gutter: 7pt,
  kachel("kachel-face-droop.jpg", [Gestalt-Anker Face], w: 100%),
  [
    #set text(size: 7.8pt)
    *67 J.* · „steife HWS + Schwindel“ · vor ~40 min linke Hand „weg“ + undeutliche Sprache — fast remittiert · Hypertonie · wünscht HWS-Mobilisation. \
    *Vordergrund:* TIA-Verdacht (Remission entwarnt nicht). *Kontraindiziert:* HWS-Manipulation. *Schritt:* *112* / Stroke-Unit; Last seen normal übergeben.
  ],
)

#v(4pt)
#align(center)[
  #text(size: 6.8pt, fill: palette.text-muted, font: fonts.sans)[
    Assets: domains/medical/assets/form-lab/schlaganfall-2026-08-c/R/ · Speech FAIL demoted · Vektor-Speech → Pass V
  ]
]
