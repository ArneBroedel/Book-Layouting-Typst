// Form Lab Pass T (d-wave) — Anaphylaxie · Typography + Icons only
// lab: anaphylaxie-2026-08-d · pin: chapter-v-12-anaphylaxie.md (read-only)
// ALLOW: type hierarchy, lists/tables, simple 1-color icons
// DENY: panel walls, TIME color slabs, free-vision, rich multi-tone SVG

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Anaphylaxie — Form Lab Pass T (d-wave)", author: "form-lab/anaphylaxie-2026-08-d/T")
#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 14mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(
      columns: (1fr, auto),
      [Anaphylaxie · Form Lab d · Pass T · Type + Icon],
      [Atemweg/Kreislauf → 112],
    )
    line(length: 100%, stroke: 0.4pt + palette.border)
  },
  footer: context {
    set text(size: 7.5pt, fill: palette.text-muted)
    line(length: 100%, stroke: 0.35pt + palette.border)
    v(2pt)
    grid(
      columns: (1fr, auto),
      [wave-d · medium extreme · lab-learning],
      counter(page).display("1"),
    )
  },
)
#show: setup-typography()
#set text(size: 9.2pt, fill: palette.text-body)
#set par(leading: 0.66em, justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(font: fonts.sans, size: 15.5pt, weight: "bold", fill: palette.primary-dark)
  block(below: 4pt, above: 0pt)[#it.body]
}
#show heading.where(level: 2): it => {
  set text(font: fonts.sans, size: 10.5pt, weight: "bold", fill: palette.primary)
  block(below: 4pt, above: 10pt)[
    #it.body
    #v(1.5pt)
    #line(length: 100%, stroke: 0.55pt + palette.border)
  ]
}
#show heading.where(level: 3): it => {
  set text(font: fonts.sans, size: 9pt, weight: "bold", fill: palette.primary-dark)
  block(below: 3pt, above: 7pt)[#it.body]
}

#let ico(name, fill: palette.primary-dark, size: 8.5pt) = fa-icon(
  name,
  solid: true,
  fill: fill,
  size: size,
)
#let ico-d(name) = ico(name, fill: palette.danger, size: 9.5pt)

#let hang(label, body) = block(width: 100%, below: 5pt)[
  #grid(
    columns: (34mm, 1fr),
    column-gutter: 8pt,
    {
      set text(font: fonts.sans, size: 7.5pt, weight: "bold", fill: palette.primary-dark)
      upper(label)
    },
    {
      set text(size: 8.6pt)
      body
    },
  )
]

#let danger-lead(body) = block(width: 100%, below: 8pt)[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 7pt,
    align(horizon)[#ico-d("triangle-exclamation")],
    {
      set text(size: 9pt)
      text(weight: "bold", fill: palette.danger)[Gefahr im Direktzugang. ]
      body
    },
  )
  #v(2pt)
  #line(length: 100%, stroke: 1pt + palette.danger)
]

#let rank(n, title, body) = block(width: 100%, below: 5pt)[
  #grid(
    columns: (10mm, 1fr),
    column-gutter: 6pt,
    align(top)[
      #text(font: fonts.sans, size: 14pt, weight: "bold", fill: palette.primary-dark)[#n]
    ],
    [
      #text(font: fonts.sans, size: 9pt, weight: "bold", fill: palette.primary-dark)[#title]
      #v(1pt)
      #set text(size: 8.4pt)
      #body
    ],
  )
]

// ── Title ─────────────────────────────────────────────────────
= Anaphylaxie und schwere allergische Reaktion

#text(size: 8.5pt, fill: palette.text-muted, font: fonts.sans)[
  Wenn Flush, Engegefühl oder „Panik“ den Notfall maskieren · Pass T (d): Typografie + Icons
]

#v(4pt)
#danger-lead[
  Atemwegs- oder Kreislaufzeichen, progredientes Angioödem oder rapider Mehrorgan-Verlauf → *sofort 112*. Keine PT, keine manuelle „Enge-Abklärung“, kein medikamentöses Eigenprotokoll.
]

// ── Big Picture ───────────────────────────────────────────────
== Big Picture

Anaphylaxie ist eine akute, potenziell lebensbedrohliche systemische Reaktion — typisch Minuten bis wenige Stunden nach Allergenexposition. Haut, Atemwege, Kreislauf und/oder GI können einzeln oder kombiniert betroffen sein. Im Direktzugang dominiert die *sofortige Triage*, nicht die feine Schweregradzuordnung.

Die größte Gefahr ist die *Unterschätzung*: Urtikaria als „banal“, Hyperventilation als „Panik“, thorakale Enge als „muskuläre Blockade“. HP/Physio: Screening, Sitzungsabbruch, Notfalllagerung, BLS bei Bedarf, Unterstützung des *patienteneigenen* Adrenalin-Autoinjektors — kein eigenes Medikamentenprotokoll.

#v(4pt)
#hang[Zeit][Meist *Minuten bis wenige Stunden* nach Exposition; Dynamik ist handlungsleitend.]
#hang[Systeme][*Haut · Atem · Kreislauf · GI* — Mehrorgan und Progredienz → 112.]
#hang[Nicht entwarnen][Fehlende Hautzeichen, initial „normale“ Vitalwerte und „nur Quaddeln“ entwarnen *nicht*.]

// ── 1 Enabling ────────────────────────────────────────────────
== 1. Wann ist daran zu denken?

#hang[Wer / Risiken][
  Bekannte Allergien (Insektengift, Nahrung, Arzneimittel, Latex); frühere Anaphylaxie; Atopie; Beta-Blocker/ACE-Hemmer als Risikokontext.
]
#hang[Kontext][
  Asthma; Patient:in führt Autoinjektor mit; aktuelle Exposition (Stich, Mahlzeit, Medikament, Latex); Belastung als möglicher Trigger.
]
#hang[Wann / Verlauf][
  Rascher Beginn nach Exposition; *progrediente* Ausbreitung über Organsysteme ist typisch und handlungsleitend.
]

// ── 2 Mechanism ───────────────────────────────────────────────
== 2. Entstehung (kurz)

Allergenkontakt (oder belastungsassoziierter Trigger) → Mediatorfreisetzung aus Mastzellen/Basophilen → Vasodilatation, Kapillarleck, Bronchokonstriktion, Schleimhautschwellung. Folge: Flush/Ödem, Atemwegsobstruktion, relative Hypovolämie bis Schock, parallel GI-Koliken.

*Direktzugang:* Frühe Erkennung von Atemwegs- und Kreislaufzeichen zählt — nicht die vollständige allergologische Einordnung. Fortgesetzte Sitzung und manuelle Techniken verzögern den Notruf.

// ── 3 Clinical cues ───────────────────────────────────────────
== 3. Klinische Hinweise

#table(
  columns: (26mm, 1fr),
  stroke: (x: none, y: 0.4pt + palette.border),
  inset: (x: 3pt, y: 4.5pt),
  align: (left, left),
  table.header(
    text(weight: "bold", font: fonts.sans, size: 8pt)[Domäne],
    text(weight: "bold", font: fonts.sans, size: 8pt)[Erwartbare Merkmale],
  ),
  [*Anamnese*], [Bezug zu Stich/Nahrung/Medikament/Latex/Anstrengung; bekannte schwere Allergie/Autoinjektor; Atemnot, Kloßgefühl, Heiserkeit, Schluckstörung; Schwindel; Juckreiz/Quaddeln; GI],
  [*Beobachtung*], [Flush, Urtikaria, Angioödem (Lippen, Zunge, Lider); Stridor, Giemen, kloßige Sprache; Blässe/Marmorierung bei Schock; Unruhe, Kollapsneigung],
  [*Untersuchung*], [Vitalzeichen nur *ohne* Verzögerung des Notrufs; keine Belastungstests; keine Hals-/Thorax-Mobilisation zur „Enge-Abklärung“; bei Bewusstlosigkeit/Atemstillstand: BLS],
  [*Verlauf*], [Rasant oder stufenweise über Minuten–Stunden; nach Besserung erneute Verschlechterung möglich (*biphasisch* — Beobachtung ärztlich)],
)

// ── 4 Mimic / DDx ─────────────────────────────────────────────
== 4. Verdacht, Abgrenzung, Warnsignale

#hang[#ico("check")  Erhärtet][
  Allergenbezug plus Atemwegs- und/oder Kreislaufzeichen; generalisierte Urtikaria *mit* respiratorischen und GI-Zeichen; bekannte schwere Allergie + Exposition + Progredienz; progredientes Angioödem mit Schluck-/Sprachstörung.
]
#hang[#ico("xmark")  Passt eher nicht][
  Klar isolierte, stabile lokale Hautreaktion *ohne* Atemwegs-/Kreislaufbeteiligung und *ohne* Dynamik — dennoch keine „PT weiter“-Entscheidung bei unklarer Allergieanamnese.
]
#hang[#ico("eye")  Nicht übersehen][
  Systemisch ohne klassische Hautzeichen möglich; initial normale Vitalwerte entwarnen nicht; Beta-Blocker/ACE-Hemmer können Zeichen maskieren.
]

#block(breakable: false)[
  === Trügerische Erklärungen

  #set enum(numbering: "1.", tight: true)
  1. *„Nur Quaddeln / Haut“* — Generalisierte Urtikaria kann Vorläufer oder Teil einer systemischen Reaktion sein; Atemwege und Kreislauf aktiv screenen.
  2. *„Panik / Hyperventilation“* — Unruhe und schnelle Atmung kommen bei Anaphylaxie vor; Schwellung, Stridor, Kreislauf zuerst ausschließen.
  3. *„Asthma-Schub“* — Allergenbezug und Mehrorganbeteiligung → Anaphylaxie-Notfallpfad (112).
  4. *„HWS-/BWS-Blockade, Enge vom Training“* — Zervikothorakale Enge nach Exposition oder mit Begleitsymptomen ist *keine* Freigabe für manuelle Techniken.

  #v(3pt)
  #text(weight: "bold", font: fonts.sans, size: 8.5pt)[DDx-Minimal]
  #v(2pt)
  #table(
    columns: (36mm, 1fr),
    stroke: 0.4pt + palette.border,
    inset: 4pt,
    align: (left, left),
    table.header(
      text(weight: "bold", size: 7.8pt, font: fonts.sans)[Eher …],
      text(weight: "bold", size: 7.8pt, font: fonts.sans)[Diskriminierende Unterschiede],
    ),
    [*Anaphylaxie*], text(size: 8pt)[Allergenbezug, Dynamik, ≥1 kritisches System (Atemwege/Kreislauf) oder Mehrorgan → *112*],
    [*Lokale Urtikaria*], text(size: 8pt)[Stabil, isoliert, ohne Atemwege/Kreislauf, ohne Dynamik → gleichtags ärztlich, keine PT als Akuttherapie],
    [*Asthma*], text(size: 8pt)[Primär Bronchospastik; bei Allergen + Mehrorgan: Anaphylaxie-Pfad],
    [*Vasovagal*], text(size: 8pt)[Blass, kühl, Situations-Trigger; oft ohne Flush/Urtikaria/Atemwegsobstruktion — im Zweifel 112],
    [*ACE-Angioödem*], text(size: 8pt)[Oft ohne Urtikaria; Zunge/Lippen/Atemwege; Atemwegsbedrohung → 112],
  )
]

// ── 5 TIME ────────────────────────────────────────────────────
== 5. Handeln und Dringlichkeit

#text(size: 8pt, fill: palette.text-muted, font: fonts.sans)[
  Stufen als *Typoränge* (kein Farbslab) — Scan über Gewicht und Reihenfolge.
]
#v(4pt)

#rank[01][#ico-d("phone") 112 — Atemwege][
  Atemnot, Stridor, Zungenschwellung, Schluckstörung oder kloßige Sprache nach möglicher Allergenexposition. → Sitzung *sofort* beenden; *112*; Notfalllagerung; keine Belastung; patienteneigenen Autoinjektor unterstützen wenn verordnet und bekannt.
]
#rank[02][#ico-d("heart-pulse") 112 — Kreislauf / Schock][
  Kreislaufkollaps, Hypotonie, Bewusstseinsstörung oder Schock im allergischen Kontext. → *112*; Schocklagerung nach Lage/Bewusstsein; BLS bei Bedarf; *kein* medikamentöses Eigenprotokoll.
]
#rank[03][#ico-d("layer-group") 112 — Mehrorgan / Progredienz][
  Generalisierte Urtikaria plus GI *und* respiratorische Zeichen; oder bekannte schwere Allergie + Exposition + klare Progredienz; oder rapider Mehrorgan-Verlauf / progredientes Angioödem. → *112*; Minuten zählen.
]
#rank[04][#ico("hospital") NA / gleichtags · Beh. mit Netz][
  Persistierende milde *nicht* progressive Beschwerden; isolierte stabile Haut ohne Atemwege/Kreislauf. → Keine PT als Abwarten; gleichtags Arzt/NA; bei Verschlechterung *sofort 112*. PT erst nach Klärung ohne akute Red Flags.
]

#v(3pt)
#grid(
  columns: (auto, 1fr),
  column-gutter: 7pt,
  align(horizon)[#ico-d("hand")],
  [
    #text(weight: "bold", fill: palette.danger, size: 8.8pt)[Grenze / absolute Kontraindikationen]
    #v(1pt)
    #set text(size: 8.3pt)
    Kein medikamentöses Eskalationsprotokoll durch HP/Physio; Autoinjektor nur *patienteneigen* und bei bekannter Anwendung. Keine Belastungstests, keine manuelle „Enge-Abklärung“ an Hals/Thorax. Biphasischen Verlauf nach Besserung nicht allein häuslich riskieren, wenn ärztliche Beobachtung indiziert.
  ],
)

// ── 6 Mini-case ───────────────────────────────────────────────
== 6. Fall zur Selbstprüfung

#text(weight: "bold", font: fonts.sans, size: 8.8pt)[Situation]
#v(2pt)
34-jährige Patientin zur Fortsetzung der HWS-Behandlung. Vor 20 Min. Kaffee und Müsliriegel; seit 10 Min. Juckreiz am Hals, wärmendes Gesicht, „Kloßgefühl“ und leichte Heiserkeit. Unruhig, Lippen leicht geschwollen. Bekannte Nussallergie, Autoinjektor „irgendwo in der Tasche“. Bittet, „kurz den Nacken zu lösen, dann geht’s bestimmt“.

#v(4pt)
#hang[#ico("circle-exclamation") Vordergrund][
  Allergenbezug (Nuss?) + Kloßgefühl + Heiserkeit + Lippenschwellung → *Atemwegs-Triage zuerst*. Label „nur Nacken“ entwarnt *nicht*.
]
#hang[#ico-d("ban") Kontraindiziert][
  Nacken lösen / manuelle Enge-Abklärung, fortgesetzte PT, abwartendes „wird gleich besser“, medikamentöses Eigenprotokoll.
]
#hang[#ico("phone") Nächster Schritt][
  Sitzung *sofort* beenden; *112*; Lagerung; Autoinjektor suchen und bei bekannter Anwendung unterstützen; Übergabe: Zeitverlauf, Nahrung, Allergie, Symptome.
]
#hang[Lernpunkt][
  Nussallergie + Kloßgefühl/Heiserkeit = *nicht* HWS-Technik; Minuten zählen; biphasische Beobachtung ärztlich.
]

#v(8pt)
#align(center)[
  #text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)[
    Parent-System V-12 · Atemweg/Kreislauf/Progredienz → 112 · Autoinjektor nur patienteneigen · wave-d / T
  ]
]
