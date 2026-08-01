// Pilot chapter — kl-kurz Akutes Kompartmentsyndrom
// slug: kl-kompartment-batch-2026-08 · brief_class: exploration · d-risc-batch
// Density doctrine: compact book body — full use of page, no sparse ends

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "/domains/medical/lib/typst/d-risc-batch-2026-08/kompartment.typ": *
#import "/domains/medical/lib/typst/explore-2026-08/section-rhythm.typ": setup-pilot-sections, pilot-title-stack

#set document(
  title: "Akutes Kompartmentsyndrom — kl-kurz exploration (d-risc-batch)",
  author: "Book-Layouting-Typst · kl-kompartment-batch-2026-08",
)

#set page(
  paper: "a4",
  margin: (inside: 16mm, outside: 13mm, top: 12mm, bottom: 13mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: luma(100))
    grid(
      columns: (1fr, auto),
      [ACS · stundenkritische Ischämie · kl-kurz],
      [Exploration `kl-kompartment-batch-2026-08`],
    )
    line(length: 100%, stroke: 0.35pt + luma(200))
  },
)

#show: setup-typography()
#show: setup-pilot-sections()

// ── Title ─────────────────────────────────────────────────────

#pilot-title-stack(
  [Kompartmentsyndrom – Schmerz out of proportion ist Notfall],
  subtitle: [ACS im Direktzugang · Pulse schließen ACS nicht aus],
)

#block(
  width: 100%,
  inset: (x: 6.5pt, y: 5.5pt),
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger, rest: 0.35pt + palette.danger.lighten(40%)),
)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  Unbehandelt drohen irreversible Muskel- und Nervenschäden, Nekrose und im Extremfall Amputation — innerhalb weniger Stunden.
]

// ── Big Picture ───────────────────────────────────────────────

#heading(level: 2)[Big Picture]
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 4pt,
  block(
    width: 100%, inset: 5.5pt, radius: 2pt,
    fill: rgb("#f0fdfa"), stroke: 0.35pt + palette.primary.lighten(25%),
  )[
    #text(size: 7.4pt, weight: "bold", fill: palette.primary)[Was ist ACS?]
    #v(2pt)
    #set text(size: 7pt)
    Kritische Druckerhöhung in geschlossenem muskelfaszialen Kompartiment → Ischämie/Nekrose in *wenigen Stunden*. Typisch Unterschenkel (vordere Loge), Unterarm — auch *ohne* Fraktur.
  ],
  block(
    width: 100%, inset: 5.5pt, radius: 2pt,
    fill: rgb("#fef2f2"), stroke: 0.35pt + palette.danger.lighten(35%),
  )[
    #text(size: 7.4pt, weight: "bold", fill: palette.danger)[Fehllabel]
    #v(2pt)
    #set text(size: 7pt)
    Muskelkater, Prellung, „zu enger Gips“ — während Ischämie stundenkritisch fortschreitet. *Erhaltene Pulse schließen ACS nicht aus.*
  ],
  block(
    width: 100%, inset: 5.5pt, radius: 2pt,
    fill: rgb("#f8fafc"), stroke: 0.35pt + palette.border,
  )[
    #text(size: 7.4pt, weight: "bold", fill: palette.text-body)[HP-Rolle]
    #v(2pt)
    #set text(size: 7pt)
    Erkennen, *Sofortstopp*, Notfallweiterleitung (Unfallchirurgie/NA; bei rascher Verschlechterung *112*). ACS ist *kein* PT-Behandlungsfall.
  ],
)

#v(4pt)
#set text(size: 8.2pt)
#set par(leading: 0.36em, first-line-indent: 0pt)
Beim *akuten Kompartmentsyndrom (ACS)* steigt der Druck in einem geschlossenen osteofaszialen Kompartiment kritisch an. Chronisch-belastungsabhängig klingt in Ruhe ab — eskalieren Beschwerden zu Ruhe- oder Dehnungsschmerz: *sofortige Re-Triage*.

// ── §1 ────────────────────────────────────────────────────────

#heading(level: 2)[1. Wann ist daran zu denken?]
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 4pt,
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.35pt + palette.border)[
    #set align(left)
    #text(size: 7.4pt, weight: "bold", fill: palette.primary)[Risiken / Auslöser]
    #v(2pt)
    #text(size: 7.2pt)[Hochenergie-Trauma; Röhrenknochenfraktur; postoperativ/Reperfusion; Tourniquet; enge Gipse/Verbände; Crush; Antikoagulation.]
  ],
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.35pt + palette.border)[
    #set align(left)
    #text(size: 7.4pt, weight: "bold", fill: palette.primary)[Maskierung]
    #v(2pt)
    #text(size: 7.2pt)[Analgesie, Sedierung, Kindesalter, Kommunikationsbarrieren — besonders wachsam bleiben.]
  ],
  block(width: 100%, inset: 5pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.35pt + palette.border)[
    #set align(left)
    #text(size: 7.4pt, weight: "bold", fill: palette.primary)[Zeit]
    #v(2pt)
    #text(size: 7.2pt)[Stunden (bis ~48 h); früh: Schmerz ≫ Verletzung, Dehnungsschmerz, brettharte Loge; spät: Parese, Pulsverlust.]
  ],
)

// ── §2 ────────────────────────────────────────────────────────

#heading(level: 2)[2. Entstehung und Mechanismus]
#set text(size: 8.2pt)
#set par(leading: 0.34em)
Blutung, Ödem oder externe Kompression erhöhen den Druck im nicht dehnbaren Faszienfach. Venöser Rückstau, Kapillarkollaps, Perfusion bricht ab — stundenkritische Ischämie. Deshalb zählt der klinische Verdacht — nicht das Abwarten auf späte Pulse- oder Farbsignale.
#v(3pt)
#block(
  width: 100%, inset: (x: 6pt, y: 5pt), radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger, rest: 0.35pt + palette.danger.lighten(40%)),
)[
  #set text(size: 7.6pt)
  #text(weight: "bold", fill: palette.danger)[Hochlagerung über Herzhöhe ]
  mindert die arterielle Perfusion und ist bei ACS-Verdacht *keine* sinnvolle Maßnahme und kein Ersatz für die Notfallversorgung.
]

// ── §3 Criteria + Vier Kanäle (one recognition cluster) ───────

#heading(level: 2)[3. Klinische Hinweise]
#block(width: 100%, breakable: false)[
  #criteria-acs()
  #v(3.5pt)
  #channels-acs()
]

// ── §4 ────────────────────────────────────────────────────────

#heading(level: 2)[4. Verdacht, Abgrenzung und Warnsignale]
#grid(
  columns: (1fr, 1fr),
  column-gutter: 4.5pt,
  block(
    width: 100%, inset: 5.5pt, radius: 2pt,
    fill: rgb("#f0fdfa"), stroke: 0.4pt + palette.primary.lighten(30%),
  )[
    #set align(left)
    #set list(indent: 0pt, body-indent: 0.5em)
    #text(size: 7.6pt, weight: "bold", fill: palette.primary)[Erhärtet den Verdacht]
    #v(2.5pt)
    #set text(size: 7pt)
    #list(
      tight: true,
      [out-of-proportion-Schmerz + passiver Dehnungsschmerz ± brettharte Loge],
      [Eskalation unter engem Gips/Verband],
      [neue Taubheit/Schwäche im Versorgungsgebiet],
    )
  ],
  block(
    width: 100%, inset: 5.5pt, radius: 2pt,
    fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border,
  )[
    #set align(left)
    #text(size: 7.6pt, weight: "bold", fill: palette.text-muted)[Passt eher nicht]
    #v(2.5pt)
    #set text(size: 7pt)
    Rein belastungsabhängiger Logenschmerz, der in Ruhe *rasch abklingt* (exertional / chronisch), *ohne* Ruhe-Dehnungsschmerz und ohne Neuro — bei Umschlag Richtung Ruhesymptomatik *neu triagieren*.
  ],
)

#v(3.5pt)
#block(
  width: 100%, inset: 5.5pt, radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger, rest: 0.35pt + palette.danger.lighten(40%)),
)[
  #text(size: 7.6pt, weight: "bold", fill: palette.danger)[Nicht übersehen]
  #v(2pt)
  #set text(size: 7pt)
  Akute arterielle Extremitätenischämie; nekrotisierende Weichteilinfektion; schwere Kontusion *mit* beginnendem ACS; TVT (meist anderes Tempo/Bild). ACS auch ohne Fraktur; erhaltene Pulse; maskierte Symptome unter Analgesie/Sedierung und bei Kindern.
]

// Mimic atomic — no mid-stack orphan; natural page break before if needed
#v(6pt)
#block(width: 100%, breakable: false)[
  #mimic-acs()
]

// ── §5 ────────────────────────────────────────────────────────

#heading(level: 2)[5. Handeln und Dringlichkeit]
#us-acs()

// ── §6 Fall + DDx + Quellen ───────────────────────────────────

#heading(level: 2)[6. Fall zur Selbstprüfung]
#block(
  width: 100%,
  inset: 6.5pt,
  radius: 2pt,
  fill: rgb("#f8fafc"),
  stroke: 0.4pt + palette.border,
)[
  #set text(size: 8.2pt)
  #set par(leading: 0.34em)
  #text(weight: "bold")[Situation: ]
  28-jährige Person, vor 8 Stunden Tibiaschaftfraktur reponiert und gegipst. Jetzt „unerträgliche“ Unterschenkelschmerzen trotz Analgesie. Die vordere Loge fühlt sich prall an; passive Plantarflexion steigert den Schmerz massiv. Fußpulse sind tastbar. Die Person bittet um „Lockerungsmassage und Hochlagerung“.

  #v(3.5pt)
  #text(weight: "bold")[Fragen: ]
  (1) Was steht jetzt im Vordergrund? · (2) Was ist kontraindiziert? · (3) Nächster sicherer Schritt?
]

#v(5pt)
#block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: white,
  stroke: (left: 2.75pt + palette.primary, rest: 0.35pt + palette.border),
)[
  #set align(left)
  #set list(indent: 0pt, body-indent: 0.5em)
  #set text(size: 7.5pt)
  #text(weight: "bold", fill: palette.primary)[Denk-Anker (ohne Lösung): ]
  #v(2.5pt)
  #set text(size: 7.2pt)
  #list(
    tight: true,
    [Welche Zeichen (out-of-proportion / Dehnung / Loge) stehen *jetzt* im Vordergrund — trotz tastbarer Pulse?],
    [Warum sind Lockerungsmassage und Hochlagerung *kontraindiziert*?],
    [Welcher TIME-Code (T1/T2) greift — und was ist SCOPE?],
  )
]

#heading(level: 2)[DDx-Minimal]
#set text(size: 7.4pt)
#table(
  columns: (40mm, 1fr),
  stroke: 0.35pt + palette.border,
  inset: 4pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Eher …*], [*Diskriminierende Unterschiede*],
  [Akutes Kompartmentsyndrom], [Out-of-proportion-Schmerz, passiver Dehnungsschmerz, brettharte Loge; Pulse oft erhalten],
  [Akute art. Extremitätenischämie], [Plötzlich kalt/blass, oft pulslos; weniger brettharte Weichteilschwellung],
  [Tiefe Venenthrombose], [Subakut, warm, venöser Druckschmerz; selten extremes disproportionales Schmerzbild],
  [Nekrotisierende Weichteilinfektion], [Rasche Hautnekrose/Blasen, Fieber, systemische Toxizität],
  [Schwere Kontusion ohne ACS], [Schmerz korreliert eher mit Trauma; Loge nicht global prall — Re-Evaluation],
)

#v(4pt)
#set text(size: 7.2pt, fill: palette.text-muted)
→ Parent-System V-3 · Trauma-Kontext: IV-3 / IV-11 (geplant) · postop Flags: V-14 (geplant).

#heading(level: 2)[Quellen]
#set text(size: 7pt, fill: palette.text-muted)
#set par(leading: 0.34em, first-line-indent: 0pt)
#set enum(indent: 0pt, body-indent: 0.55em)
+ NICE NG37 Fractures (complex): assessment and management. (Abruf: 2026-07-14)
+ Torlincasi AM et al. Acute Compartment Syndrome. StatPearls 2023.
+ Donaldson J et al. Pathophysiology, Diagnosis and Current Management of ACS. Open Orthop J. 2014.
+ Kalbas Y et al. Akutes Kompartmentsyndrom der Extremitäten. Der Chirurg 2023.
+ NHS Scotland / North of Scotland Major Trauma Guidelines. Compartment syndrome. (Abruf: 2026-07-14)
+ AWMF S3 Polytrauma / Schwerverletzten-Behandlung (ACS nur peripher; keine dedizierte Extremitäten-ACS-LL).
