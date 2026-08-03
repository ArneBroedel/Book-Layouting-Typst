// Form Lab Pass T (d-wave) — Schlaganfall · Typography + Icons only
// lab: schlaganfall-2026-08-d · pin: chapter-v-4-schlaganfall.md (read-only)
// ALLOW: type hierarchy, lists/tables, simple 1-color icons
// DENY: panel walls, TIME color slabs, free-vision, rich multi-tone SVG

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Schlaganfall — Form Lab Pass T (d-wave)", author: "form-lab/schlaganfall-2026-08-d/T")
#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 14mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(
      columns: (1fr, auto),
      [Schlaganfall · Form Lab d · Pass T · Type + Icon],
      [Verdacht → 112],
    )
    line(length: 100%, stroke: 0.4pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(
      columns: (1fr, auto),
      [wave-d · medium extreme · lab-learning],
      counter(page).display("1"),
    )
  },
)
#show: setup-typography()
#set text(size: 9.2pt, fill: palette.text-body)
#set par(leading: 0.66em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 15.5pt, weight: "bold", fill: palette.primary-dark)
  block(below: 4pt, above: 0pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10.5pt, weight: "bold", fill: palette.primary)
  block(below: 4pt, above: 10pt)[
    #it.body
    #v(1.5pt)
    #line(length: 100%, stroke: 0.55pt + palette.border)
  ]
}
#show heading.where(level: 3): it => {
  set text(font: fonts.sans, size: 9pt, weight: "bold", fill: palette.primary-dark)
  block(below: 3pt, above: 7pt)[#it.body]
}

#let ico(name, fill: palette.primary-dark, size: 8.5pt) = fa-icon(
  name,
  solid: true,
  fill: fill,
  size: size,
)
#let ico-d(name) = ico(name, fill: palette.danger, size: 9.5pt)

// Hanging label row — d-wave type primitive
#let hang(label, body) = block(width: 100%, below: 5pt)[
  #grid(
    columns: (32mm, 1fr),
    column-gutter: 8pt,
    {
      set text(font: fonts.sans, size: 7.5pt, weight: "bold", fill: palette.primary-dark)
      upper(label)
    },
    {
      set text(size: 8.6pt)
      body
    },
  )
]

#let danger-lead(body) = block(width: 100%, below: 8pt)[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 7pt,
    align(horizon)[#ico-d("triangle-exclamation")],
    {
      set text(size: 9pt)
      text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang. ]
      body
    },
  )
  #v(2pt)
  #line(length: 100%, stroke: 1pt + palette.danger)
]

#let rank(n, title, body) = block(width: 100%, below: 5pt)[
  #grid(
    columns: (10mm, 1fr),
    column-gutter: 6pt,
    align(top)[
      #text(font: fonts.sans, size: 14pt, weight: "bold", fill: palette.primary-dark)[#n]
    ],
    [
      #text(font: fonts.sans, size: 9pt, weight: "bold", fill: palette.primary-dark)[#title]
      #v(1pt)
      #set text(size: 8.4pt)
      #body
    ],
  )
]

// ── Title ─────────────────────────────────────────────────────
= Schlaganfall und TIA

#text(size: 8.5pt, fill: palette.text-muted, font: fonts.sans)[
  Plötzliche Schwäche, Sprache oder Schwindel · Pass T (d): Typografie + wiederkehrende Icons
]

#v(4pt)
#danger-lead[
  Schlaganfall und TIA sind *keine* physiotherapeutischen Arbeitsdiagnosen im Akutverdacht: jeder plausible Verdacht verlangt sofortige medizinische Abklärung — in der Regel *112* und Stroke-Unit-Pfad.
]

// ── Big Picture ───────────────────────────────────────────────
== Big Picture

Ein *Schlaganfall* ist ein plötzlich auftretender Ausfall von Gehirnfunktionen durch Gefäßverschluss (Ischämie, ca. 80–85 %) oder Hirnblutung (ca. 15–20 %). Eine *TIA* ist ein flüchtiges fokal-neurologisches Defizit, das sich meist rasch zurückbildet — und bis zum ärztlichen Ausschluss als *Notfall* gilt.

Die eigentliche Gefahr ist die *Fehlzuordnung* als „HWS-Blockade“, periphere Fazialisparese oder Migräne-Aura — und der Verlust des engen Behandlungsfensters (Thrombolyse typischerweise < 4,5 h nach „Last seen normal“). Entscheidungsschwelle bewusst niedrig: Im Zweifel Notruf, statt abwarten oder mobilisieren.

#v(4pt)
#hang[Beginn][Apoplektiform — *Sekunden bis Minuten*, nicht schleichend über Tage.]
#hang[Zeitanker][*Last seen normal* — zuletzt völlig beschwerdefrei; Lysefenster < 4,5 h.]
#hang[Nicht entwarnen][Remission entwarnt *nicht* (TIA); FAST ≥ 1 mit plötzlichem Beginn → 112.]

// ── 1 Enabling ────────────────────────────────────────────────
== 1. Wann ist daran zu denken?

#hang[Wer / Risiken][
  Arterielle Hypertonie; Vorhofflimmern; Diabetes mellitus; Rauchen; Atherosklerose. Risikofaktoren im Direktzugang oft *initial nicht* bekannt — Fehlen schließt Risiko nicht aus.
]
#hang[Kontext][
  Frühere TIA oder Schlaganfall; kardiovaskuläre Vorerkrankungen.
]
#hang[Wann / Zeit][
  *Apoplektiform* — Sekunden bis Minuten. Entscheidende Zeitangabe: *Last seen normal*.
]

// ── 2 Mechanism ───────────────────────────────────────────────
== 2. Entstehung (kurz)

Verschluss oder Blutung unterbricht die Hirnperfusion. Minuten entscheiden über reversible vs. irreversible Schädigung. Folge: Hemiparese, Aphasie/Dysarthrie, Hemianopsie, Ataxie, Schwindel — je nach Territorium.

*Direktzugang:* Verdacht → Notruf. *Keine* Verzögerung durch Mobilisation, HWS-Tests oder „erstmal abwarten“.

// ── 3 Clinical cues ───────────────────────────────────────────
== 3. Klinische Hinweise

#table(
  columns: (26mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border),
  inset: (x: 3pt, y: 4.5pt),
  align: (left, left),
  table.header(
    text(weight: "bold", font: fonts.sans, size: 8pt)[Domäne],
    text(weight: "bold", font: fonts.sans, size: 8pt)[Erwartbare Merkmale],
  ),
  [*Anamnese*], [Plötzliche halbseitige Schwäche/Taubheit; hängender Mundwinkel; Sprach-/Sprechstörung; Sehstörung; plötzlicher Schwindel *mit* fokal-neurologischem Begleitbefund; exakter Zeitpunkt *Last seen normal*],
  [*Beobachtung*], [Gesichtsasymmetrie; hängende Extremität; unklare Sprache; Unsicherheit beim Stehen/Gehen; akute Verwirrtheit im fokal-neurologischen Kontext],
  [*Untersuchung*], [FAST (≥ 1 positiv → Verdacht); Balance und Augen grob (BE-FAST) *ohne* Triage-Verzögerung; *keine* Provokationstests; bei Instabilität keine weitere Klärung],
  [*Verlauf*], [Perakut (Sekunden–Minuten); *bereits remittierte* flüchtige Symptome = TIA-Verdacht bis Ausschluss],
)

#v(3pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 10pt,
  [
    #hang[#ico("user")  Face][Mundwinkel asymmetrisch / hängend?]
    #hang[#ico("hands")  Arms][Armhalteversuch — ein Arm sinkt ab?]
    #hang[#ico("comment")  Speech][Sprache/Sprechen unklar, verwaschen?]
  ],
  [
    #hang[#ico-d("clock")  Time][Sofort *112* — Uhr ab Last seen normal.]
    #hang[#ico("person-walking")  Balance][Stand/Gang-Unsicherheit (BE-FAST).]
    #hang[#ico("eye")  Eyes][Sehstörung / Doppelbilder — posterior mitdenken.]
  ],
)
#v(2pt)
#text(size: 7.8pt, fill: palette.text-muted, font: fonts.sans)[
  BE-FAST sensibilisiert für posterioren Kreislauf; ersetzt die 112-Logik *nicht*.
]

// ── 4 Mimic / DDx ─────────────────────────────────────────────
== 4. Verdacht, Abgrenzung, Warnsignale

#hang[#ico("check")  Erhärtet][
  FAST-positiv mit plötzlichem Beginn; plötzliche Hemiparese/-hypästhesie, Aphasie, Hemianopsie; plötzlicher Schwindel *plus* fokales Defizit; flüchtige TIA-ähnliche Symptome in den letzten 48 h.
]
#hang[#ico("xmark")  Passt eher nicht][
  Klar segmentale sensible Ausfälle einer typischen Radikulopathie *ohne* zentrale Begleitzeichen und ohne apoplektiformen Beginn — *aber* bei Unsicherheit gefährliche Diagnose priorisieren.
]
#hang[#ico("eye")  Nicht übersehen][
  Posteriorer Kreislauf (Schwindel, Ataxie, Sehstörung) — FAST allein unempfindlich; Hypoglykämie als Mimic; zentrale vs. periphere Fazialisparese (Stirnrunzeln).
]

=== Trügerische Erklärungen

#set enum(numbering: "1.", tight: true)
1. *„Periphere Fazialisparese / Bell“* — Ohne Stirn-Check kann eine zentrale Parese missdeutet werden; Begleitdefizite (Arm, Sprache) fordern den Schlaganfallpfad.
2. *„HWS-Blockade / Schwindel vom Nacken“* — Plötzlicher Schwindel plus fokales Defizit oder akute Ataxie ist zentralverdächtig — *keine* Mobilisation vor Ausschluss.
3. *„Migräne-Aura“* — Aura-ähnliche flüchtige Symptome ohne sichere Migräne-Anamnese und ohne Zeitfenster-Bewusstsein können TIA/Infarkt maskieren.
4. *„Schulter-Arm / Radikulopathie“* — Einseitige Armschwäche mit apoplektiformem Beginn und zentralen Begleitzeichen ist Hemiparese bis zum Beweis des Gegenteils.

#v(3pt)
#block(breakable: false)[
  #text(weight: "bold", font: fonts.sans, size: 8.5pt)[DDx-Minimal]
  #v(2pt)
  #table(
    columns: (40mm, 1fr),
    stroke: 0.4pt + palette.border,
    inset: 4pt,
    align: (left, left),
    table.header(
      text(weight: "bold", size: 7.8pt, font: fonts.sans)[Eher …],
      text(weight: "bold", size: 7.8pt, font: fonts.sans)[Diskriminierende Unterschiede],
    ),
    [*Schlaganfall / TIA*], text(size: 8pt)[Apoplektiform, fokal; FAST/BE-FAST; TIA auch remittiert → *112*],
    [*Hypoglykämie*], text(size: 8pt)[Verwirrtheit, fokal anmutend; BZ prüfen *ohne* Notruf-Verzögerung],
    [*Periphere Fazialis*], text(size: 8pt)[Stirn *mit* betroffen, oft isoliert — zentrale: Stirn oft erhalten + Begleitdefizite],
    [*MSK / Radikulopathie*], text(size: 8pt)[Segmental, ohne apoplektiformen Beginn und ohne zentrale Zeichen — Unsicherheit = Notfallpfad],
    [*Migräne-Aura*], text(size: 8pt)[Typische Anamnese möglich — Erstereignis/atypisch: keine Selbst-Entwarnung],
  )
]

// ── 5 TIME ────────────────────────────────────────────────────
== 5. Handeln und Dringlichkeit

#text(size: 8pt, fill: palette.text-muted, font: fonts.sans)[
  Stufen als *Typoränge* (kein Farbslab) — Scan über Gewicht und Reihenfolge.
]
#v(4pt)

#rank[01][#ico-d("phone") 112 — FAST / fokal][
  FAST-positiv (Face, Arm, Speech) mit plötzlichem Beginn; plötzliche halbseitige Sensibilitäts- oder Sehstörung; plötzlicher Schwindel *plus* fokales Defizit. → Sitzung beenden; Patient sichern (*Mobilisation vermeiden*); *keine* weiteren Tests; *112*; Stroke-Unit-Pfad.
]
#rank[02][#ico-d("clock") 112 / NA — TIA flüchtig][
  TIA-ähnliche flüchtige Symptome (*auch wenn bereits remittiert*), insbesondere in den letzten 48 h. Remission entwarnt *nicht*. TIA = Notfall bis Ausschluss. *Keine PT*, *kein* Abwarten. → 112 oder unverzüglich Notaufnahme.
]
#rank[03][#ico("hospital") Notaufnahme / gleichtags][
  *Nur wenn kein* akutes fokal-neurologisches Bild und *keine* 112-Kriterien, aber unklare langsam progrediente neurologische Symptome (Tage/Wochen). → PT aussetzen; bei jeder akuten Verschlechterung oder neuen fokal-neurologischen Zeichen *sofort 112*.
]
#rank[04][#ico("hand-holding-medical") Behandeln mit Sicherheitsnetz][
  Nur bei *gesicherter* muskuloskelettaler Ursache, ohne Red Flags, und — bei bekannter TIA/Schlaganfall-Historie — nach ärztlicher Freigabe aus der Akutphase. → Vigilanz für neue fokal-neurologische Zeichen; Abbruchkriterien vorab.
]

#v(3pt)
#grid(
  columns: (auto, 1fr),
  column-gutter: 7pt,
  align(horizon)[#ico-d("ban")],
  [
    #text(weight: "bold", fill: palette.danger, size: 8.8pt)[Grenze / absolute Kontraindikationen]
    #v(1pt)
    #set text(size: 8.3pt)
    Keine HWS-Manipulation bei V. a. vertebrobasiläre Ischämie/Dissektion; keine Provokationstests, die die Triage verzögern; Notruf nicht verzögern; ABCD² nur informativ — ersetzt *keine* Notfallabklärung; Ausschluss, Bildgebung, Lyse/Thrombektomie *ärztlich*.
  ],
)

// ── 6 Mini-case ───────────────────────────────────────────────
== 6. Fall zur Selbstprüfung

#text(weight: "bold", font: fonts.sans, size: 8.8pt)[Situation]
#v(2pt)
67-jährige Patientin wegen „steifer Halswirbelsäule und Schwindel“ nach dem Aufstehen. Vor etwa 40 Minuten sei die linke Hand „weg gewesen“ und die Sprache undeutlich — beides sei fast wieder weg. Bekannte Hypertonie. Sie wünscht Mobilisation der HWS.

#v(4pt)
#hang[#ico("circle-exclamation") Vordergrund][
  Flüchtige fokal-neurologische Symptome (Hand + Sprache) in den letzten Stunden — *TIA-Verdacht bis Ausschluss*. Remission entwarnt *nicht*. HWS-Wunsch ist der trügerische Rahmen.
]
#hang[#ico-d("ban") Kontraindiziert][
  HWS-Mobilisation, Provokationstests, abwartendes „erstmal behandeln“, verzögerter Notruf.
]
#hang[#ico("phone") Nächster Schritt][
  Sitzung *sofort* beenden; *112* (oder unverzüglich Notaufnahme je Lage); Übergabe: *Last seen normal*, flüchtige Hand-/Sprachstörung, Hypertonie, aktueller Status. Keine Mobilisation.
]
#hang[Lernpunkt][
  Flüchtige Hand + undeutliche Sprache + HWS-Schwindel-Label = *Notfallpfad*, nicht MSK-Erstbehandlung.
]

#v(8pt)
#align(center)[
  #text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)[
    Parent-System V-4 · Verdacht → 112 · TIA = Notfall · Last seen normal · wave-d / T
  ]
]
