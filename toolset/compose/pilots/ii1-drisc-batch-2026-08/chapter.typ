// Pilot chapter — pure D-RISC framework OS (batch 2026-08)
// slug: ii1-drisc-batch-2026-08 · brief_class: exploration
// content (C): Kursbuch5 …/2026-08-d-risc-batch/methodik/chapter-ii-1-d-risc.md
// Sequence: R → I → S → C (Akronym). NOT Drei-Achsen A/B/C. NOT R→S→I.
// Teal OS chrome — NOT emergency solid-red wall

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-version
#fa-version("6") // fonts/ has FA6; package default is 7
#import "/domains/medical/lib/typst/d-risc-batch-2026-08/pflichtsequenz.typ": pflichtsequenz-risc
#import "/domains/medical/lib/typst/explore-2026-08/chrome.typ": chrome-lead
#import "/domains/medical/lib/typst/explore-2026-08/section-rhythm.typ": setup-pilot-sections, pilot-title-stack

#set document(
  title: "II-1 D-RISC — Entscheidung im Direktzugang",
  author: "Book-Layouting-Typst · ii1-drisc-batch-2026-08",
)

#set page(
  paper: "a4",
  margin: (inside: 18mm, outside: 15mm, top: 14mm, bottom: 15mm),
  numbering: "1",
  header: context {
    set text(size: 8pt, fill: luma(100))
    grid(
      columns: (1fr, auto),
      [II-1 · D-RISC · Framework-OS],
      [Exploration `ii1-drisc-batch-2026-08`],
    )
    line(length: 100%, stroke: 0.4pt + luma(200))
  },
)

#show: setup-typography()
#show: setup-pilot-sections(h2-size: 11pt)

#pilot-title-stack(
  [II-1 D-RISC — Entscheidung im Direktzugang],
  subtitle: [Das Betriebssystem der klinischen Entscheidung — *R → I → S → C*, nicht Bauchgefühl.],
  title-size: 13.5pt,
  subtitle-size: 9.5pt,
)

// Lead: quiet/primary OS chrome (not solid teal wall, not emergency red)
#chrome-lead(accent: palette.primary, level: "quiet")[
  #set text(size: 8.5pt)
  #text(weight: "bold", fill: palette.primary)[Gatekeeper in einem Atemzug: ]
  Vier Codes im Akronym — *R* (Abklärung) · *I* (Nutzen) · *S* (Sicherheit der Maßnahme) · *C* (Plan).
  Denk-, Sprech- und Darstellungsreihenfolge = *R → I → S → C*. Kein paralleles klinisches A-B-C.
]

// ── 1. Lernziele + Rolle ───────────────────────────────────────

#heading(level: 2)[1. Lernziele · Rolle]
#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 8pt,
  {
    set text(size: 7.8pt)
    enum(
      [Vier Codes *R · I · S · C* benennen und in *R → I → S → C* anwenden],
      [*R* unabhängig von PT-Planung bewerten (Lage zuerst)],
      [*I* und *S* nicht weglassen — auch bei klar notfallmäßiger Lage],
      [Jede Demo als *R… · I… · S… → C: …* formulieren],
      [D-RISC von Flag-Farben und Review-Achsen A/B unterscheiden],
    )
  },
  block(
    width: 100%, inset: 6pt, radius: 2pt,
    fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border,
  )[
    #set text(size: 7.3pt)
    #text(weight: "bold", fill: palette.primary)[Dieses Kapitel ist …]
    #v(2pt)
    *Betriebssystem* der Entscheidung im Direktzugang — *nicht* Leitsymptom-Algorithmus (→ IV-…), *nicht* Krankheitskatalog (→ V-…), *nicht* Rechtskapitel (→ I-…), *nicht* Kommunikationsdrill (→ II-10).
    #v(3pt)
    #text(weight: "bold", fill: palette.primary)[Es ist nicht …]
    #v(2pt)
    Flag-Lexikon (→ II-2) · SN-13 (→ II-2b) · Workflow (→ II-3).
  ],
)

// ── 2. Kernmodell: pure D-RISC ─────────────────────────────────

#heading(level: 2)[2. Kernmodell — D-RISC (vier Codes)]
#set text(size: 7.5pt)
#block(
  width: 100%, inset: (x: 7pt, y: 5pt), radius: 2pt,
  fill: rgb("#f0fdfa"), stroke: 0.4pt + palette.primary.lighten(35%),
)[
  #text(weight: "bold", fill: palette.primary)[D-RISC]
  #h(4pt)
  #text(size: 7.2pt)[
    *D* = Direct-Access (Direktzugang) · *RISC* = Wortspiel *derisk*: Entscheidungen von vermeidbaren Risiken befreien · Bausteine *R · I · S · C*
  ]
]
#v(4pt)
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 5pt,
  block(
    width: 100%, inset: 6pt, radius: 2pt,
    fill: rgb("#fef2f2"), stroke: (top: 3pt + palette.danger, rest: 0.4pt + palette.border),
  )[
    #align(center)[
      #text(size: 13pt, weight: "bold", fill: palette.danger)[R]
      #linebreak()
      #text(weight: "bold", size: 7.5pt)[Referral]
    ]
    #v(3pt)
    #set text(size: 7pt)
    *Braucht es Abklärung — wie dringend?*
    #v(2pt)
    #text(size: 6.5pt, fill: palette.text-muted)[Lage / Gefahr · unabhängig von PT]
  ],
  block(
    width: 100%, inset: 6pt, radius: 2pt,
    fill: rgb("#f0fdfa"), stroke: (top: 3pt + palette.primary, rest: 0.4pt + palette.border),
  )[
    #align(center)[
      #text(size: 13pt, weight: "bold", fill: palette.primary)[I]
      #linebreak()
      #text(weight: "bold", size: 7.5pt)[Indication]
    ]
    #v(3pt)
    #set text(size: 7pt)
    *Lohnt PT-Nutzen jetzt / für dieses Muster?*
    #v(2pt)
    #text(size: 6.5pt, fill: palette.text-muted)[Burden-of-Proof · nicht voraussetzen]
  ],
  block(
    width: 100%, inset: 6pt, radius: 2pt,
    // Amber top: S = Default-to-Danger (not "safe teal") — dual-coding pin 2026-08 revise
    fill: rgb("#fffbeb"), stroke: (top: 3pt + palette.warning, rest: 0.4pt + palette.warning.lighten(40%)),
  )[
    #align(center)[
      #text(size: 13pt, weight: "bold", fill: palette.warning.darken(12%))[S]
      #linebreak()
      #text(weight: "bold", size: 7.5pt)[Safety]
    ]
    #v(3pt)
    #set text(size: 7pt)
    *Ist die geplante Maßnahme jetzt sicher?*
    #v(2pt)
    #text(size: 6.5pt, fill: palette.text-muted)[Default-to-Danger · maßnahmenbezogen]
  ],
  block(
    width: 100%, inset: 6pt, radius: 2pt,
    fill: rgb("#f8fafc"), stroke: (top: 3pt + palette.primary-dark, rest: 0.4pt + palette.border),
  )[
    #align(center)[
      #text(size: 13pt, weight: "bold", fill: palette.primary-dark)[C]
      #linebreak()
      #text(weight: "bold", size: 7.5pt)[Classification]
    ]
    #v(3pt)
    #set text(size: 7pt)
    *Was ist der konkrete Plan?*
    #v(2pt)
    #text(size: 6.5pt, fill: palette.text-muted)[Synthese · kein 1–4-Score]
  ],
)

#v(5pt)
#block(
  width: 100%, inset: 6pt, radius: 2pt,
  fill: white, stroke: (left: 3pt + palette.primary, rest: 0.4pt + palette.border),
)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.primary)[Pflichtformel: ]
  `R… · I… · S… → C: …`
  #h(6pt)
  #text(size: 7.3pt, fill: palette.text-muted)[
    Beispiele: `R4 · I1 · S4 → C: Stop & Call / 112` · `R1 · I3 · S1 → C: Treat + Safety-Netting`
  ]
  #linebreak()
  #text(size: 7.3pt, fill: palette.text-muted)[
    Es gibt *kein* paralleles klinisches A-B-C. Flag-Farben und Review-Achsen ersetzen R/I/S/C nicht.
  ]
]

// Asymmetry in RISC order
#v(6pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  block(
    width: 100%, inset: 6pt, radius: 2pt,
    fill: rgb("#fef2f2"), stroke: 0.45pt + palette.danger.lighten(40%),
  )[
    #text(size: 7.8pt, weight: "bold", fill: palette.danger)[R · Default-to-Danger]
    #v(2pt)
    #set text(size: 7.2pt)
    Lage: beweisen, dass es *kein* Notfall / dringender Abklärungsbedarf ist — auch ohne PT-Wunsch.
  ],
  block(
    width: 100%, inset: 6pt, radius: 2pt,
    fill: rgb("#f0fdfa"), stroke: 0.45pt + palette.primary.lighten(30%),
  )[
    #text(size: 7.8pt, weight: "bold", fill: palette.primary)[I · Burden-of-Proof]
    #v(2pt)
    #set text(size: 7.2pt)
    Nutzen: beweisen, warum PT *jetzt* helfen soll. Start bei *I1* — Nutzen nicht voraussetzen.
  ],
  block(
    width: 100%, inset: 6pt, radius: 2pt,
    fill: rgb("#fffbeb"), stroke: 0.45pt + palette.warning.lighten(35%),
  )[
    #text(size: 7.8pt, weight: "bold", fill: palette.warning.darken(12%))[S · Default-to-Danger]
    #v(2pt)
    #set text(size: 7.2pt)
    Maßnahme: beweisen, dass *diese* Technik/Belastung *jetzt* sicher ist — nicht „Physio pauschal“.
  ],
)

// Stufen compact — de-squish (padding + gutter) 2026-08 revise
#v(7pt)
#text(size: 8.5pt, weight: "bold", fill: palette.primary)[Stufen R · I · S (je 1–4) · C = Plan]
#v(4pt)
#set text(size: 7.1pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(weight: "bold", fill: palette.primary-dark)[R — Referral]
    #v(3pt)
    *R4* 112/Notaufnahme · *R3* dringend ärztlich zeitnah · *R2* empfohlen · *R1* nicht erforderlich
    #v(3pt)
    #text(size: 6.5pt, fill: palette.text-muted)[„Muss jemand anderes die Lage klären?“]
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(weight: "bold", fill: palette.primary-dark)[I — Indication]
    #v(3pt)
    *I4* hochrelevant/zeitkritisch · *I3* relevant · *I2* unterstützend · *I1* gering/irrelevant
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#fffbeb"), stroke: 0.4pt + palette.warning.lighten(40%))[
    #text(weight: "bold", fill: palette.warning.darken(12%))[S — Safety]
    #v(3pt)
    *S4* kontraindiziert · *S3* Vorsicht · *S2* PT-Lite · *S1* uneingeschränkt sicher
    #v(3pt)
    #text(size: 6.5pt, fill: palette.text-muted)[maßnahmenspezifisch · Default-to-Danger]
  ],
)

#v(5pt)
#block(
  width: 100%, inset: 6.5pt, radius: 2pt,
  fill: rgb("#fff7ed"), stroke: 0.4pt + palette.warning.lighten(35%),
)[
  #set text(size: 7.4pt)
  #text(weight: "bold", fill: palette.warning.darken(10%))[C — Classification (Plan): ]
  Stop & Call / 112 · Refer only · Treat & Refer · Treat + Monitoring · Treat + Safety-Netting.
  *Kein* Nutzen-Code, *kein* 1–4-Score.
]

// Makro / Mikro
#v(6pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 7pt,
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border,
  )[
    #text(size: 7.8pt, weight: "bold", fill: palette.primary)[Makro — Behandlungsplan]
    #v(3pt)
    #set text(size: 7pt)
    *R* Abklärung dringend? · *I* Nutzen der Maßnahmen? · *S* genau diese Maßnahmen sicher? · *C* Plan.
  ],
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border,
  )[
    #text(size: 7.8pt, weight: "bold", fill: palette.primary)[Mikro — Test / Technik]
    #v(3pt)
    #set text(size: 7pt)
    Kurzer Loop *R → I → S → C* vor dem Schritt: verschleiern? Nutzen der Info? Belastung sicher? Durchführen / stoppen.
  ],
)

// ── 3. Pflichtsequenz (own page start — avoid orphan step-1) ───
#pagebreak()

#heading(level: 2)[3. Operationaler Kern — Pflichtsequenz]
#pflichtsequenz-risc(show-footer: true, layout: "vertical", density: "compact")

// ── 4. Synthese-Beispiele ──────────────────────────────────────

#heading(level: 2)[4. Synthese-Beispiele]
#set text(size: 7.5pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#fef2f2"), stroke: 0.45pt + palette.danger.lighten(40%),
  )[
    #text(weight: "bold", fill: palette.danger, size: 8pt)[Beispiel 1 — Notfallmuster (CES-Pfad)]
    #v(2pt)
    #set text(size: 7.2pt)
    Plötzliche bilaterale Beinschwäche, neue Taubheit im Dammbereich, Harnverhalt-Verdacht.
    #v(3pt)
    #table(
      columns: (auto, auto, 1fr),
      stroke: 0.35pt + palette.border,
      inset: 3pt,
      fill: (_, y) => if y == 0 { rgb("#fee2e2") } else { white },
      [*Code*], [*St.*], [*Begründung*],
      [R], [4], [Abklärung Notfall — unabhängig von PT],
      [I], [1], [Kein PT-Nutzen *jetzt*],
      [S], [4], [Lumbale Intervention KI / verzögert],
      [C], [—], [*Stop & Call / 112*],
    )
    #v(2pt)
    #text(weight: "bold")[`R4 · I1 · S4 → C: Stop & Call / 112`]
  ],
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#f0fdfa"), stroke: 0.45pt + palette.primary.lighten(30%),
  )[
    #text(weight: "bold", fill: palette.primary, size: 8pt)[Beispiel 2 — typisches MSK]
    #v(2pt)
    #set text(size: 7.2pt)
    Akuter lumbaler Schmerz nach Heben, neuro unauffällig, keine systemischen Warnsignale.
    #v(3pt)
    #table(
      columns: (auto, auto, 1fr),
      stroke: 0.35pt + palette.border,
      inset: 3pt,
      fill: (_, y) => if y == 0 { rgb("#ccfbf1") } else { white },
      [*Code*], [*St.*], [*Begründung*],
      [R], [1], [Kein dringender Abklärungsbedarf],
      [I], [3], [PT relevant (Aufklärung, Aktivierung)],
      [S], [1], [Risikoarme Maßnahmen vertretbar],
      [C], [—], [*Treat + Safety-Netting*],
    )
    #v(2pt)
    #text(weight: "bold")[`R1 · I3 · S1 → C: Treat + Safety-Netting`]
  ],
)

#v(5pt)
#text(size: 8pt, weight: "bold", fill: palette.primary)[Orientierungszeilen (kein Ersatz für Leitsymptom-Kapitel)]
#v(2pt)
#set text(size: 7pt)
#table(
  columns: (1.4fr, 8mm, 8mm, 8mm, 1.3fr),
  stroke: 0.4pt + palette.border,
  inset: 3.5pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Konstellation*], [*R*], [*I*], [*S*], [*C (Plan)*],
  [Notfall-Muster], [4], [1], [4], [*Stop & Call / 112*],
  [Unklar / systemisch, stabil], [3], [1–2], [3–4], [Refer only oder Treat-Lite & Refer],
  [Treat & Refer (Nutzen da, Abklärung nötig)], [3], [3], [2], [Arzt zeitnah + PT-Lite],
  [Typisch MSK, Flags negativ], [1], [3–4], [1], [Treat + Safety-Netting],
)

// ── 5–6. Verwechslungen + Mini-Drill + claims (balanced end page) ─
#pagebreak()

#heading(level: 2)[5. Was D-RISC nicht verwechselt werden darf]
#set text(size: 7.6pt)
#table(
  columns: (1.1fr, 1.6fr),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*System*], [*Bedeutung*],
  [*D-RISC R / I / S / C*], [Klinische Entscheidung im Direktzugang],
  [*Flag-Farben* (Rot / Orange / Gelb …)], [Handlungsgrammatik im Screening; „Orange“ ist *nicht* automatisch R3],
  [*Review-Achsen A / B* (interne Qualitätsarbeit)], [Fakt/Safety vs. Medagogy — *kein* Klinik-Framework],
)

#v(5pt)
#block(
  width: 100%, inset: 6pt, radius: 2pt,
  fill: rgb("#fff7ed"), stroke: 0.4pt + palette.warning.lighten(35%),
)[
  #set text(size: 7.5pt)
  #text(weight: "bold", fill: palette.warning.darken(10%))[Farben-Falle: ]
  Flag-*Orange* (psychosozial) ≠ D-RISC-*R3* (ärztlich zeitnah). Review-A/B ≠ R/I/S/C.
  Historisches Mapping nur Orientierung, *nicht* im Alltag: Medical-Referral → R · PT-Safety → S · PT-Benefit → I · Plan → C.
]

#v(10pt)
#heading(level: 2)[6. Mini-Drill (Selbstcheck)]
#set text(size: 8pt)
#enum(
  [Patient:in will „nur mobilisieren lassen“, berichtet aber neu über plötzliche Dyspnoe und einseitige Beinschwellung. Welcher Code kommt *zuerst* — und warum ist er unabhängig vom PT-Wunsch?],
  [Formulieren Sie für Beispiel 1 und Beispiel 2 je eine Zeile `R… · I… · S… → C: …`.],
  [Warum ist „RF positiv → 112“ allein *noch kein* vollständiges D-RISC?],
)

#v(4pt)
#text(size: 7pt, fill: palette.text-muted, style: "italic")[
  Antworten erst *nach* eigenem Versuch — Transfer-Schlüssel steht unter Critical Claims.
]

#v(12pt)
#heading(level: 2)[Verweise · Quellen · Critical Claims]
#set text(size: 7.2pt, fill: palette.text-muted)
→ II-2 Flags · → II-2b SN-13 · → II-3 Workflow · → III-… Notfallkarten · → IV-0 / IV-2 · → V-… · → II-10 · → I-…
#v(2pt)
Didaktisches Framework; klinische Schwellen aus Leitlinien (AWMF / DEGAM / NICE) in KL/Leitsymptom-Kapiteln — *nicht* aus D-RISC selbst.
#v(5pt)
#block(
  width: 100%, inset: 7pt, radius: 2pt,
  fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border,
)[
  #text(size: 8pt, weight: "bold", fill: palette.primary)[Critical Claims (copy-through)]
  #v(3pt)
  #set text(size: 7pt, fill: palette.text-muted)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 10pt,
    row-gutter: 3pt,
    [1. Klinische Codes nur *R · I · S · C*; kein paralleles A-B-C],
    [2. Reihenfolge = *R → I → S → C* (Akronym)],
    [3. *R* unabhängig von PT-Planung (Lage zuerst)],
    [4. *I* = Nutzen (Burden); *C* = Plan ≠ Benefit],
    [5. *S* maßnahmenbezogen, nicht „PT generell“],
    [6. Pflichtformel: R… · I… · S… → C: … (I/S nicht weglassen)],
    [7. R4 = 112/NA; R3 = dringend ärztlich; R1 = nicht erforderlich],
    [8. Flag-Farben ≠ D-RISC-Stufen; Review-A/B ≠ Klinik-Framework],
  )
]

// Transfer key *after* drill + claims — spoiler-free scan path (2026-08 revise)
#v(10pt)
#block(
  width: 100%, inset: 6pt, radius: 2pt,
  fill: rgb("#f8fafc"), stroke: (left: 2.5pt + palette.primary.lighten(20%), rest: 0.35pt + palette.border),
)[
  #set text(size: 7pt, fill: palette.text-muted)
  #text(weight: "bold", fill: palette.primary-dark)[Transfer-Schlüssel (nach Selbstversuch · nicht auswendig im Notfall): ]
  #v(2pt)
  (1) zuerst *R* (Lage/LE-Pfad), unabhängig vom PT-Wunsch ·
  (2) Formeln wie Beispiele ·
  (3) „RF → 112“ fehlt *I* und *S* und die RISC-Sprechformel.
]
