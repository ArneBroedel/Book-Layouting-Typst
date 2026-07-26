// Melanom transfer evaluation — grammar reuse + ABCDE ambition
// Content pins: Welle-06 chapter-v-10-melanom-abcde-hautscreening (copy-through)
// Form Specs: kl-melanom-urgency · kl-melanom-mimic · kl-melanom-abcde

#import "/packages/bookkit/theme.typ": palette
#import "lib/melanom.typ": (
  bp-melanom,
  enabling-melanom,
  mechanism-melanom,
  cues-melanom,
  abcde-melanom,
  section-four-melanom,
  us-melanom,
  transfer-melanom,
)

// Free-vision ABCDE asset (structure_reference: none)
// Winner: refined-02 (Human surgical B+D); free-01 provenance only
#let abcde-vision-path = "/domains/medical/assets/kl-melanom-abcde/vision-refined-02.png"
#let abcde-vision-exists = {
  // Typst has no file-exists; compile fails if missing — guard via optional page
  true
}

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
    Transfer-Evaluation · KL Form Language · exploration
  ]
  #v(3mm)
  #text(size: 16pt, weight: "bold", fill: palette.primary-dark)[
    Melanom — ABCDE-Hautscreening
  ]
  #v(2mm)
  #text(size: 10pt, fill: palette.primary)[
    Grammar-Transfer + Ambition (ABCDE)
  ]
  #v(4mm)
  #block(width: 92%, inset: 8pt, fill: palette.bg-subtle, radius: 3pt)[
    #set text(size: 8pt)
    Erysipel/ACS-Library mit *neuen Pins*. Besonderheit: T1 nur Ausnahme (vital),
    T2/T3 tragen die klinische Last. Ambition: ABCDE als Form, nicht als Glossar.\
    Claims copy-through C · keine Form-Meta in Figuren · brief_class: exploration.
  ]
  #v(4mm)
  #set text(size: 7.5pt, fill: palette.text-muted)
  Form Specs: `kl-melanom-urgency` · `kl-melanom-mimic` · `kl-melanom-abcde`
]

#pagebreak()
#h("Big Picture", sub: "Was · Gefahr · Richtung")
#bp-melanom()

#pagebreak()
#h("Wann ist daran zu denken?", sub: "Risiko · Kontext · Tempo als Kontrast (kein Spektrum-Balken)")
#enabling-melanom()

#pagebreak()
#h("Entstehung und Mechanismus", sub: "UV → Wachstum → frühe Zuweisung")
#mechanism-melanom()

#pagebreak()
#h("Klinische Hinweise", sub: "Vier Kanäle · Beobachtung & Untersuchung betont")
#cues-melanom()

#pagebreak()
#h(
  "Ambition · Strukturierter Blick (Free Vision + Refine)",
  sub: "ABCDE + Ugly Duckling · vision-refined-02 · Human B+D fix",
)
#block(width: 100%, inset: 6pt, fill: palette.bg-subtle, radius: 2pt)[
  #set text(size: 7.5pt)
  Free vision owns this unit. Surgical refine: B = unscharfe (weiche) Begrenzung, nicht Zackenkante;
  D = 5-mm-Referenzbalken kürzer als Läsion (visuell > 5 mm). Code-Cascade nur Fallback.
]
#v(4pt)
#if abcde-vision-exists {
  align(center)[
    #image(abcde-vision-path, width: 100%)
  ]
  v(3pt)
  text(size: 7pt, fill: palette.text-muted)[
    Winner: `domains/medical/assets/kl-melanom-abcde/vision-refined-02.png` · structure_reference: none
  ]
}

#pagebreak()
#h("ABCDE · Code-Fallback (pin-safe recreate)", sub: "letter cascade — not the creative winner unless audit FAIL on free")
#abcde-melanom()

#pagebreak()
#h("Verdacht, Abgrenzung, Trügerisches")
#section-four-melanom()

#pagebreak()
#h("Handeln und Dringlichkeit", sub: "Exceptional T1 · T2/T3 primary · SCOPE")
#us-melanom()

#pagebreak()
#h("Fall zur Selbstprüfung")
#transfer-melanom()

#pagebreak()
#h("Transfer-Notizen (Designer)", sub: "outside figures — ok here in spike footer")
#set text(size: 8pt)
#table(
  columns: (32mm, 1fr),
  stroke: 0.4pt + palette.border-light,
  inset: 5pt,
  [*Grammar*], [US stack, FA/NM, mimic map, BP, enabling, cues, transfer — same recipes, new pins],
  [*Delta*], [Exceptional T1; T3 present; ABCDE free-vision winner (`kl-abcde-look`); enabling = tempo contrast not bar],
  [*Invariants*], [TIME≠SCOPE · no form-meta · pins DE · solid red only on T1 exception],
  [*Enabling fix*], [Removed unlabeled Minuten–Monate color bar → two-pole Evolution vs Jahre unverändert],
  [*ABCDE*], [vision-free-01.png claim audit PASS · code cascade = fallback only],
)
