// Wave-6 grammar spike — closing non-body transfers
// Chapters: Sepsis-Flags · Gicht · Lungenembolie
// Form Specs: kl-sepsis-* · kl-gicht-* · kl-le-*
// Rules: German only · no form-meta · multi-T1 one solid card · SCOPE orthogonal · T3 only when C has it

#import "/packages/bookkit/theme.typ": palette
#import "lib/sepsis.typ": us-sepsis, mimic-sepsis, flag-cluster-sepsis
#import "lib/gicht.typ": us-gicht, mimic-gicht
#import "lib/le.typ": us-le, mimic-le

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
    Wave-6 · KL Form Language · Grammar (code-first) · exploration · track close
  ]
  #v(3mm)
  #text(size: 16pt, weight: "bold", fill: palette.primary-dark)[
    Wave-6 Grammar
  ]
  #v(2mm)
  #text(size: 10pt, fill: palette.primary)[
    Sepsis-Flags · Gicht · Lungenembolie
  ]
  #v(4mm)
  #block(width: 92%, inset: 8pt, fill: palette.bg-subtle, radius: 3pt)[
    #set text(size: 8pt)
    Closing transfers: flag-master (`kl-flag-cluster`) · standard kl-kurz pin-swap ·
    nested multi-T1 + Wells SCOPE brake. T3 nur wo C es hat (Gicht). Keine Free Vision · keine Anatomie.
  ]
  #v(4mm)
  #set text(size: 7.5pt, fill: palette.text-muted)
  Specs: `kl-sepsis-*` · `kl-gicht-*` · `kl-le-*` · maps `_wave6/`
]

// ═══════════════════════════════════════════════════════════════
//  Sepsis
// ═══════════════════════════════════════════════════════════════

#pagebreak()
#h(
  "Sepsis-Flags · Gatekeeper-Instabilität",
  sub: "kl-flag-cluster · drei Chips · bereits EINS → 112 · qSOFA sekundär",
)
#flag-cluster-sepsis()

#pagebreak()
#h(
  "Sepsis-Flags · Handeln und Dringlichkeit",
  sub: "Nested multi-T1 (6 Cluster) · T2 · T4 · SCOPE · keine Score-Ausschluss-Ampel",
)
#us-sepsis()

#pagebreak()
#h(
  "Sepsis-Flags · Trügerische Erklärungen",
  sub: "Mimic-Map 5 Frames (MSK · Delir · vagal · Grippe · Post-OP)",
)
#mimic-sepsis()

// ═══════════════════════════════════════════════════════════════
//  Gicht
// ═══════════════════════════════════════════════════════════════

#pagebreak()
#h(
  "Gicht · Handeln und Dringlichkeit",
  sub: "Stack T1–T4 · T2 laut (heißes Mono auch ohne Fieber) · septisch bis Ausschluss",
)
#us-gicht()

#pagebreak()
#h(
  "Gicht · Trügerische Erklärungen",
  sub: "Mimic-Map 3 Frames · Gichtanamnese entwarnt nicht",
)
#mimic-gicht()

// ═══════════════════════════════════════════════════════════════
//  LE
// ═══════════════════════════════════════════════════════════════

#pagebreak()
#h(
  "Lungenembolie · Handeln und Dringlichkeit",
  sub: "Nested multi-T1 · T2 stabil-verdächtig · T4 nur sichere MSK · Wells nur SCOPE",
)
#us-le()

#pagebreak()
#h(
  "Lungenembolie · Trügerische Erklärungen",
  sub: "Mimic-Map 4 Frames (BWS · Post-OP · Waden · postinfektiöse Pleuritis)",
)
#mimic-le()
