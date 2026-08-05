// Form Lab Pass R — Melanom ABCDE · Raster atomic
// lab: melanom-abcde-2026-08

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Melanom ABCDE — Form Lab Pass R", author: "form-lab/melanom-abcde-2026-08/R")
#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 14mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Melanom/ABCDE · Form Lab · Pass R], [Raster-Atome · Claims im Text])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(3pt)
    grid(columns: (1fr, auto), [Form Lab · raster atomic], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 9pt)
#set par(leading: 0.62em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 15pt, weight: "bold", fill: palette.primary-dark)
  block(below: 5pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 11pt, weight: "bold", fill: palette.primary)
  block(below: 5pt, above: 10pt)[
    #it.body
    #v(2pt)
    #line(length: 24mm, stroke: 1pt + palette.primary)
  ]
}

#let atom(path, w: 42mm, cap: none) = {
  block(
    width: w + 4mm,
    inset: 2pt,
    radius: 2pt,
    stroke: 0.4pt + palette.border,
    fill: white,
  )[
    #image(path, width: w)
    #if cap != none {
      v(2pt)
      set text(size: 6.5pt, fill: palette.text-muted, font: fonts.sans)
      align(center)[#cap]
    }
  ]
}

#let safety(body) = block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger),
)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.danger)[Safety (Text außerhalb Raster): ]
  #body
]

#let A = "/domains/medical/assets/form-lab/melanom-abcde-2026-08/R"

// ── Title ─────────────────────────────────────────────────────
= Melanom-Verdacht — ABCDE und Hautscreening

#text(size: 9pt, fill: palette.text-muted, font: fonts.sans)[
  Pass R: kleine Raster-Atome · Claims im Typst-Text · keine Mega-Infografik
]

#v(5pt)
#safety[Keine Melanom-Diagnose und keine destruktiven Maßnahmen. Bilder lehren *Gestalt* (asymmetrisch, unregelmäßig, mehrfarbig) — sie diagnostizieren nicht. ABCDE-suspekt → gleichtags–zeitnah zuweisen.]

// ── Recognition montage ───────────────────────────────────────
== Erkennung — Atom-Montage

#grid(
  columns: (1fr, 1fr),
  column-gutter: 10pt,
  align(center)[
    #atom(A + "/atom-lesion.jpg", w: 58mm, cap: [Atom A · suspekte Pigmentläsion (Gestalt)])
  ],
  align(center)[
    #atom(A + "/atom-abcde-set.jpg", w: 58mm, cap: [Atom B · ABCDE-Kriterien-Set (Konzept)])
  ],
)

#v(4pt)
#set text(size: 8.5pt)
*Claim-Audit:* Atom A zeigt eine *beispielhafte* suspekte Gestalt — nicht „dieses Melanom“. Atom B visualisiert ABCDE-Kriterien als Lernhilfe; endgültige Einordnung ist *ärztlich/histologisch*. Ugly Duckling: die Läsion, die *anders* ist als die übrigen.

// ── ABCDE text ────────────────────────────────────────────────
== ABCDE — Kriterien (Text außerhalb Raster)

#set text(size: 8.5pt)
#table(
  columns: (14mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 0pt, y: 4pt),
  [*A*], [Asymmetrie — eine Hälfte ≠ andere],
  [*B*], [Border — unregelmäßig, ausgefranst],
  [*C*], [Color — ≥2 Farben / ungleichmäßig],
  [*D*], [Diameter — oft ≥6 mm (nicht absolut)],
  [*E*], [Evolution — Form, Farbe, Größe, Juckreiz, Blutung],
)

// ── Big Picture ───────────────────────────────────────────────
== Big Picture

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  block(inset: 6pt, fill: rgb("#f8fafc"), radius: 2pt, stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold")[HP-Rolle]
    #v(2pt)
    #text(size: 7.5pt)[Strukturierter Blick beim Entkleiden · beschreiben · zuweisen — nicht exzidieren.]
  ],
  block(inset: 6pt, fill: rgb("#f8fafc"), radius: 2pt, stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold")[Risiken]
    #v(2pt)
    #text(size: 7.5pt)[UV, heller Hauttyp, viele Naevi, positive Familien-/Eigenanamnese.]
  ],
  block(inset: 6pt, fill: rgb("#fef2f2"), radius: 2pt, stroke: 0.4pt + palette.danger.lighten(40%))[
    #text(size: 8pt, weight: "bold", fill: palette.danger)[Nicht entwarnen]
    #v(2pt)
    #text(size: 7.5pt)[„Alter Fleck“ ohne Evolutionsfrage; seborrhoische Keratose-Anmutung.]
  ],
)

// ── Mimic ─────────────────────────────────────────────────────
== Trügerische Erklärungen

#set text(size: 8.5pt)
1. *„Alter Fleck“* → Evolutionsfrage (Form, Farbe, Größe, Juckreiz, Blutung). \
2. *„Seborrhoische Keratose“* → endgültige Einordnung *ärztlich*. \
3. *„Nagelhämatom“* → ohne Trauma + Nagelwall-Pigment → Melanom-DDx zeitnah. \
4. *„Rücken nicht Ziel“* → mitinspizieren und bei Auffälligkeit zuweisen.

// ── TIME ──────────────────────────────────────────────────────
== Handeln und Dringlichkeit

#set text(size: 8pt)
#table(
  columns: (22mm, 1fr, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  fill: (_, y) => if y == 0 { rgb("#fef2f2") } else if y == 1 { rgb("#fff7ed") } else { white },
  [*112*], [Melanom typisch *nicht* primär 112; Ausnahme vitale Begleitlage], [Notruf + Standard-Notfallmanagement],
  [*NA*], [Blutung/Ulzeration; ABCDE-suspekt; B-Symptome + multiple Knoten], [Keine Destruktion · gleichtags HA/Derm],
  [*Zeitnah*], [Subungual + Nagelwall; Ugly Duckling ohne Blutung], [Schriftliche Zuweisung Derm],
  [*Beh.*], [Ohne suspekte Kriterien], [MSK fortsetzen · Screening-Hinweis],
)

#v(3pt)
#safety[Grenze: keine Melanom-Diagnose, keine Exzision, keine destruktiven Maßnahmen an suspekten Läsionen.]

// ── Case ──────────────────────────────────────────────────────
== Fall zur Selbstprüfung

#grid(
  columns: (auto, 1fr),
  column-gutter: 8pt,
  atom(A + "/atom-lesion.jpg", w: 36mm),
  text(size: 8.5pt)[
    52 J., nach Diskektomie. Schulterblatt: asymmetrisch, unregelmäßig, mehrfarbig, ~8 mm, juckt manchmal. „Schon ewig.“ Will mobilisiert werden.
    #v(3pt)
    *(1)* ABCDE-suspekt → zuweisen · *(2)* keine Destruktion · *(3)* beschreiben · schriftlich Derm/HA.
  ],
)

#v(8pt)

#v(6pt)

#v(5pt)
#set text(size: 8pt)
#table(
  columns: (28mm, 1fr, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else { white },
  [*Job*], [*Medium-Beitrag*], [*Grenze*],
  [Danger], [Lead/Safety sichtbar], [Keine Claim-Erfindung],
  [Erkennung], [Atoms/Schema/Text], [Gestalt ≠ Diagnose],
  [Handlung], [TIME/Sequenz lesbar], [HP-Grenze genannt],
  [Transfer], [Mini-Fall beantwortet], [KI explizit],
)
#v(4pt)
#text(size: 8.2pt)[
  *Residual (dieses Medium):* Was hier noch schwach bleibt, motiviert die anderen Form-Lab-Pässe — dokumentiert in `comparison/matrix.md`, nicht durch leere Seiten kaschiert.
]

// Density fill — prevent orphan last page (Form Lab craft gate)
#block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: 0.45pt + palette.border)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.primary)[Scan-Recap (Medium-Ende): ]
  Learner jobs der Pins noch einmal im Raster/Typografie-Gefüge: Danger → Erkennung → Mimic → Handlung → Grenze. Keine neuen Claims.
]
#v(4pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#fef2f2"), stroke: (left: 3pt + palette.danger))[
    #set text(size: 7.8pt)
    #text(weight: "bold", fill: palette.danger)[Grenze]
    #v(2pt)
    Keine Claim-Erfindung im Bild; Safety-Text außerhalb Raster/Vektor.
  ],
  block(width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#f0fdfa"), stroke: (left: 3pt + palette.primary))[
    #set text(size: 7.8pt)
    #text(weight: "bold", fill: palette.primary)[Transfer]
    #v(2pt)
    Mini-Fall beantwortet: Vordergrund · KI · sicherer Schritt.
  ],
)
#v(4pt)
#align(center)[
  #text(size: 7.5pt, fill: palette.text-muted)[
    Form Lab Pass R · 2+ raster atoms · claim text outside images · not production Accept
  ]
]
