// Pilot chapter — kl-kurz Osteoporose
// slug: kl-osteo-2026-08-01 · brief_class: exploration · quieter L2–L4
// content (C, read-only): Kursbuch5 …/chapter-v-3-osteoporose.md

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "/domains/medical/lib/typst/kl-wave6/osteo-2026-08-01.typ": *

#set document(
  title: "Osteoporose — kl-kurz exploration",
  author: "Book-Layouting-Typst · kl-osteo-2026-08-01",
)

#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 15mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 8pt, fill: luma(100))
    grid(
      columns: (1fr, auto),
      [Osteoporose · Fragilitätsfraktur · kl-kurz],
      [Exploration `kl-osteo-2026-08-01`],
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
  Osteoporose — stille Knochenminderung, Bagatellfraktur und Wirbelkörperfraktur-Screen
]
#v(3pt)
#text(size: 10pt)[Fragilitätsfraktur im Direktzugang · kein HVT bei unklarem WK-Status]
#v(7pt)

#block(
  width: 100%,
  inset: 8pt,
  radius: 2pt,
  fill: rgb("#fff7ed"),
  stroke: (left: 3.5pt + palette.warning, rest: 0.4pt + palette.warning.lighten(40%)),
)[
  #set text(size: 8.5pt)
  #text(weight: "bold", fill: palette.warning.darken(15%))[Gefahr im Direktzugang: ]
  Osteoporotische Wirbelkörper- oder Extremitätenfrakturen werden als „Block“, „Prellung“ oder unspezifischer Lumbago behandelt — während maligne/infektiöse Ursachen und neurologische Kompression übersehen werden. Fraktur nach Bagatell und begründeter WK-Fraktur-Verdacht → gleichtägige ärztliche Abklärung; *keine* forcierte Flexion, *kein* HVT.
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
    #text(size: 7.8pt, weight: "bold", fill: palette.primary)[Was ist Osteoporose?]
    #v(3pt)
    #set text(size: 7.3pt)
    Systemische Skeletterkrankung mit verminderter Knochenfestigkeit und erhöhtem Frakturrisiko. Oft lange stumm — zeigt sich als Fraktur nach Bagatelltrauma, akuter RS bei WK-Fraktur oder schleichende Größenabnahme mit Rundrücken.
  ],
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#fff7ed"), stroke: 0.4pt + palette.warning.lighten(35%),
  )[
    #text(size: 7.8pt, weight: "bold", fill: palette.warning.darken(10%))[Fehllabel]
    #v(3pt)
    #set text(size: 7.3pt)
    „Block“, Prellung, unspezifischer Lumbago — während Fragilitätsfraktur Bildgebung und Belastungspause braucht.
  ],
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border,
  )[
    #text(size: 7.8pt, weight: "bold", fill: palette.text-body)[HP-Rolle]
    #v(3pt)
    #set text(size: 7.3pt)
    Fraktur- und Red-Flag-Screening, Stopp gefährlicher Maßnahmen, Triage, Sturzprävention. Diagnose, DXA, Medikation, Frakturversorgung = *ärztlich*.
  ],
)

#v(5pt)
#set text(size: 9pt)
Bei *stabilen Mustern ohne Red Flags* bleiben Sturzprävention, Aktivitätsberatung und interprofessionelle Anbindung an Osteoporoseversorgung im physiotherapeutischen Rahmen möglich.

// ── §1 ────────────────────────────────────────────────────────

#heading(level: 2)[1. Wann ist daran zu denken?]
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Risiken / Auslöser]
    #v(3pt)
    #text(size: 8pt)[Höheres Alter; postmenopausaler Status; systemische Glukokortikoide; Immobilität; Rauchen; Untergewicht; endokrine Störungen; frühere Fragilitätsfrakturen; wiederholte Stürze.]
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Kontext]
    #v(3pt)
    #text(size: 8pt)[Akuter RS nach Bücken/Heben; nicht belastbare Extremität nach Bagatelltrauma; Größenverlust oder zunehmender Rundrücken — oft ohne „spektakuläres“ Trauma.]
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Zeit]
    #v(3pt)
    #text(size: 8pt)[Grunderkrankung chronisch; Frakturereignis abrupt (Bagatellsturz, Bücken, Husten, Heben).]
  ],
)

// ── §2 ────────────────────────────────────────────────────────

#heading(level: 2)[2. Entstehung und Mechanismus]
#set text(size: 9pt)
Ungleichgewicht zwischen Knochenabbau und -aufbau mindert Knochenmasse und -qualität. Bereits niedrige Krafteinwirkungen führen zu Frakturen — typisch an Wirbelkörpern, Schenkelhals, distalem Radius, Becken oder Rippen. Multiple WK-Frakturen fördern Kyphose, Größenabnahme und Immobilisation. Ohne rechtzeitige Erkennung: Folgefrakturen, neurologische Kompression bei WK-Kollaps, Immobilisationskomplikationen.

// ── §3 Criteria ───────────────────────────────────────────────

#heading(level: 2)[3. Klinische Hinweise]
#criteria-osteo()

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
  [Anamnese], [Oft lange asymptomatisch; akuter RS nach Bagatell/Bücken; Größenabnahme; frühere Frakturen; Glukokortikoide; Stürze; Untergewicht, Rauchen, Immobilität, endokrine Erkrankungen],
  [Beobachtung], [Zunehmender Rundrücken/Kyphose; scheinbar harmloses Trauma; Schonhaltung; bei Extremitätenfraktur: Schwellung, Fehlstellung, Unfähigkeit zu belasten],
  [Untersuchung], [Lokaler Druck-/Klopfschmerz über betroffener Wirbeletage; Belastungstest der Extremität; grobes neurologisches Screening der Beine; bei Sturz und Antikoagulation zusätzlich Kopftrauma-Screen],
  [Verlauf], [Chronische Knochenminderung; Fraktur akut; rezidivierende Bagatellfrakturen erhöhen den Verdacht stark],
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
      [Atraumatische oder niederenergetische Fraktur (v. a. WK, Schenkelhals)],
      [Akuter gürtelförmiger RS nach Bagatell oder Bücken],
      [Größenabnahme und Rundrücken],
      [Risikokontext (Alter, postmeno, Glukokortikoide, frühere Fragilitätsfrakturen)],
    )
  ],
  block(
    width: 100%, inset: 6.5pt, radius: 2pt,
    fill: rgb("#f8fafc"), stroke: 0.45pt + palette.border,
  )[
    #text(size: 8pt, weight: "bold", fill: palette.text-muted)[Passt eher nicht]
    #v(3pt)
    #set text(size: 7.3pt)
    Klar hochenergetisches Trauma bei junger, ansonsten gesunder Person ohne Risikokontext — dann eher klassische Traumafraktur; rein mechanischer Kreuzschmerz ohne Bagatellhinweis, ohne Größenverlust und ohne Risikofaktoren — dennoch bei unklarem Verlauf re-evaluieren.
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
  Maligne Fraktur / Metastasen / Myelom (Gewichtsverlust, B-Symptomatik, Tumoranamnese); Spondylodiszitis / spinaler Infekt; neurologische Ausfälle bei WK-Fraktur; Fraktur nach Bagatell an Extremität oder Becken; SHT bei Sturz unter Antikoagulation.
]

#v(8pt)
#mimic-osteo()

// ── §5 ────────────────────────────────────────────────────────

#heading(level: 2)[5. Handeln und Dringlichkeit]
#us-osteo()

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
  74-jährige Frau, gestern beim Bücken nach dem Einkaufskorb plötzlich stechende, gürtelförmige Schmerzen in der mittleren LWS. Seit Jahren niedrig dosiert Prednisolon wegen rheumatischer Erkrankung. Kein Sturz. Sie meint, es sei „wohl ein Block“. Beim Beklopfen der mittleren LWS lokaler Druckschmerz; Beine neurologisch grob unauffällig; Blase unauffällig. Sie wünscht „kräftige Mobilisation und Einrenken“.

  #v(5pt)
  #text(weight: "bold")[Fragen: ]
  (1) Welche Verdachtsdiagnose steht jetzt im Vordergrund? · (2) Welche Maßnahmen sind kontraindiziert? · (3) Was ist der nächste sichere Schritt?
]

// ── DDx ───────────────────────────────────────────────────────

#heading(level: 2)[DDx-Minimal]
#set text(size: 8pt)
#table(
  columns: (42mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Eher …*], [*Diskriminierende Unterschiede*],
  [Osteoporotische Fraktur], [Niederenergetisch/Bagatell; Risikokontext (Alter, postmeno, Glukokortikoide); oft WK, Schenkelhals, Radius, Becken, Rippe],
  [Unspezifischer Kreuzschmerz / „Block“], [Ohne Bagatellfraktur-Hinweis, ohne lokalen WK-Klopfschmerz-Cluster, ohne Fragilitätsrisiken — dennoch bei plötzlichem Onset nach Bücken WK-Fraktur mitdenken],
  [Maligne Fraktur / Myelom / Metastase], [Gewichtsverlust, B-Symptomatik, Tumoranamnese, nächtlicher Schmerz — gleichtags/ärztlich],
  [Spondylodiszitis / spinaler Infekt], [Fieber, Infektkontext, Ruhe-/Nachtsschmerz, Klopfschmerz],
  [Hochenergetische Traumafraktur], [Deutliches Trauma, oft jüngere Patientinnen/Patienten ohne Osteoporose-Risiko],
)

#v(6pt)
#set text(size: 8pt, fill: palette.text-muted)
→ Parent-System V-3 · → V-3-spondylodiszitis · → V-3-cauda-equina-syndrom · → IV-2 (Rücken-Leitsymptom).

// ── Quellen ───────────────────────────────────────────────────

#heading(level: 2)[Quellen]
#set text(size: 7.5pt, fill: palette.text-muted)
+ Dachverband Osteologie (DVO) / AWMF. S3-Leitlinie Prophylaxe, Diagnostik und Therapie der Osteoporose. 183-001. (Abruf: 2026-07-15)
+ AWMF. S2k-Leitlinie Diagnostik und Therapie osteoporotischer thorakolumbaler Wirbelfrakturen. 187-063. (Abruf: 2026-07-15)
+ AWMF. S3-Leitlinie Training zur Frakturprophylaxe. 183-002. (Abruf: 2026-07-15)
