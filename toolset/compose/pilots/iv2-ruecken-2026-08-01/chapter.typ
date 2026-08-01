// Pilot chapter — leitsymptom Rückenschmerz neuro
// slug: iv2-ruecken-2026-08-01 · brief_class: exploration
// content (C): Kursbuch5 …/chapter-iv2-rueckenschmerz-neuro.md
// Vertical decision flow preferred

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-version
#fa-version("6") // fonts/ has FA6; package default is 7
#import "/domains/medical/lib/typst/explore-2026-08/entscheidungs-flow.typ": entscheidungs-flow-rueckenschmerz
#import "/domains/medical/lib/typst/explore-2026-08/chrome.typ": chrome-lead

#set document(
  title: "IV-2 Rückenschmerz mit neurologischen Zeichen",
  author: "Book-Layouting-Typst · iv2-ruecken-2026-08-01",
)

#set page(
  paper: "a4",
  margin: (inside: 18mm, outside: 15mm, top: 14mm, bottom: 15mm),
  numbering: "1",
  header: context {
    set text(size: 8pt, fill: luma(100))
    grid(
      columns: (1fr, auto),
      [IV-2 · Rückenschmerz neuro · leitsymptom],
      [Exploration `iv2-ruecken-2026-08-01`],
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

#text(size: 13.5pt, weight: "bold", fill: palette.primary-dark)[
  IV-2 Rückenschmerz mit neurologischen Zeichen
]
#v(3pt)
#text(size: 9.5pt)[CES und Must-not-miss *vor* jeder „Lumbago“-Deutung]
#v(6pt)

// Lead: usual RF-level chrome (flag), not full-bleed shout
#chrome-lead(accent: palette.danger, level: "flag")[
  #set text(size: 8.5pt)
  #text(weight: "bold", fill: palette.danger)[Erste Sicherheitsfrage: ]
  Sattel-/Sphinkterstörung oder rasch progrediente / bilaterale Beinschwäche?
  → *Stop PT, 112/ED* — nicht erst deblockieren.
  #linebreak()
  #text(size: 7.5pt, fill: palette.text-muted)[
    Navigator: → IV-0 · Entscheidungsrahmen: → II-1
  ]
]

// ── §1 Einstieg ───────────────────────────────────────────────

#heading(level: 2)[1. Einstiegsfrage]
#set text(size: 9pt)
Patient meldet *Kreuzschmerz* — oft mit Beinstrahlung, „Ischias“, Taubheit oder Schwäche; manchmal als „Blockade“ oder „Muskelverspannung nach Heben“.
Unspezifische Lumbago erst nach *negativem* Red-Flag-Screen.

// ── §2 Matrix + compact flow share page space (print density) ─

#heading(level: 2)[2. Ursachenmatrix (R4 → R1)]
#set text(size: 7pt)
#block(
  width: 100%, inset: (x: 6pt, y: 5pt), radius: 2pt,
  fill: rgb("#fef2f2"), stroke: (left: 3pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
)[
  #text(weight: "bold", fill: palette.danger, size: 7.5pt)[R4 — sofort Notfallpfad]
  #v(2pt)
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 5pt,
    text[*CES:* Sattel/Sphinkter; bilat. rasch progred. Beinschwäche],
    text[*Bilat. Paresen:* Stunden–Tage beidseits],
    text[*Vaskulär:* reißend, Schock, AAA],
  )
]
#v(3.5pt)
#block(
  width: 100%, inset: (x: 6pt, y: 5pt), radius: 2pt,
  fill: rgb("#fff7ed"), stroke: (left: 3pt + palette.warning, rest: 0.4pt + palette.warning.lighten(35%)),
)[
  #text(weight: "bold", fill: palette.warning.darken(10%), size: 7.5pt)[R3 — gleichtags / ED]
  #v(2pt)
  #set text(size: 7pt)
  *Infekt* (Fieber/System ± IVDU/Immunsupp./post-OP) · *Tumor* (Anamnese, B-Symptome, Ruhe-Nacht) · *Fraktur* (Major Trauma / hohe Fraktur-Wahrscheinlichkeit) · *unilat. Radikulopathie ohne CES* (Arzt gleichtags, keine isolierte PT-Serie)
]
#v(3.5pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  block(
    width: 100%, inset: (x: 6pt, y: 5pt), radius: 2pt,
    fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border,
  )[
    #text(weight: "bold", size: 7.5pt, fill: palette.text-body)[R2 — unklare Progredienz]
    #v(2pt)
    #text(size: 7pt)[Zeitnahe ärztliche Klärung *vor* aggressiver LWS-Technik.]
  ],
  block(
    width: 100%, inset: (x: 6pt, y: 5pt), radius: 2pt,
    fill: rgb("#f0fdfa"), stroke: 0.4pt + palette.primary.lighten(30%),
  )[
    #text(weight: "bold", size: 7.5pt, fill: palette.primary)[R1 — nicht-spezifisch]
    #v(2pt)
    #text(size: 7pt)[Bewegungsabhängiger lokaler Lumbalschmerz *ohne* Sattel/Blase, *ohne* progred. Neuro, *ohne* Fieber/B-Cluster.]
  ],
)

// ── §3 Compact Entscheidungs-Flow (not a full-page hero) ─────

#heading(level: 2)[3. Entscheidungs-Flow]
#entscheidungs-flow-rueckenschmerz(show-footer: true, density: "compact")

// ── §4 RF-Box ─────────────────────────────────────────────────

#heading(level: 2)[4. Red-Flag-Box (Rückenschmerz / Neuro)]
#set text(size: 7.2pt)
#table(
  columns: (48mm, 28mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 4pt,
  fill: (_, y) => {
    if y == 0 { rgb("#fef2f2") }
    else if y <= 6 { rgb("#fef2f2").lighten(40%) }
    else if y <= 11 { rgb("#fff7ed") }
    else { rgb("#f0fdfa") }
  },
  [*Kriterium*], [*Dringlichkeit*], [*Aktion*],
  [Neue Reithosenanästhesie], [*112 / ED sofort*], [Stop PT; Notruf/NA; Stichwort Cauda-Verdacht → III-5 / V-Cauda],
  [Akute Blasen-/Darmstörung], [*112 / ED sofort*], [Kein Abwarten auf „HWI“; Blasenkatheter *ärztlich*],
  [Analatonie / red. Rektaltonus (falls bekannt)], [*112 / ED sofort*], [Notfall-MRT, neurolog. Notfall-Assessment],
  [Bilaterale, rasch progrediente Beinschwäche], [*112 / ED sofort*], [Notaufnahme; keine verzögernden PT-Tests],
  [Kombination Sattel ± Sphinkter ± bilat. Parese], [*112 / ED sofort*], [*Default-to-Danger* — ein hartes Flag reicht],
  [Akuter Rücken/Flanke + Schock / reißend / AAA], [*112*], [Vaskulärer Notfall; Absolute Ruhe],
  [Fieber/Systemzeichen + RS (± IVDU/Immunsupp./post-OP)], [ED / gleichtags], [V. a. Spondylodiszitis/Abszess; PT abbrechen],
  [Rücken-Ruheschmerz + IVDU/Immunsupp. *ohne* Fieber], [ED / gleichtags], [Infekt trotzdem erwägen],
  [Major Trauma / hohe Frakturwahrscheinlichkeit], [ED / gleichtags], [Keine Mobilisation/Manipulation bis Bildgebung],
  [Tumoranamnese + B-Symptome/Ruhe-Nacht], [Arzt gleichtags], [Malignom/Metastase; keine isolierte PT-Serie],
  [Neue *unilaterale* radikuläre Defizite *ohne* CES], [Arzt gleichtags], [Ärztliche Evaluation; PT erst nach Freigabe/Plan],
  [Keine Red Flags, bewegungsabhängiger lokaler Lumbalschmerz], [PT möglich], [Symptomgeleitete PT; Safety-Net CES-/Infekt-Zeichen → 112/Arzt],
)

#v(4pt)
#block(
  width: 100%, inset: 6.5pt, radius: 2pt,
  fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border,
)[
  #text(size: 7.8pt, weight: "bold", fill: palette.primary)[Safety Questions (jeder akute LWS-Kontakt)]
  #v(3pt)
  #set text(size: 7.3pt)
  Wasserlassen starten / Blasenfüllung spüren? Taubheit Gesäß/Damm/Genitalien? Unbemerkt Stuhl? Rasch zunehmende Schwäche *beider* Beine? Trauma/Osteoporose/Steroid? Fieber, i.v. Drogen, Immunsuppression, Infekt/OP? Krebsanamnese, Gewichtsverlust, Ruhe-/Nachtschmerz?
]

// ── §5 R+I+S→C ────────────────────────────────────────────────

#heading(level: 2)[5. R + I + S → C]
#set text(size: 7.2pt)
#table(
  columns: (48mm, 10mm, 10mm, 10mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 4pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Konstellation*], [*R*], [*I*], [*S*], [*C*],
  [CES-Muster (Sattel und/oder Blase/Darm und/oder bilat. progred. Parese)], [4], [1], [4], [*112 / ED*, Stop PT, Absolute KI LWS],
  [Schock / reißender Rücken-Flanke (AAA)], [4], [1], [4], [*112*, Absolute Ruhe],
  [Infekt-Cluster oder Frakturverdacht], [3–4], [1], [4], [ED/gleichtags, keine Manipulation/HVT],
  [Tumor-Cluster], [3], [1], [3–4], [Arzt gleichtags, keine isolierte PT],
  [Neue unilaterale Radikulopathie *ohne* CES], [3], [1–2], [3–4], [Arzt gleichtags; Safety CES; keine HVT],
  [Klar nicht-spezifisch, alle Safety-Fragen negativ], [1], [3–4], [1–2], [*Treat* + Safety-Netting],
)

// ── §6 Kontrast ───────────────────────────────────────────────

#heading(level: 2)[6. Kontrastpaare]
#set text(size: 7.4pt)
#table(
  columns: (40mm, 1fr, 28mm),
  stroke: 0.4pt + palette.border,
  inset: 4.5pt,
  fill: (_, y) => if y == 0 { rgb("#fef2f2") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Sieht aus wie …*], [*Muss-not-miss wenn …*], [*Verweis*],
  [Unspezifische Lumbago nach Heben], [Sattel, Blase/Darm, bilaterale Progredienz — Schmerzstärke allein ist weder Flag noch Ausschluss], [V-Cauda],
  [Einseitige Ischialgie „wie immer“], [+ Sattel/Sphinkter *oder* bilaterale rasche Verschlechterung → *112*], [RF-Box],
  [Unilaterale Parese ohne CES], [*Arzt gleichtags* — *nicht* 112 erzwingen und *nicht* isoliert behandeln], [Split],
  [„Muskelverspannung + Klopfschmerz“], [Fieber/Systemzeichen / IVDU / Immunsuppression → Infekt-Pfad], [Spondylodiszitis],
  [„Rücken besser, aber tauber“], [Nachlassender Schmerz *plus* zunehmende Taubheit/Parese → *nicht* als Besserung → 112/ED], [III-5],
)

// ── Boxen ─────────────────────────────────────────────────────

#heading(level: 2)[7. Boxen (leitsymptom-spezifisch)]
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  block(
    width: 100%, inset: 6.5pt, radius: 2pt,
    fill: rgb("#fef2f2"), stroke: 0.45pt + palette.danger.lighten(40%),
  )[
    #text(size: 7.8pt, weight: "bold", fill: palette.danger)[Keine LWS-Technik bei RF]
    #v(3pt)
    #set text(size: 7.2pt)
    Bei CES-, Infekt-, Fraktur- oder Tumorverdacht: *absolute KI* für HVT, Traktion, forcierte Mobilisation. Nur Screening, Abbruch, Notruf/Übergabe.
  ],
  block(
    width: 100%, inset: 6.5pt, radius: 2pt,
    fill: rgb("#fff7ed"), stroke: 0.45pt + palette.warning.lighten(35%),
  )[
    #text(size: 7.8pt, weight: "bold", fill: palette.warning.darken(10%))[Keine PT-Notfall-Scores]
    #v(3pt)
    #set text(size: 7.2pt)
    Kein validierter LWS-Score schließt CES im Direktzugang aus. STarT/Örebro = Chronifizierung, *nicht* Notfall-Triage.
  ],
  block(
    width: 100%, inset: 6.5pt, radius: 2pt,
    fill: rgb("#f8fafc"), stroke: 0.45pt + palette.border,
  )[
    #text(size: 7.8pt, weight: "bold", fill: palette.text-body)[Alter allein ≠ Hard-Flag]
    #v(3pt)
    #set text(size: 7.2pt)
    Alter (z. B. >50) *allein* rechtfertigt hier *keine* Notfall-Eskalation; relevant im Verbund (Trauma/Osteoporose, Tumor, Systemzeichen).
  ],
)

#heading(level: 2)[Verweise · Quellen]
#set text(size: 7.3pt, fill: palette.text-muted)
→ V-Cauda · → III-5-Cauda · → II-1 · → V-Spondylodiszitis · → V-Tumor-Screening · → III-2
#v(2pt)
+ NVL Kreuzschmerz (archiviert) · DGOU S2k Spezifischer Kreuzschmerz 187-059 · AWMF 030-070 · CES-S1 · Lumbago-S1 (Abruf 2026-07-14)

// Critical Claims copy-through (C audit table — exact pins for claims gate)
#heading(level: 2)[Critical Claims (copy-through)]
#set text(size: 6.8pt, fill: palette.text-muted)
#enum(
  [Neue Reithosen-/Sattelanästhesie → 112 / ED, Stop PT, Absolute KI lumbale Intervention],
  [Akute Blasen-/Darmstörung (Retention, fehlender Drang, Inkontinenz) → 112 / ED; keine fixen Restharn-ml als PT-Triage],
  [Bilaterale, rasch progrediente Beinschwäche / schwere Parese → 112 / ED, keine isolierte PT],
  [CES-Cluster (Sattel und/oder Sphinkter) in Lumbago-S1 ebenfalls → 112, Behandlung stoppen, nicht gehen lassen],
  [Split: Neue unilaterale radikuläre Defizite ohne CES-Zeichen → Arzt gleichtags, nicht 112-Default und nicht Treat-alone],
  [Split Treat: Keine Red Flags, bewegungsabhängiger lokaler Lumbalschmerz → PT möglich + Safety-Netting],
  [Fieber/Systemzeichen + Rückenschmerz (± IVDU/Immunsuppression/post-OP) → ED/gleichtags, keine Manipulation],
  [Absolute KI HVT/Traktion/forcierte Mobilisation bei jedem RF-Verdacht (CES, Infekt, Fraktur, Tumor)],
  [Keine validierten PT-Scores zum CES-Ausschluss; STarT/Örebro ≠ Notfall-Triage],
  [Default-to-Danger: unklare perineale Taubheit / unklare Blase → 112/ED, nicht fortgesetzte PT],
  [Nachlassender Rückenschmerz bei zunehmender Taubheit/Parese nicht als Besserung werten],
)
