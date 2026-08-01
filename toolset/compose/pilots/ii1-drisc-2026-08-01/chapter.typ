// Pilot chapter — framework OS Drei Achsen / D-RISC
// slug: ii1-drisc-2026-08-01 · brief_class: exploration
// content (C): Kursbuch5 …/chapter-ii1-drei-achsen-drisc.md
// Teal OS chrome — NOT emergency solid-red wall

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-version
#fa-version("6") // fonts/ has FA6; package default is 7
#import "/domains/medical/lib/typst/explore-2026-08/pflichtsequenz.typ": pflichtsequenz-risc
#import "/domains/medical/lib/typst/explore-2026-08/chrome.typ": chrome-lead

#set document(
  title: "II-1 Drei-Achsen-Modell & D-RISC",
  author: "Book-Layouting-Typst · ii1-drisc-2026-08-01",
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
      [Exploration `ii1-drisc-2026-08-01`],
    )
    line(length: 100%, stroke: 0.4pt + luma(200))
  },
)

#show: setup-typography()
#set heading(numbering: none)
#show heading.where(level: 2): it => {
  v(9pt, weak: true)
  block(below: 5pt)[
    #set text(size: 11pt, weight: "bold", fill: palette.primary)
    #it.body
  ]
}

#text(size: 13.5pt, weight: "bold", fill: palette.primary)[
  II-1 Drei-Achsen-Modell & D-RISC
]
#v(2pt)
#text(size: 9.5pt, fill: palette.primary-dark)[
  Das Betriebssystem des Direktzugangs — *R + I + S → C*, nicht Bauchgefühl.
]
#v(6pt)

// Lead: quiet/primary OS chrome (not solid teal wall)
#chrome-lead(accent: palette.primary, level: "quiet")[
  #set text(size: 8.5pt)
  #text(weight: "bold", fill: palette.primary)[Gatekeeper in einem Atemzug: ]
  Jede klinische Situation wird auf *drei Fragen* verdichtet:
  *Wie dringend ärztlich?* · *Ist die geplante Maßnahme jetzt sicher?* · *Lohnt PT-Nutzen jetzt?*
  — danach folgt ein *konkreter Plan (C)*.
]

// ── Lernziele + Rolle (compact — layout revise: less table-wall) ─

#heading(level: 2)[1. Lernziele · Rolle]
#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 8pt,
  {
    set text(size: 7.8pt)
    enum(
      [Drei-Achsen (Referral / Safety / Benefit) als Gatekeeper anwenden],
      [D-RISC *R · I · S* stufen → *C* (konkreter Plan)],
      [*Default-to-Danger* (R/S) und *Burden-of-Proof* (I)],
      [Flags nur *mappen*; Detail → II-2 — kein Notfall-Algorithmus hier],
    )
  },
  block(
    width: 100%, inset: 6pt, radius: 2pt,
    fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border,
  )[
    #set text(size: 7.3pt)
    #text(weight: "bold", fill: palette.primary)[Dieses Kapitel ist …]
    #v(2pt)
    Betriebssystem der Entscheidung — *nicht* Flag-Lexikon (II-2), *nicht* Leitsymptom-Algorithmus (IV-2), *nicht* Krankheitsskript (V).
  ],
)

// ── Kernmodell: visual cards, not triple tables ───────────────

#heading(level: 2)[2. Kernmodell — drei Achsen → D-RISC]
#set text(size: 7.6pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#f0fdfa"), stroke: (top: 3pt + palette.primary, rest: 0.4pt + palette.border),
  )[
    #align(center)[
      #text(size: 14pt, weight: "bold", fill: palette.primary)[A]
      #v(2pt)
      #text(weight: "bold")[Medical-Referral]
    ]
    #v(3pt)
    *Wie dringend ärztlich?*
    #v(2pt)
    #text(size: 7pt, fill: palette.text-muted)[Pole: 112 ↔ nicht erforderlich]
    #v(3pt)
    #text(size: 7.2pt)[→ D-RISC *R*: Beweise mir, dass es *kein* Notfall/dringender Arztbedarf ist.]
  ],
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#f0fdfa"), stroke: (top: 3pt + palette.primary, rest: 0.4pt + palette.border),
  )[
    #align(center)[
      #text(size: 14pt, weight: "bold", fill: palette.primary)[B]
      #v(2pt)
      #text(weight: "bold")[PT-Safety]
    ]
    #v(3pt)
    *Ist die geplante Maßnahme jetzt sicher?*
    #v(2pt)
    #text(size: 7pt, fill: palette.text-muted)[Pole: KI ↔ uneingeschränkt sicher]
    #v(3pt)
    #text(size: 7.2pt)[→ D-RISC *S*: Beweise mir, dass *diese* Technik/Test jetzt sicher ist.]
  ],
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#f0fdfa"), stroke: (top: 3pt + palette.primary, rest: 0.4pt + palette.border),
  )[
    #align(center)[
      #text(size: 14pt, weight: "bold", fill: palette.primary)[C]
      #v(2pt)
      #text(weight: "bold")[PT-Benefit]
    ]
    #v(3pt)
    *Lohnt der Nutzen jetzt?*
    #v(2pt)
    #text(size: 7pt, fill: palette.text-muted)[Pole: irrelevant ↔ hochrelevant]
    #v(3pt)
    #text(size: 7.2pt)[→ D-RISC *I*: Beweise mir, warum die Maßnahme *jetzt* helfen soll.]
  ],
)
#v(5pt)
#block(
  width: 100%, inset: 6pt, radius: 2pt,
  fill: white, stroke: (left: 3pt + palette.primary, rest: 0.4pt + palette.border),
)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.primary)[Regel: ]
  Achsen *nicht austauschbar*. Hoher Nutzen (Benefit) *heilt* keine unsichere Maßnahme und *ersetzt* keine dringende Abklärung.
  #linebreak()
  #text(size: 7.3pt, fill: palette.text-muted)[
    Nomenklatur: „C“ bei Drei-Achsen = *PT-Benefit*. „C“ in D-RISC = *Classification* (Plan) — immer ausschreiben oder *D-RISC-C*.
  ]
]

#v(7pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#fef2f2"), stroke: 0.45pt + palette.danger.lighten(40%),
  )[
    #text(size: 8pt, weight: "bold", fill: palette.danger)[Default-to-Danger (R & S)]
    #v(3pt)
    #set text(size: 7.5pt)
    Start bei *R4 / S4*, bis Befunde Herabstufung erlauben. Gefahr muss *aktiv entkräftet* werden.
  ],
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#f0fdfa"), stroke: 0.45pt + palette.primary.lighten(30%),
  )[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Burden-of-Proof (I)]
    #v(3pt)
    #set text(size: 7.5pt)
    Start bei *I1*, bis Muster/Evidenz Nutzen belegen. Nutzen wird *nicht vorausgesetzt*.
  ],
)

#v(6pt)
#text(size: 8.5pt, weight: "bold", fill: palette.primary)[Stufen (Framework, kompakt)]
#v(3pt)
#set text(size: 7pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 4pt,
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(weight: "bold", fill: palette.primary-dark)[R — Referral]
    #v(2pt)
    *R4* 112/ED · *R3* gleichtags/ED (Masters) · *R2* empfohlen · *R1* nicht nötig
  ],
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(weight: "bold", fill: palette.primary-dark)[I — Indication]
    #v(2pt)
    *I4* zeitkritisch · *I3* relevant · *I2* stützend · *I1* gering *jetzt*
  ],
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(weight: "bold", fill: palette.primary-dark)[S — Safety]
    #v(2pt)
    *S4* KI · *S3* Vorsicht · *S2* PT-Lite · *S1* Safe — *maßnahmenspezifisch*
  ],
)

#v(4pt)
#block(
  width: 100%, inset: 6pt, radius: 2pt,
  fill: rgb("#fff7ed"), stroke: 0.4pt + palette.warning.lighten(35%),
)[
  #set text(size: 7.5pt)
  #text(weight: "bold", fill: palette.warning.darken(10%))[Farben-Falle: ]
  Flag-*Orange* (psychosozial) ≠ D-RISC-*R3* (ärztlich zeitnah). *Nicht gleichsetzen* (→ II-2).
]

// ── Pflichtsequenz ────────────────────────────────────────────

#heading(level: 2)[3. Operationaler Kern — Pflichtsequenz]
// density compact (default): share page with C-Muster — no full-page airy flow
#pflichtsequenz-risc(show-footer: true, layout: "vertical", density: "compact")

#v(6pt)
#text(size: 8.5pt, weight: "bold", fill: palette.primary)[3.2 C-Muster (Synthese)]
#v(3pt)
#set text(size: 7.2pt)
#table(
  columns: (42mm, 10mm, 10mm, 10mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 4pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Situation*], [*R*], [*I*], [*S*], [*C*],
  [Lebensgefahr / akuter Notfall], [4], [1], [4], [*Stop & Call* — 112/ED; keine PT],
  [Schwere RF, hämodynamisch stabil], [3–4], [1–2], [4], [*Refer only* — gleichtags/ED; riskante PT stop],
  [Arzt zeitnah, PT-Lite sinnvoll], [3], [2–3], [2], [*Treat & Refer* — Überweisung + risikoarm],
  [Unklarheit ohne Rot-Cluster], [2], [2–3], [2], [*Treat + Monitoring*],
  [Plausibles MSK, keine RF], [1], [3–4], [1–2], [*Treat* + Safety-Netting],
  [Orange-Flags, keine Rot], [1–2], [2–3], [1–2], [*Treat + interprofessionell*],
)

// ── Mini-Beispiele ────────────────────────────────────────────

#heading(level: 2)[5. Mini-Beispiele]
#set text(size: 8pt)
#block(
  width: 100%, inset: 7pt, radius: 2pt,
  fill: rgb("#fef2f2"), stroke: 0.45pt + palette.danger.lighten(40%),
)[
  #text(weight: "bold", fill: palette.danger)[A — Stop & Call]
  #v(2pt)
  #set text(size: 7.5pt)
  62 J., plötzliche Ruhedyspnoe + Unruhe, vor 3 Wochen große Gelenk-OP; will „Atemübungen“.
  *R4 · I1 · S4* → *C: Stop & Call — 112*, keine Mobilisation. Flags → II-2; BLS → III-2; LE → V-2.
]
#v(4pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#fff7ed"), stroke: 0.45pt + palette.warning.lighten(35%),
  )[
    #text(weight: "bold", fill: palette.warning.darken(10%), size: 8pt)[B1 — Refer only]
    #v(2pt)
    #set text(size: 7.3pt)
    55 J., einseitige Beinschwellung + Wadenschmerz nach Langstrecke, stabil, keine Dyspnoe; wünscht „Ausstreichen“.
    *R3 · I1 · S4* → *Refer only* bis Klärung; keine riskante PT. → V-1.
  ],
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#f0fdfa"), stroke: 0.45pt + palette.primary.lighten(30%),
  )[
    #text(weight: "bold", fill: palette.primary, size: 8pt)[B2 — Treat & Refer]
    #v(2pt)
    #set text(size: 7.3pt)
    48 J., subakuter LWS-Schmerz, leichte Gelb-Hinweise, stabile Neuro, keine Rot; HA-Termin in 2 Tagen; Bewegungsangst.
    *R2–3 · I3 · S2* → *Treat & Refer* + Safety-Netting (Fieber/Sattel/Blase/Progredienz → sofort eskalieren).
  ],
)

// ── Black flags ───────────────────────────────────────────────

#heading(level: 2)[6. Häufige Fehler (Black Flags der Logik)]
#set text(size: 8pt)
#enum(
  [*Nutzen vor Sicherheit:* I4 „fühlt sich richtig an“ trotz S3/S4],
  [*R3 mit Flag-Orange verwechseln* (ärztlich vs. psychosozial)],
  [*C ohne R/I/S* („wir mobilisieren mal“)],
  [*R4/R3 durch „noch drei Behandlungen“ verzögern*],
  [*S auf „Physio allgemein“* statt auf die konkrete Technik beziehen],
  [*Krankheitsspezifische RF ignorieren* zugunsten generischer Framework-Stundenfenster],
)

#heading(level: 2)[Verweise · Quellen]
#set text(size: 7.3pt, fill: palette.text-muted)
→ II-2 · → II-2b · → II-3 · → III-2 · → IV-2 · → V-Cauda · → V-1 / V-2
#v(2pt)
+ S1 Flaggen/Treat-vs-Refer · Kursbuch Drei-Achsen · Blueprint D-RISC · Legacy d-risc.md (didaktisch; KL-Masters priorisieren)

// Critical Claims copy-through (C audit table — exact pins for claims gate)
#heading(level: 2)[Critical Claims (copy-through)]
#set text(size: 6.8pt, fill: palette.text-muted)
#enum(
  [Jede Entscheidung endet mit R + I + S → C (konkreter Plan), nicht bei Flag-Label oder Bauchgefühl],
  [Default-to-Danger: R & S starten bei Stufe 4, bis Beweise Herabstufung erlauben; Burden-of-Proof: I startet bei I1],
  [Lebensgefahr-Cluster → R4 · S4 · C: Stop & 112; I nachrangig],
  [Rote Flags ohne Lebensgefahr → riskante PT stop (S4); Refer gleichtags/ED — nicht generisches 72-h-Fenster abwarten; KL-/Notfall-Masters priorisieren],
  [S ist maßnahmenspezifisch (Technik/Test), nicht „Physio pauschal“],
  [Flag-Orange (psychosozial) ≠ D-RISC-R3 (ärztlich zeitnah)],
  [Achsen A/B/C (Drei-Achsen) mappen auf R / S / I; D-RISC-C = Classification, nicht PT-Benefit],
  [RF abfragen ohne Aktion / R3–4 verzögern = Behandlerfehler (Black Flag)],
)
