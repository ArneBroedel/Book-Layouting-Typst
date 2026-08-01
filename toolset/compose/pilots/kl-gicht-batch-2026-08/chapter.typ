// Pilot chapter — kl-kurz Gicht · d-risc-batch 2026-08
// slug: kl-gicht-batch-2026-08 · brief_class: exploration
// Layout doctrine: book rhythm — anti-squish / anti-sprawl
// Hot joint: solid clinical panel (code default; no free vision)
// content (C, read-only): Kursbuch5 …/2026-08-d-risc-batch/monographs/chapter-v-3-gicht.md
// notes: …/notes/v-3-gicht.notes.md

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "/domains/medical/lib/typst/d-risc-batch-2026-08/gicht.typ": *
#import "/domains/medical/lib/typst/explore-2026-08/section-rhythm.typ": setup-pilot-sections, pilot-title-stack

#set document(
  title: "Gicht — kl-kurz exploration (d-risc-batch)",
  author: "Book-Layouting-Typst · kl-gicht-batch-2026-08",
)

#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 15mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 8pt, fill: luma(100))
    grid(
      columns: (1fr, auto),
      [Gicht · akute Monarthritis · septischer Zweifel],
      [Exploration `kl-gicht-batch-2026-08`],
    )
    line(length: 100%, stroke: 0.4pt + luma(200))
  },
)

#show: setup-typography()
#show: setup-pilot-sections(h2-size: 11pt)

// ── Title ─────────────────────────────────────────────────────

#pilot-title-stack(
  [Gicht — akute Monarthritis und der septische Zweifel],
  subtitle: [Kristallarthropathie im Direktzugang · septisch bis zum Ausschluss],
  title-size: 15pt,
  subtitle-size: 10pt,
)

#block(
  width: 100%,
  inset: 8pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
)[
  #set text(size: 8.5pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  Jedes unklare heiße Gelenk gilt bis zur ärztlichen Klärung als potenziell septisch — auch bei Gichtanamnese. Podagra-Muster ersetzt keinen Infekt-Screen (Fieber, AZ).
]

// ── Big Picture ───────────────────────────────────────────────

#heading(level: 2)[Big Picture]
#bp-gicht()
#v(5pt)
#set text(size: 8.5pt)
#list(
  tight: false,
  [Klinisch: *hochakuter, oft nächtlich beginnender Monoarthritis-Anfall* — klassisch MTP-I (Podagra), möglich auch an anderen Gelenken.],
  [Gatekeeper-Gefahr: *Verwechslung mit / Überlagerung durch bakterielle Arthritis* — unklar heißes Gelenk = septisch bis ärztlicher Ausschluss.],
  [Außerhalb der PT-Zuständigkeit: Diagnose, Punktion, medikamentöse Anfallstherapie; bei Fieber/Systemik *endet* die Behandlung.],
)

// ── §1 Enabling ───────────────────────────────────────────────

#heading(level: 2)[1. Wann ist daran zu denken?]
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Risiken / Auslöser]
    #v(3pt)
    #text(size: 8pt)[Hyperurikämie; männliches Geschlecht bzw. postmenopausale Frauen; Adipositas; Alkohol; purinreiche Ernährung; Niereninsuffizienz; Diuretika.]
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Kontext]
    #v(3pt)
    #text(size: 8pt)[Metabolisches Syndrom; bekannte frühere Attacken — entlasten den septischen Ausschluss *nicht* allein.]
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Zeit / Trigger]
    #v(3pt)
    #text(size: 8pt)[Maximaler Schmerz oft innerhalb von Stunden; Rötung, Schwellung, Unmöglichkeit der Belastung.]
  ],
)

// ── §2 Mechanism ──────────────────────────────────────────────

#heading(level: 2)[2. Entstehung und Mechanismus]
#set text(size: 8.5pt)
#list(
  tight: false,
  [Harnsäure ↑ → Natriumuratkristalle in Gelenk/Weichteil → intensive Synovitis (schlagartig schmerzhaft, überwärmt, gerötet).],
  [Tophi / Destruktion = Langzeit; Gatekeeper-Fokus: Entzündung *sieht infektähnlich aus*.],
  [Kristallarthropathie und bakterielle Arthritis im PT-Setting früh *nicht sicher trennbar* (Koexistenz möglich).],
)

// ── §3 Hot joint + cues ───────────────────────────────────────

#heading(level: 2)[3. Klinische Hinweise]
#hot-joint-gicht()

// Vier Kanäle only (cluster already carries Oberfläche/Funktion/Kontext)
#v(7pt)
#text(size: 9pt, weight: "bold", fill: palette.primary)[Vier Kanäle (Detail)]
#v(4pt)
#set text(size: 7.6pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  row-gutter: 6pt,
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(weight: "bold", fill: palette.primary)[Anamnese]
    #v(3pt)
    Hochakuter Mono-Anfall (Stunden); oft Großzehe; frühere ähnliche Attacken; Trigger (Alkohol, Diuretika, Diät).
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(weight: "bold", fill: palette.primary)[Beobachtung]
    #v(3pt)
    Rötung, Überwärmung, Schwellung; Schonhaltung; Unmöglichkeit Schuh/Belastung.
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(weight: "bold", fill: palette.primary)[Untersuchung]
    #v(3pt)
    Massiver Bewegungsschmerz; *keine* forcierten Gelenktests am unklaren heißen Gelenk.
  ],
  block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
    #text(weight: "bold", fill: palette.primary)[Verlauf]
    #v(3pt)
    Stunden bis wenige Tage im Anfall; polyartikulärer „Sturm“ und Systemik erhöhen die Dringlichkeit.
  ],
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
  inset: 9pt,
  radius: 2pt,
  fill: rgb("#f8fafc"),
  stroke: 0.45pt + palette.border,
)[
  #set text(size: 9pt)
  #text(weight: "bold")[Situation: ]
  54-jähriger Mann, „zum dritten Mal Gicht am Großzeh“. Seit gestern Nacht maximaler Schmerz, Rötung, keine Belastung möglich. Heute Fieber 38,6 °C, fühlt sich „richtig krank“. Er bittet um Kühlung, Mobilisation und „wie beim letzten Mal nur entlasten“.

  #v(6pt)
  #text(weight: "bold")[Fragen: ]
  (1) Was steht jetzt im Vordergrund? · (2) Was ist kontraindiziert? · (3) Nächster sicherer Schritt?
]

#v(6pt)
// Non-spoiler transfer scaffold — balances p3 sprawl without giving answers
#block(
  width: 100%,
  inset: 8pt,
  radius: 2pt,
  fill: white,
  stroke: (left: 3pt + palette.primary, rest: 0.4pt + palette.border),
)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.primary)[Denk-Anker (ohne Lösung): ]
  #v(3pt)
  #set text(size: 7.6pt)
  #list(
    [Welche *Systemzeichen* ändern den TIME-Tier gegenüber „bekannte Gicht, nur entlasten“?],
    [Welche Maßnahmen sind bis zum septischen Ausschluss *absolut* untersagt?],
    [Welcher TIME-Code aus §5 passt — und warum ist SCOPE hier relevant?],
  )
]

// ── DDx ───────────────────────────────────────────────────────

#v(8pt)
#heading(level: 2)[DDx-Minimal]
#set text(size: 8pt)
#table(
  columns: (38mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 5.5pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Eher …*], [*Diskriminierende Unterschiede*],
  [Gicht (Kristallarthropathie)], [Hochakut Stunden, oft MTP-I, Trigger Alkohol/Diuretika, frühere Attacken — ohne schwere Systembedrohung],
  [Septische Arthritis], [Heißes Gelenk + Fieber/Systemik; *auch bei Gichtanamnese* bis Ausschluss; im PT-Setting früh nicht sicher trennbar],
  [Pseudogicht / CPPD], [Oft Knie/Handgelenk; klinisch im Erstkontakt oft untrennbar],
  [Trauma / Fraktur], [Klare Mechanik, ggf. Frakturzeichen; entzündliches Mono-Bild fehlt oder ist atypisch],
  [Erysipel angrenzend], [Primär kutan; im Zweifel nicht herabstufen],
  [Reaktive Arthritis / SpA], [Oft anderer Kontext; akute Mono mit Hitze bleibt infektpflichtig],
)

#v(8pt)
#set text(size: 8pt, fill: palette.text-muted)
→ IV-4 Heißes Gelenk (geplant) · DDx septisch: V-3-bakterielle-arthritis · Kristalle entwarnen nicht.

// ── Quellen ───────────────────────────────────────────────────

#heading(level: 2)[Quellen]
#set text(size: 7.5pt, fill: palette.text-muted)
+ Deutsche Gesellschaft für Rheumatologie / AWMF. S3-Leitlinie Diagnostik und Therapie der Gicht (060-005). (Abruf: 2026-07-15)
+ DEGAM. S2e-Leitlinie Akute Gicht (053-032b). (Abruf: 2026-07-15)
+ Coakley G, et al. BSR guidelines for management of the hot swollen joint in adults. Rheumatology. 2006. (Abruf: 2026-07-14)
