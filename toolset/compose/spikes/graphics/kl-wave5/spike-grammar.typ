// Wave-5 grammar spike — code-first nested multi-T1 + mimic + FAST fallback
// Chapters: MI · Stroke · Anaphylaxie
// Form Specs: kl-mi-* · kl-stroke-* · kl-anaphylaxie-*
// Rules: German only · no form-meta in figures · multi-T1 one solid card · SCOPE orthogonal · T3 omit

#import "/packages/bookkit/theme.typ": palette
#import "lib/mi.typ": us-mi, mimic-mi, discrimination-mi, section-four-mi
#import "lib/stroke.typ": us-stroke, mimic-stroke, fast-stroke-code
#import "lib/anaphylaxie.typ": us-anaphylaxie, mimic-anaphylaxie

#set page(width: 180mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
#set text(font: "Libertinus Serif", size: 9pt, fill: palette.text-body)
#set par(justify: false, leading: 0.65em)

#let h(t, sub: none) = {
  text(size: 11pt, weight: "bold", fill: palette.primary-dark)[#t]
  if sub != none {
    v(2pt)
    text(size: 7.5pt, fill: palette.text-muted)[#sub]
  }
  v(2pt)
  line(length: 100%, stroke: 0.55pt + palette.primary)
  v(4pt)
}

// ── Cover ─────────────────────────────────────────────────────
#align(center)[
  #v(8mm)
  #text(size: 8.5pt, fill: palette.text-muted)[
    Wave-5 · KL Form Language · Grammar (code-first) · exploration
  ]
  #v(3mm)
  #text(size: 16pt, weight: "bold", fill: palette.primary-dark)[
    Wave-5 Grammar
  ]
  #v(2mm)
  #text(size: 10pt, fill: palette.primary)[
    MI · Schlaganfall · Anaphylaxie
  ]
  #v(4mm)
  #block(width: 92%, inset: 8pt, fill: palette.bg-subtle, radius: 3pt)[
    #set text(size: 8pt)
    Nested multi-T1 hard-stop (eine T1-Karte, interne Trigger-Liste) + orthogonaler SCOPE ·
    Mimic-Maps Frame→Gefahr · FAST als Code-Fallback (letter cascade, T = Handlungszeit).\
    T3 kollabiert wo C silent · Claims copy-through C · keine Form-Meta in Figuren.
  ]
  #v(4mm)
  #set text(size: 7.5pt, fill: palette.text-muted)
  Specs: `kl-mi-urgency` · `kl-mi-mimic` · `kl-stroke-urgency` · `kl-stroke-mimic` ·
  `kl-stroke-fast` · `kl-anaphylaxie-urgency` · `kl-anaphylaxie-mimic`
]

// ═══════════════════════════════════════════════════════════════
//  MI
// ═══════════════════════════════════════════════════════════════

#pagebreak()
#h(
  "Myokardinfarkt / ACS · Handeln und Dringlichkeit",
  sub: "Nested multi-T1 (4 Cluster) · T2 · T4 · SCOPE · Default-to-Danger",
)
#us-mi()

#pagebreak()
#h(
  "Myokardinfarkt / ACS · Verdacht, Abgrenzung, Trügerisches",
  sub: "Erhärtet / Passt eher nicht · Nicht übersehen · Mimic-Map (4 Frames)",
)
#section-four-mi()

// ═══════════════════════════════════════════════════════════════
//  Stroke
// ═══════════════════════════════════════════════════════════════

#pagebreak()
#h(
  "Schlaganfall / TIA · Handeln und Dringlichkeit",
  sub: "Nested multi-T1 (4 Cluster inkl. TIA remittiert) · T2 · T4 · SCOPE",
)
#us-stroke()

#pagebreak()
#h(
  "Schlaganfall / TIA · Trügerische Erklärungen",
  sub: "Frame → Gefahr (Bell · HWS · Migräne · Radikulopathie)",
)
#mimic-stroke()

#pagebreak()
#h(
  "Schlaganfall · FAST (Code-Fallback)",
  sub: "Letter cascade F–A–S + Time/Notruf · ≥1-Positiv-Regel · BE-FAST wing · Posterior-Gap",
)
#fast-stroke-code()

// ═══════════════════════════════════════════════════════════════
//  Anaphylaxie
// ═══════════════════════════════════════════════════════════════

#pagebreak()
#h(
  "Anaphylaxie · Handeln und Dringlichkeit",
  sub: "Nested multi-T1 (5 Cluster) · Progredienz · Autoinjektor-Payload · T2 · T4 · SCOPE",
)
#us-anaphylaxie()

#pagebreak()
#h(
  "Anaphylaxie · Trügerische Erklärungen",
  sub: "5 Frames: Haut · Panik · Asthma · MSK-Enge · Vasovagal",
)
#mimic-anaphylaxie()

#pagebreak()
#h("Designer-Notizen", sub: "outside figures — ok in spike footer")
#set text(size: 7.5pt)
#list(
  [Multi-T1: alle 112-Trigger *innen* einer solid-danger T1-Karte — nie als getrennte Ampel-Sprossen.],
  [SCOPE: Haarlinie + square frame *nach* TIME-Stack; Content-Titel „Grenze der eigenen Zuständigkeit“; kein T-Chip.],
  [T3: in allen drei Kapiteln silent → Slot weglassen.],
  [Mimic: Richtung immer Frame → Gefahr; keine Meta-Wörter „Label/Darunter“.],
  [FAST free vision required for ambition; dieser Spike liefert nur pin-safe Code-Fallback.],
  [Autoinjektor: Payload in T1 *und* SCOPE-Constraint — nie Dosis-Leiter.],
)
