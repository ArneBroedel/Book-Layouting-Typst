// Pilot chapter — kl-kurz Gicht
// slug: kl-gicht-2026-07-31 · brief_class: exploration · clean slate
// Layout doctrine: avoid *empty* sprawl, never *squish* — natural book rhythm
// Hot joint: solid clinical panel default (free vision → claim audit may upgrade hybrid)
// content (C, read-only): Kursbuch5 …/chapter-v-3-gicht.md

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "/domains/medical/lib/typst/kl-wave6/gicht-2026-07-31.typ": *

#set document(
  title: "Gicht — kl-kurz exploration",
  author: "Book-Layouting-Typst · kl-gicht-2026-07-31",
)

#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 15mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 8pt, fill: luma(100))
    grid(
      columns: (1fr, auto),
      [Gicht · heiße Monarthritis · kl-kurz],
      [Exploration `kl-gicht-2026-07-31`],
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
  Gicht — hochakute Monarthritis und das septische Gelenk
]
#v(3pt)
#text(size: 10pt)[Kristallarthropathie im Direktzugang · septisch bis zum Ausschluss]
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
  Eine „typische Podagra“ kann eine septische Arthritis maskieren; Kristallnachweis und Gichtanamnese entwarnen nicht.
]

// ── Big Picture ───────────────────────────────────────────────

#heading(level: 2)[Big Picture]
#bp-gicht()
#v(6pt)
#set text(size: 9pt)
Die Gicht ist die klinische Manifestation einer Hyperurikämie mit Ablagerung von Natriumuratkristallen in Gelenken und Weichteilen. Im Direktzugang dominiert der hochakute, hochschmerzhafte Monoarthritis-Anfall — klassisch am Großzehengrundgelenk (Podagra), mit Rötung, Überwärmung und oft Belastungsunfähigkeit, typischerweise innerhalb von Stunden. Die größte Gefahr ist die Fehllabelung: Ein heißes Gelenk mit Fieber oder Systemik darf nicht als „nur Gicht“ abgetan werden. Eine septische Arthritis muss stets bis zum ärztlichen Ausschluss mitgedacht werden. Die HP Physio screent auf Infekt- und Systemzeichen, triagiert und belässt Diagnosesicherung sowie medikamentöse Anfallstherapie in ärztlicher Hand; bei Systembedrohung *112*, bei heißem Gelenk mit Infektverdacht gleichtags die *Notaufnahme*.

// ── §1 Enabling ───────────────────────────────────────────────

#heading(level: 2)[1. Wann ist daran zu denken?]
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Risiken / Auslöser]
    #v(3pt)
    #text(size: 8pt)[Hyperurikämie; purinreiche Ernährung; Alkohol; Diuretika; Adipositas; eingeschränkte Nierenfunktion.]
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Kontext]
    #v(3pt)
    #text(size: 8pt)[Bekannte Gichtattacken oder Tophi; metabolisches Syndrom; Nierenerkrankung; Hautläsionen/Ulzera über Tophi.]
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Zeit / Trigger]
    #v(3pt)
    #text(size: 8pt)[Akut innerhalb von Stunden; oft nach Alkohol, festlicher Mahlzeit, medikamentöser Änderung. Rezidive stützen — entwarnen Systemik *nicht*.]
  ],
)

// ── §2 Mechanism ──────────────────────────────────────────────

#heading(level: 2)[2. Entstehung und Mechanismus]
#set text(size: 9pt)
Erhöhte Harnsäurespiegel führen zur Ausfällung von Natriumuratkristallen in der Synovia und im periartikulären Gewebe. Die Kristalle triggern eine rasche neutrophile Entzündungsreaktion mit hochakutem Schmerz, Rötung und Schwellung. Chronisch können Tophi und Gelenkschäden entstehen. Für den Direktzugang folgt daraus: Das klinische Bild einer Kristallarthropathie ist eindrucksvoll, aber klinisch oft *nicht sicher* von einer bakteriellen Arthritis zu trennen — und eine Superinfektion von Tophi oder Gelenk bleibt möglich.

// ── §3 Hot joint + cues ───────────────────────────────────────

#heading(level: 2)[3. Klinische Hinweise]
// Hybrid ship: free gestalt (claim audit PASS/DRIFT) + Typst safety band
#hot-joint-gicht(
  asset: "/domains/medical/assets/kl-gicht-2026-07-31/vision-free-01.png",
  mode: "hybrid",
)

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
  [Anamnese], [Hochakuter Mono-Gelenkschmerz binnen Stunden; oft MTP-I (Podagra); frühere Attacken; Alkohol, Diuretika, purinreiche Kost; Fieber? Hautverletzung?],
  [Beobachtung], [Rötung, Überwärmung, Schwellung; Schonhaltung; ggf. Tophi; bei Systemik blasser/mitgenommener Gesamteindruck],
  [Untersuchung], [Starke Druck- und Bewegungsschmerzhaftigkeit; oft Belastungsunfähigkeit; grobe Funktionsprüfung *ohne* forcierte Manipulation am unklar heißen Gelenk],
  [Verlauf], [Anfall: Stunden bis wenige Tage; rezidivierend möglich; polyartikulärer Entzündungssturm mit Systemik entspricht *keinem* gewöhnlichen Gichtschub],
)

// ── §4 ────────────────────────────────────────────────────────

#heading(level: 2)[4. Verdacht, Abgrenzung und Warnsignale]
#discrimination-gicht()
#v(8pt)
#mimic-gicht()

// ── §5 ────────────────────────────────────────────────────────

#heading(level: 2)[5. Handeln und Dringlichkeit]
#us-gicht()

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
  54-jähriger Mann, seit gestern Nacht „wieder Podagra“ am rechten Großzeh. Das MTP-I ist gerötet, heiß und extrem berührungsempfindlich; er belastet den Vorfuß nicht. Er trinkt regelmäßig Bier und nimmt ein Thiazid-Diuretikum. Heute Morgen Fiebergefühl, oral 38,3 °C, er wirkt abgeschlagen. Er bittet um „lokale Entlastung und Mobilisation wie beim letzten Schub“.

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
  [Gicht (Kristallarthropathie)], [Hochakut Stunden, oft MTP-I, Trigger Alkohol/Diuretika, frühere Attacken — ohne schwere Systembedrohung],
  [Septische Arthritis], [Heißes Gelenk + Fieber/Systemik/Belastungsunfähigkeit; *auch bei Gichtanamnese* bis Ausschluss],
  [Pseudogicht / CPPD], [Oft größere Gelenke (Knie); klinisch im Erstkontakt oft untrennbar],
  [Trauma / Fraktur], [Klare Mechanik, ggf. Hämatom; entzündliches Mono-Bild fehlt oder ist atypisch],
  [Erysipel / Weichteilinfekt], [Primär kutan; Gelenkbeweglichkeit oft freier — im Zweifel nicht herabstufen],
  [RA / SpA-Schub], [Oft polyartikulär/chronisch-schubförmig; akute Monoarthritis mit Hitze bleibt infektpflichtig],
)

#v(6pt)
#set text(size: 8pt, fill: palette.text-muted)
→ Parent-System V-3 · bei heißem Gelenk immer bakterielle Arthritis mitdenken · Kristalle entwarnen nicht.

// ── Quellen ───────────────────────────────────────────────────

#heading(level: 2)[Quellen]
#set text(size: 7.5pt, fill: palette.text-muted)
+ Deutsche Gesellschaft für Rheumatologie (DGRh) u. a. S3-Leitlinie Diagnostik und Therapie der Gicht. AWMF-Reg. 060-005. (Abruf: 2026-07-15)
+ DEGAM. S2e-Leitlinie Akute Gicht. AWMF-Reg. 053-032b. (Abruf: 2026-07-15)
+ AMBOSS. Gicht (klinischer Kontext, sekundär). (Abruf: 2026-07-15)
