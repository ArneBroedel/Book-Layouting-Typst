// Form Lab Pass C (c-wave) — Schlaganfall · Color / Chrome / simple forms
// lab: schlaganfall-2026-08-c · pin: chapter-v-4-schlaganfall.md
// ALLOW: semantic color, bars, bands, cards, TIME stack · DENY: free-vision heroes, large SVG systems, rainbow

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Schlaganfall — Form Lab Pass C (c-wave)", author: "form-lab/schlaganfall-2026-08-c/C")
#set page(
  paper: "a4",
  margin: (inside: 17mm, outside: 14mm, top: 12mm, bottom: 13mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Schlaganfall · Form Lab c · Pass C (Color/Chrome)], [Verdacht → 112 · Stroke-Unit])
    line(length: 100%, stroke: 0.4pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [Form Lab · chrome extreme · wave c], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.8pt, fill: palette.text-body)
#set par(leading: 0.58em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 14.5pt, weight: "bold", fill: palette.primary-dark)
  block(below: 4pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10.5pt, weight: "bold", fill: palette.primary)
  block(below: 4pt, above: 7pt)[
    #it.body
    #v(1.5pt)
    #line(length: 22mm, stroke: 1.1pt + palette.primary)
  ]
}

#let ico(name, fill: palette.primary-dark, size: 8pt) = fa-icon(name, solid: true, fill: fill, size: size)

#let danger-band(body) = block(
  width: 100%,
  inset: 7pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger, rest: 0.45pt + palette.danger.lighten(40%)),
)[
  #set text(size: 8.2pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  #body
]

#let soft-card(title, body, fill: rgb("#f0fdfa"), bar: palette.primary) = block(
  width: 100%,
  inset: (left: 7pt, rest: 5pt),
  radius: 2pt,
  fill: fill,
  stroke: (left: 3pt + bar, rest: 0.4pt + bar.lighten(45%)),
)[
  #text(size: 7.8pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
  #v(1.5pt)
  #set text(size: 7.5pt)
  #body
]

#let time-tier(code, title, bar, fill, body) = block(
  width: 100%,
  inset: 0pt,
  radius: 2pt,
  clip: true,
  stroke: 0.45pt + bar.lighten(30%),
)[
  #grid(
    columns: (20mm, 1fr),
    block(width: 100%, fill: bar, inset: (x: 3pt, y: 7pt))[
      #align(center)[
        #text(size: 8.5pt, weight: "bold", fill: white, font: fonts.sans)[#code]
      ]
    ],
    block(width: 100%, fill: fill, inset: 6pt)[
      #text(size: 7.8pt, weight: "bold", fill: bar, font: fonts.sans)[#title]
      #v(1.5pt)
      #set text(size: 7.3pt)
      #body
    ],
  )
]

#let mimic-row(title, body) = block(
  width: 100%,
  inset: (left: 7pt, rest: 5pt),
  radius: 2pt,
  fill: rgb("#fffbeb"),
  stroke: (left: 3pt + palette.warning, rest: 0.35pt + palette.warning.lighten(40%)),
)[
  #text(size: 7.8pt, weight: "bold", fill: palette.warning.darken(15%), font: fonts.sans)[#title]
  #v(1.5pt)
  #set text(size: 7.4pt)
  #body
]

#let fast-chip(letter, name, cue, accent: palette.primary-dark) = block(
  width: 100%,
  inset: 5pt,
  radius: 2pt,
  fill: rgb("#f0fdfa"),
  stroke: (top: 2.5pt + accent, rest: 0.4pt + palette.border),
)[
  #text(size: 16pt, weight: "bold", fill: accent, font: fonts.sans)[#letter]
  #h(3pt)
  #text(size: 8pt, weight: "bold", fill: accent, font: fonts.sans)[#name]
  #v(2pt)
  #text(size: 7.2pt)[#cue]
]

// ── Title ─────────────────────────────────────────────────────
= Schlaganfall und TIA — plötzliche Ausfälle, enges Zeitfenster

#text(size: 8pt, fill: palette.text-muted, font: fonts.sans)[
  Pass C: Color / Chrome · TIME-Stapel · Mimic-Reihen · ohne free-vision
]

#v(3pt)
#danger-band[Jeder plausible Verdacht → *sofort 112* und Stroke-Unit-Pfad. Kein MSK-Abwarten, keine HWS-Manipulation, kein „erstmal mobilisieren“.]

#v(3pt)
== Big Picture

#grid(
  columns: (1.15fr, 1fr),
  column-gutter: 8pt,
  [
    #set text(size: 8pt)
    *Schlaganfall:* plötzlicher Ausfall von Gehirnfunktionen durch Ischämie (ca. 80–85 %) oder Blutung (ca. 15–20 %). *TIA:* flüchtiges fokal-neurologisches Defizit — bis zum Ausschluss *Notfall*. Keine PT-Arbeitsdiagnose im Akutverdacht. Gefahr: Fehlzuordnung als HWS-Blockade, periphere Fazialis, Migräne-Aura; Verlust des Lysefensters (< 4,5 h nach *Last seen normal*).
  ],
  soft-card(
    "Merke · Direktzugang",
    [FAST ≥ 1 mit plötzlichem Beginn → Notruf. TIA auch remittiert = Notfall. *Last seen normal* dokumentieren und übergeben.],
    fill: rgb("#fef2f2"),
    bar: palette.danger,
  ),
)

#v(3pt)
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 5pt,
  soft-card("112", [Verdacht → Notruf. Sitzung beenden. Patient sichern.], fill: rgb("#fef2f2"), bar: palette.danger),
  soft-card("FAST", [Face · Arm · Speech · Time. ≥ 1 positiv = Verdacht.], fill: rgb("#f0fdfa"), bar: palette.primary),
  soft-card("Last seen", [Zuletzt beschwerdefrei. Uhr für Lysefenster.], fill: rgb("#fffbeb"), bar: palette.warning),
  soft-card("Keine HWS", [Keine Manipulation / Provokation bei Verdacht.], fill: rgb("#f8fafc"), bar: palette.primary-dark),
)

#v(5pt)
== 1. Wann ist daran zu denken?

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  soft-card("WER · Risiken", [Hypertonie, Vorhofflimmern, Diabetes, Rauchen, Atherosklerose — im Erstkontakt oft *nicht* bekannt; Fehlen schließt Risiko nicht aus.]),
  soft-card("WOHER · Kontext", [Frühere TIA/Schlaganfall; kardiovaskuläre Vorerkrankungen. Jedes plötzlich aufgetretene fokal-neurologische Defizit = Notfallpfad.], fill: rgb("#eff6ff"), bar: palette.info),
  soft-card("WANN · Zeit", [*Apoplektiform* — Sekunden bis Minuten. Entscheidende Angabe: *Last seen normal* (zuletzt völlig beschwerdefrei).], fill: rgb("#fffbeb"), bar: palette.warning),
)

== 2. Entstehung (kurz)

#soft-card(
  "Mechanismus → Handlung",
  [Verschluss oder Blutung → Unterbrechung der regionalen Hirnperfusion → Penumbra in Minuten bedroht. Verzögerte Triage vernichtet Thrombolyse-/Thrombektomie-Fenster. *Direktzugang:* Verdacht → Notruf; keine Mobilisation, keine HWS-Tests, kein Abwarten.],
  fill: rgb("#f8fafc"),
  bar: palette.primary-dark,
)

== 3. Klinische Hinweise · FAST / BE-FAST

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 5pt,
  fast-chip("F", "Face", [Mundwinkel asymmetrisch? Hängende Gesichtshälfte?]),
  fast-chip("A", "Arm", [Armhalteversuch: sinkt ein Arm ab?]),
  fast-chip("S", "Speech", [Sprache undeutlich? Wortfindung gestört?]),
  fast-chip("T", "Time", [≥ 1 positiv → *sofort 112*. Uhr läuft.], accent: palette.danger),
)

#v(3pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  soft-card("BE-FAST-Erweiterung", [Balance + Eyes für posterioren Kreislauf (Schwindel, Ataxie, Sehstörung). FAST allein unempfindlich dort — ersetzt *nicht* die 112-Logik.], fill: rgb("#f5f3ff"), bar: rgb("#7c3aed")),
  soft-card("Verlauf", [Perakut (Sekunden–Minuten). Auch *bereits remittierte* flüchtige Symptome = TIA-Verdacht bis Ausschluss. Remission entwarnt *nicht*.], fill: rgb("#fef2f2"), bar: palette.danger),
)

#pagebreak(weak: true)
== 4. Mimics · trügerische Erklärungen

#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  row-gutter: 5pt,
  mimic-row("„Periphere Fazialis / Bell“", [Ohne Stirn-Check zentrale Parese missdeutbar. Zentral: Stirn oft erhalten + Begleitdefizite (Arm, Sprache) → Schlaganfallpfad.]),
  mimic-row("„HWS-Blockade / Schwindel vom Nacken“", [Schwindel plus fokales Defizit oder akute Ataxie = zentralverdächtig. *Keine* Mobilisation vor Ausschluss.]),
  mimic-row("„Migräne-Aura“", [Aura-ähnliche flüchtige Symptome ohne sichere Migräne-Anamnese und ohne Zeitfenster-Bewusstsein können TIA/Infarkt maskieren.]),
  mimic-row("„Schulter-Arm / Radikulopathie“", [Einseitige Armschwäche apoplektiform + zentrale Begleitzeichen = Hemiparese bis Beweis des Gegenteils — nicht „erstmal mobilisieren“.]),
)

#v(4pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  soft-card("Erhärtet den Verdacht", [FAST-positiv plötzlich; Hemiparese/-hypästhesie, Aphasie, Hemianopsie; Schwindel *plus* fokal; TIA-ähnlich in den letzten 48 h.], fill: rgb("#fef2f2"), bar: palette.danger),
  soft-card("Nicht übersehen", [Posterior-Infarkte (Schwindel, Ataxie, Sehstörung); Hypoglykämie als Mimic *und* Gefahr; Stirnrunzeln: zentral vs. peripher.], fill: rgb("#eff6ff"), bar: palette.info),
)

== 5. Handeln · TIME-Stapel

#time-tier(
  "112",
  "Sofort · Stroke-Unit-Pfad",
  palette.danger,
  rgb("#fef2f2"),
  [FAST-positiv plötzlich · halbseitige Sensibilitäts-/Sehstörung · Schwindel + fokal · TIA-ähnlich (auch remittiert, bes. 48 h). Sitzung beenden; Patient sichern; keine weiteren Tests; *112*. Remission entwarnt *nicht*.],
)
#v(3pt)
#time-tier(
  "NA",
  "Gleichtags / Notaufnahme (ohne 112-Kriterien)",
  palette.warning,
  rgb("#fffbeb"),
  [Nur *ohne* akutes fokal-neurologisches Bild und *ohne* 112-Kriterien, aber unklare langsam progrediente Neuro-Symptome. PT aussetzen bis Klärung. Bei Verschlechterung → *sofort 112*.],
)
#v(3pt)
#time-tier(
  "PT",
  "Behandeln mit Sicherheitsnetz",
  palette.success,
  rgb("#f0fdf4"),
  [Nur *gesicherte* MSK-Ursache, ohne Red Flags — bekannte TIA/Infarkt-Historie erst nach Freigabe aus der Akutphase. Vigilanz; Abbruch bei neuen fokal-neurologischen Zeichen.],
)

#v(4pt)
#danger-band[
  *Grenze:* Keine HWS-Manipulation, keine Provokationstests, kein Abwarten bei ungeklärtem fokal-neurologischem Defizit. ABCD² nur informativ. *Last seen normal* + Lysefenster (< 4,5 h) übergeben.
]

== 6. Fall zur Selbstprüfung

#block(
  width: 100%,
  inset: 7pt,
  radius: 2pt,
  fill: rgb("#f8fafc"),
  stroke: 0.45pt + palette.border,
)[
  #text(size: 7.8pt, weight: "bold", font: fonts.sans, fill: palette.primary-dark)[Situation]
  #v(2pt)
  #text(size: 7.6pt)[67-jährige Patientin: „steife HWS und Schwindel“ nach dem Aufstehen. Vor ~40 min linke Hand „weg“ und undeutliche Sprache — beides fast wieder weg. Hypertonie. Wunsch: HWS-Mobilisation.]
]

#v(3pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  soft-card("Vordergrund", [Flüchtige Hand/Sprache = TIA-Verdacht. Remission entwarnt *nicht*.], fill: rgb("#fef2f2"), bar: palette.danger),
  soft-card("Kontraindiziert", [HWS-Mobilisation, Provokationstests, abwartendes Probebehandeln.], fill: rgb("#fffbeb"), bar: palette.warning),
  soft-card("Nächster Schritt", [Sitzung beenden → *sofort 112* / Stroke-Unit. Last seen normal übergeben.], fill: rgb("#f0fdfa"), bar: palette.primary),
)

#v(5pt)
#align(center)[
  #text(size: 7.2pt, fill: palette.text-muted, font: fonts.sans)[
    Parent-System V-4 · FAST ≥ 1 → 112 · TIA = Notfall · keine HWS-Manipulation bei Verdacht
  ]
]
