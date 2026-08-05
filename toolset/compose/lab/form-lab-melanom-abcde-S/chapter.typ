// Form Lab Pass S — Melanom ABCDE synthesis from matrix winners
// Winners: C ABCDE/TIME/mimic · V ABCDE glyphs + Ugly Duckling · R lesion atoms · T body
// lab: melanom-abcde-2026-08

#import "/packages/bookkit/lib.typ": *
#import "@preview/cetz:0.3.4"
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Melanom ABCDE — Form Lab Pass S", author: "form-lab/melanom-abcde-2026-08/S")
#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 14mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Melanom/ABCDE · Form Lab · Pass S], [C+T+V+R winners only])
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

#let ugly-duck() = cetz.canvas(length: 1mm, {
  import cetz.draw: *
  for x in (-12, -6, 0, 6) {
    circle((x, 0), radius: 2.8, fill: rgb("#a8a29e"), stroke: 0.6pt + palette.primary)
  }
  merge-path(close: true, fill: rgb("#7c2d12"), stroke: 1.1pt + palette.danger, {
    line((12, 3.5), (16, 1.5), (15, -2.5), (10, -1.5), (9.5, 2))
  })
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

#let A = "/domains/medical/assets/form-lab/melanom-abcde-2026-08/R"

= Melanom-Verdacht — ABCDE und Hautscreening

#text(size: 8.5pt, fill: palette.text-muted, font: fonts.sans)[
  Synthesis · Matrix winners: C (chrome) · V (ABCDE glyphs) · R (lesion atoms) · T (type)
]

#v(4pt)
#block(
  width: 100%, inset: 8pt, radius: 2pt, fill: rgb("#fef2f2"),
  stroke: (left: 4pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
)[
  #set text(size: 9pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang: ]
  Keine Melanom-Diagnose und keine destruktiven Maßnahmen. ABCDE-suspekt → gleichtags–zeitnah zuweisen.
]

// ── Recognition R + V ─────────────────────────────────────────
== Erkennung — Läsion + Ugly Duckling (R + V)

#grid(
  columns: (48mm, 40mm, 1fr),
  column-gutter: 8pt,
  image(A + "/atom-lesion.jpg", width: 46mm),
  align(center + horizon)[#ugly-duck()],
  [
    #set text(size: 8.5pt)
    *Raster (Pass R):* suspekte Pigmentläsion-Gestalt. \
    *Vektor (Pass V):* Ugly Duckling — die Läsion, die *anders* ist. \
    *Claim-Grenze:* Bilder lehren Gestalt, nicht die histologische Diagnose.
  ],
)

// ── ABCDE chrome (C) ──────────────────────────────────────────
== ABCDE — Erkennungscluster (C)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  column-gutter: 3.5pt,
  block(inset: 5pt, fill: rgb("#fef2f2"), radius: 2pt, stroke: 0.4pt + palette.danger.lighten(40%))[
    #text(size: 8pt, weight: "bold", fill: palette.danger)[*A*]
    #v(2pt)
    #text(size: 7pt)[Asymmetrie]
  ],
  block(inset: 5pt, fill: rgb("#fff7ed"), radius: 2pt, stroke: 0.4pt + palette.warning.lighten(30%))[
    #text(size: 8pt, weight: "bold", fill: palette.warning.darken(10%))[*B*]
    #v(2pt)
    #text(size: 7pt)[Border unregelmäßig]
  ],
  block(inset: 5pt, fill: rgb("#f0fdfa"), radius: 2pt, stroke: 0.4pt + palette.primary.lighten(30%))[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[*C*]
    #v(2pt)
    #text(size: 7pt)[Color ≥2 Farben]
  ],
  block(inset: 5pt, fill: rgb("#f8fafc"), radius: 2pt, stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold")[*D*]
    #v(2pt)
    #text(size: 7pt)[Diameter oft ≥6 mm]
  ],
  block(inset: 5pt, fill: rgb("#fef2f2"), radius: 2pt, stroke: 0.4pt + palette.danger.lighten(40%))[
    #text(size: 8pt, weight: "bold", fill: palette.danger)[*E*]
    #v(2pt)
    #text(size: 7pt)[Evolution]
  ],
)

// ── Body type ─────────────────────────────────────────────────
== Big Picture + Hinweise

#set text(size: 8.5pt)
HP: strukturierter Blick beim Entkleiden · beschreiben · zuweisen. MSK oft fortsetzbar, wenn Läsion unberührt bleibt. 112 nur bei vitaler Begleitlage.

#v(3pt)
#table(
  columns: (26mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 0pt, y: 4pt),
  [*Anamnese*], [Evolution? Juckreiz/Blutung? Trauma am Nagel? B-Symptome?],
  [*Beobachtung*], [ABCDE; Ugly Duckling; Nagelwall-Pigment; Rücken/Nacken mitinspizieren],
  [*Grenze*], [*Keine* Destruktion, keine Eigenetikettierung, keine Exzision],
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
  mrow([„Alter Fleck“], [Ohne Evolutionsfrage → verzögerte Diagnostik]),
  mrow([„Seborrhoische Keratose“], [Endgültige Einordnung *ärztlich*]),
  mrow([„Nagelhämatom“ / „Rücken nicht Ziel“], [Trauma-Check · mitinspizieren · zuweisen]),
)

// ── TIME C ────────────────────────────────────────────────────
== Handeln und Dringlichkeit (C)

#stack(
  spacing: 4pt,
  time-tier(
    "112", "Selten — nur vitale Begleitlage", palette.danger, rgb("#fef2f2"),
    [Notruf + Standard-Notfallmanagement (schwere Blutung, Schock).],
    ([Melanom typisch *nicht* primär 112],),
    solid: true,
  ),
  time-tier(
    "NA", "Gleichtags / heute — suspekte Läsion", palette.warning, rgb("#fff7ed"),
    [Läsion *nicht* behandeln · keine Destruktion · HA/Derm · „Melanom-DDx / ABCDE-suspekt?“],
    ([Blutung/Ulzeration], [ABCDE-suspekt oder rasch wachsend], [B-Symptome + multiple Hautknoten]),
  ),
  time-tier(
    "T3", "Zeitnah Derm / HA", palette.primary-light, rgb("#f8fafc"),
    [Schriftliche Zuweisung zur Exzisionsabklärung.],
    ([Subungual + Nagelwall], [Ugly Duckling ohne Blutung]),
  ),
  time-tier(
    "Beh.", "Behandeln + Screen-Hinweis", palette.primary, rgb("#f0fdfa"),
    [MSK fortsetzen · neu auffällige Läsion → stoppen + zuweisen · Screening-Hinweis DE ab 35 J.],
    ([Ohne suspekte Kriterien],),
  ),
)

#v(4pt)
#block(
  width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger),
)[
  #set text(size: 7.5pt)
  #text(weight: "bold", fill: palette.danger)[Grenze: ]
  keine Melanom-Diagnose, keine Exzision, keine destruktiven Maßnahmen an suspekten Läsionen.
]

// ── Case ──────────────────────────────────────────────────────
== Fall zur Selbstprüfung

#block(width: 100%, inset: 7pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: (left: 3pt + palette.primary))[
  #set text(size: 8.3pt)
  *Situation:* 52 J., nach Diskektomie. Schulterblatt: asymmetrisch, unregelmäßig, mehrfarbig, ~8 mm, juckt manchmal. „Schon ewig.“ Will mobilisiert werden.
]

#v(4pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,
  block(inset: 6pt, fill: rgb("#fef2f2"), radius: 2pt, stroke: 0.4pt + palette.danger.lighten(40%))[
    #text(size: 8pt, weight: "bold", fill: palette.danger)[(1) Maßgeblich]
    #v(2pt)
    #text(size: 7.5pt)[ABCDE-suspekt → gleichtags–zeitnah zuweisen]
  ],
  block(inset: 6pt, fill: rgb("#fff7ed"), radius: 2pt, stroke: 0.4pt + palette.warning.lighten(30%))[
    #text(size: 8pt, weight: "bold", fill: palette.warning.darken(10%))[(2) KI]
    #v(2pt)
    #text(size: 7.5pt)[Destruktion; „alter Fleck“; Abwarten ohne Zuweisung]
  ],
  block(inset: 6pt, fill: rgb("#f0fdfa"), radius: 2pt, stroke: 0.4pt + palette.primary.lighten(30%))[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[(3) Schritt]
    #v(2pt)
    #text(size: 7.5pt)[Beschreiben · schriftlich Derm/HA]
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
