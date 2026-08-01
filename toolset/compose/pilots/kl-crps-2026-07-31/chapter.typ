// Pilot chapter — kl-kurz CRPS (Morbus Sudeck)
// slug: kl-crps-2026-07-31 · brief_class: exploration · clean slate
// Layout doctrine: avoid *empty* sprawl, never *squish* — natural book rhythm
// Regional cues: Typst code winner (free PNG demoted — illustration-semantics FAIL)
// content (C, read-only): Kursbuch5 …/chapter-v-3-crps-sudeck.md

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "/domains/medical/lib/typst/kl-wave6/crps-2026-07-31.typ": *

#set document(
  title: "CRPS (Morbus Sudeck) — kl-kurz exploration",
  author: "Book-Layouting-Typst · kl-crps-2026-07-31",
)

#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 15mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 8pt, fill: luma(100))
    grid(
      columns: (1fr, auto),
      [CRPS · Morbus Sudeck · kl-kurz],
      [Exploration `kl-crps-2026-07-31`],
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

#text(size: 15pt, weight: "bold", fill: palette.primary)[
  CRPS (komplexes regionales Schmerzsyndrom / Morbus Sudeck)
]
#v(3pt)
#text(size: 10pt)[disproportionaler Extremitätenschmerz nach Trauma]
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
  Hinter dem Label „Sudeck“ können Infekt, Kompartmentsyndrom oder arterieller Gefäßnotfall stecken — und unbehandeltes CRPS chronifiziert.
]

// ── Big Picture ───────────────────────────────────────────────

#heading(level: 2)[Big Picture]
#bp-crps()
#v(6pt)
#set text(size: 9pt)
Das *komplexe regionale Schmerzsyndrom (CRPS, Morbus Sudeck)* ist ein regionales Schmerzsyndrom nach Trauma oder Operation einer Extremität. Charakteristisch sind Schmerzen, die deutlich stärker ausfallen als zur Verletzung passend, verbunden mit sensorischen, motorischen, vasomotorischen und trophischen Störungen — typischerweise distal der Läsion. Im Direktzugang ist die eigentliche Gefahr die Fehllabelung: Entweder werden lebensbedrohliche Differenzialdiagnosen als „CRPS“ abgetan, oder ein echtes CRPS wird als „normaler Heilungsschmerz“ oder reine Psychosomatik bagatellisiert. Die Budapest-Diagnose ist *ärztlich*. Aufgabe der HP Physio ist die Früherkennung, der Ausschluss von Notfall-Differenzialdiagnosen und die zeitnahe Facharztzuweisung.

// ── §1 Enabling ───────────────────────────────────────────────

#heading(level: 2)[1. Wann ist daran zu denken?]
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Auslöser]
    #v(3pt)
    #text(size: 8pt)[Fraktur, Operation, Distorsion oder Nervenverletzung an Arm oder Bein.]
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Kontext]
    #v(3pt)
    #text(size: 8pt)[Postoperative oder posttraumatische Nachsorge. Psychische Last entwarnt *nicht*.]
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Zeit]
    #v(3pt)
    #text(size: 8pt)[Tage bis Wochen post Trauma; schleichend; bleibt oder nimmt zu statt abzuklingen.]
  ],
)

// ── §2 Mechanism ──────────────────────────────────────────────

#heading(level: 2)[2. Entstehung und Mechanismus]
#set text(size: 9pt)
Nach Extremitätentrauma greifen entzündliche, nervale und autonome Mechanismen ineinander. Folge: regionäre Fehlregulation mit anhaltendem, disproportionalem Schmerz, Allodynie/Hyperalgesie, Durchblutungs- und Temperaturstörungen sowie trophischen Veränderungen. Unbehandelt droht Chronifizierung mit Funktionsverlust. Das CRPS-Label darf *nicht* darüber hinwegtäuschen, dass sich darunter Infekt, Kompartmentsyndrom oder Gefäßnotfall verbergen können — diese zuerst ausschließen.

// ── §3 Regional cues (code winner) ────────────────────────────

#heading(level: 2)[3. Klinische Hinweise]
#regional-cues-crps()

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
  [Anamnese], [Trauma/OP; brennender, stechender oder dumpfer Schmerz *deutlich stärker als zur Verletzung passend*; Berührungsempfindlichkeit; Schwellung; Farb- oder Temperaturdifferenz; vermehrtes Schwitzen; motorische Unsicherheit],
  [Beobachtung], [Asymmetrische Schwellung; Hautfarbe blass, rötlich oder livide; trophische Veränderungen (Haut, Nägel, Behaarung); Schonhaltung],
  [Untersuchung], [Seitenvergleich (Temperatur, Farbe, Schwitzen); Allodynie bei leichter Berührung; Hyperalgesie; Kraft und Sensibilität; periphere Pulse; Wundstatus und systemische Infektzeichen],
  [Verlauf], [Tage bis Wochen post Trauma; Persistenz oder Zunahme statt erwarteter Heilung; bei Fieber, eitriger Wunde, rascher Spannungszunahme oder Pulslosigkeit *sofortige* Notfall-Re-Triage],
)

// ── §4 ────────────────────────────────────────────────────────

#heading(level: 2)[4. Verdacht, Abgrenzung und Warnsignale]
#discrimination-crps()
#v(8pt)
#mimic-crps()

// ── §5 ────────────────────────────────────────────────────────

#heading(level: 2)[5. Handeln und Dringlichkeit]
#us-crps()

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
  45-jährige Patientin, vor sechs Wochen distale Radiusfraktur konservativ behandelt. Sie kommt zur „Nachbehandlung“. Die Hand schmerzt brennend, ist berührungsempfindlich, geschwollen und wärmer als die Gegenseite; die Haut glänzt, die Finger bewegen sich kaum. Fieber besteht nicht, Pulse sind tastbar, die Wunde ist reizlos. Die Patientin meint, sie sei „einfach überempfindlich“.

  #v(5pt)
  #text(weight: "bold")[Fragen: ]
  (1) Was ist jetzt vorrangig? · (2) Was ist kontraindiziert? · (3) Was ist der nächste sichere Schritt?
]

// ── DDx ───────────────────────────────────────────────────────

#heading(level: 2)[DDx-Minimal]
#set text(size: 8pt)
#table(
  columns: (38mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Eher …*], [*Diskriminierende Unterschiede*],
  [*CRPS*], [Tage–Wochen post Trauma; disproportionaler Schmerz + Allodynie + vegetative/trophische Zeichen regional distal],
  [*Akutes Kompartmentsyndrom*], [Stundenkritisch posttrauma/post-OP; brettharte Loge, passiver Dehnungsschmerz, rasche Eskalation → *Notfall*],
  [*Tiefe Infektion / Osteomyelitis / septische Arthritis*], [Fieber, eitrige Wunde, systemische Infektzeichen, lokale Rötung/Hitze mit Toxizität],
  [*Arterielle Ischämie*], [Plötzlich kalt, blass, oft pulslos],
  [*TVT der Extremität*], [Subakut, oft Unterschenkel/Bein, Risikofaktoren, weniger Allodynie/trophisches Vollbild],
  [*Isolierte periphere Nervenläsion*], [Defizit im Nervenversorgungsgebiet *ohne* regionales vegetativ-trophisches Muster],
  [*Somatische Belastungsstörung*], [*erst nach* Ausschluss organischer und notfallrelevanter Ursachen],
)

#v(6pt)
#text(size: 8pt, fill: luma(90))[
  Parent-System V-3 · MSK-Nachbehandlung erst nach Ausschluss zeitkritischer Differenzialdiagnosen und bei CRPS-Verdacht mit Facharztanbindung.
]

#v(8pt)
#heading(level: 2)[Quellen]
#set text(size: 8pt)
1. AWMF. Leitlinie Reg.-Nr. 030-116 (CRPS). \
2. AWMF. S2k Venenthrombose und Lungenembolie (065-002). \
3. NICE NG158 Venous thromboembolic diseases. \
4. AMBOSS. Complex Regional Pain Syndrome / CRPS (sekundär).
