// Pilot chapter — kl-voll Lungenembolie (kl-kurz layout rhythm)
// slug: kl-le-2026-08-01 · brief_class: exploration · clean slate
// Layout doctrine: avoid *empty* sprawl, never *squish* — natural book rhythm
// Free vision: SKIP — code densifies nested multi-T1
// content (C, read-only): Kursbuch5 …/chapter-v-2-lungenembolie.md

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "/domains/medical/lib/typst/kl-wave6/le-2026-08-01.typ": *

#set document(
  title: "Lungenembolie — kl exploration",
  author: "Book-Layouting-Typst · kl-le-2026-08-01",
)

#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 15mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 8pt, fill: luma(100))
    grid(
      columns: (1fr, auto),
      [Lungenembolie · VTE-Triage · kl-voll],
      [Exploration `kl-le-2026-08-01`],
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
  Lungenembolie — plötzliche Atemnot und der Triage-Auftrag ohne Behandlungsprobe
]
#v(3pt)
#text(size: 10pt)[LE im Direktzugang · Wells nur Sensibilisierung · Palpation schließt LE nicht aus]
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
  Jeder plausible LE-Verdacht ist ein Triagefall — keine Indikation für probeweises Behandeln. Fehllabel „BWS-Blockade“ oder post-OP-Verspannung können High-Risk und stabil-verdächtige LE maskieren.
]

// ── Big Picture ───────────────────────────────────────────────

#heading(level: 2)[Big Picture]
#bp-le()
#v(6pt)
#set text(size: 9pt)
Die akute Lungenembolie ist die plötzliche oder subakute Verlegung von Lungenarterien — meist durch Thromben aus einer tiefen Bein- oder Beckenvenenthrombose — und gilt als klinisch schwerwiegendstes Ereignis der venösen Thromboembolie. Im Direktzugang liegt die LE vollständig außerhalb des physiotherapeutischen Behandlungsauftrags: Jeder plausible Verdacht ist ein Triagefall. Primärer *112*-Trigger ist die hämodynamische Instabilität (Schock, persistierende Hypotonie); eine stark erniedrigte Sauerstoffsättigung stützt die Schwere, ersetzt aber nicht allein die High-Risk-Einordnung. Bei stabilem, aber klarem LE-Verdacht endet die Session zugunsten der Notaufnahme oder gleichtägigen ärztlichen Abklärung — ohne Belastungstest und ohne manuelle Thoraxintervention.

// ── §1 Enabling ───────────────────────────────────────────────

#heading(level: 2)[1. Wann ist daran zu denken?]
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Risiken / Auslöser]
    #v(3pt)
    #text(size: 8pt)[Große orthopädische/abdominale OP (Hüft-/Knie-TEP, Arthroskopie); längere Immobilität (Langstreckenflug ca. über 4 h, Gips, Bettlägerigkeit); Trauma; schwere Infektion (inkl. COVID-19); aktive Krebserkrankung.]
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Kontext]
    #v(3pt)
    #text(size: 8pt)[Höheres Alter; hormonelle Veränderungen (z. B. Schwangerschaft); Adipositas; frühere VTE; Thrombophilie; einseitige Beinschwellung/-rötung als TVT-Hinweis.]
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Zeit / Trigger]
    #v(3pt)
    #text(size: 8pt)[Klassisch perakut: schlagartige Dyspnoe + pleuritischer Schmerz Stunden bis Tage nach OP/Immobilität. Subakut: schleichende Belastungsdyspnoe bei intermediärem Risiko.]
  ],
)

// ── §2 Mechanism ──────────────────────────────────────────────

#heading(level: 2)[2. Entstehung und Mechanismus]
#set text(size: 9pt)
Ein Thrombus aus den tiefen Venen wandert in die pulmonale Strombahn und verlegt Arterienabschnitte. Dadurch entsteht ein Ventilations-Perfusions-Mismatch mit Gasaustauschstörung; der plötzliche Druckanstieg belastet den rechten Ventrikel bis zur Dilatation. Bei massiver Verlegung sinkt das Schlagvolumen — Schock, Synkope und Hypoxämie können folgen. Belastung, forcierte Mobilisation oder Provokationstests können diese Dekompensation beschleunigen. Die eigentliche Gefahr bei Verkennung sind das obstruktive Rechtsherzversagen und der kardiogene Schock.

#v(4pt)
#block(
  width: 100%,
  inset: 7pt,
  radius: 2pt,
  fill: rgb("#fff7ed"),
  stroke: (left: 3pt + palette.warning, rest: 0.4pt + palette.warning.lighten(40%)),
)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.warning.darken(15%))[Kontraindiziert bei Verdacht: ]
  Belastungstests, Mobilisation „zur Diagnostik“, manuelle Techniken an HWS/BWS/Thorax bei ungeklärtem akutem pleuritischen Schmerz.
]

// ── §3 Cues ───────────────────────────────────────────────────

#heading(level: 2)[3. Klinische Hinweise]
#set text(size: 8pt)
#table(
  columns: (28mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Domäne*], [*Erwartbare Merkmale*],
  [Anamnese], [Plötzliche oder rasch zunehmende Dyspnoe; atemabhängiger (pleuritischer) Thoraxschmerz; ggf. Hämoptyse; Synkope/Präsynkope; OP/Immobilität/TVT-Zeichen in den letzten Wochen],
  [Beobachtung], [Unruhe, Angst, Blässe, Kaltschweißigkeit; Schonatmung; bei Instabilität Schockzeichen],
  [Untersuchung], [Tachypnoe, Tachykardie (häufig HF über 100/min); RR-Abfall bei High-Risk; SpO₂ erniedrigt möglich; einseitige Beinschwellung/Rötung als TVT-Hinweis; Thoraxpalpation kann lokal empfindlich sein — schließt LE *nicht* aus],
  [Verlauf], [Ohne ärztliche Abklärung Risiko der raschen Verschlechterung unter Belastung; keine „sichere“ Besserung durch manuelle BWS-Behandlung als Ausschlusskriterium],
)

// ── §4 ────────────────────────────────────────────────────────

#heading(level: 2)[4. Verdacht, Abgrenzung und Warnsignale]
#discrimination-le()
#v(8pt)
#mimic-le()

// ── §5 ────────────────────────────────────────────────────────

#heading(level: 2)[5. Handeln und Dringlichkeit]
#us-le()

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
  58-jährige Patientin, Tag 10 nach Knie-TEP, kommt zur „Narben- und Gangmobilisation“. Seit gestern stechender rechtsseitiger Thoraxschmerz, den sie der „ungewohnten Krücke und BWS-Verspannung“ zuschreibt. In Ruhe leichte Luftnot; Puls 108/min, RR 118/75 mmHg, SpO₂ 93 %. Die paravertebrale BWS ist druckdolent; die Wadenschwellung rechts ist „seit der OP ohnehin da“.

  #v(5pt)
  #text(weight: "bold")[Fragen: ]
  (1) Was steht jetzt im Vordergrund? · (2) Was ist kontraindiziert? · (3) Nächster sicherer Schritt?
]

// ── DDx ───────────────────────────────────────────────────────

#heading(level: 2)[Differenzialdiagnostische Abgrenzung]
#set text(size: 8pt)
#table(
  columns: (32mm, 1fr, 28mm),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Verdacht*], [*Abgrenzende Hinweise*], [*Triage*],
  [ACS], [eher dumpf-drückend, retrosternal, oft nicht primär atemabhängig; Ausstrahlung Arm/Unterkiefer; vegetativ], [112 / NA],
  [Aortendissektion], [abrupter reißender Schmerz, oft Rücken/zwischen Schulterblätter; RR-Seitendifferenz], [*112*],
  [Pneumothorax], [plötzlich atemabhängiger Schmerz + Dyspnoe; asymmetrische Exkursion], [NA / 112],
  [Schwere Pneumonie], [Fieber, produktiver Husten, eher gradueller Beginn über Tage], [gleichtags–NA],
  [Akute HI / Lungenödem], [Orthopnoe, feuchte Rasselgeräusche, bekannte Kardiopathie], [NA / 112],
)

#v(6pt)
#set text(size: 8pt, fill: palette.text-muted)
Lebensbedrohliche DDx stehen vor jeder muskuloskelettalen Zuschreibung. Erst wenn vitale und anamnestische Warnzeichen fehlen und ein klares mechanisches Korrelat ohne Dyspnoe besteht, rücken BWS-Syndrom oder Interkostalneuralgie in den Vordergrund — mit Sicherheitsnetz.

// ── Quellen ───────────────────────────────────────────────────

#heading(level: 2)[Quellen]
#set text(size: 7.5pt, fill: palette.text-muted)
+ Linnemann B et al. Diagnostik und Therapie der tiefen Venenthrombose und Lungenembolie – AWMF-S2k-Leitlinie 065-002. Version 5.0. 2023. (Abruf: 2026-07-14)
+ Konstantinides SV et al. 2019 ESC Guidelines for the diagnosis and management of acute pulmonary embolism. Eur Heart J. 2020;41:543–603. (Abruf: 2026-07-14)
+ NICE. Venous thromboembolic diseases (NG158). 2020. (Abruf: 2026-07-14)
+ DEGAM. S3-Leitlinie Brustschmerz – primärärztliche Versorgung. Version 2.2. 2024. (Abruf: 2026-07-14)
