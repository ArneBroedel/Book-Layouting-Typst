// Pilot chapter — kl-voll Myokardinfarkt / ACS
// slug: kl-mi-2026-08-01 · brief_class: exploration · clean slate
// Layout doctrine: nested multi-T1 + mimic; no free anatomy heart
// content (C, read-only): Kursbuch5 …/chapter-v-1-myokardinfarkt.md

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "/domains/medical/lib/typst/kl-wave6/mi-2026-08-01.typ": *

#set document(
  title: "Myokardinfarkt und ACS — kl-voll exploration",
  author: "Book-Layouting-Typst · kl-mi-2026-08-01",
)

#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 15mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 8pt, fill: luma(100))
    grid(
      columns: (1fr, auto),
      [Myokardinfarkt · ACS · nested multi-T1 · kl-voll],
      [Exploration `kl-mi-2026-08-01`],
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
  Myokardinfarkt und akutes Koronarsyndrom
]
#v(3pt)
#text(size: 10pt)[Wenn Brustschmerz, Schulter oder Oberbauch den Herzinfarkt maskieren]
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
  ACS liegt vollständig außerhalb des PT-Auftrags. Fälschliche Einordnung als muskulärer Brust-, Schulter- oder BWS-Schmerz kann tödlich enden — *Im Zweifel Notruf.*
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
    Instabile Angina, NSTEMI und STEMI — akute Koronarereignisse nach Plaqueruptur und Thrombus. Folge: Ischämie, Arrhythmie, Schock, plötzlicher Herztod.
  ],
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#fef2f2"), stroke: 0.4pt + palette.danger.lighten(35%),
  )[
    #text(size: 7.8pt, weight: "bold", fill: palette.danger)[Fehllabel]
    #v(3pt)
    #set text(size: 7.3pt)
    „Muskulärer“ Brust-/Schulter-/BWS-Schmerz, „Magen“, „Panik“ — während kardialer Ruheschmerz mit Vegetativum fortbesteht. *Palpation schließt ACS nicht aus.*
  ],
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border,
  )[
    #text(size: 7.8pt, weight: "bold", fill: palette.text-body)[HP-Rolle]
    #v(3pt)
    #set text(size: 7.3pt)
    Jeder plausible Verdacht → *Triage*, meist *112*; absolute Ruhe; keine Belastung, keine manuelle Thorax-„Abklärung“. ACS ist *kein* PT-Behandlungsfeld.
  ],
)

#v(5pt)
#set text(size: 9pt)
Das *akute Koronarsyndrom (ACS)* fasst instabile Koronarereignisse zusammen. Die Entscheidungsschwelle bleibt bewusst niedrig: Im Zweifel Notruf statt Belastung bei Infarktverdacht. STEMI und NSTE-ACS sind für HP/Physio *beide* Notfallpfad — keine EKG-Differenzierung als Aufgabe.

// ── §1 ────────────────────────────────────────────────────────

#heading(level: 2)[1. Wann ist daran zu denken?]
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Risiken / Auslöser]
    #v(3pt)
    #text(size: 8pt)[Alter; männliches Geschlecht; Rauchen; Hypertonie; Dyslipidämie; Diabetes; Adipositas; bekannte Atherosklerose (KHK, pAVK, TIA/Schlaganfall).]
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Kontext]
    #v(3pt)
    #text(size: 8pt)[Bekannte stabile Angina, die plötzlich häufiger, stärker oder länger wird (*Crescendo*); Diabetes und höheres Alter mit oft atypischer Präsentation.]
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Zeit / Trigger]
    #v(3pt)
    #text(size: 8pt)[Plötzlich in Ruhe oder unter leichter Belastung; retrosternaler Druck/Enge oft ≥15–20 min; *nicht klar bewegungsgebunden*.]
  ],
)

// ── §2 ────────────────────────────────────────────────────────

#heading(level: 2)[2. Entstehung und Mechanismus]
#set text(size: 9pt)
Plaqueruptur → Thrombozytenaggregation und Gerinnung → Thrombus → vollständiger Verschluss (typ. STEMI) bzw. kritische Flusslimitierung (NSTEMI / instabile Angina) → Myokardischämie und ggf. Nekrose → Arrhythmie, kardiogener Schock, Lungenödem, plötzlicher Herztod.
#v(4pt)
#block(
  width: 100%, inset: 7pt, radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.danger)[Praxis-Konsequenz: ]
  Belastung und manuelle Thorax-Intervention erhöhen den myokardialen O₂-Bedarf bzw. verzögern den Notruf → *Stopp der Sitzung*, absolute Ruhe, Notruf bei plausibler Konstellation.
]

// ── §3 ────────────────────────────────────────────────────────

#heading(level: 2)[3. Klinische Hinweise]
#set text(size: 8pt)
#table(
  columns: (28mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Domäne*], [*Erwartbare Merkmale*],
  [Anamnese], [Retrosternaler Druck, Enge, Vernichtungsgefühl; Ausstrahlung Arm(e)/Kiefer/Hals/Rücken/Schulter; Dauer oft ≥15–20 min; Dyspnoe, Übelkeit, Kaltschweiß, Angst; Selbstvermutung „könnte vom Herzen sein“],
  [Beobachtung], [Blässe, Kaltschweißigkeit, Unruhe, Schonhaltung, ggf. Atemnot in Ruhe],
  [Untersuchung], [Keine sichere MSK-Erklärung; Palpationsschmerz *schließt ACS nicht aus*; Vitale Instabilität (Schock, Synkope): sofort 112; keine weiteren Tests],
  [Verlauf], [Plötzlich oder crescendoartig; Ruheschmerz bei bekannter KHK; atypisch bei Frauen, Älteren, Diabetiker:innen (Dyspnoe, Epigastrium, Müdigkeit, Rücken-/Schulterschmerz)],
)

// ── §4 ────────────────────────────────────────────────────────

#heading(level: 2)[4. Verdacht, Abgrenzung und Warnsignale]
#section-four-mi()

// ── §5 ────────────────────────────────────────────────────────

#heading(level: 2)[5. Handeln und Dringlichkeit]
#us-mi()

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
  62-jährige Patientin wegen „linker Schulter und BWS“ nach dem Wochenende. Seit gestern abend dumpfer Druck hinter dem Brustbein, der in den linken Arm zieht, etwa 25 Minuten in Ruhe; leichter Kaltschweiß, Übelkeit. Bekannte Hypertonie und Rauchen. Die paravertebrale BWS ist druckdolent; sie wünscht „Einrenken“.

  #v(5pt)
  #text(weight: "bold")[Fragen: ]
  (1) Was steht jetzt im Vordergrund? · (2) Was ist kontraindiziert? · (3) Nächster sicherer Schritt?
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
  [STEMI / NSTEMI], [Anginöser Ruheschmerz, Vegetativum, Risikoprofil → *112*],
  [Instabile Angina], [Crescendo oder Ruheschmerz bei bekannter KHK → *112* / Notfallpfad bis Ausschluss],
  [Aortendissektion], [Plötzlicher vernichtender Thorax-/Rückenschmerz, ggf. Pulsdefizit → *112*],
  [Lungenembolie], [Eher pleuritisch-atemabhängig, Dyspnoe, VTE-Kontext — nicht als BWS belasten],
  [Perikarditis], [Oft lage-/atemabhängig — keine Selbst-Entwarnung bei kardialem Gesamteindruck],
  [Reflux / Ulkus], [Epigastrium ohne Vegetativum und ohne Risiko möglich — *bei Vegetativum + Risiko: ACS nicht ausschließen*],
  [MSK-Thorax], [Klar bewegungsabhängig, reproduzierbar, ohne Red Flags und ohne kardialen Gesamteindruck — PT mit Sicherheitsnetz],
)

#v(4pt)
#set text(size: 7.5pt, fill: palette.text-muted)
→ Parent-System V-1 · Master ersetzt nicht Slave-Karten III-acs / IV-brustschmerz · MHS entwarnt im Direktzugang *nicht*.

// ── Quellen (unbreakable quiet trailer — avoid orphan heading) ─

#block(breakable: false, width: 100%)[
  #v(2pt, weak: true)
  #text(size: 9pt, weight: "bold", fill: palette.primary)[Quellen]
  #v(2pt)
  #set text(size: 7pt, fill: palette.text-muted)
  #set par(leading: 0.45em)
  Byrne RA et al. 2023 ESC Guidelines ACS. Eur Heart J. 2023. · DEGAM S3 Brustschmerz (AWMF 053-023). · Deutscher Herzbericht 2022. · Donner-Banzhoff N et al. Marburger Herz-Score. CMAJ 2010. (Abrufe: 2026-07-14)
]
