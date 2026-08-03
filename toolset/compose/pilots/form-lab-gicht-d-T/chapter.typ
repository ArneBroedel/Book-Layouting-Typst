// Form Lab Pass T (d-wave) — Gicht · Typography + Icons only
// lab: gicht-2026-08-d · pin: chapter-v-3-gicht.md (read-only)
// ALLOW: type hierarchy, lists/tables, simple 1-color icons
// DENY: panel walls, TIME color slabs, free-vision, rich multi-tone SVG

#import "/packages/bookkit/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-icon, fa-version
#fa-version("6")

#set document(title: "Gicht — Form Lab Pass T (d-wave)", author: "form-lab/gicht-2026-08-d/T")
#set page(
  paper: "a4",
  margin: (inside: 20mm, outside: 16mm, top: 14mm, bottom: 16mm),
  numbering: "1",
  header: context {
    set text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)
    grid(
      columns: (1fr, auto),
      [Gicht · Form Lab d · Pass T · Type + Icon],
      [Kristalle entwarnen nicht],
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

// Hanging label row — d-wave type primitive (not c-wave 3-col mark grid)
#let hang(label, body) = block(width: 100%, below: 5pt)[
  #grid(
    columns: (32mm, 1fr),
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
= Gicht — hochakute Monarthritis und das septische Gelenk

#text(size: 8.5pt, fill: palette.text-muted, font: fonts.sans)[
  Kristallarthropathie im Direktzugang · Pass T (d): Typografie + wiederkehrende Icons
]

#v(4pt)
#danger-lead[
  Eine „typische Podagra“ kann eine septische Arthritis maskieren; Kristallnachweis und Gichtanamnese entwarnen _nicht_.
]

// ── Big Picture ───────────────────────────────────────────────
== Big Picture

Die Gicht ist die klinische Manifestation einer Hyperurikämie mit Ablagerung von Natriumuratkristallen in Gelenken und Weichteilen. Im Direktzugang dominiert der _hochakute, hochschmerzhafte Monoarthritis-Anfall_ — klassisch am Großzehengrundgelenk (Podagra), mit Rötung, Überwärmung und oft Belastungsunfähigkeit, typischerweise innerhalb von Stunden.

Die größte Gefahr ist die *Fehllabelung*: Ein heißes Gelenk mit Fieber oder Systemik darf nicht als „nur Gicht“ abgetan werden. Die HP Physio screent auf Infekt- und Systemzeichen, triagiert und belässt Diagnosesicherung sowie medikamentöse Anfallstherapie in ärztlicher Hand; bei Systembedrohung *112*, bei heißem Gelenk mit Infektverdacht gleichtags die *Notaufnahme*.

#v(4pt)
#hang[Zeit][Akut *innerhalb von Stunden* — nicht Tage.]
#hang[Ort][Klassisch *MTP-I* (Podagra); auch andere Mono-Gelenke.]
#hang[Nicht entwarnen][Kristalle und Gichtanamnese schließen septisch *nicht* aus.]

// ── 1 Enabling ────────────────────────────────────────────────
== 1. Wann ist daran zu denken?

#hang[Wer / Risiken][
  Hyperurikämie; purinreiche Ernährung; Alkohol; Diuretika; Adipositas; eingeschränkte Nierenfunktion.
]
#hang[Kontext][
  Frühere Attacken oder Tophi; metabolisches Syndrom; Nierenerkrankung; Hautläsionen/Ulzera über Tophi (Infektkomplikation).
]
#hang[Wann / Trigger][
  Akut innerhalb von Stunden; oft nach Alkohol, festlicher Mahlzeit oder Medikamentenänderung. Rezidive stützen den Verdacht, entwarnen *nicht* bei Systemik.
]

// ── 2 Mechanism ───────────────────────────────────────────────
== 2. Entstehung (kurz)

Erhöhte Harnsäurespiegel → Natriumuratkristalle in Synovia und periartikulär → rasche neutrophile Entzündung mit Schmerz, Rötung, Schwellung. Chronisch: Tophi und Gelenkschaden.

*Direktzugang:* Das Bild der Kristallarthropathie ist eindrucksvoll, klinisch oft *nicht* sicher von bakterieller Arthritis zu trennen; Superinfektion von Tophi/Gelenk bleibt möglich.

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
  [*Anamnese*], [Hochakuter Mono-Gelenkschmerz binnen Stunden; oft MTP-I; frühere Attacken; Alkohol, Diuretika, purinreiche Kost; *Fieber?* *Hautverletzung?*],
  [*Beobachtung*], [Rötung, Überwärmung, Schwellung; Schonhaltung; ggf. Tophi; bei Systemik mitgenommener Gesamteindruck],
  [*Untersuchung*], [Starke Druck- und Bewegungsschmerzhaftigkeit; oft Belastungsunfähigkeit; grobe Funktionsprüfung *ohne* forcierte Manipulation am unklar heißen Gelenk],
  [*Verlauf*], [Anfall: Stunden bis wenige Tage; rezidivierend möglich; polyartikulärer Entzündungssturm mit Systemik ≠ gewöhnlicher Gichtschub],
)

// ── 4 Mimic / DDx ─────────────────────────────────────────────
== 4. Verdacht, Abgrenzung, Warnsignale

#hang[#ico("check")  Erhärtet][
  Hochakute Monarthritis binnen Stunden, typisch MTP-I; starke Rötung/Überwärmung; Hyperurikämie oder frühere Attacken; passender Trigger — *ohne* schwere Systembedrohung.
]
#hang[#ico("xmark")  Passt eher nicht][
  Rein mechanisches Trauma mit klarer Verletzungsmechanik ohne entzündliches Bild; chronisch-symmetrische Polyarthritis kleiner Gelenke ohne akuten Mono-Schub.
]
#hang[#ico("eye")  Nicht übersehen][
  Septische Arthritis; Pseudogicht/CPPD (oft Knie); Trauma/Fraktur; Erysipel angrenzend; RA/SpA-Schub; Tophi-Infekt.
]

=== Trügerische Erklärungen

#set enum(numbering: "1.", tight: true)
1. *„Umgeknickt / Podagra als Distorsion“* — Fehlt adäquate Traumamechanik und zeigt sich ein entzündliches Bild: Gicht *und* Infekt mitdenken.
2. *„Bekannte Gicht – also nur Schub“* — Gichtanamnese und Kristallnachweis schließen bakterielle Gelenkinfektion *nicht* aus; Fieber/Systemik → Infekt-Triage.
3. *„Knie-Schub = immer Gicht“* — Am Knie oft CPPD; septische Arthritis bleibt Must-not-miss.

#v(3pt)
#block(breakable: false)[
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
    [*Gicht*], text(size: 8pt)[Hochakut Stunden, oft MTP-I, Trigger Alkohol/Diuretika — ohne schwere Systembedrohung],
    [*Septische Arthritis*], text(size: 8pt)[Heißes Gelenk + Fieber/Systemik/Belastungsunfähigkeit; *auch bei Gichtanamnese* bis Ausschluss],
    [*CPPD*], text(size: 8pt)[Oft größere Gelenke (Knie); im Erstkontakt oft untrennbar],
    [*Trauma / Fraktur*], text(size: 8pt)[Klare Mechanik; entzündliches Mono-Bild fehlt oder atypisch],
    [*Erysipel*], text(size: 8pt)[Primär kutan; Gelenk oft freier — im Zweifel nicht herabstufen],
  )
]

// ── 5 TIME ────────────────────────────────────────────────────
== 5. Handeln und Dringlichkeit

#text(size: 8pt, fill: palette.text-muted, font: fonts.sans)[
  Stufen als *Typoränge* (kein Farbslab) — Scan über Gewicht und Reihenfolge.
]
#v(4pt)

#rank[01][#ico-d("phone") 112][
  Heißes, geschwollenes Gelenk *plus* Fieber/Systemik *plus* AZ-Verschlechterung / Sepsis-Zeichen; polyartikulärer Entzündungssturm mit schwerer Systembedrohung. → Abbrechen; Vitalzeichen; *112*; keine Manipulation, keine Injektion.
]
#rank[02][#ico("hospital") Notaufnahme / gleichtags][
  Akutes heißes Mono mit Belastungsunfähigkeit oder stärkstem Ruheschmerz (*auch ohne* Fieber); heißes Gelenk mit Fieber/Systemik; nach i.a. Injektion/OP/Trauma; Hochrisiko. → PT abbrechen; *noch heute* NA. Bis Ausschluss septisch ausgehen.
]
#rank[03][#ico("calendar") Zeitnah Fach-/Hausarzt][
  Nur *bereits ärztlich eingeordnetes* rezidivierendes Muster *ohne* aktuelles heißes Mono mit Belastungsunfähigkeit und *ohne* Systemik. → Keine endgültige Gichtdiagnose im HP-Setting; Sicherheitsnetz.
]
#rank[04][#ico("hand-holding-medical") Behandeln mit Sicherheitsnetz][
  Stabiles, bereits ärztlich eingeordnetes Muster ohne Red Flags; interprofessionell abgestimmt nach Anfall. → Schmerzarmer Bewegungsrahmen; keine forcierte Belastung im akuten heißen Anfall.
]

#v(3pt)
#grid(
  columns: (auto, 1fr),
  column-gutter: 7pt,
  align(horizon)[#ico-d("hand")],
  [
    #text(weight: "bold", fill: palette.danger, size: 8.8pt)[Grenze / absolute Kontraindikationen bis Ausschluss]
    #v(1pt)
    #set text(size: 8.3pt)
    Keine Punktion, keine Intraartikulär-Injektion durch HP, keine forcierte Manipulation am unklar heißen Gelenk; kein abwartendes „Probebehandeln“ bei Fieber/Systemik.
  ],
)

// ── 6 Mini-case ───────────────────────────────────────────────
== 6. Fall zur Selbstprüfung

#text(weight: "bold", font: fonts.sans, size: 8.8pt)[Situation]
#v(2pt)
54-jähriger Mann, seit gestern Nacht „wieder Podagra“ am rechten Großzeh. MTP-I gerötet, heiß, extrem berührungsempfindlich; belastet den Vorfuß nicht. Regelmäßig Bier, Thiazid-Diuretikum. Heute Fiebergefühl, oral 38,3 °C, abgeschlagen. Bittet um „lokale Entlastung und Mobilisation wie beim letzten Schub“.

#v(4pt)
#hang[#ico("circle-exclamation") Vordergrund][
  Heißes Mono + Fiebergefühl 38,3 °C + Abgeschlagenheit → *Infekt-Triage zuerst*. Label „wieder Podagra“ entwarnt *nicht*.
]
#hang[#ico-d("ban") Kontraindiziert][
  Lokale Entlastung/Mobilisation „wie letzter Schub“, forcierte Manipulation, Intraartikulär-Injektion, abwartendes Probebehandeln bei Systemik.
]
#hang[#ico("phone") Nächster Schritt][
  Sitzung *sofort* beenden; je AZ *Notaufnahme gleichtags* oder *112*; Übergabe: Zeitverlauf, Temperatur, Belastbarkeit, Diuretikum/Alkohol, Anamnese. Septisch bis Ausschluss.
]
#hang[Lernpunkt][
  Fieber + heißes Mono am MTP-I = *nicht* Hausmittel-Schub; Kristalle/Gichtgeschichte ändern die Dringlichkeit nicht.
]

#v(8pt)
#align(center)[
  #text(size: 7.5pt, fill: palette.text-muted, font: fonts.sans)[
    Parent-System V-3 · heißes Gelenk: bakterielle Arthritis mitdenken · Kristalle entwarnen nicht · wave-d / T
  ]
]
