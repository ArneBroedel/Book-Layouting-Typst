// Pilot chapter — kl-kurz Akutes Kompartmentsyndrom
// slug: kl-kompartment-2026-08-01 · brief_class: exploration · clean slate
// No anatomy free vision — criteria code panel
// content (C, read-only): Kursbuch5 …/chapter-v-3-kompartmentsyndrom.md

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "/domains/medical/lib/typst/kl-wave6/kompartment-2026-08-01.typ": *

#set document(
  title: "Akutes Kompartmentsyndrom — kl-kurz exploration",
  author: "Book-Layouting-Typst · kl-kompartment-2026-08-01",
)

#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 15mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 8pt, fill: luma(100))
    grid(
      columns: (1fr, auto),
      [ACS · stundenkritische Ischämie · kl-kurz],
      [Exploration `kl-kompartment-2026-08-01`],
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
  Akutes Kompartmentsyndrom — Stundenschnelle Ischämie hinter „Muskelkater“ und engem Verband
]
#v(3pt)
#text(size: 10pt)[ACS im Direktzugang · Pulse schließen ACS nicht aus]
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
  Unbehandelt drohen irreversible Muskel- und Nervenschäden, Kontrakturen und Amputation — innerhalb weniger Stunden.
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
    #text(size: 7.8pt, weight: "bold", fill: palette.primary)[Was ist ACS?]
    #v(3pt)
    #set text(size: 7.3pt)
    Druckanstieg in geschlossener osteofaszialer Loge → Perfusion↓ → Ischämie/Nekrose in *wenigen Stunden* unbehandelt. Typisch Unterschenkel (vordere Loge), Unterarm.
  ],
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#fef2f2"), stroke: 0.4pt + palette.danger.lighten(35%),
  )[
    #text(size: 7.8pt, weight: "bold", fill: palette.danger)[Fehllabel]
    #v(3pt)
    #set text(size: 7.3pt)
    Muskelkater, Prellung, „zu enger Gips“ — während Ischämie stundenkritisch fortschreitet. *Erhaltene Pulse schließen ACS nicht aus.*
  ],
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border,
  )[
    #text(size: 7.8pt, weight: "bold", fill: palette.text-body)[HP-Rolle]
    #v(3pt)
    #set text(size: 7.3pt)
    Screening, *sofortiger Therapieabbruch*, Notfallweiterleitung (Unfallchirurgie/NA; bei rascher Verschlechterung *112*). ACS ist *kein* PT-Behandlungsfall.
  ],
)

#v(5pt)
#set text(size: 9pt)
Beim *akuten Kompartmentsyndrom (ACS)* steigt der Druck in einem geschlossenen osteofaszialen Kompartiment kritisch an. Das chronische (belastungsabhängige) Kompartmentsyndrom klingt in Ruhe ab und stellt keinen akuten Ischämie-Notfall dar — eskalieren Beschwerden zu Ruhe- oder Dehnungsschmerz, ist *sofortige Re-Triage* erforderlich.

// ── §1 ────────────────────────────────────────────────────────

#heading(level: 2)[1. Wann ist daran zu denken?]
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Risiken / Auslöser]
    #v(3pt)
    #text(size: 8pt)[Hochenergie-Trauma; Röhrenknochenfraktur (Tibia, Unterarm); postoperativ/Reperfusion; Tourniquet; enge Gipse/Verbände; Antikoagulation; Crush.]
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Maskierung]
    #v(3pt)
    #text(size: 8pt)[Analgesie, Sedierung, Kindesalter, Kommunikationsbarrieren — besonders wachsam bleiben.]
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Zeit]
    #v(3pt)
    #text(size: 8pt)[Stunden (bis ~48 h) nach Ereignis; früh: Schmerz ≫ Verletzung, Dehnungsschmerz, brettharte Loge; spät: Parästhesie, Parese, erst sehr spät Pulsverlust.]
  ],
)

// ── §2 ────────────────────────────────────────────────────────

#heading(level: 2)[2. Entstehung und Mechanismus]
#set text(size: 9pt)
Blutung, Ödem oder externe Kompression erhöhen den Druck im nicht dehnbaren Faszienfach. Venöser Rückstau, Kapillarkollaps, Perfusion bricht ab — stundenkritische Ischämie. Unbehandelt: irreversible Nekrose, Kontrakturen, Amputation; schwere Verläufe Rhabdomyolyse/MOV.
#v(4pt)
#block(
  width: 100%, inset: 7pt, radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.danger)[Hochlagerung über Herzhöhe ]
  mindert die arterielle Perfusion und ist bei ACS-Verdacht *keine* sinnvolle Maßnahme und kein Ersatz für die Notfallversorgung.
]

// ── §3 Criteria ambition ──────────────────────────────────────

#heading(level: 2)[3. Klinische Hinweise]
#criteria-acs()

// Keep Vier-Kanäle block intact (avoid orphan H after dense criteria)
#pagebreak()
#text(size: 9pt, weight: "bold", fill: palette.primary)[Vier Kanäle (Detail)]
#v(4pt)
#set text(size: 7.5pt)
// Layout revise: quiet cards (avoid table-wall + orphan header after criteria grid)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 5pt,
  block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(weight: "bold", fill: palette.primary)[Anamnese]
    #v(2pt)
    Posttrauma/postoperativ; Schmerz deutlich stärker als zur Verletzung passend und analgetisch kaum beherrschbar; enger Gips/Verband mit zunehmendem Schmerz.
  ],
  block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(weight: "bold", fill: palette.primary)[Beobachtung]
    #v(2pt)
    Prall-bretthartes Kompartiment; glänzende Haut; betroffene Extremität oft geschwollen.
  ],
  block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(weight: "bold", fill: palette.primary)[Untersuchung]
    #v(2pt)
    Extrem verstärkter Schmerz bei passiver Dehnung (z. B. Plantarflexion vord. US); neue Hypästhesie / Fußheberschwäche; *Pulse können erhalten sein*.
  ],
  block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(weight: "bold", fill: palette.primary)[Verlauf]
    #v(2pt)
    Eskalation über Stunden; späte neurologische Ausfälle und Pulsverlust = fortgeschrittene Ischämie.
  ],
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
      [Schmerz deutlich stärker als zur Verletzung passend (disproportional)],
      [massiver passiver Dehnungsschmerz],
      [brettharte Loge],
      [neue neurologische Defizite],
      [Zunahme unter engem Gips/Verband],
    )
  ],
  block(
    width: 100%, inset: 6.5pt, radius: 2pt,
    fill: rgb("#f8fafc"), stroke: 0.45pt + palette.border,
  )[
    #text(size: 8pt, weight: "bold", fill: palette.text-muted)[Passt eher nicht]
    #v(3pt)
    #set text(size: 7.3pt)
    Rein belastungsabhängiger Logenschmerz, der in Ruhe *vollständig abklingt* (chronisch/exertional), ohne Ruhesymptome und ohne neurologische Ausfälle — bei Eskalation *re-triagieren*.
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
  ACS auch ohne Fraktur (Weichteiltrauma); erhaltene Pulse; maskierte Symptome unter Analgesie/Sedierung und bei Kindern.
]

#v(8pt)
#mimic-acs()

// ── §5 ────────────────────────────────────────────────────────

#heading(level: 2)[5. Handeln und Dringlichkeit]
#us-acs()

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
  28-jähriger Patient, gestern Tibiaschaftfraktur operiert, heute in der Praxis zur „frühen Mobilisation“. Der Unterschenkel schmerzt trotz Analgesie extrem; passive Plantarflexion löst stechenden Schmerz aus; die vordere Loge ist prall und bretthart; Fußpulse sind tastbar. Der Patient meint, es sei „nur der enge Verband“.

  #v(5pt)
  #text(weight: "bold")[Fragen: ]
  (1) Was steht jetzt im Vordergrund? · (2) Was ist kontraindiziert? · (3) Nächster sicherer Schritt?
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
  [Akutes Kompartmentsyndrom], [Disproportionaler Schmerz, passiver Dehnungsschmerz, brettharte Loge; Pulse oft erhalten],
  [Akute art. Extremitätenischämie], [Plötzlich kalt/blass, oft pulslos; weniger brettharte Weichteilschwellung],
  [Tiefe Venenthrombose], [Subakut, warm, venöser Druckschmerz; selten extremes disproportionales Schmerzbild],
  [Nekrotisierende Fasziitis], [Rasche Hautnekrose/Blasen, Fieber, systemische Toxizität],
  [Traumatische Nervenläsion], [Defizit ohne harte, extrem schmerzhafte Loge],
  [Fraktur ohne ACS], [Schmerz korreliert mit Fraktursegment; Loge nicht global prall — *Re-Evaluation*],
)

#v(6pt)
#set text(size: 8pt, fill: palette.text-muted)
→ Parent-System V-3 · MSK-Überlastung erst nach Ausschluss zeitkritischer Ischämie.

// ── Quellen ───────────────────────────────────────────────────

#heading(level: 2)[Quellen]
#set text(size: 7.5pt, fill: palette.text-muted)
+ NICE NG37 Fractures (complex). (Abruf: 2026-07-14)
+ Torlincasi AM et al. Acute Compartment Syndrome. StatPearls 2023.
+ Kalbas Y et al. Akutes Kompartmentsyndrom der Extremitäten. Der Chirurg 2023.
+ AMBOSS. Kompartmentsyndrom (sekundär). (Abruf: 2026-07-14)
