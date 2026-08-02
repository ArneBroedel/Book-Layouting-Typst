// Form Lab Pass T — Anaphylaxie · Typography + Icons
#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Anaphylaxie — Form Lab Pass T", author: "form-lab/anaphylaxie-2026-08-b/T")
#set page(
  paper: "a4",
  margin: (inside: 22mm, outside: 18mm, top: 16mm, bottom: 18mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(columns: (1fr, auto), [Anaphylaxie · Form Lab · Pass T (Type+Icon)], [112 · Mehrorgan · Autoinjektor])
    line(length: 100%, stroke: 0.35pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(3pt)
    grid(columns: (1fr, auto), [Form Lab · medium extreme], counter(page).display("1"))
  },
)
#show: setup-typography()
#set text(size: 9.5pt, fill: palette.text-body)
#set par(leading: 0.65em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 16pt, weight: "bold", fill: palette.primary-dark)
  block(below: 6pt, above: 0pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 11pt, weight: "bold", fill: palette.primary)
  block(below: 5pt, above: 12pt)[
    #it.body
    #v(2pt)
    #line(length: 28mm, stroke: 1.1pt + palette.primary)
  ]
}

#let mark(name, label) = {
  box(baseline: 15%)[#fa-icon(name, solid: true, fill: palette.primary-dark, size: 8.5pt)]
  h(3pt)
  text(size: 8pt, weight: "bold", fill: palette.primary-dark, font: fonts.sans)[#label]
}

#let danger-line(body) = {
  block(width: 100%, above: 4pt, below: 8pt)[
    #grid(columns: (auto, 1fr), column-gutter: 8pt,
      align(horizon)[#fa-icon("triangle-exclamation", solid: true, fill: palette.danger, size: 11pt)],
      [
        #set text(size: 9pt)
        #text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang. ]
        #body
      ],
    )
    #v(3pt)
    #line(length: 100%, stroke: 0.9pt + palette.danger)
  ]
}

= Anaphylaxie — systemische Notfallreaktion im Direktzugang

#text(size: 9pt, fill: palette.text-muted, font: fonts.sans)[
  Atemweg · Kreislauf · Mehrorgan · Pass T: Typografie + Icons
]

#v(6pt)
#danger-line[Atemwegs- oder Kreislaufzeichen, rapides Angioödem oder Mehrorgan + Dynamik → *sofort 112*. Keine PT, kein medikamentöses Eigenprotokoll.]

== Big Picture

Eine *Anaphylaxie* ist eine akute systemische Überempfindlichkeitsreaktion — typisch Minuten bis Stunden nach Exposition (Nahrung, Insektengift, Medikament, Latex; auch belastungsassoziiert). Haut, Atemwege, Kreislauf und GI können kombiniert betroffen sein. *Fehlen kutaner Zeichen schließt eine schwere Reaktion nicht aus.*

HP-Kette: *Erkennen → Stopp → 112 → Lagerung/BLS → Autoinjektor-Support* (nur patienteneigen).

#v(4pt)
#grid(columns: (1fr, 1fr, 1fr, 1fr), column-gutter: 8pt,
  [#mark("hand-dots", "Haut") #v(2pt) #text(size: 8.5pt)[Urtikaria, Flush, Angioödem]],
  [#mark("lungs", "Atem") #v(2pt) #text(size: 8.5pt)[Stridor, Kloß, Heiserkeit → *112*]],
  [#mark("heart-pulse", "Kreislauf") #v(2pt) #text(size: 8.5pt)[Hypotonie, Kollaps, Schock]],
  [#mark("notes-medical", "GI") #v(2pt) #text(size: 8.5pt)[Koliken, Erbrechen im Verbund]],
)

== 1. Wann ist daran zu denken?

#grid(columns: (1fr, 1fr, 1fr), column-gutter: 12pt,
  [#text(weight: "bold", font: fonts.sans, size: 8.5pt, fill: palette.primary-dark)[Trigger]
  #v(2pt) #set text(size: 8.5pt)
  Nahrung, Insektengift, Medikamente, Latex; belastungsassoziierte Anaphylaxie.],
  [#text(weight: "bold", font: fonts.sans, size: 8.5pt, fill: palette.primary-dark)[Kontext]
  #v(2pt) #set text(size: 8.5pt)
  Bekannte schwere Allergie; Autoinjektor vorhanden?; Beta-Blocker/ACE-Hemmer (Kontext).],
  [#text(weight: "bold", font: fonts.sans, size: 8.5pt, fill: palette.primary-dark)[Dynamik]
  #v(2pt) #set text(size: 8.5pt)
  Minuten bis wenige Stunden; progredient; Mehrorgan.],
)

== 2. Entstehung und Mechanismus

Allergenkontakt → Mediatorfreisetzung → Kapillarleck, Flush, Ödem → Bronchokonstriktion und obere Atemwegsschwellung → Hypoxie-/Schockrisiko. *Biphasisch* ca. 6–24 h: initiale Besserung ersetzt keine Beobachtung.

== 3. Klinische Hinweise — vier Kanäle

#table(
  columns: (28mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 0pt, y: 5pt),
  [#text(weight: "bold", font: fonts.sans, size: 8.5pt)[#fa-icon("comments", solid: true) Anamnese]],
  [#text(size: 8.5pt)[Trigger? Atemnot, Kloß, Schwindel? Juckreiz/Schwellung? Allergie / Autoinjektor?]],
  [#text(weight: "bold", font: fonts.sans, size: 8.5pt)[#fa-icon("eye", solid: true) Beobachtung]],
  [#text(size: 8.5pt)[Haut/Schleimhaut; Atmung (Stridor/Giemen); Kreislauf/Bewusstsein — *ohne* Notruf zu verzögern]],
  [#text(weight: "bold", font: fonts.sans, size: 8.5pt)[#fa-icon("hand", solid: true) Handlung]],
  [#text(size: 8.5pt)[*Keine* Belastungstests, keine manuelle Enge-Abklärung]],
  [#text(weight: "bold", font: fonts.sans, size: 8.5pt)[#fa-icon("clock-rotate-left", solid: true) Verlauf]],
  [#text(size: 8.5pt)[Minuten–Stunden; biphasische zweite Welle 6–24 h möglich]],
)

=== Handlungskette (Typografie)

#set text(size: 8.5pt)
#pad(left: 2pt)[
  #grid(columns: (14pt, 1fr), column-gutter: 8pt, row-gutter: 5pt,
    align(horizon)[#fa-icon("ban", solid: true, fill: palette.danger, size: 9pt)],
    align(horizon)[#text(weight: "bold")[1 Stopp] — Sitzung abbrechen · keine Belastung],
    align(horizon)[#fa-icon("phone", solid: true, fill: palette.danger, size: 9pt)],
    align(horizon)[#text(weight: "bold")[2 · 112] — Notruf *sofort* bei Atem/Kreislauf/Progredienz],
    align(horizon)[#fa-icon("bed", solid: true, fill: palette.warning, size: 9pt)],
    align(horizon)[#text(weight: "bold")[3 Lagerung/BLS] — je Lage; BLS bei Bedarf],
    align(horizon)[#fa-icon("syringe", solid: true, fill: palette.primary, size: 9pt)],
    align(horizon)[#text(weight: "bold")[4 Autoinjektor] — nur *patienteneigen*, verordnet, Anwendung bekannt],
    align(horizon)[#fa-icon("eye", solid: true, fill: palette.primary-dark, size: 9pt)],
    align(horizon)[#text(weight: "bold")[5 Überwachen] — Dynamik beobachten],
  )
]

== 4. Verdacht, Abgrenzung, trügerische Erklärungen

=== Erhärtet den Verdacht
#text(size: 8.5pt)[
  Allergenbezug + Dynamik; ≥1 System kritisch (Atemwege/Kreislauf); Mehrorgan; bekannte schwere Allergie + Exposition + Progredienz.
]

=== Nicht übersehen
#text(size: 8.5pt)[
  Fehlende Hautzeichen · ACE-Hemmer-Angioödem · biphasische zweite Welle · belastungsassoziierte Anaphylaxie.
]

=== Trügerische Erklärungen
#v(2pt)
#table(
  columns: (42mm, 1fr), stroke: none, inset: (x: 0pt, y: 4pt),
  [#text(weight: "bold", size: 8.5pt, fill: palette.danger)[„Nur Quaddeln“]],
  [#text(size: 8.5pt)[Generalisierte Urtikaria kann Vorläufer/Teil systemischer Reaktion sein.]],
  [#text(weight: "bold", size: 8.5pt, fill: palette.danger)[„Panik / Hyperventilation“]],
  [#text(size: 8.5pt)[Erst Schwellung, Stridor, Kreislauf prüfen.]],
  [#text(weight: "bold", size: 8.5pt, fill: palette.danger)[„Asthma-Schub“]],
  [#text(size: 8.5pt)[Allergen + Mehrorgan → Anaphylaxie-Notfallpfad.]],
  [#text(weight: "bold", size: 8.5pt, fill: palette.danger)[„HWS-/BWS-Blockade“]],
  [#text(size: 8.5pt)[Enge nach Exposition + Schwellung/Juckreiz/Schwindel ≠ manuelle Freigabe.]],
)

== 5. Handeln und Dringlichkeit (TIME)

#set text(size: 8pt)
#table(
  columns: (24mm, 1fr, 1fr),
  stroke: (x: none, y: 0.45pt + palette.border),
  inset: (x: 3pt, y: 5pt),
  align: (left, left, left),
  table.header(
    [#text(weight: "bold", font: fonts.sans, size: 8pt)[Stufe]],
    [#text(weight: "bold", font: fonts.sans, size: 8pt)[Wann]],
    [#text(weight: "bold", font: fonts.sans, size: 8pt)[Handlung]],
  ),
  [#text(size: 11pt, weight: "bold", font: fonts.sans)[112]],
  [Atemwegs- oder Kreislaufzeichen; Mehrorgan + Dynamik; schwere Allergie + Exposition + Progredienz],
  [#text(weight: "bold")[Sofort:] Stopp · 112 · Lagerung · Autoinjektor-Support · überwachen · BLS],
  [#text(size: 9.5pt, weight: "bold", font: fonts.sans)[Gleichtags]],
  [Milde *nicht* progressive Beschwerden; isolierte stabile Haut · unklare Allergie *ohne* 112-Kriterien],
  [#text(weight: "bold")[Gleichtags:] Keine PT · ärztlich vorstellen · bei Verschlechterung *sofort 112*],
  [#text(size: 8.5pt, weight: "bold", font: fonts.sans)[Behandeln]],
  [Keine akute Allergie als PT-Primärindikation],
  [Zuerst ambulant ärztlich abklären · PT erst nach Klärung und ohne Red Flags],
)

#v(4pt)
#block[
  #set text(size: 8.5pt)
  #fa-icon("hand", solid: true, fill: palette.danger) #h(3pt)
  *Grenze:* Kein medikamentöses Eigenprotokoll; keine i.m./i.v. Notfallmedikation aus eigener Kompetenz. Autoinjektor nur *patienteneigen*.
]

#v(3pt)
#block[
  #set text(size: 8.5pt)
  #fa-icon("clock-rotate-left", solid: true, fill: palette.warning) #h(3pt)
  *Biphasisch:* ca. 6–24 h nach Initialereignis erneute Verschlechterung möglich.
]

== 6. Fall zur Selbstprüfung

#text(size: 8.5pt)[
  *Situation:* 34-jährige Patientin zur HWS-Fortsetzung. Vor 20 Minuten Kaffee und Müsliriegel; seit 10 Minuten Juckreiz am Hals, wärmendes Gesicht, „Kloßgefühl“ und leichte Heiserkeit. Unruhig, Lippen leicht geschwollen. Bekannte Nussallergie, Autoinjektor „irgendwo in der Tasche“. Bittet, „kurz den Nacken zu lösen“.
]

#v(5pt)
#set text(size: 8.5pt)
*Transferfragen — Antwortanker*
#v(3pt)
#grid(columns: (1fr, 1fr, 1fr), column-gutter: 10pt,
  [#text(weight: "bold", font: fonts.sans, size: 8.5pt)[(1) Vordergrund?]
  #v(2pt) Allergenbezug + Kloß/Heiserkeit/Lippenödem = beginnende Anaphylaxie → *112*.],
  [#text(weight: "bold", font: fonts.sans, size: 8.5pt)[(2) Kontraindiziert?]
  #v(2pt) HWS-Mobilisation, fortgesetzte PT, Belastung, medikamentöses Eigenprotokoll.],
  [#text(weight: "bold", font: fonts.sans, size: 8.5pt)[(3) Sicherer Schritt?]
  #v(2pt) Stopp · *112* · Lagerung · Autoinjektor-Support · überwachen.],
)

== DDx-Minimal

#table(
  columns: (38mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border-light),
  inset: (x: 0pt, y: 4pt),
  [#text(weight: "bold", size: 8.5pt, fill: palette.danger)[Anaphylaxie]],
  [#text(size: 8.5pt)[Allergenbezug, Dynamik, ≥1 System kritisch oder Mehrorgan → *112*]],
  [#text(weight: "bold", size: 8.5pt, fill: palette.danger)[Anaphylaktischer Schock]],
  [#text(size: 8.5pt)[Hypotonie, Kollaps → *112* + BLS]],
  [#text(weight: "bold", size: 8.5pt)[Asthmaexazerbation]],
  [#text(size: 8.5pt)[Bei Allergen + Mehrorgan: Anaphylaxie-Pfad]],
  [#text(weight: "bold", size: 8.5pt)[ACE-Hemmer-Angioödem]],
  [#text(size: 8.5pt)[Oft ohne Urtikaria; Atemwegsbedrohung → *112*]],
  [#text(weight: "bold", size: 8.5pt)[Panikattacke]],
  [#text(size: 8.5pt)[*Erst* Schwellung/Stridor/Kreislauf prüfen]],
  [#text(weight: "bold", size: 8.5pt)[Lokale Urtikaria]],
  [#text(size: 8.5pt)[Stabil, isoliert, ohne Atem/Kreislauf — gleichtags ärztlich]],
)

#v(8pt)
#align(center)[
  #text(size: 7.5pt, fill: palette.text-muted)[
    Form Lab Pass T · medium: type+icon · claims pinned to monograph · not production Accept
  ]
]
