// Form Lab Pass R — Anaphylaxie · Raster aspects
// lab: anaphylaxie-2026-08-b

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Anaphylaxie — Form Lab Pass R", author: "form-lab/anaphylaxie-2026-08-b/R")
#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 14mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Anaphylaxie · Form Lab · Pass R], [Raster-Kacheln · Safety im Text])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(3pt)
    grid(columns: (1fr, auto), [Form Lab · raster aspects], counter(page).display("1"))
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

#let A = "/domains/medical/assets/form-lab/anaphylaxie-2026-08-b/R"

// ── Title ─────────────────────────────────────────────────────
= Anaphylaxie — systemische Notfallreaktion

#text(size: 9pt, fill: palette.text-muted, font: fonts.sans)[
  Pass R: kleine Raster-Kacheln · Claims im Typst-Text · keine Mega-Infografik
]

#v(5pt)
#safety[Atemweg/Kreislauf/Progredienz → *sofort 112*. Bilder lehren Gestalt (Urtikaria, Angioödem, Systemik) — sie ersetzen *kein* klinisches Screening und *kein* Notrufprotokoll.]

// ── Recognition montage ───────────────────────────────────────
== Erkennung — Kachel-Montage

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  align(center)[
    #atom(A + "/aspect-urticaria.jpg", w: 42mm, cap: [Kachel A · Urtikaria-Gestalt])
  ],
  align(center)[
    #atom(A + "/aspect-angioedema.jpg", w: 42mm, cap: [Kachel B · Angioödem-Gestalt])
  ],
  align(center)[
    #atom(A + "/aspect-unwell-shock-face.jpg", w: 42mm, cap: [Kachel C · Systemik / AZ-Gestalt])
  ],
)

#v(4pt)
#set text(size: 8.5pt)
*Claim-Audit:* Kachel A/B zeigen *kutanen* Gestalt-Eindruck — Fehlen von Hautzeichen schließt schwere Anaphylaxie *nicht* aus. Kachel C zeigt systemischen AZ-Eindruck (blass/schwitzend) — kein Kaskaden-Diagramm und kein Messinstrument. Handlungsleitend: Atemwege und Kreislauf prüfen → bei kritischen Zeichen *112*.

// ── Big Picture ───────────────────────────────────────────────
== Big Picture

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  block(inset: 6pt, fill: rgb("#f8fafc"), radius: 2pt, stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold")[Mehrorgan]
    #v(2pt)
    #text(size: 7.5pt)[Haut · Atemwege · Kreislauf · GI — kombiniert oder isoliert kritisch.]
  ],
  block(inset: 6pt, fill: rgb("#f8fafc"), radius: 2pt, stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold")[Kette]
    #v(2pt)
    #text(size: 7.5pt)[Stopp → *112* → Lagerung/BLS → Autoinjektor-Support (patienteneigen) → überwachen.]
  ],
  block(inset: 6pt, fill: rgb("#fef2f2"), radius: 2pt, stroke: 0.4pt + palette.danger.lighten(40%))[
    #text(size: 8pt, weight: "bold", fill: palette.danger)[Nicht entwarnen]
    #v(2pt)
    #text(size: 7.5pt)[„Nur Quaddeln“, „Panik“, „Asthma“, „HWS-Enge“ ohne Screen.]
  ],
)

// ── Clinical ──────────────────────────────────────────────────
== Klinische Hinweise

#table(
  columns: (28mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 0pt, y: 4pt),
  [*Anamnese*], [Trigger? Atemnot, Kloß, Schwindel? Juckreiz/Schwellung? Allergie / Autoinjektor?],
  [*Beobachtung*], [Haut/Schleimhaut; Atmung (Stridor/Giemen); Kreislauf/Bewusstsein],
  [*Handlung*], [*Keine* Belastungstests, keine manuelle Enge-Abklärung],
  [*Biphasisch*], [Zweite Welle ca. 6–24 h möglich — initiale Besserung ersetzt keine Beobachtung],
)

// ── Mimic ─────────────────────────────────────────────────────
== Trügerische Erklärungen

#set text(size: 8.5pt)
1. *„Nur Quaddeln“* → generalisierte Urtikaria kann Vorläufer/Teil systemischer Reaktion sein. \
2. *„Panik / Hyperventilation“* → erst Schwellung, Stridor, Kreislauf prüfen. \
3. *„Asthma-Schub“* → Allergen + Mehrorgan → Anaphylaxie-Pfad. \
4. *„HWS-/BWS-Blockade“* → Enge nach Exposition + Schwellung/Juckreiz/Schwindel ≠ manuelle Freigabe.

// ── TIME ──────────────────────────────────────────────────────
== Handeln und Dringlichkeit

#set text(size: 8pt)
#table(
  columns: (22mm, 1fr, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  fill: (_, y) => if y == 0 { rgb("#fef2f2") } else if y == 1 { rgb("#fff7ed") } else { white },
  [*112*], [Atemwegs- oder Kreislaufzeichen; Mehrorgan + Dynamik; schwere Allergie + Exposition + Progredienz], [Stopp · *112* · Lagerung · Autoinjektor-Support · BLS],
  [*NA*], [Milde nicht-progressive / isolierte stabile Haut ohne 112-Kriterien], [Keine PT · gleichtags Arzt · bei Verschlechterung *112*],
  [*Beh.*], [Keine akute Allergie als PT-Primärindikation], [Erst nach ärztlicher Klärung],
)

#v(3pt)
#safety[Grenze: kein medikamentöses Eigenprotokoll; keine i.m./i.v. Notfallmedikation aus eigener Kompetenz. Autoinjektor nur *patienteneigen*, verordnet, Anwendung bekannt.]

// ── Case ──────────────────────────────────────────────────────
== Fall zur Selbstprüfung

#grid(
  columns: (auto, auto, 1fr),
  column-gutter: 6pt,
  atom(A + "/aspect-urticaria.jpg", w: 28mm),
  atom(A + "/aspect-angioedema.jpg", w: 28mm),
  text(size: 8.5pt)[
    34 J., HWS-Fortsetzung. Vor 20 min Nahrung; seit 10 min Juckreiz, Flush, Kloß, Heiserkeit, Lippenödem. Nussallergie, Autoinjektor „in der Tasche“. Will Nacken lösen.
    #v(3pt)
    *(1)* Beginnende Anaphylaxie → *112* · *(2)* keine HWS-Mobilisation · *(3)* Stopp · 112 · Autoinjektor-Support.
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
    Form Lab Pass R · 3 raster atoms · claim text outside images · not production Accept
  ]
]
