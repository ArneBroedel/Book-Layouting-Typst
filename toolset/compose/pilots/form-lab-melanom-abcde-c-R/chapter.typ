// Form Lab Pass R (c-wave) — Melanom ABCDE · many small rasters
// lab: melanom-abcde-2026-08-c · assets under domains/medical/assets/form-lab/melanom-abcde-2026-08-c/R/
// only Semantic Read PASS kacheln mounted; captions Kachel/Gestalt

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Melanom ABCDE — Form Lab Pass R (c-wave)", author: "form-lab/melanom-abcde-2026-08-c/R")
#set page(
  paper: "a4",
  margin: (inside: 17mm, outside: 14mm, top: 12mm, bottom: 13mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Melanom ABCDE · Form Lab c · Pass R (Raster)], [viele kleine Kacheln · Text außerhalb])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [Form Lab · raster aspects · wave c], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.8pt)
#set par(leading: 0.58em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 14.5pt, weight: "bold", fill: palette.primary-dark)
  block(below: 4pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10.5pt, weight: "bold", fill: palette.primary)
  block(below: 4pt, above: 7pt)[
    #it.body
    #v(1.5pt)
    #line(length: 22mm, stroke: 1pt + palette.primary)
  ]
}

#let aspect(path, w: 40mm, cap: none) = {
  block(
    width: w + 4mm,
    inset: 2.5pt,
    radius: 2pt,
    stroke: 0.4pt + palette.border,
    fill: white,
  )[
    #image(path, width: w)
    #if cap != none {
      v(2pt)
      set text(size: 6.2pt, fill: palette.text-muted, font: fonts.sans)
      align(center)[#cap]
    }
  ]
}

#let safety(body) = block(
  width: 100%,
  inset: 6.5pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3pt + palette.danger),
)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.danger)[Safety (Text außerhalb Raster): ]
  #body
]

#let base = "/domains/medical/assets/form-lab/melanom-abcde-2026-08-c/R/"

= Melanom – ABCDE-Hautscreening im Direktzugang

#text(size: 8.3pt, fill: palette.text-muted, font: fonts.sans)[
  Pass R: viele *kleine* Raster-Kacheln · Claims im Typst · keine Mega-Infografik
]

#v(3pt)
#safety[Strukturierter Blick + Zuweisung — *keine* Exzision, *keine* destruktiven Maßnahmen. ABCDE-suspekt → gleichtags–zeitnah HA/Derm. 112 nur bei vitaler Begleitlage.]

== Erkennung — Gestalt-Kacheln

#grid(
  columns: (1fr, 1fr),
  column-gutter: 8pt,
  row-gutter: 6pt,
  align(center)[
    #aspect(base + "kachel-asym-lesion.jpg", w: 52mm, cap: [Kachel · asymmetrische Mehrton-Läsion (ABCDE-Gestalt)])
  ],
  align(center)[
    #aspect(base + "kachel-ugly-duckling.jpg", w: 52mm, cap: [Kachel · Ugly Duckling: Feld ähnlicher Nävi + *eine* abweichende])
  ],
)

#v(3pt)
#grid(
  columns: (auto, 1fr),
  column-gutter: 10pt,
  align(center)[
    #aspect(base + "kachel-subungual.jpg", w: 36mm, cap: [Kachel · subunguales Längspigment])
  ],
  [
    #set text(size: 7.8pt)
    *Lesart (Claims im Typst, nicht im Bild):* Asymmetrie + unregelmäßige Begrenzung + Farbvielfalt in einer Läsion sind suspekt. Ugly Duckling zählt auch ohne volles ABCDE. Subunguales Längspigment ohne Trauma + Nagelwall-Beteiligung → zeitnah Derm (Hutchinson-Verdacht mitdenken).
  ],
)

== 1–3. Wann · Mechanismus · Klinik

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  [
    #text(weight: "bold", size: 8pt, font: fonts.sans, fill: palette.primary-dark)[Wann denken]
    #v(2pt)
    #text(size: 7.5pt)[UV/Solarium; heller Hauttyp; atypische Nävi; familiäres Melanom; Immunsuppression; Rücken/Nacken/Akren.]
  ],
  [
    #text(weight: "bold", size: 8pt, font: fonts.sans, fill: palette.primary-dark)[Mechanismus]
    #v(2pt)
    #text(size: 7.5pt)[UV-DNA-Schäden → unkontrolliertes Melanozytenwachstum. Früh ärztlich exzidiert → bessere Prognose. DA: Blick + Zuweisung.]
  ],
  [
    #text(weight: "bold", size: 8pt, font: fonts.sans, fill: palette.primary-dark)[Klinik]
    #v(2pt)
    #text(size: 7.5pt)[Evolution fragen; ABCDE + Ugly Duckling; *keine* Biopsie/Kürettage; bei Entkleidung Rücken mitinspizieren.]
  ],
)

== 4. Mimics

#set text(size: 7.8pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  row-gutter: 3pt,
  [*„Alter Fleck“* — ohne Evolutionsfrage Transformation verpasst.],
  [*„Seborrhoische Keratose“* — endgültige DDx ärztlich; bei Suspekt zuweisen.],
  [*„Nagelhämatom“* — ohne Trauma + Nagelwall → Melanom-DDx zeitnah (vgl. Kachel subungual).],
  [*„Rücken nicht Ziel“* — bei Entkleidung mitinspizieren und zuweisen.],
)

== 5. Dringlichkeit (Text außerhalb Raster)

#table(
  columns: (28mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 4.5pt,
  text(weight: "bold", size: 7.5pt, fill: palette.text-muted)[112 selten],
  text(size: 7.5pt)[Nur vitale Begleitlage — Melanom selbst nicht primär reanimationspflichtig.],
  text(weight: "bold", size: 8pt, fill: palette.danger)[Gleichtags–zeitnah],
  text(size: 7.5pt)[Blutung/Ulzeration; ABCDE-suspekt; B-Symptome + Knoten → HA/Derm, *keine* Destruktion.],
  text(weight: "bold", size: 7.8pt)[Zeitnah Derm],
  text(size: 7.5pt)[Subungual + Nagelwall; Ugly Duckling ohne akute Blutung.],
  text(weight: "bold", size: 7.8pt)[Behandeln],
  text(size: 7.5pt)[Ohne Suspekt: MSK + Sicherheitsnetz; Screening-Hinweis ohne Ersatz.],
)

#v(3pt)
#block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: white,
  stroke: 0.9pt + palette.text-muted,
)[
  #text(size: 7.5pt, weight: "bold", fill: palette.text-muted, font: fonts.sans)[GRENZE]
  #v(2pt)
  #text(size: 7.5pt)[Keine Melanom-Diagnose, keine Exzision, keine destruktiven Maßnahmen. Endgültige DDx ist *ärztlich*.]
]

== 6. Fall

#block(breakable: false, width: 100%, inset: 6pt, radius: 2pt, fill: rgb("#f8fafc"), stroke: (left: 3pt + palette.primary))[
  #text(size: 7.6pt)[
    *52 J., Schulterblatt-Läsion beim Entkleiden* (asymmetrisch, unregelmäßig, mehrfarbig ~8 mm, „schon ewig“).
    *Maßgeblich:* ABCDE-suspekt → gleichtags–zeitnah zuweisen. ·
    *Kontraindiziert:* Destruktion; „alter Fleck“-Label. ·
    *Schritt:* schriftlich HA/Derm; MSK mit Netz; Läsion unberührt.
  ]
  #v(3pt)
  #align(center)[
    #text(size: 7pt, fill: palette.text-muted, font: fonts.sans)[
      Merksatz: Gestalt-Kachel lesen · Ugly Duckling im Feld · suspekt → zuweisen · keine Destruktion
    ]
  ]
]
