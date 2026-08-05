// Form Lab Pass T (c-wave) — Schlaganfall · Typography + Icons only
// lab: schlaganfall-2026-08-c · pin: chapter-v-4-schlaganfall.md (read-only)
// ALLOW: type hierarchy, lists/tables, simple 1-color icons · DENY: panel walls, TIME slabs, free-vision, rich SVG

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Schlaganfall — Form Lab Pass T (c-wave)", author: "form-lab/schlaganfall-2026-08-c/T")
#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 13mm, bottom: 14mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(
      columns: (1fr, auto),
      [Schlaganfall · Form Lab c · Pass T (Type+Icon)],
      [Verdacht → 112 · Stroke-Unit],
    )
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [Form Lab · medium extreme · wave c], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 9pt, fill: palette.text-body)
#set par(leading: 0.62em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 15pt, weight: "bold", fill: palette.primary-dark)
  block(below: 4pt, above: 0pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10.5pt, weight: "bold", fill: palette.primary)
  block(below: 4pt, above: 8pt)[
    #it.body
    #v(1.5pt)
    #line(length: 26mm, stroke: 1.05pt + palette.primary)
  ]
}
#show heading.where(level: 3): it => {
  set text(font: fonts.sans, size: 9pt, weight: "bold", fill: palette.primary-dark)
  block(below: 2pt, above: 6pt)[#it.body]
}

#let ico(name) = fa-icon(name, solid: true, fill: palette.primary-dark, size: 8.5pt)
#let ico-d(name) = fa-icon(name, solid: true, fill: palette.danger, size: 9.5pt)

#let mark(name, label) = {
  box(baseline: 15%)[#ico(name)]
  h(3pt)
  text(size: 8pt, weight: "bold", fill: palette.primary-dark, font: fonts.sans)[#label]
}

#let danger-line(body) = {
  block(width: 100%, above: 2pt, below: 8pt)[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 8pt,
      align(horizon)[#ico-d("triangle-exclamation")],
      [
        #set text(size: 9pt)
        #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang. ]
        #body
      ],
    )
    #v(3pt)
    #line(length: 100%, stroke: 0.95pt + palette.danger)
  ]
}

#let row-icon(name, title, body) = grid(
  columns: (14pt, 1fr),
  column-gutter: 6pt,
  align(top)[#box(baseline: 0%)[#ico(name)]],
  [
    #text(weight: "bold", font: fonts.sans, size: 8.5pt, fill: palette.primary-dark)[#title]
    #v(1pt)
    #set text(size: 8.5pt)
    #body
  ],
)

// ── Title ─────────────────────────────────────────────────────
= Schlaganfall und TIA — plötzliche Ausfälle, enges Zeitfenster

#text(size: 9pt, fill: palette.text-muted, font: fonts.sans)[
  Wenn plötzliche Schwäche, Sprache oder Schwindel den Hirninfarkt maskieren · Pass T: Typografie + Icons
]

#v(3pt)
#danger-line[Jeder plausible Verdacht → *sofort 112* und Stroke-Unit-Pfad. Kein MSK-Abwarten, keine HWS-Manipulation, kein „erstmal mobilisieren“.]

// ── Big Picture ───────────────────────────────────────────────
== Big Picture

Ein *Schlaganfall* ist ein plötzlich auftretender Ausfall von Gehirnfunktionen durch Gefäßverschluss (Ischämie, ca. 80–85 %) oder Hirnblutung (ca. 15–20 %). Eine *TIA* ist ein flüchtiges fokal-neurologisches Defizit, das sich meist rasch zurückbildet – und bis zum ärztlichen Ausschluss als *Notfall* gilt. Im Direktzugang sind Schlaganfall und TIA *keine* physiotherapeutischen Arbeitsdiagnosen. Gefahr: Fehlzuordnung als „HWS-Blockade“, periphere Fazialisparese oder Migräne-Aura — und Verlust des Lysefensters (< 4,5 h nach „Last seen normal“).

#v(3pt)
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 8pt,
  [
    #mark("phone", "112")
    #v(1pt)
    #text(size: 8pt)[Verdacht → Notruf. Sitzung beenden. Patient sichern.]
  ],
  [
    #mark("user", "FAST")
    #v(1pt)
    #text(size: 8pt)[Face · Arm · Speech · Time. ≥ 1 positiv = Verdacht.]
  ],
  [
    #mark("clock", "Last seen")
    #v(1pt)
    #text(size: 8pt)[Zuletzt völlig beschwerdefrei. Uhr für Lysefenster.]
  ],
  [
    #mark("ban", "Keine HWS")
    #v(1pt)
    #text(size: 8pt)[Keine Manipulation / Provokation bei Verdacht.]
  ],
)

// ── 1 Enabling ────────────────────────────────────────────────
== 1. Wann ist daran zu denken?

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 14pt,
  [
    #text(weight: "bold", font: fonts.sans, size: 8.5pt, fill: palette.primary-dark)[Risiken / Auslöser]
    #v(1pt)
    #text(size: 7.5pt, weight: "bold", font: fonts.sans, fill: palette.primary)[WER]
    #v(2pt)
    #set text(size: 8.5pt)
    Arterielle Hypertonie, Vorhofflimmern, Diabetes, Rauchen, Atherosklerose. Im Direktzugang oft *initial nicht* bekannt — Fehlen schließt Risiko nicht aus.
  ],
  [
    #text(weight: "bold", font: fonts.sans, size: 8.5pt, fill: palette.primary-dark)[Kontext]
    #v(1pt)
    #text(size: 7.5pt, weight: "bold", font: fonts.sans, fill: palette.primary)[WOHER]
    #v(2pt)
    #set text(size: 8.5pt)
    Frühere TIA oder Schlaganfall; kardiovaskuläre Vorerkrankungen. Jedes plötzlich aufgetretene fokal-neurologische Defizit ist Notfallpfad.
  ],
  [
    #text(weight: "bold", font: fonts.sans, size: 8.5pt, fill: palette.primary-dark)[Zeit / Trigger]
    #v(1pt)
    #text(size: 7.5pt, weight: "bold", font: fonts.sans, fill: palette.primary)[WANN]
    #v(2pt)
    #set text(size: 8.5pt)
    *Apoplektiform* — Sekunden bis Minuten. Entscheidende Zeitangabe: *„Last seen normal“* (zuletzt völlig beschwerdefrei).
  ],
)

// ── 2 Mechanism ───────────────────────────────────────────────
== 2. Entstehung (kurz)

Arterieller Verschluss oder Blutung unterbricht die Versorgung eines Hirnareals. In der ischämischen Penumbra sterben Nervenzellen, wenn die Reperfusion ausbleibt; das Gehirn toleriert Sauerstoffmangel nur im Minutenbereich. Folge: Hemiparese, Hemihypästhesie, Aphasie/Dysarthrie, Hemianopsie, Ataxie, Schwindel — je nach Gefäßterritorium.

*Direktzugang:* Verzögerte Triage vernichtet das Zeitfenster für Thrombolyse und ggf. Thrombektomie. Deshalb: Verdacht → Notruf, *keine* diagnostische Verzögerung durch Mobilisation, HWS-Tests oder „erstmal abwarten“.

// ── 3 Clinical cues ───────────────────────────────────────────
== 3. Klinische Hinweise

#table(
  columns: (28mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border),
  inset: (x: 4pt, y: 5pt),
  align: (left, left),
  table.header(
    text(weight: "bold", font: fonts.sans, size: 8pt)[Domäne],
    text(weight: "bold", font: fonts.sans, size: 8pt)[Erwartbare Merkmale],
  ),
  [*Anamnese*], [Plötzliche halbseitige Schwäche oder Taubheit; hängender Mundwinkel; Sprach-/Sprechstörung; Sehstörung; plötzlicher Schwindel mit fokal-neurologischem Begleitbefund; exakter Zeitpunkt *Last seen normal*],
  [*Beobachtung*], [Asymmetrie im Gesicht, hängende Extremität, unklare Sprache, Unsicherheit beim Stehen/Gehen, akute Verwirrtheit im fokal-neurologischen Kontext],
  [*Untersuchung*], [FAST (≥ 1 Kriterium positiv → Schlaganfallverdacht); Balance und Augen grob (BE-FAST); *keine* Provokationstests, die die Triage verzögern],
  [*Verlauf*], [Perakut (Sekunden–Minuten); auch *bereits remittierte* flüchtige Symptome = TIA-Verdacht bis zum Ausschluss],
)

#v(4pt)
=== FAST / BE-FAST (Screening, nicht Ausschluss)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 8pt,
  [
    #text(weight: "bold", size: 13pt, fill: palette.primary-dark, font: fonts.sans)[F]
    #h(2pt)
    #text(weight: "bold", size: 8pt, font: fonts.sans)[Face]
    #v(1pt)
    #text(size: 7.8pt)[Mundwinkel asymmetrisch? Hängende Gesichtshälfte?]
  ],
  [
    #text(weight: "bold", size: 13pt, fill: palette.primary-dark, font: fonts.sans)[A]
    #h(2pt)
    #text(weight: "bold", size: 8pt, font: fonts.sans)[Arm]
    #v(1pt)
    #text(size: 7.8pt)[Armhalteversuch: sinkt ein Arm ab?]
  ],
  [
    #text(weight: "bold", size: 13pt, fill: palette.primary-dark, font: fonts.sans)[S]
    #h(2pt)
    #text(weight: "bold", size: 8pt, font: fonts.sans)[Speech]
    #v(1pt)
    #text(size: 7.8pt)[Sprache undeutlich? Wortfindung gestört?]
  ],
  [
    #text(weight: "bold", size: 13pt, fill: palette.danger, font: fonts.sans)[T]
    #h(2pt)
    #text(weight: "bold", size: 8pt, font: fonts.sans)[Time]
    #v(1pt)
    #text(size: 7.8pt)[≥ 1 positiv → *sofort 112*. Uhr läuft.]
  ],
)

#v(3pt)
#text(size: 8pt)[
  *BE-FAST:* Balance und Eyes ergänzen FAST für den posterioren Kreislauf (Schwindel, Ataxie, Sehstörung). FAST allein ist dort unempfindlich — BE-FAST ersetzt die *112-Logik* nicht.
]

// ── 4 Mimic / DDx ─────────────────────────────────────────────
#pagebreak(weak: true)
== 4. Verdacht, Abgrenzung, Warnsignale

#row-icon("check", "Erhärtet den Verdacht", [
  FAST-positiv mit plötzlichem Beginn; plötzliche Hemiparese/-hypästhesie, Aphasie, Hemianopsie; plötzlicher Schwindel *plus* fokales Defizit; flüchtige TIA-ähnliche Symptome in den letzten 48 h.
])
#v(3pt)
#row-icon("xmark", "Passt eher nicht", [
  Klar segmentale sensible Ausfälle einer typischen Radikulopathie *ohne* zentrale Begleitzeichen und ohne apoplektiformen Beginn — *aber* bei Unsicherheit immer die gefährliche Diagnose priorisieren.
])
#v(3pt)
#row-icon("eye", "Nicht übersehen", [
  Posteriore Kreislauf-Infarkte (Schwindel, Ataxie, Sehstörung); Hypoglykämie als lebensbedrohlicher Mimic; zentrale vs. periphere Fazialisparese (Stirnrunzeln prüfen).
])

#v(4pt)
=== Trügerische Erklärungen

#set enum(numbering: "1.", tight: true)
#set text(size: 8.2pt)
1. *„Periphere Fazialisparese / Bell“* — Ohne Stirn-Check zentrale Parese missdeutbar. Zentral: Stirn oft erhalten + Begleitdefizite → Schlaganfallpfad.
2. *„HWS-Blockade / Schwindel vom Nacken“* — Schwindel plus fokales Defizit/Ataxie = zentralverdächtig — *keine* Mobilisation vor Ausschluss.
3. *„Migräne-Aura“* — Aura-ähnliche flüchtige Symptome ohne sichere Migräne-Anamnese können TIA/Infarkt maskieren.
4. *„Schulter-Arm / Radikulopathie“* — Einseitige Armschwäche apoplektiform + zentrale Begleitzeichen = Hemiparese bis Beweis des Gegenteils.

#v(3pt)
#text(weight: "bold", font: fonts.sans, size: 8.5pt)[DDx-Minimal]
#v(2pt)
#table(
  columns: (36mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: (x: 4pt, y: 4pt),
  align: (left, left),
  table.header(
    text(weight: "bold", size: 7.5pt, font: fonts.sans)[Eher …],
    text(weight: "bold", size: 7.5pt, font: fonts.sans)[Diskriminierende Unterschiede],
  ),
  [*Ischämischer Infarkt*], text(size: 8pt)[Apoplektiform, fokal (Hemiparese, Aphasie, Hemianopsie) → *112*],
  [*Hirnblutung*], text(size: 8pt)[Plötzlich fokal, ggf. Kopfschmerz — im Erstkontakt nicht von Ischämie unterscheidbar → *112*],
  [*TIA*], text(size: 8pt)[Flüchtig, oft < 1 h, bereits remittiert möglich — Remission entwarnt *nicht*],
  [*Periphere Fazialis*], text(size: 8pt)[Stirn *mit* betroffen, oft isoliert — zentral: Stirn oft erhalten + Begleitdefizite],
  [*Hypoglykämie*], text(size: 8pt)[Verwirrtheit, fokal anmutend — BZ prüfen *ohne* Notruf-Verzögerung],
)

// ── 5 TIME / Handeln ──────────────────────────────────────────
== 5. Handeln und Dringlichkeit

#table(
  columns: (24mm, 1fr, 1fr),
  stroke: 0.4pt + palette.border,
  inset: (x: 4pt, y: 4pt),
  align: (left, left, left),
  table.header(
    text(weight: "bold", size: 7.5pt, font: fonts.sans)[Stufe],
    text(weight: "bold", size: 7.5pt, font: fonts.sans)[Situation],
    text(weight: "bold", size: 7.5pt, font: fonts.sans)[Handlung],
  ),
  text(weight: "bold", fill: palette.danger, size: 8pt)[112],
  text(size: 7.6pt)[FAST-positiv plötzlich; halbseitige Sensibilitäts-/Sehstörung; Schwindel *plus* fokal; TIA-ähnlich (auch remittiert), bes. letzte 48 h],
  text(size: 7.6pt)[Sofort *112*. Sitzung beenden. Patient sichern. Keine weiteren Tests. Stroke-Unit. Remission entwarnt *nicht*],
  text(weight: "bold", size: 8pt)[NA / gleichtags],
  text(size: 7.6pt)[Nur *ohne* akutes fokal-neurologisches Bild und *ohne* 112-Kriterien, aber unklare langsam progrediente Neuro-Symptome],
  text(size: 7.6pt)[PT aussetzen bis Klärung. Bei Verschlechterung / neuen fokal-neurologischen Zeichen *sofort 112*],
  text(weight: "bold", size: 8pt)[Behandeln],
  text(size: 7.6pt)[Nur *gesicherte* MSK-Ursache, ohne Red Flags — bekannte TIA/Infarkt-Historie erst nach Freigabe aus der Akutphase],
  text(size: 7.6pt)[PT möglich; Vigilanz; Abbruchkriterien vorab],
)

#v(3pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 10pt,
  grid(
    columns: (auto, 1fr),
    column-gutter: 6pt,
    align(top)[#ico-d("hand")],
    [
      #text(weight: "bold", fill: palette.danger, size: 8pt)[Grenze / Kontraindikationen]
      #v(1pt)
      #set text(size: 7.8pt)
      Keine HWS-Manipulation, keine Provokationstests, kein Abwarten bei ungeklärtem fokal-neurologischem Defizit. ABCD² nur informativ.
    ],
  ),
  grid(
    columns: (auto, 1fr),
    column-gutter: 6pt,
    align(top)[#ico("clock")],
    [
      #text(weight: "bold", font: fonts.sans, size: 8pt)[Last seen normal + Lysefenster]
      #v(1pt)
      #set text(size: 7.8pt)
      Thrombolyse typ. < 4,5 h nach *Last seen normal* — Uhr ab letztem beschwerdefreien Zeitpunkt, nicht ab Praxis-Eintreffen.
    ],
  ),
)

// ── 6 Mini-case ───────────────────────────────────────────────
== 6. Fall zur Selbstprüfung

#text(weight: "bold", font: fonts.sans, size: 8.5pt)[Situation]
#h(4pt)
#text(size: 8pt)[67-jährige Patientin: „steife HWS und Schwindel“ nach dem Aufstehen. Vor ~40 min linke Hand „weg“ und undeutliche Sprache — beides fast wieder weg. Hypertonie. Wunsch: HWS-Mobilisation.]

#v(3pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 8pt,
  [
    #mark("circle-exclamation", "Vordergrund")
    #v(1pt)
    #text(size: 8pt)[Flüchtige Hand/Sprache = TIA-Verdacht. Remission entwarnt *nicht*.]
  ],
  [
    #mark("ban", "Kontraindiziert")
    #v(1pt)
    #text(size: 8pt)[HWS-Mobilisation, Provokationstests, abwartendes Probebehandeln.]
  ],
  [
    #mark("phone", "Nächster Schritt")
    #v(1pt)
    #text(size: 8pt)[Sitzung beenden → *sofort 112* / Stroke-Unit. Last seen normal übergeben.]
  ],
)

#v(6pt)
#align(center)[
  #text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)[
    Parent-System V-4 · FAST ≥ 1 → 112 · TIA = Notfall · keine HWS-Manipulation bei Verdacht
  ]
]
