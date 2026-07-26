// Phase 1.1 — redesigned after Human critique
// Reasoning: domains/medical/briefs/_explorations/kl-phase1-critique-redesign.md
// Content pins: Erysipel + ACS (Welle-06)

#import "/packages/bookkit/theme.typ": palette
#import "lib/v2-urgency.typ": (
  f2-erysipel-v2,
  f2-band-model-four-steps,
  f2-acs-v2,
)
#import "lib/v2-cues-suspicion.typ": (
  f3-erysipel-v2,
  f4-erysipel-v2-full,
)

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

#let note(t) = {
  v(3pt)
  block(width: 100%, fill: palette.bg-subtle, inset: 5pt, radius: 2pt)[
    #set text(size: 7pt, fill: palette.text-muted)
    #t
  ]
}

// ── Cover ─────────────────────────────────────────────────────
#align(center)[
  #v(14mm)
  #text(size: 9pt, fill: palette.danger)[Phase 1 verworfen → Phase 1.1 Redesign]
  #v(4mm)
  #text(size: 16pt, weight: "bold", fill: palette.primary-dark)[
    Inhaltsbeziehungen zuerst
  ]
  #v(2mm)
  #text(size: 11pt, fill: palette.primary)[
    Dringlichkeit ≠ Scope · §4 = drei Relationen · §3 = Tabelle
  ]
  #v(6mm)
  #block(width: 90%, inset: 8pt, fill: palette.bg-subtle, radius: 3pt)[
    #set text(size: 8pt)
    #set align(left)
    *Kritik aufgenommen:* leere Tabellen · Scope in der Leiter · F2-C als Schein-Leiter ·
    sinnlose 2×2 · Meta-Wörter „Label/Darunter“. Skills formal genutzt, didaktisch zu flach —
    hier die Korrektur.
  ]
]

#pagebreak()

// ── Why ───────────────────────────────────────────────────────
#page-title("Was der Content *ist* — bevor Farbe kommt")

#set text(size: 8.5pt)
*§5 Handeln* enthält *zwei* Dimensionen:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  block(inset: 7pt, fill: rgb("#fef2f2"), radius: 3pt, width: 100%)[
    #text(weight: "bold", fill: palette.danger)[A · Dringlichkeit]
    #v(2pt)
    Wie schnell muss gehandelt werden?\
    112 → heute → *(oft)* zeitnah → PT+Netz
  ],
  block(inset: 7pt, fill: palette.bg-subtle, radius: 3pt, width: 100%)[
    #text(weight: "bold", fill: palette.text-muted)[B · Zuständigkeit]
    #v(2pt)
    Was kann ich *nie* hier klären?\
    *Quer* zu A — keine Leitersprosse
  ],
)

#v(5mm)
*§4 Verdacht* ist *kein* 2×2-Bild, sondern *drei* Relationen:

#enum(
  [Für/Gegen die Arbeitshypothese H (Erhärtet \| Passt eher nicht)],
  [Must-not-miss: *andere* gefährliche Entitäten (Nicht übersehen)],
  [Trügerisch: falsches Frame *maskiert* echte Gefahr (Mapping)],
)

#v(4mm)
*§3 Klinische Hinweise:* vier *Kanäle*, sequentiell gleichrangig → *Tabelle*, kein Diagramm.

#note[
  Template nennt nur 112 / gleichtags / Treat+Netz + Scope. Welle-06 hat in vielen Kapiteln
  zusätzlich *„Zeitnah Arzt“*. „Treat ohne Netz“ kommt praktisch nicht vor (DA-Doctrine).
  → Content-Frage an Autor, nicht Layout-Erfindung pro Kapitel ohne Text.
]

#pagebreak()

// ── F2 Erysipel ───────────────────────────────────────────────
#page-title(
  "F2 v2 · Dringlichkeit (Erysipel)",
  sub: "Nur Dimension A · Trigger *innerhalb* der Stufe · Scope darunter getrennt",
)
#f2-erysipel-v2()
#note[
  Ampel-Farbigkeit (rot/amber/teal) *unterstützt* die Stufenworte — ersetzt sie nicht.
  Grau = Scope, bewusst *nicht* als „vierte Ampelstufe“.
]

#pagebreak()

// ── Band model ────────────────────────────────────────────────
#page-title(
  "F2 v2 · Band-Modell mit „Zeitnah“",
  sub: "Inventur: viele Monographien haben diese Stufe — Erysipel-Text nicht",
)
#f2-band-model-four-steps()
#note[
  Autor-Frage: Soll „Zeitnah Arzt“ ins *Template* als kanonische Zeile?
  Layout muss die Stufe *können*, wenn Content sie liefert.
]

#pagebreak()

// ── ACS ───────────────────────────────────────────────────────
#page-title(
  "F2 v2 · ACS / Multi-Trigger",
  sub: "Ein 112-Block: Handlung + Trigger *innen* — keine zweite Sprosse „Trigger“",
)
#f2-acs-v2()
#note[
  Ersetzt F2-C (verworfen): dort wirkten Handlung, Triggerliste, NA|Scope und Treat wie
  eine wirre Leiter. Hier: eine laute 112-Stufe, dann echte niedrigere Dringlichkeiten, Scope separat.
]

#pagebreak()

// ── F3 ────────────────────────────────────────────────────────
#page-title(
  "F3 v2 · Klinische Hinweise",
  sub: "Nur Domänentabelle — 2×2-Tiles verworfen (kein Mehrwert)",
)
#f3-erysipel-v2()
#note[
  Untersuchung leicht hervorgehoben, weil dort die *konkreten* KIs stehen — nicht weil es
  „Quadrant 3“ ist.
]

#pagebreak()

// ── F4 ────────────────────────────────────────────────────────
#page-title(
  "F4 v2 · Verdacht / Abgrenzung / Mimikry",
  sub: "Drei Relationen nacheinander — kein 2×2, keine Wireframe-Wörter",
)
#f4-erysipel-v2-full()

#pagebreak()

// ── Board ─────────────────────────────────────────────────────
#page-title("Phase 1.1 — was gilt jetzt")

#set text(size: 8.5pt)
#table(
  columns: (28mm, 1fr, 1fr),
  stroke: 0.4pt + palette.border-light,
  inset: 5pt,
  fill: (_, y) => if y == 0 { palette.bg-muted } else { white },
  table.header([*Unit*], [*Phase 1 (verworfen)*], [*Phase 1.1*]),
  [F2], [Scope in Leiter; Multi-112 als Schein-Sprossen], [Nur Zeit-Stufen; Scope separat; Trigger innen],
  [F3], [2×2 farbig ohne Aussage], [Kompakte Domänentabelle],
  [F4], [2×2 + „Label/Darunter“], [Für/Gegen · Must-not-miss · Mapping maskiert],
)

#v(5mm)
#block(width: 100%, inset: 7pt, fill: rgb("#f0fdfa"), stroke: 0.5pt + palette.primary, radius: 3pt)[
  #text(weight: "bold", fill: palette.primary)[Bitte prüfen]
  #v(2pt)
  1. Ist die Trennung Dringlichkeit / Scope jetzt stimmig?\
  2. ACS-Block: lesbarer als alte F2-C?\
  3. Mimikry-Mapping ohne Meta-UI: verständlich?\
  4. „Zeitnah“-Stufe: Content-kanonisch machen?
]
