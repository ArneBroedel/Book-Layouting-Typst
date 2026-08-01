// Pilot chapter — kl-voll Schlaganfall / TIA
// slug: kl-stroke-2026-08-01 · brief_class: exploration · clean slate
// FAST densified code (free vision skip)
// content (C, read-only): Kursbuch5 …/chapter-v-4-schlaganfall.md

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "/domains/medical/lib/typst/kl-wave6/stroke-2026-08-01.typ": *

#set document(
  title: "Schlaganfall und TIA — kl-voll exploration",
  author: "Book-Layouting-Typst · kl-stroke-2026-08-01",
)

#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 15mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 8pt, fill: luma(100))
    grid(
      columns: (1fr, auto),
      [Schlaganfall / TIA · FAST · 112-primär],
      [Exploration `kl-stroke-2026-08-01`],
    )
    line(length: 100%, stroke: 0.4pt + luma(200))
  },
)

#show: setup-typography()
#set heading(numbering: none)
#show heading.where(level: 2): it => {
  v(10pt, weak: true)
  block(below: 6pt)[
    #set text(size: 11.5pt, weight: "bold", fill: palette.primary)
    #it.body
  ]
}

// ── Title ─────────────────────────────────────────────────────

#text(size: 14.5pt, weight: "bold", fill: palette.primary)[
  Schlaganfall und TIA — Wenn plötzliche Schwäche, Sprache oder Schwindel den Hirninfarkt maskieren
]
#v(3pt)
#text(size: 10pt)[Direktzugang · FAST ≥ 1 → 112 · TIA auch remittiert = Notfall]
#v(7pt)

#block(
  width: 100%,
  inset: 8pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
)[
  #set text(size: 8.5pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  Fehlzuordnung als „HWS-Blockade“, periphere Fazialisparese oder Migräne-Aura — und Verlust des engen Behandlungsfensters (Thrombolyse typ. < 4,5 h nach „Last seen normal“). Im Zweifel den Notruf wählen, statt abzuwarten oder den Patienten zu mobilisieren.
]

// ── Big Picture ───────────────────────────────────────────────

#heading(level: 2)[Big Picture]
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#f0fdfa"), stroke: 0.4pt + palette.primary.lighten(25%),
  )[
    #text(size: 7.8pt, weight: "bold", fill: palette.primary)[Was?]
    #v(3pt)
    #set text(size: 7.3pt)
    Schlaganfall = plötzlicher Ausfall von Gehirnfunktionen durch Ischämie (ca. 80–85 %) oder Hirnblutung (ca. 15–20 %). TIA = flüchtiges fokal-neurologisches Defizit — bis zum Ausschluss *Notfall*.
  ],
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#fef2f2"), stroke: 0.4pt + palette.danger.lighten(35%),
  )[
    #text(size: 7.8pt, weight: "bold", fill: palette.danger)[Gefahr]
    #v(3pt)
    #set text(size: 7.3pt)
    MSK-Fehlzuordnung (HWS, Bell, Migräne-Aura, Schulter-Arm) vernichtet das Lysefenster; Remission entwarnt *nicht*.
  ],
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border,
  )[
    #text(size: 7.8pt, weight: "bold", fill: palette.text-body)[Richtung]
    #v(3pt)
    #set text(size: 7.3pt)
    Jeder plausible Verdacht → *112* und Stroke-Unit-Pfad. Schlaganfall/TIA sind *keine* PT-Arbeitsdiagnosen im Akutverdacht.
  ],
)

#v(5pt)
#set text(size: 9pt)
Im Direktzugang sind Schlaganfall und TIA keine physiotherapeutischen Arbeitsdiagnosen: Jeder plausible Verdacht verlangt sofortige medizinische Abklärung, in der Regel über *Notruf 112*. Die Entscheidungsschwelle bleibt bewusst niedrig.

// ── §1 ────────────────────────────────────────────────────────

#heading(level: 2)[1. Wann ist daran zu denken?]
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Risiken / Auslöser]
    #v(3pt)
    #text(size: 8pt)[Arterielle Hypertonie, Vorhofflimmern, Diabetes mellitus, Rauchen, Atherosklerose — im Direktzugang oft initial *nicht* bekannt; Fehlen schließt Risiko nicht aus.]
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Begleit / Kontext]
    #v(3pt)
    #text(size: 8pt)[Frühere TIA oder Schlaganfall, kardiovaskuläre Vorerkrankungen.]
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Zeit]
    #v(3pt)
    #text(size: 8pt)[*Apoplektiform* — Sekunden bis Minuten. Entscheidende Zeitangabe: *„Last seen normal“* (zuletzt völlig beschwerdefrei).]
  ],
)

// ── §2 ────────────────────────────────────────────────────────

#heading(level: 2)[2. Entstehung und Mechanismus]
#set text(size: 9pt)
Ischämie oder Blutung unterbricht die Versorgung eines Hirnareals. In der ischämischen Penumbra sterben Nervenzellen, wenn die Reperfusion ausbleibt — Minuten bis wenige Stunden entscheiden. Vorderer Kreislauf: typisch Hemiparese, Aphasie, Hemianopsie (FAST greift). Posteriorer Kreislauf / Hirnstamm: Schwindel, Ataxie, Sehstörung — FAST oft *negativ* und deshalb triagegefährdet.
#v(3pt)
#set text(size: 8.5pt, fill: palette.text-muted)
Verdacht → Notruf; *keine* diagnostische Verzögerung durch Mobilisation, HWS-Tests oder „erstmal abwarten“.

// ── §3 FAST ambition ──────────────────────────────────────────

#heading(level: 2)[3. Klinische Hinweise · FAST]
#fast-stroke()

#v(8pt)
#text(size: 9pt, weight: "bold")[Vier Kanäle (Detail)]
#v(4pt)
#set text(size: 8pt)
#table(
  columns: (28mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Domäne*], [*Erwartbare Merkmale*],
  [Anamnese], [Plötzliche halbseitige Schwäche/Taubheit; hängender Mundwinkel; Sprach-/Sprechstörung; Sehstörung; plötzlicher Schwindel mit fokal-neurologischem Begleitbefund; exakter Zeitpunkt „Last seen normal“],
  [Beobachtung], [Asymmetrie im Gesicht, hängende Extremität, unklare Sprache, Unsicherheit beim Stehen/Gehen, akute Verwirrtheit im fokal-neurologischen Kontext],
  [Untersuchung], [FAST (≥ 1 Kriterium positiv → Schlaganfallverdacht); Balance und Augen grob prüfen (BE-FAST); keine Provokationstests, die die Triage verzögern],
  [Verlauf], [Perakut (Sekunden–Minuten); auch *bereits remittierte* flüchtige Symptome = TIA-Verdacht bis zum Ausschluss],
)

// ── §4 ────────────────────────────────────────────────────────

#heading(level: 2)[4. Verdacht, Abgrenzung und Warnsignale]
#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  block(
    width: 100%, inset: 6.5pt, radius: 2pt,
    fill: rgb("#f0fdfa"), stroke: 0.45pt + palette.primary.lighten(30%),
  )[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Erhärtet den Verdacht]
    #v(3pt)
    #set text(size: 7.3pt)
    #list(
      [FAST-positiv mit plötzlichem Beginn],
      [Plötzliche Hemiparese/-hypästhesie, Aphasie, Hemianopsie],
      [Plötzlicher Schwindel *plus* fokales Defizit],
      [Flüchtige TIA-ähnliche Symptome in den letzten 48 h],
    )
  ],
  block(
    width: 100%, inset: 6.5pt, radius: 2pt,
    fill: rgb("#f8fafc"), stroke: 0.45pt + palette.border,
  )[
    #text(size: 8pt, weight: "bold", fill: palette.text-muted)[Passt eher nicht]
    #v(3pt)
    #set text(size: 7.3pt)
    Klar segmentale sensible Ausfälle einer typischen Radikulopathie *ohne* zentrale Begleitzeichen und ohne apoplektiformen Beginn — *aber* bei Unsicherheit immer die gefährliche Diagnose priorisieren.
  ],
)

#v(5pt)
#block(
  width: 100%, inset: 6.5pt, radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
)[
  #text(size: 8pt, weight: "bold", fill: palette.danger)[Nicht übersehen]
  #v(3pt)
  #set text(size: 7.3pt)
  Posteriore Kreislauf-Infarkte (Schwindel, Ataxie, Sehstörung) — FAST allein unempfindlich; Hypoglykämie als lebensbedrohlicher Mimic; zentrale vs. periphere Fazialisparese (Stirnrunzeln); Ischämie und Blutung im Erstkontakt nicht unterscheidbar → *112*.
]

#v(8pt)
#mimic-stroke()

// ── §5 ────────────────────────────────────────────────────────

#heading(level: 2)[5. Handeln und Dringlichkeit]
#us-stroke()

// ── §6 Fall ───────────────────────────────────────────────────

#heading(level: 2)[6. Fall zur Selbstprüfung]
#block(
  width: 100%,
  inset: 8pt,
  radius: 2pt,
  fill: rgb("#f8fafc"),
  stroke: 0.45pt + palette.border,
)[
  #set text(size: 9pt)
  #text(weight: "bold")[Situation: ]
  67-jährige Patientin kommt wegen „steifer Halswirbelsäule und Schwindel“ nach dem Aufstehen. Vor etwa 40 Minuten sei die linke Hand „weg gewesen“ und die Sprache undeutlich — beides sei fast wieder weg. Bekannte Hypertonie. Sie wünscht Mobilisation der HWS.

  #v(5pt)
  #text(weight: "bold")[Fragen: ]
  (1) Was steht jetzt im Vordergrund? · (2) Was ist kontraindiziert? · (3) Nächster sicherer Schritt?
]

#v(6pt)
#block(
  width: 100%,
  inset: 8pt,
  radius: 2pt,
  fill: rgb("#f0fdfa"),
  stroke: 0.45pt + palette.primary.lighten(30%),
)[
  #set text(size: 8.5pt)
  #text(weight: "bold", fill: palette.primary)[Case Study (klinischer Anker): ]
  72-jähriger Mann, „hängender linker Mundwinkel“ und „steifer Nacken“. Seit dem Frühstück (vor ca. 90 min) undeutliche Sprache und leichte Schwäche im linken Arm. Vorhofflimmern und Hypertonie. Armhalteversuch: linker Arm sinkt ab; Stirn beidseits runzeln möglich, linker Mundwinkel hängt. Trügerisch: Nacken-/„HWS“-Selbstvermutung überdeckt apoplektiforme Hemiparese mit Fazialisbeteiligung und Sprachstörung.
]

// ── DDx ───────────────────────────────────────────────────────

#heading(level: 2)[DDx-Minimal · Treat-vs-Refer]
#set text(size: 8pt)
#table(
  columns: (42mm, 1fr, 28mm),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Verdacht*], [*Hinweisende Qualifier*], [*Tendenz*],
  [Ischämischer Schlaganfall], [Apoplektiform, fokal (Hemiparese, Aphasie, Hemianopsie)], [*112*],
  [Intrazerebrale Blutung], [Plötzlich fokal, ggf. Kopfschmerz/Bewusstseinsstörung — im Erstkontakt nicht von Ischämie unterscheidbar], [*112*],
  [TIA], [Flüchtig, oft < 1 h, bereits remittiert möglich], [*112* / NA],
  [Hypoglykämie], [Verwirrtheit, fokal anmutende Zeichen, Diabetes/Insulin — Mimic *und* Gefahr], [Notfall; BZ ohne Notruf-Verzögerung],
  [Migräne mit Aura], [Typische Migräne-Anamnese möglich — Unsicherheit = Notfallpfad], [Keine Selbst-Entwarnung],
  [Periphere Fazialisparese], [Stirn *mit* betroffen, oft isoliert — zentral: Stirn oft erhalten + Begleitdefizite], [Unsicherheit → *112*],
  [MSK / Radikulopathie], [Klar segmental, nicht apoplektiform, ohne zentrale Zeichen], [PT mit Netz],
)

#v(6pt)
#set text(size: 8pt, fill: palette.text-muted)
Semantic Qualifiers: *apoplektiform* · *fokal* · Hemiparese · Aphasie vs. Dysarthrie · *Last seen normal* · zentrale vs. periphere Fazialisparese.

// ── Quellen ───────────────────────────────────────────────────

#heading(level: 2)[Quellen]
#set text(size: 7.5pt, fill: palette.text-muted)
+ DGN/DSG. S2e-Leitlinie Akuttherapie des ischämischen Schlaganfalls. AWMF 030-046. Version 5.1. 2022.
+ DEGAM. S3-Leitlinie Schlaganfall. AWMF 053-011. Version 2020.
+ RKI. Gesundheitsberichterstattung — Schlaganfall. (Abruf: 2026-07-14)
+ AMBOSS. SOP Akuter Schlaganfall / Ischämischer Schlaganfall / Periphere Fazialisparese (sekundär).
