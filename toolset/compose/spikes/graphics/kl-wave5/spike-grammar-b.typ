// KL Wave-5 · Grammar B — Suizidalität + Kompartmentsyndrom
// realize_path: recreate · graphic_mode: code · free vision: skipped (suicid chrome-careful;
//   compartment spatial free vision is separate ambition unit — here: criteria code fallback)
// Form Specs: kl-suicid-{urgency,mimic,chrome} · kl-compartment-{urgency,mimic,spatial}

#import "/packages/bookkit/theme.typ": palette
#import "lib/suicid.typ": us-suicid, mimic-suicid
#import "lib/compartment.typ": us-compartment, mimic-compartment, criteria-compartment-code

#set page(width: 180mm, height: auto, margin: (x: 10mm, y: 10mm), fill: white)
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
  v(4pt)
  block(width: 100%, fill: palette.bg-subtle, inset: 5pt, radius: 2pt)[
    #set text(size: 7pt, fill: palette.text-muted)
    #t
  ]
}

// ── Cover ─────────────────────────────────────────────────────
#align(center)[
  #v(8mm)
  #text(size: 8.5pt, fill: palette.text-muted)[
    Wave-5 · medical-graphics · grammar B · code recreate
  ]
  #v(3mm)
  #text(size: 16pt, weight: "bold", fill: palette.primary-dark)[
    KL Wave-5 · Grammar B
  ]
  #v(2mm)
  #text(size: 11pt, fill: palette.primary)[
    Suizidalität · Kompartmentsyndrom
  ]
  #v(4mm)
  #block(width: 92%, inset: 8pt, fill: palette.bg-subtle, radius: 3pt)[
    #set text(size: 8pt)
    Transfer aus `kl-urgency-scope-stack` + nested-T1 + `kl-mimic-map`.\
    Suizid: safety-chrome — calm teal; solid red *only* T1; no methods/nooses/weapons.\
    Kompartment: T1≠T2 hard; anti-elevation + Pulse-KI; spatial criteria as pin-safe code fallback.\
    Claims copy-through C · keine Form-Meta in Figuren · brief_class: exploration.
  ]
  #v(4mm)
  #set text(size: 7.5pt, fill: palette.text-muted)
  Form Specs: `kl-suicid-urgency` · `kl-suicid-mimic` · `kl-suicid-chrome` ·\
  `kl-compartment-urgency` · `kl-compartment-mimic` · `kl-compartment-spatial`
]

#pagebreak()

// ── Must-see ──────────────────────────────────────────────────
#page-title("Must-see Check (Form Spec)")
#set text(size: 8.5pt)
#table(
  columns: (30mm, 1fr, 18mm),
  stroke: 0.4pt + palette.border-light,
  inset: 5pt,
  fill: (_, y) => if y == 0 { palette.bg-muted } else { white },
  table.header([*Spec*], [*Must-see*], [*hier*]),
  [Suizid US], [T1 nested multi-trigger (6) · eine 112-Karte], [ja],
  [Suizid US], [T2 gleichtags–≤24–48 h als *eine* Stufe], [ja],
  [Suizid US], [kein T3 · T4 nur ohne Suizidgedanken + Netz], [ja],
  [Suizid US], [SCOPE: kein PsychKG / kein Antisuizidvertrag-alone], [ja],
  [Suizid chrome], [solid red nur T1 · calm teal · keine Methoden-Icons], [ja],
  [Suizid M], [4 bagatell frames · plötzliche Gelassenheit = Alarm], [ja],
  [ACS US], [T1 ≠ T2 (112 vs NA/Unfallchirurgie)], [ja],
  [ACS US], [T2: Stopp · nicht hochlagern · auch mit Pulsen], [ja],
  [ACS US], [T4 Re-Triage · SCOPE Druck/Fasziotomie ärztlich], [ja],
  [ACS M], [Muskelkater · Gips · Prellung · Pulse → Gefahr], [ja],
  [ACS spatial], [Kriterien-Cluster + Pulse-KI + Anti-Elevation (code)], [ja],
  [all], [No form-meta in figure · DE pins only], [ja],
)

// ═══════════════════════════════════════════════════════════════
// SUIZIDALITÄT
// ═══════════════════════════════════════════════════════════════

#pagebreak()
#page-title(
  "Suizidalität · Handeln und Dringlichkeit",
  sub: "T1 nested multi-trigger · T2 gleichtags–≤48 h · T4 + Netz · SCOPE",
)
#us-suicid()
#note[
  Spike-Notiz (nicht Teil der Grafik): solid red nur T1; T2-Fenster ehrlich (nicht Pastell-Bagatelle);
  kein T3 aus „24–48 h“; PsychKG nur in SCOPE, nie als PT-Aktion.
]

#pagebreak()
#page-title(
  "Suizidalität · Trügerische Erklärungen",
  sub: "FRAME-ERROR bagatell-map · frame → danger",
)
#mimic-suicid()
#note[
  Spike-Notiz: plötzliche Gelassenheit = Alarm; keine Methoden-Imagery; keine Form-Meta-Wörter.
]

// ═══════════════════════════════════════════════════════════════
// KOMPARTMENTSYNDROM
// ═══════════════════════════════════════════════════════════════

#pagebreak()
#page-title(
  "Kompartmentsyndrom · Handeln und Dringlichkeit",
  sub: "T1 112 · T2 NA/Unfallchirurgie · T4 CECS-like + Re-Triage · SCOPE",
)
#us-compartment()
#note[
  Spike-Notiz: T1≠T2 hart; Anti-Elevation und „auch bei tastbaren Pulsen“ im T2-Payload;
  T3 kollabiert; SCOPE optisch außerhalb.
]

#pagebreak()
#page-title(
  "Kompartmentsyndrom · Trügerische Erklärungen",
  sub: "FRAME-ERROR map · Pulse = Fallstrick",
)
#mimic-compartment()
#note[
  Spike-Notiz: Spaltung allein ≠ Ausschluss; Pulse schließen ACS nicht aus.
]

#pagebreak()
#page-title(
  "Kompartmentsyndrom · Klinische Zeichen (code fallback)",
  sub: "pin-safe criteria list · spatial free vision separate ambition",
)
#criteria-compartment-code()
#note[
  Spike-Notiz: Fallback für U-spatial-compartment bis free-vision claim audit PASS;
  kein 6P-Alphabet, keine mmHg, keine Fasziotomie-Schnittführung.
]

#pagebreak()
#page-title("Transfer-Notizen (Designer)", sub: "outside figures — ok here in spike footer")
#set text(size: 8pt)
#table(
  columns: (32mm, 1fr),
  stroke: 0.4pt + palette.border-light,
  inset: 5pt,
  [*Grammar*], [US stack + nested-T1 + mimic map + SCOPE frame — Erysipel/ACS library, new pins],
  [*Suizid delta*], [T1 primary+dicht (nicht Melanom-Exception); T2-Fenster 24–48 h ⊂ T2; safety-chrome],
  [*ACS delta*], [Anti-Elevation + Pulse-KI in T2; criteria code strip as spatial fallback],
  [*Invariants*], [TIME≠SCOPE · no form-meta · DE pins · solid red only real T1],
  [*Chrome*], [Suizid: no methods/weapons/nooses; calm teal framework],
  [*Ambition later*], [Compartment spatial free vision (P1–P3) · Suizid free vision skip default],
)
