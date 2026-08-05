// Form Lab Pass O — Anaphylaxie · open-asset pilot

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Anaphylaxie — Form Lab Pass O", author: "form-lab/anaphylaxie-2026-08-o")
#set page(
  paper: "a4",
  margin: (inside: 15mm, outside: 13mm, top: 11mm, bottom: 12mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Anaphylaxie · Pass O (Open Asset)], [Commons · pilot])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(columns: (1fr, auto), [Open-asset pilot · not production Accept], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 8.6pt)
#set par(leading: 0.58em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 13.5pt, weight: "bold", fill: palette.primary-dark)
  block(below: 3.5pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10pt, weight: "bold", fill: palette.primary)
  block(below: 3.5pt, above: 7pt)[
    #it.body
    #v(1.2pt)
    #line(length: 18mm, stroke: 1pt + palette.primary)
  ]
}

#let base = "/domains/medical/assets/form-lab/anaphylaxie-2026-08-o/"

#let credit(t) = {
  set text(size: 5.5pt, fill: palette.text-muted, font: fonts.sans)
  block(above: 1pt)[#t]
}

#let danger(body) = block(
  width: 100%,
  inset: 6pt,
  radius: 2pt,
  fill: rgb("#fef2f2"),
  stroke: (left: 3.5pt + palette.danger, rest: 0.4pt + palette.danger.lighten(40%)),
)[
  #set text(size: 8pt)
  #text(weight: "bold", fill: palette.danger)[Gefahr: ]
  #body
]

#let soft(title, body) = block(
  width: 100%,
  inset: (left: 6pt, rest: 5pt),
  radius: 2pt,
  fill: rgb("#f0fdfa"),
  stroke: (left: 2.6pt + palette.primary, rest: 0.35pt + palette.primary.lighten(45%)),
)[
  #text(size: 7.5pt, weight: "bold", fill: palette.primary, font: fonts.sans)[#title]
  #v(1.5pt)
  #set text(size: 7.5pt)
  #body
]

#let fig(path, w: 40mm, cap, cr) = block(
  width: w + 3mm,
  inset: 2pt,
  radius: 2pt,
  stroke: 0.4pt + palette.border,
)[
  #image(path, width: w)
  #v(1pt)
  #set text(size: 6.1pt, font: fonts.sans)
  #align(center)[#cap]
  #credit(cr)
]

#let sys(icon, title, body) = block(
  width: 100%,
  inset: 5pt,
  radius: 2pt,
  fill: white,
  stroke: 0.45pt + palette.border,
)[
  #fa-icon(icon, fill: palette.danger, size: 11pt)
  #text(size: 7.6pt, weight: "bold", font: fonts.sans)[ #title]
  #v(1pt)
  #set text(size: 7.2pt)
  #body
]

= Anaphylaxie — Open-Asset-Entwurf

#danger[
  Atemweg · Kreislauf · rasche Progredienz → *sofort 112*.
  Nur Urtikaria ohne Systemzeichen ist *nicht* automatisch „harmlos bagatellisieren“ — Verlauf beobachten, bei Progredienz eskalieren.
]

== Haut & Angioödem (Open Photos)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 5pt,
  fig(base + "urticaria-cc0.jpg", w: 48mm, [Urtikaria / Quaddeln], [Psixtras · CC0 · Wikimedia]),
  fig(base + "urticaria-arm-pd.jpg", w: 44mm, [Urtikaria Arm], [Heckat · PD · Wikimedia]),
  fig(base + "urticaria-cc0-2024.jpg", w: 48mm, [Urtikaria (weiteres Beispiel)], [מ.י.ש.הו 0 · CC0 · Wikimedia]),
)

#v(4pt)
#grid(
  columns: (1fr, 1fr),
  gutter: 8pt,
  fig(
    base + "angioedema-face-cc-by.jpg",
    w: 62mm,
    [Angioödem Gesicht — cascade cue],
    [Boussetta N et al. · CC BY 4.0 · Wikimedia · personality unknown],
  ),
  fig(
    base + "angioedema-blausen-cc-by.png",
    w: 62mm,
    [Illustration Angioödem],
    [BruceBlaus / Blausen Medical · CC BY 3.0 · Wikimedia],
  ),
)

== Multi-System-Cascade (Icons + Text)

#grid(
  columns: (1fr, 1fr),
  gutter: 5pt,
  sys("hand-dots", [Haut], [Urtikaria, Juckreiz, Flush, Angioödem]),
  sys("lungs", [Atemweg], [Heiserkeit, Stridor, Dyspnoe, Kloßgefühl]),
  sys("heart-pulse", [Kreislauf], [Schwindel, Hypotonie, Kollaps]),
  sys("stomach", [GI], [Übelkeit, Erbrechen, Krämpfe]),
)

== Handlungssequenz

#soft[Stopp → 112 → Lagerung/BLS → Autoinjektor-Support][
  1. Auslöser stoppen (soweit möglich) \
  2. *112* bei Systemzeichen / Progredienz \
  3. Lagerung nach Zustand; BLS bei Bedarf \
  4. *Patienteneigener* Adrenalin-Autoinjektor unterstützen — kein eigenes Medikamentenprotokoll erfinden \
  5. *Biphasisch:* auch nach Besserung Überwachung / ärztliche Weiterversorgung
]

== Mimics

Nur Urtikaria · Panik · Asthma · MSK-Enge — *nicht* gegen klare Systemzeichen ausspielen.

== Mini-Fall

Nussallergie + Kloßgefühl → 112; nicht „Nacken lösen“ / abwarten.

#v(4pt)
#block(width: 100%, inset: 5pt, fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border)[
  #set text(size: 6.3pt, font: fonts.sans)
  Credits: `…/anaphylaxie-2026-08-o/CREDITS.md` · Pass O pilot · kein Production-Accept.
]
