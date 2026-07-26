// Phase 1 — KL Script System: F2 / F3 / F4 variants (visible compare)
// Brief: domains/medical/briefs/kl-script-system.brief.md
// Content pins: Welle-06 Erysipel + ACS (read-only C)
// Exploration only — no production compose

#import "/packages/bookkit/theme.typ": palette
#import "lib/urgency-ladder.typ": (
  f2-table-erysipel,
  f2-lanes-erysipel,
  f2-hardstop-acs,
  f2-acs-flat-anti,
)
#import "lib/cue-matrix.typ": f3-table-erysipel, f3-tiles-erysipel
#import "lib/four-pole.typ": f4-grid-erysipel, f4-combined-erysipel

#set page(width: 180mm, height: 260mm, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)
#set par(justify: false, leading: 0.65em)

#let page-title(t, sub: none) = {
  text(size: 11pt, weight: "bold", fill: palette.primary-dark)[#t]
  if sub != none {
    v(2pt)
    text(size: 7.5pt, fill: palette.text-muted)[#sub]
  }
  v(2pt)
  line(length: 100%, stroke: 0.6pt + palette.primary)
  v(4pt)
}

#let caption(t) = {
  v(3pt)
  block(
    width: 100%,
    fill: palette.bg-subtle,
    inset: 5pt,
    radius: 2pt,
  )[
    #set text(size: 7pt, fill: palette.text-muted)
    #t
  ]
}

// ═══════════════════════════════════════════════════════════════
// Cover
// ═══════════════════════════════════════════════════════════════
#align(center)[
  #v(18mm)
  #text(size: 9pt, fill: palette.text-muted)[Exploration Spike · Phase 1]
  #v(4mm)
  #text(size: 18pt, weight: "bold", fill: palette.primary-dark)[
    KL Script System
  ]
  #v(2mm)
  #text(size: 12pt, fill: palette.primary)[
    F2 Urgency · F3 Cue Matrix · F4 Four-Pole
  ]
  #v(6mm)
  #block(width: 85%, inset: 8pt, fill: palette.bg-subtle, radius: 3pt)[
    #set text(size: 8.5pt)
    Band-Formensprache für 88 Krankheitslehre-Monographien (Welle-06).\
    Claims: *Erysipel* + *ACS/Myokardinfarkt* §3–§5 — copy-through.\
    Chrome: *lerntext / illness-script* (teal), Gefahr nur im 112-Tier.
  ]
  #v(8mm)
  #set text(size: 8pt, fill: palette.text-muted)
  Roadmap: `domains/medical/briefs/_explorations/welle-06-kl-implementation-roadmap.md`\
  Brief: `kl-script-system.brief.md`
]

#pagebreak()

// ── F2-A ───────────────────────────────────────────────────────
#page-title(
  "F2-A · Urgency Ladder — Styled Table",
  sub: "Demo: Erysipel §5 · gewichtete Zeilenfarben + Tier-Chips",
)
#f2-table-erysipel()
#caption[
  *Stärke:* Buchnah, kompatibel mit Markdown-SoT. *Risiko:* bei vielen 112-Zeilen (ACS) flacht die Tabelle ab → siehe F2-C/D.
]

#pagebreak()

// ── F2-B ───────────────────────────────────────────────────────
#page-title(
  "F2-B · Urgency Ladder — Vertical Lanes",
  sub: "Demo: Erysipel §5 · linke Farbbarre + ungleiche Lautstärke",
)
#f2-lanes-erysipel()
#caption[
  *Stärke:* Scan-Stress, Default-to-Danger oben. *Empfehlung Hypothese:* Band-Default-Kandidat für kl-kurz.
]

#pagebreak()

// ── F2-C ───────────────────────────────────────────────────────
#page-title(
  "F2-C · Urgency Ladder — Hard-Stop Stack (ACS)",
  sub: "Demo: Myokardinfarkt/ACS §5 · Multi-112 gebündelt",
)
#f2-hardstop-acs()
#caption[
  *Wann:* high-stakes Entitäten mit mehreren 112-Triggern (ACS, Anaphylaxie, akutes Abdomen). *Nicht* für jedes Kurzprofil.
]

#pagebreak()

// ── F2-D Anti ──────────────────────────────────────────────────
#page-title(
  "F2-D · Anti-Pattern — Flat Multi-112 Table",
  sub: "ACS §5 ungebündelt · zum Vergleich mit F2-C",
)
#f2-acs-flat-anti()
#caption[
  *Problem:* vier gleich laute 112-Zeilen + Treat konkurrieren. F2-C bündelt die rote Zone.
]

#pagebreak()

// ── F3-A ───────────────────────────────────────────────────────
#page-title(
  "F3-A · Cue Matrix — Classic Domain Table",
  sub: "Demo: Erysipel §3 · Anamnese / Beobachtung / Untersuchung / Verlauf",
)
#f3-table-erysipel()
#caption[
  *Stärke:* 1:1 Content-Mapping. KI-Zeile in Untersuchung muss typografisch halten (*keine Entstauung*).
]

#pagebreak()

// ── F3-B ───────────────────────────────────────────────────────
#page-title(
  "F3-B · Cue Matrix — 2×2 Tiles",
  sub: "Demo: Erysipel §3 · scannbare Kacheln",
)
#f3-tiles-erysipel()
#caption[
  *Stärke:* Scan + Domänen auf einen Blick. *Risiko:* lange Cue-Texte brauchen kürzere Pins (Content bleibt SoT).
]

#pagebreak()

// ── F4-A ───────────────────────────────────────────────────────
#page-title(
  "F4-A · Four-Pole — 2×2 Grid",
  sub: "Demo: Erysipel §4 · Erhärtet / Passt nicht / Nicht übersehen / Trügerisch",
)
#f4-grid-erysipel()
#caption[
  *Richtung Trügerisch:* Gefahr hinter harmlosem Bild — nicht Overtriage-Lesart. Details in F4-B.
]

#pagebreak()

// ── F4-B ───────────────────────────────────────────────────────
#page-title(
  "F4-B · Four-Pole + Mask Strip",
  sub: "Demo: Erysipel §4 · Grid + Label→Gefahr-Leiste",
)
#f4-combined-erysipel()
#caption[
  *Hypothese:* F4-B als Band-Default wenn Mimikry didaktisch zentral (die meisten KL-Kapitel).
]

#pagebreak()

// ── Summary board ──────────────────────────────────────────────
#page-title("Phase 1 — Entscheidungsboard", sub: "Human: Band-Defaults wählen")

#set text(size: 8.5pt)
#table(
  columns: (22mm, 1fr, 1fr, 28mm),
  stroke: 0.4pt + palette.border-light,
  inset: 5pt,
  fill: (_, y) => if y == 0 { palette.bg-muted } else { white },
  table.header([*Unit*], [*Varianten gesehen*], [*Default-Hypothese*], [*Deine Wahl*]),
  [F2], [A Table · B Lanes · C Hard-stop · D Anti], [B für Standard; C für multi-112], [ ],
  [F3], [A Table · B Tiles], [B Tiles (kurz) / A bei langen Cues], [ ],
  [F4], [A Grid · B Grid+Mask], [B wenn Mimikry zentral], [ ],
)

#v(6mm)
#block(width: 100%, inset: 7pt, fill: rgb("#f0fdfa"), stroke: 0.5pt + palette.primary, radius: 3pt)[
  #text(weight: "bold", fill: palette.primary)[Nächste Phase (2)]
  #v(2pt)
  F5 Mechanism Chain · F6 Enabling · F7 Case Card · F8 DDx · F9 Qualifiers · F10 Score+Scope\
  + eine *komplette* kl-kurz-Seite Erysipel im Layout *V-Alpha* (mit gewählten F2–F4-Defaults).
]

#v(4mm)
#block(width: 100%, inset: 7pt, fill: palette.bg-subtle, radius: 3pt)[
  #set text(size: 7.5pt, fill: palette.text-muted)
  *Später alles:* Phasen 3–10 der Roadmap (Alpha/Beta/Gamma, kl-voll Shells, Body maps S1–S20,
  FAST/Wells/ABCDE, Anaphylaxie, Psych-Safety, Harvest). Nichts gestrichen — nur gereiht.
]
