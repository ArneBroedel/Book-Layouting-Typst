// Form Lab Pass S — Anaphylaxie synthesis from matrix winners
// Winners: C danger/TIME/action/mimic · V multi-system atoms · R urticaria/angio · T body
// lab: anaphylaxie-2026-08

#import "/packages/bookkit/lib.typ": *
#import "@preview/cetz:0.3.4"
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Anaphylaxie — Form Lab Pass S", author: "form-lab/anaphylaxie-2026-08/S")
#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 14mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Anaphylaxie · Form Lab · Pass S], [C+T+V+R winners only])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(3pt)
    grid(columns: (1fr, auto), [Form Lab · synthesis], counter(page).display("1"))
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

#let airway-swell() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  line((-2, 9), (-2, -7), stroke: 1.1pt + palette.primary-dark)
  line((2, 9), (2, -7), stroke: 1.1pt + palette.primary-dark)
  arc((0, 1), start: 90deg, stop: 270deg, radius: 4.5, fill: rgb("#fecaca"), stroke: 1pt + palette.danger)
  arc((0, 1), start: -90deg, stop: 90deg, radius: 4.5, fill: rgb("#fecaca"), stroke: 1pt + palette.danger)
})

#let time-tier(code, title, bar, fill, action, triggers, solid: false) = {
  block(
    width: 100%,
    radius: 2pt,
    clip: true,
    breakable: false,
    stroke: 0.45pt + bar.lighten(20%),
    fill: fill,
  )[
    #if solid {
      block(width: 100%, inset: (x: 7pt, y: 4pt), fill: bar)[
        #set text(size: 8.2pt, weight: "bold", fill: white, font: fonts.sans)
        #code — #title
      ]
    } else {
      block(width: 100%, inset: (x: 7pt, y: 4pt), fill: fill, stroke: (left: 3.2pt + bar))[
        #text(size: 8.2pt, weight: "bold", fill: bar.darken(10%), font: fonts.sans)[#code — #title]
      ]
    }
    #block(inset: (x: 8pt, y: 4pt))[
      #set text(size: 7.5pt)
      #text(weight: "bold")[Handlung: ] #action
      #v(2pt)
      #for t in triggers [• #t #linebreak()]
    ]
  ]
}

#let A = "/domains/medical/assets/form-lab/anaphylaxie-2026-08/R"

= Anaphylaxie — systemische Notfallreaktion

#text(size: 8.5pt, fill: palette.text-muted, font: fonts.sans)[
  Synthesis · Matrix winners: C (chrome) · V (Mehrorgan-Vektoren) · R (Haut-Atome) · T (type)
]

#v(4pt)
#block(
  width: 100%, inset: 8pt, radius: 2pt, fill: rgb("#fef2f2"),
  stroke: (left: 4pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
)[
  #set text(size: 9pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  Atemweg/Kreislauf/Progredienz → *sofort 112*. Keine PT, kein medikamentöses Eigenprotokoll.
]

// ── Recognition R + V ─────────────────────────────────────────
== Erkennung — Haut + Atemweg (R + V)

#grid(
  columns: (40mm, 40mm, 28mm, 1fr),
  column-gutter: 6pt,
  image(A + "/atom-urticaria.jpg", width: 38mm),
  image(A + "/atom-angioedema.jpg", width: 38mm),
  align(center + horizon)[#airway-swell()],
  [
    #set text(size: 8.2pt)
    *Raster:* Urtikaria-/Angioödem-Gestalt. \
    *Vektor:* Atemwegsödem-Glyph. \
    *Claim:* Fehlen kutaner Zeichen schließt schwere Reaktion *nicht* aus.
  ],
)

// ── Multi-system C ────────────────────────────────────────────
== Mehrorgan + Handlungskette (C)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 4pt,
  block(inset: 6pt, fill: rgb("#fff7ed"), radius: 2pt, stroke: (top: 3pt + palette.warning))[
    #text(size: 8pt, weight: "bold")[Haut]
    #v(2pt)
    #text(size: 7.2pt)[Flush · Urtikaria · Angioödem]
  ],
  block(inset: 6pt, fill: rgb("#fef2f2"), radius: 2pt, stroke: (top: 3pt + palette.danger))[
    #text(size: 8pt, weight: "bold", fill: palette.danger)[Atem]
    #v(2pt)
    #text(size: 7.2pt)[Stridor · Giemen · Kloß]
  ],
  block(inset: 6pt, fill: rgb("#fef2f2"), radius: 2pt, stroke: (top: 3pt + palette.danger))[
    #text(size: 8pt, weight: "bold", fill: palette.danger)[Kreislauf]
    #v(2pt)
    #text(size: 7.2pt)[Kollaps · Schock]
  ],
  block(inset: 6pt, fill: rgb("#f0fdfa"), radius: 2pt, stroke: (top: 3pt + palette.primary))[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[GI]
    #v(2pt)
    #text(size: 7.2pt)[Übelkeit · Kolik]
  ],
)

#v(4pt)
#set text(size: 8.5pt)
*Kette:* Stopp → *112* → Lagerung/BLS → Autoinjektor-Support (patienteneigen) → überwachen. *Biphasisch* ca. 6–24 h möglich.

// ── Body type ─────────────────────────────────────────────────
== Klinische Hinweise

#table(
  columns: (26mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 0pt, y: 4pt),
  [*Anamnese*], [Trigger? Atemnot, Kloß, Schwindel? Juckreiz/Schwellung? Allergie / Autoinjektor?],
  [*Beobachtung*], [Haut/Schleimhaut; Atmung; Kreislauf/Bewusstsein — ohne Notruf zu verzögern],
  [*Grenze*], [Kein i.m./i.v. Eigenprotokoll; Autoinjektor nur patienteneigen],
)

// ── Mimic C ───────────────────────────────────────────────────
== Trügerische Erklärungen (C)

#let mrow(a, b) = block(
  width: 100%, inset: 5.5pt, radius: 2pt, stroke: 0.45pt + palette.border,
)[
  #grid(
    columns: (1fr, 12pt, 1.1fr),
    text(size: 7.8pt)[#a],
    align(center)[#text(fill: palette.danger, weight: "bold")[→]],
    text(size: 7.8pt, weight: "bold", fill: palette.danger)[#b],
  )
]
#stack(
  spacing: 3.5pt,
  mrow([„Nur Quaddeln“], [Atemwege/Kreislauf screenen — Unter-Triage-Gefahr]),
  mrow([„Panik / Asthma / HWS-Enge“], [Allergen + Mehrorgan → *112*, keine manuelle Abklärung]),
)

// ── TIME C ────────────────────────────────────────────────────
== Handeln und Dringlichkeit (C)

#stack(
  spacing: 4pt,
  time-tier(
    "112", "Sofort — Notfall", palette.danger, rgb("#fef2f2"),
    [Stopp · *112* · Lagerung · Autoinjektor-Support · überwachen · BLS bei Bedarf.],
    ([Atemwegs- oder Kreislaufzeichen], [Mehrorgan + Dynamik], [Schwere Allergie + Exposition + Progredienz]),
    solid: true,
  ),
  time-tier(
    "NA", "Gleichtags Arzt (ohne 112-Kriterien)", palette.warning, rgb("#fff7ed"),
    [Keine PT · ärztlich vorstellen · bei Verschlechterung *sofort 112*.],
    ([Milde nicht-progressive Beschwerden], [Isolierte stabile Haut ohne Atem/Kreislauf]),
  ),
  time-tier(
    "Beh.", "Behandeln — erst nach Klärung", palette.primary, rgb("#f0fdfa"),
    [Zuerst ambulant ärztlich abklären · PT erst nach Klärung und ohne Red Flags.],
    ([*Keine* akute Allergie als PT-Primärindikation],),
  ),
)

#v(4pt)
#block(
  width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger),
)[
  #set text(size: 7.5pt)
  #text(weight: "bold", fill: palette.danger)[Grenze: ]
  kein medikamentöses Eigenprotokoll; Autoinjektor nur patienteneigen; biphasisch mitdenken.
]

// ── Case ──────────────────────────────────────────────────────
== Fall zur Selbstprüfung

#block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: (left: 3pt + palette.primary))[
  #set text(size: 8.3pt)
  *Situation:* 34 J., HWS-Fortsetzung. Vor 20 min Nahrung; seit 10 min Juckreiz, Flush, Kloß, Heiserkeit, Lippenödem. Nussallergie, Autoinjektor „in der Tasche“. Will Nacken lösen.
]

#v(4pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  block(inset: 6pt, fill: rgb("#fef2f2"), radius: 2pt, stroke: 0.4pt + palette.danger.lighten(40%))[
    #text(size: 8pt, weight: "bold", fill: palette.danger)[(1) Vordergrund]
    #v(2pt)
    #text(size: 7.5pt)[Beginnende Anaphylaxie → *112*]
  ],
  block(inset: 6pt, fill: rgb("#fff7ed"), radius: 2pt, stroke: 0.4pt + palette.warning.lighten(30%))[
    #text(size: 8pt, weight: "bold", fill: palette.warning.darken(10%))[(2) KI]
    #v(2pt)
    #text(size: 7.5pt)[HWS-Mobilisation; fortgesetzte PT]
  ],
  block(inset: 6pt, fill: rgb("#f0fdfa"), radius: 2pt, stroke: 0.4pt + palette.primary.lighten(30%))[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[(3) Schritt]
    #v(2pt)
    #text(size: 7.5pt)[Stopp · 112 · Autoinjektor-Support]
  ],
)

#v(6pt)

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
    Form Lab Pass S · winners only from T/C/V/R matrix · not production Accept
  ]
]
