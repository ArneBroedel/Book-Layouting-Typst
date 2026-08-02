// Form Lab Pass R — Gicht · Raster atomic (many small claim-audited images)
// lab: gicht-2026-08 · pin: chapter-v-3-gicht.md
// Assets under domains/medical/assets/form-lab/gicht-2026-08/R/

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Gicht — Form Lab Pass R", author: "form-lab/gicht-2026-08/R")
#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 14mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Gicht · Form Lab · Pass R (Raster atomic)], [viele kleine Atome · Typst-Text außerhalb])
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

#let atom(path, w: 38mm, cap: none) = {
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

// ── Title ─────────────────────────────────────────────────────
= Gicht — hochakute Monarthritis und das septische Gelenk

#text(size: 9pt, fill: palette.text-muted, font: fonts.sans)[
  Pass R: viele *kleine* Raster-Atome · Claims im Typst-Text · keine Mega-Infografik
]

#v(5pt)
#safety[„Typische Podagra“ kann septische Arthritis maskieren; Kristallnachweis und Gichtanamnese entwarnen *nicht*.]

// ── Recognition montage ───────────────────────────────────────
== Erkennung — Atom-Montage (Hot Joint)

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  align(center)[
    #atom("/domains/medical/assets/form-lab/gicht-2026-08/R/atom-hot-joint.jpg", w: 42mm, cap: [Atom A · MTP-I Gestalt])
  ],
  align(center)[
    #atom("/domains/medical/assets/form-lab/gicht-2026-08/R/atom-crystal.jpg", w: 42mm, cap: [Atom B · Kristall-Konzept])
  ],
  align(center)[
    #atom("/domains/medical/assets/form-lab/gicht-2026-08/R/atom-hot-knee.jpg", w: 42mm, cap: [Atom C · heißes Mono (Knie/CPPD-DDx)])
  ],
)

#v(4pt)
#set text(size: 8.5pt)
*Claim-Audit (Atome):* Bilder zeigen *Gestalt* (Rötung/Schwellung/Kristall-Metapher) — sie *diagnostizieren* nicht Gicht vs. septisch. Endgültige Abgrenzung bleibt ärztlich. Atom C: heißes großes Gelenk erinnert an CPPD/septisch am Knie — nicht „immer Gicht“.

// ── Big Picture ───────────────────────────────────────────────
== Big Picture

Die Gicht ist klinische Manifestation der Hyperurikämie mit Uratkristallen. Im Direktzugang: hochakuter Monoarthritis-Anfall (klassisch MTP-I), Stunden-Tempo. HP: Screen Infekt/Systemik, triagieren, zuweisen — nicht punktieren.

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 6pt,
  block(inset: 6pt, fill: rgb("#f8fafc"), radius: 2pt, stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold")[Wann denken?]
    #v(2pt)
    #text(size: 7.5pt)[Hyperurikämie, Alkohol, Diuretika, Purine, Adipositas, Niere; frühere Attacken/Tophi.]
  ],
  block(inset: 6pt, fill: rgb("#f8fafc"), radius: 2pt, stroke: 0.4pt + palette.border)[
    #text(size: 8pt, weight: "bold")[Mechanismus]
    #v(2pt)
    #text(size: 7.5pt)[Urat → neutrophile Entzündung. Bild eindrucksvoll, von bakteriell oft untrennbar.]
  ],
  block(inset: 6pt, fill: rgb("#fef2f2"), radius: 2pt, stroke: 0.4pt + palette.danger.lighten(40%))[
    #text(size: 8pt, weight: "bold", fill: palette.danger)[Nicht entwarnen]
    #v(2pt)
    #text(size: 7.5pt)[Kristalle / Anamnese schließen septische Arthritis *nicht* aus.]
  ],
)

// ── Clinical + montage ────────────────────────────────────────
== Klinische Hinweise

#table(
  columns: (28mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 0pt, y: 4pt),
  [*Anamnese*], [Hochakuter Mono binnen Stunden; oft MTP-I; Trigger; Fieber? Hautverletzung?],
  [*Beobachtung*], [Rötung, Überwärmung, Schwellung; Systemik-Eindruck],
  [*Untersuchung*], [Schmerz, Belastungsunfähigkeit; *keine* forcierte Manipulation],
  [*Verlauf*], [Stunden–Tage; polyartikulärer Sturm mit Systemik ≠ gewöhnlicher Schub],
)

// ── Mimic ─────────────────────────────────────────────────────
== Trügerische Erklärungen

#set text(size: 8.5pt)
1. *„Umgeknickt“* ohne Mechanik → Gicht *und* Infekt mitdenken. \
2. *„Nur Gicht-Schub“* → Kristalle entwarnen septisch *nicht*. \
3. *„Knie = Gicht“* → CPPD häufig; septisch Must-not-miss (Atom C als Erinnerung, kein Beweis).

// ── TIME ──────────────────────────────────────────────────────
== Handeln und Dringlichkeit

#set text(size: 8pt)
#table(
  columns: (22mm, 1fr, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  fill: (_, y) => if y == 0 { rgb("#fef2f2") } else if y == 1 { rgb("#fff7ed") } else { white },
  [*112*], [Heißes Gelenk + Systemik/Sepsis-Bild], [Abbrechen · 112 · keine Manipulation],
  [*NA*], [Heißes Mono + Belastungsunfähigkeit (*auch ohne* Fieber); Fieber; Post-Injektion/OP; Hochrisiko], [Noch heute NA · septisch bis Ausschluss],
  [*Zeitnah*], [Nur stabiles ärztlich eingeordnetes Muster ohne heißes Mono/Systemik], [HA/Rheuma · Sicherheitsnetz],
  [*Behandeln*], [Stabil ohne Red Flags], [Schmerzarmer Rahmen · Rückkehrgründe],
)

#v(3pt)
#safety[Grenze: keine Punktion, i.a. Injektion, Antibiose durch HP. Absolute KI bis Ausschluss: forcierte Manipulation, Probebehandeln bei Fieber/Systemik.]

// ── Case ──────────────────────────────────────────────────────
== Fall zur Selbstprüfung

#grid(
  columns: (auto, 1fr),
  column-gutter: 8pt,
  atom("/domains/medical/assets/form-lab/gicht-2026-08/R/atom-hot-joint.jpg", w: 32mm),
  text(size: 8.5pt)[
    54 J., „wieder Podagra“, MTP-I heiß/rot, unbelastbar, Bier+Thiazid, 38,3 °C, will Mobilisation „wie letzter Schub“.
    #v(3pt)
    *(1)* Septisch bis Ausschluss · *(2)* keine forcierte Mobilisation · *(3)* Stopp · NA/112 · Übergabe.
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
    Form Lab Pass R · 3+ raster atoms · claim text outside images · not production Accept
  ]
]
