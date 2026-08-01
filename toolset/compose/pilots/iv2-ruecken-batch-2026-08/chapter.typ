// Pilot chapter — leitsymptom Rückenschmerz + neuro (d-risc-batch)
// slug: iv2-ruecken-batch-2026-08 · brief_class: exploration
// content (C): Kursbuch5 …/2026-08-d-risc-batch/leitsymptom/chapter-iv-2-rueckenschmerz.md
// Dual must-not-miss: CES + Spondylodiszitis · order R→I→S→C

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-version
#fa-version("6") // fonts/ has FA6; package default is 7
#import "/domains/medical/lib/typst/d-risc-batch-2026-08/entscheidungs-flow.typ": entscheidungs-flow-ruecken-batch
#import "/domains/medical/lib/typst/explore-2026-08/chrome.typ": chrome-lead
#import "/domains/medical/lib/typst/explore-2026-08/section-rhythm.typ": setup-pilot-sections, pilot-title-stack

#set document(
  title: "IV-2 Rückenschmerz und neurologische Zeichen",
  author: "Book-Layouting-Typst · iv2-ruecken-batch-2026-08",
)

#set page(
  paper: "a4",
  // Compact but not sparse: margins leave room for scan without huge gutters
  margin: (inside: 16mm, outside: 13mm, top: 12mm, bottom: 13mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: luma(100))
    grid(
      columns: (1fr, auto),
      [IV-2 · Rückenschmerz + neuro · leitsymptom],
      [Exploration `iv2-ruecken-batch-2026-08`],
    )
    line(length: 100%, stroke: 0.35pt + luma(200))
  },
)

#show: setup-typography()
#show: setup-pilot-sections()

#pilot-title-stack(
  [IV-2 Rückenschmerz und neurologische Zeichen],
  subtitle: [Vom Leitsymptom zur Entscheidung treat / refer / 112 — Cauda equina *und* spinale Infektion nicht verpassen],
)

// Lead: flag chrome (ordinary RF gatekeeper) — not full-bleed shout
#chrome-lead(accent: palette.danger, level: "flag")[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.danger)[Erste Sicherheitsfrage: ]
  Neurologische Notfallzeichen (Reithosenanästhesie, Blasen-/Mastdarmstörung, rasch progrediente Parese)
  *oder* Infekt-/Systemzeichen (Fieber, Ruhe-/Nachtsschmerz, Klopfschmerz, Immunsuppression)?
  #linebreak()
  #text(size: 7pt, fill: palette.text-muted)[
    Dual R4: → V-3-cauda-equina-syndrom · → V-3-spondylodiszitis · Optional Navigator: → IV-0 (geplant)
  ]
]

// ── §1 Einstieg ───────────────────────────────────────────────

#heading(level: 2)[1. Einstieg]
#set text(size: 8.5pt)
#set par(leading: 0.36em)
Die Person kommt wegen Rückenschmerz — oft mit der Erwartung, „blockiert“ zu sein.
Unspezifische Lumbago erst nach *negativem* Flag-Screen (CES *und* Infekt).

// ── §2 Ursachenmatrix R4→R1 compact ───────────────────────────

#heading(level: 2)[2. Ursachenmatrix (R4 → R1)]
#set text(size: 7.1pt)
#block(
  width: 100%, inset: (x: 6pt, y: 4.5pt), radius: 2pt,
  fill: rgb("#fef2f2"), stroke: (left: 2.75pt + palette.danger, rest: 0.35pt + palette.danger.lighten(40%)),
)[
  #text(weight: "bold", fill: palette.danger, size: 7.4pt)[R4 — sofort Notfallpfad]
  #v(2.5pt)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 6pt,
    text[*CES / spinaler Notfall:* Reithosenanästhesie; Harnverhalt/Inkontinenz; bilaterale progrediente Schwäche],
    text[*Spondylodiszitis / Abszess / AAA:* Rücken + Fieber + Neuro; Sepsis; Schock/abdominelle Ausstrahlung],
  )
]
#v(3pt)
#block(
  width: 100%, inset: (x: 6pt, y: 4.5pt), radius: 2pt,
  fill: rgb("#fff7ed"), stroke: (left: 2.75pt + palette.warning, rest: 0.35pt + palette.warning.lighten(35%)),
)[
  #text(weight: "bold", fill: palette.warning.darken(10%), size: 7.4pt)[R3 — gleichtags / ED]
  #v(2pt)
  #set text(size: 7.1pt)
  *Unilaterale Parese* ohne Sattel/Blase · *Infekt-Risiko* (i.v. Drogen/Immunsuppression + Klopfschmerz) ·
  *Tumor* (ungewollter Gewichtsverlust) · *Fraktur* (Trauma/Osteoporose)
]
#v(3pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 4.5pt,
  block(
    width: 100%, inset: (x: 6pt, y: 4.5pt), radius: 2pt,
    fill: rgb("#f8fafc"), stroke: 0.35pt + palette.border,
  )[
    #text(weight: "bold", size: 7.4pt, fill: palette.text-body)[R2 — unklar / gelbe Flags]
    #v(2pt)
    #text(size: 7.1pt)[Flags negativ, aber Persistenz, Unsicherheit, begleitende Systemfragen — Abklärung sinnvoll, nicht notfallmäßig.]
  ],
  block(
    width: 100%, inset: (x: 6pt, y: 4.5pt), radius: 2pt,
    fill: rgb("#f0fdfa"), stroke: 0.35pt + palette.primary.lighten(30%),
  )[
    #text(weight: "bold", size: 7.4pt, fill: palette.primary)[R1 — nicht-spezifisch]
    #v(2pt)
    #text(size: 7.1pt)[Akuter Kreuzschmerz ohne Red Flags: negatives Flag-Screen, neurologisch stabil, keine Systemik.]
  ],
)
#v(2pt)
#text(size: 6.6pt, fill: palette.text-muted)[
  Keine Patho-Erklärungen in der Matrix — Details in den Master-Kapiteln.
]

// ── §3 Entscheidungs-Flow (dual cluster) ──────────────────────

#heading(level: 2)[3. Entscheidungs-Flow]
#entscheidungs-flow-ruecken-batch(show-footer: true)

// ── §4 Red-Flag-Box — breakable so p1 tail fills (no sparse white band) ─

#v(4pt)
#block(
  width: 100%, inset: (x: 5pt, y: 2.5pt), radius: 2pt,
  fill: rgb("#fef2f2"), stroke: (left: 2.75pt + palette.danger, rest: 0.3pt + palette.danger.lighten(50%)),
)[
  #set text(size: 8.5pt, weight: "bold", fill: palette.danger)
  4. Red-Flag-Box (Rücken / neuro / Infekt)
]
#v(2.5pt)
#set text(size: 6.9pt)
#table(
  columns: (48mm, 30mm, 1fr),
  stroke: 0.35pt + palette.border,
  inset: 3.2pt,
  fill: (_, y) => {
    if y == 0 { rgb("#fef2f2") }
    else if y <= 6 { rgb("#fef2f2").lighten(40%) }
    else if y <= 8 { rgb("#fff7ed") }
    else { rgb("#f0fdfa") }
  },
  [*Kriterium*], [*Dringlichkeit*], [*Aktion*],
  [Neue *Reithosenanästhesie* (Perineum / Sattel / Genitalien)], [*112 / Notaufnahme*], [CES-Pfad; PT abbrechen; Notfall-MRT fachärztlich],
  [Akute *Blasen-/Darmstörung* (Harnverhalt, fehlender Drang, Inkontinenz)], [*112 / Notaufnahme*], [CES-Pfad; keine lumbale Intervention],
  [*Bilaterale, rasch progrediente* Beinschwäche], [*112 / Notaufnahme*], [Notfall-Neuro / Wirbelsäule],
  [Rückenschmerz + *Fieber/Infektzeichen* + lokaler *Klopfschmerz*], [*112 / Notaufnahme*], [Spondylodiszitis / Abszess-Pfad],
  [Neurologische Ausfälle oder CES-Cluster *bei* spinalem Infektverdacht], [*112*], [Abszess / Kompression],
  [*Sepsis*-Instabilität (Kreislauf, Verwirrtheit) mit Rückenfokus], [*112*], [Sepsis-Notfallpfad],
  [Rücken-Ruhe-/Nachtsschmerz + i.v. Drogen / Immunsuppression (auch ohne Fieber)], [*gleichtags–Notaufnahme*], [Infekt trotzdem erwägen],
  [Unilaterale *progrediente Parese* ohne Sattel/Blase], [*gleichtags / Notaufnahme*], [Radikulopathie-Abklärung; MRT ärztlich],
  [Ungewollter Gewichtsverlust, Tumoranamnese, anhaltender Nachtschmerz], [*zeitnah–gleichtags Arzt*], [Tumor / Metastase nicht verpassen],
)
#v(2pt)
#text(size: 6.4pt, fill: palette.text-muted)[
  Nur dieses Leitsymptom. Generische Listen: → II-2b / Anhang C (geplant).
]

// ── §5 R → I → S → C ──────────────────────────────────────────

#v(3pt)
#block(
  width: 100%, inset: (x: 5pt, y: 2.5pt), radius: 2pt,
  fill: rgb("#f0fdfa"), stroke: (left: 2.75pt + palette.primary, rest: 0.3pt + palette.primary.lighten(45%)),
)[
  #set text(size: 8.5pt, weight: "bold", fill: palette.primary)
  5. R → I → S → C (Abschlussblock)
]
#v(2.5pt)
#set text(size: 6.8pt)
#table(
  columns: (50mm, 9mm, 12mm, 12mm, 1fr),
  stroke: 0.35pt + palette.border,
  inset: 3pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Konstellation*], [*R*], [*I*], [*S*], [*C (Handlung)*],
  [Reithosenanästhesie ± Blasenstörung ± bilaterale Parese], [4], [1], [4], [*112 / Notaufnahme*; Stop PT; CES-Master],
  [Rücken + Fieber + Klopfschmerz / Neuro bei Infektverdacht], [4], [1], [4], [*112 / Notaufnahme*; Stop PT; Spondylodiszitis-Master],
  [Unilaterale progrediente Kraftminderung, Sattel/Blase negativ, stabil], [3], [1–2], [3–4], [*Arzt gleichtags / Notaufnahme*; keine Provokation/HVT],
  [Ruhe-/Nachtsschmerz + Immunsuppression/IVDU, kein grobes Neuro], [3], [1–2], [3–4], [*gleichtags–ED*; Infektabklärung; PT-Stop bis Freigabe],
  [Akuter lumbaler Schmerz, Flags negativ, neurologisch stabil], [1], [3], [1–2], [*Treat + Safety-Netting* (3-3-3 / wann Notfall?)],
)

#v(2.5pt)
#block(
  width: 100%, inset: 4pt, radius: 2pt,
  fill: rgb("#f8fafc"), stroke: 0.35pt + palette.border,
)[
  #set text(size: 7pt)
  #text(weight: "bold", fill: palette.primary-dark)[I und S nicht weglassen.]
  #h(4pt)
  Denkreihenfolge *nicht* R→S→I — Reihenfolge = D-RISC-Akronym (*R → I → S → C*).
]

// ── §6 Kontrastpaare ──────────────────────────────────────────

#v(3pt)
#block(
  width: 100%, inset: (x: 5pt, y: 2.5pt), radius: 2pt,
  fill: rgb("#fff7ed"), stroke: (left: 2.75pt + palette.warning, rest: 0.3pt + palette.warning.lighten(45%)),
)[
  #set text(size: 8.5pt, weight: "bold", fill: palette.warning.darken(12%))
  6. Kontrastpaare
]
#v(2.5pt)
#set text(size: 6.8pt)
#table(
  columns: (36mm, 36mm, 1fr),
  stroke: 0.35pt + palette.border,
  inset: 3pt,
  fill: (_, y) => if y == 0 { rgb("#fef2f2") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Eher …*], [*vs. …*], [*Einzeiler*],
  [Unspezifischer Kreuzschmerz], [Cauda equina], [Schmerz allein entlastet nicht — Sattel/Blase/Parese *gezielt* fragen],
  [„Radikulopathie einseitig“], [Bilaterale Parese / CES], [Einseitigkeit beruhigt nicht, wenn Sattel oder Blase dazukommen],
  [„Muskelhartspann“], [Spondylodiszitis], [Hartspann erklärt *kein* Fieber, Klopfschmerz und Ruhe-/Nachtsschmerz],
  [axSpA-Muster], [Infekt], [Entzündlicher Rücken ohne Fieber-Screen ist eine Falle — Infekt zuerst denken],
)

// ── §7 Master-Verweise ────────────────────────────────────────

#v(3pt)
#block(
  width: 100%, inset: (x: 5pt, y: 2.5pt), radius: 2pt,
  fill: rgb("#f0fdfa"), stroke: (left: 2.75pt + palette.primary, rest: 0.3pt + palette.primary.lighten(45%)),
)[
  #set text(size: 8.5pt, weight: "bold", fill: palette.primary)
  7. Master-Verweise
]
#v(2.5pt)
#set text(size: 6.7pt)
#table(
  columns: (52mm, 1fr),
  stroke: 0.35pt + palette.border,
  inset: 2.8pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Wenn Verdacht auf …*], [*Master*],
  [Cauda-equina-Syndrom], [→ V-3-cauda-equina-syndrom],
  [Spondylodiszitis / spinaler Infekt], [→ V-3-spondylodiszitis · → V-8 Sepsis (geplant)],
  [Akuter nicht-spezifischer Kreuzschmerz], [→ V-3-lumbago-akuter-nicht-spezifische (geplant)],
  [Knochenmetastasen / Tumor], [→ V-5-knochenmetastasen (geplant)],
  [Degenerative WS], [→ V-3-degenerative-erkrankungen-der-wir (geplant)],
  [Notfall-Detailkarten], [→ III-5 (geplant)],
)

#v(2.5pt)
#block(width: 100%, breakable: false)[
  #text(size: 7.2pt, weight: "bold", fill: palette.primary)[Quellen]
  #v(1pt)
  #set text(size: 6.1pt, fill: palette.text-muted)
  NVL Nicht-spezifischer Kreuzschmerz 2017 · DGOU S2k 187-059 · AWMF 030-070 · AWMF 151-001 · AWMF 079-001 · NICE CKS Cauda (Abruf 2026-07-14/15)
  #v(2.5pt)
  #text(size: 7.2pt, weight: "bold", fill: palette.primary)[Critical Claims (copy-through)]
  #v(1pt)
  #set text(size: 6pt, fill: palette.text-muted)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 5pt,
    row-gutter: 1.2pt,
    [1. Neue Reithosenanästhesie → 112/NA, absolute PT-KI],
    [2. Akute Blasen-/Darmstörung → 112/NA],
    [3. Bilaterale rasch progrediente Beinschwäche → 112/NA],
    [4. Rücken + Fieber/Infekt + Klopfschmerz → 112/ED],
    [5. Neuro/CES bei spinalem Infektverdacht → 112],
    [6. Ruhe-/Nacht + IVDU/Immunsupp. ohne Fieber → gleichtags–ED],
    [7. Unilaterale progrediente Parese ohne Sattel/Blase → gleichtags/ED],
    [8. Flow endet R → I → S → C (I/S nicht weglassen)],
    [9. Dual R4 masters: CES + Spondylodiszitis — beide sichtbar],
    [10. Kein Patho-Essay; Master-Links statt Krankheitstiefe],
  )
]

