// Pilot chapter — notfall-karte BLS/AED
// slug: iii2-bls-aed-2026-08-01 · brief_class: exploration
// content (C, read-only): Kursbuch5 …/chapter-iii2-bls-aed-notfallprozeduren.md
// Chrome: hard-stop protocol — NOT Master solid-red wall

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "@preview/fontawesome:0.6.1": fa-version
#fa-version("6") // fonts/ has FA6; package default is 7
#import "/domains/medical/lib/typst/explore-2026-08/primar-algorithmus.typ": primar-algorithmus-bewusstlosigkeit

#set document(
  title: "BLS, AED — Handlungskarte Praxis",
  author: "Book-Layouting-Typst · iii2-bls-aed-2026-08-01",
)

#set page(
  paper: "a4",
  margin: (inside: 18mm, outside: 15mm, top: 14mm, bottom: 15mm),
  numbering: "1",
  header: context {
    set text(size: 8pt, fill: luma(100))
    grid(
      columns: (1fr, auto),
      [III-2 · BLS/AED · notfall-karte],
      [Exploration `iii2-bls-aed-2026-08-01`],
    )
    line(length: 100%, stroke: 0.4pt + luma(200))
  },
)

#show: setup-typography()
#set heading(numbering: none)
#show heading.where(level: 2): it => {
  v(9pt, weak: true)
  block(below: 5pt)[
    #set text(size: 11pt, weight: "bold", fill: palette.primary)
    #it.body
  ]
}

// ── Title / Gatekeeper ────────────────────────────────────────

#text(size: 13.5pt, weight: "bold", fill: palette.primary-dark)[
  BLS, AED, Seitenlage, Schock, Pulse — Handlungskarte Praxis
]
#v(4pt)

#block(
  width: 100%,
  inset: 8pt,
  radius: 2pt,
  fill: palette.danger,
)[
  #set text(size: 8.5pt, fill: white)
  #text(weight: "bold")[Gatekeeper: ]
  Bei Kollaps, Bewusstlosigkeit oder vitaler Instabilität gilt
  *Erkennen → Alarmieren (112) → Basismaßnahmen bis Rettungsdienst*.
  Kein ALS, keine Medikamentengabe, kein „noch fertig behandeln“.
  Therapie *sofort abbrechen*, Praxisbetrieb auf Notfall umschalten.
  #linebreak()
  #text(size: 7.5pt, fill: white.transparentize(12%))[
    Entscheidungsrahmen: → II-1 · Notrufkette/PECH-Detail: → III-1
  ]
]

// ── §1 Trigger ────────────────────────────────────────────────

#heading(level: 2)[1. Erkennungs-Trigger (5–10 Sekunden)]
#set text(size: 8pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 4pt,
  ..(
    ([Kollaps / Bewusstlosigkeit], [nicht ansprechbar, stürzt, reaktionslos]),
    ([Keine normale Atmung], [Agonalatmung ≠ normal; Atmung unklar]),
    ([Thoraxschmerz + Instabilität], [schwere Dyspnoe, schwere Blutung, Anaphylaxie-Verdacht]),
    ([FAST positiv / Status], [Schlaganfall-Verdacht; Krampfanfall >5 min oder Serie]),
    ([Suizidalität akut], [Plan/Mittel/akute Gefahr]),
    ([Therapie läuft], [sofort abbrechen — Notfallmodus]),
  ).map(((t, b)) => block(
    width: 100%, inset: 5.5pt, radius: 2pt,
    fill: rgb("#f8fafc"), stroke: 0.4pt + palette.border,
  )[
    #text(weight: "bold", size: 7.8pt, fill: palette.primary-dark)[#t]
    #linebreak()
    #text(size: 7.3pt)[#b]
  ]),
)

// ── §2 Handlungstabelle ───────────────────────────────────────

#heading(level: 2)[2. Handlungstabelle — Gatekeeper → 112]
#set text(size: 7.4pt)
#table(
  columns: (48mm, 28mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 4.5pt,
  fill: (_, y) => {
    if y == 0 { rgb("#fef2f2") }
    else if y == 9 { rgb("#f8fafc") }
    else if calc.odd(y) { rgb("#fafafa") }
    else { white }
  },
  [*Kriterium*], [*Dringlichkeit*], [*Aktion*],
  [Keine normale Atmung / Kreislaufstillstand-Verdacht], [*112 sofort*], [Notruf, *CPR beginnen*, *AED holen lassen*, bis Übergabe],
  [Bewusstlos, Atmung normal], [*112*], [*Stabile Seitenlage*, überwachen; bei Verschlechterung → CPR],
  [Anaphylaxie (systemisch)], [*112*], [Notfallplan; *keine* Eigenverabreichung verschreibungspflichtiger Notfall-AM (HP Physio i. d. R.)],
  [FAST positiv / Schlaganfall], [*112*], [Zeitfenster wahren — *keine* Verzögerung durch „noch mobilisieren“],
  [ACS-Verdacht (Thoraxdruck, vegetativ)], [*112*], [Ruhe, überwachen, BLS-Bereitschaft],
  [Status epilepticus / Anfall >5 min], [*112*], [Verletzungsschutz, *nichts* zwischen die Zähne],
  [Schwere Blutung / schweres Trauma], [*112*], [Druckverband, Schockmanagement],
  [Suizidalität mit Plan/Mitteln/akuter Gefahr], [*112* / Krisenintervention], [Sofort Schutz/Notruf — nicht allein lassen],
  [Dringlich, *nicht* lebensbedrohlich], [*116117*], [Ärztlicher Bereitschaftsdienst — *kein* Ersatz für 112 bei Lebensgefahr],
  [Unklar, red-flag-nah / vitale Unsicherheit], [*Default-to-Danger*], [*112* und Basismaßnahmen statt „abwarten und weiter behandeln“],
)

// ── §3 Primär-Algorithmus ─────────────────────────────────────

#heading(level: 2)[3. Primär-Algorithmus: Bewusstseinsstörung / Kollaps]
#primar-algorithmus-bewusstlosigkeit(show-footer: true)

#v(4pt)
#set text(size: 7.5pt, fill: palette.text-muted)
Kompressions-Rahmen (Erwachsene, ERC/GRC): ausreichend tief, schnell, vollständige Entlastung, minimale Pausen. Exakte Zielzahlen im *aktuellen BLS/AED-Kurs* trainieren — hier *nicht* als starre Prüfungszahl ohne Kursnachweis.

// ── §4 AED ────────────────────────────────────────────────────

#heading(level: 2)[4. AED — Handlungskern]
#set text(size: 8.5pt)
#let aed-step(n, body) = block(
  width: 100%,
  inset: 6.5pt,
  radius: 2pt,
  fill: if n == "3" or n == "4" { rgb("#fef2f2") } else { rgb("#f0fdfa") },
  stroke: (left: 3pt + if n == "3" or n == "4" { palette.danger } else { palette.primary }, rest: 0.4pt + palette.border),
)[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    align: horizon,
    box(
      width: 1.35em, height: 1.35em, radius: 100%,
      fill: if n == "3" or n == "4" { palette.danger } else { palette.primary },
      align(center + horizon)[#text(size: 8pt, weight: "bold", fill: white)[#n]],
    ),
    text(size: 8pt)[#body],
  )
]
#stack(
  spacing: 3.5pt,
  aed-step("1", [AED *sofort holen lassen* (parallel zu Notruf/CPR); Standort im Praxis-Notfallplan bekannt.]),
  aed-step("2", [Gerät *einschalten*; Pads nach Pictogramm (trockene Haut; Metall/Pflaster laut Geräteanweisung).]),
  aed-step("3", [*AED-Anweisungen 1:1 folgen* — Analysephase: *niemand berührt* Patient:in.]),
  aed-step("4", [Schock empfohlen → freigeben, auslösen, *sofort CPR fortsetzen* bis nächste Analyse/Übergabe.]),
  aed-step("5", [Schock nicht empfohlen → *CPR fortsetzen*, Gerät angeschlossen lassen.]),
)
#v(3pt)
#text(size: 7.5pt, fill: palette.text-muted)[
  *Scope:* AED-Algorithmus ja; manuelle Defibrillation / ALS / Intubation *nein* (siehe Scope).
]

// ── §5 Lagerungen ─────────────────────────────────────────────

#heading(level: 2)[5. Lagerungen (indikationsorientiert)]
#set text(size: 7.4pt)
#table(
  columns: (32mm, 1fr, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 4.5pt,
  fill: (_, y) => if y == 0 { rgb("#f0fdfa") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Lagerung*], [*Indikation*], [*Nicht bei*],
  [Stabile Seitenlage], [Bewusstlos, *ausreichende Eigenatmung*], [Reanimation; schwere Trauma unklar],
  [Flach / CPR], [Kreislaufstillstand], [—],
  [Oberkörper hoch], [Dyspnoe, kardial dekompensiert (*ansprechbar*)], [Schock mit Bewusstseinstrübung unklar],
  [Schocklage (Beine hoch)], [V. a. Volumenmangelschock, blass, *wach*], [HI/Lungenödem-Verdacht, schwere Dyspnoe, Trauma Beine/Becken unklar],
  [PECH (MSK-Weichteil)], [Akutes Weichteiltrauma], [Fraktur/Dislokation unklar → ruhigstellen; Detail → III-1],
)

// ── §6 Überwachung ────────────────────────────────────────────

#heading(level: 2)[6. Überwachung / „Pulse“ — nur S1-Rahmen]
#set text(size: 8.5pt)
Im BLS-Pfad entscheidet primär: *Bewusstsein + normale Atmung (≤10 s)* — nicht ein inventierter Zahlenkatalog.
#v(3pt)
#set text(size: 7.5pt)
#table(
  columns: (1fr, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  fill: (_, y) => if y == 0 { rgb("#f8fafc") } else { white },
  [*Beobachtung*], [*Konsequenz*],
  [Bewusstlos, Atmung normal], [Seitenlage, 112, fortlaufend überwachen],
  [Atmung stoppt / unnormal / unklar], [Sofort CPR + AED, 112 falls noch nicht],
  [Ansprechbar, instabil], [112-Pfad der Handlungstabelle; Lagerung indikationsgerecht],
)
#v(3pt)
#text(size: 7.5pt, fill: palette.text-muted)[
  *Nicht gesetzt:* konkrete Pulsfrequenz-, RR- oder SpO₂-Schwellen. Bei Unsicherheit *Default-to-Danger*.
]

// ── §7–9 compact ──────────────────────────────────────────────

#heading(level: 2)[7. Sofortmaßnahmen vor Ort]
#set text(size: 8pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  list(
    [Therapie *sofort stoppen*; Kolleg:in: *112* + AED holen (Rollen laut Notfallplan)],
    [Szene sichern, Handschuhe, Patient:in nicht allein lassen],
    [BLS/AED bis RD; bei Ansprechbarkeit: beruhigen, indizierte Lagerung],
  ),
  list(
    [*Dokumentation* nach Ereignis: Uhrzeit, Maßnahmen, Übergabe],
    [*Keine* ALS-Medikamente, *keine* Eigen-Injektionen verschreibungspflichtiger Notfall-AM (Standard-HP-Physio: *nein*)],
  ),
)

#heading(level: 2)[8. Scope HP Physio (binär)]
#grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#f0fdfa"), stroke: 0.45pt + palette.primary.lighten(25%),
  )[
    #text(size: 8pt, weight: "bold", fill: palette.primary)[Erlaubt / erwartet]
    #v(3pt)
    #set text(size: 7.5pt)
    Erkennen, Alarmieren, *BLS/AED*, Lagerung, Übergabe; Abbruch Therapie bei Notfall-Red-Flag; Dokumentation, Zeugen, Notfallplan-Training.
  ],
  block(
    width: 100%, inset: 7pt, radius: 2pt,
    fill: rgb("#fef2f2"), stroke: 0.45pt + palette.danger.lighten(40%),
  )[
    #text(size: 8pt, weight: "bold", fill: palette.danger)[Nicht Scope]
    #v(3pt)
    #set text(size: 7.5pt)
    Intubation, Medikamenten-ALS, manuelle Defibrillation ohne AED-Algorithmus; „Fertig behandeln“ trotz Instabilität; Diagnosestellung jenseits Notfallverdacht.
  ],
)

#heading(level: 2)[9. Praxis-Notfallplan (Mindestinhalte)]
#set text(size: 8pt)
#enum(
  [Standort *AED* / Erste-Hilfe-Material / Notrufnummern (*112*, *116117*, regionaler Giftnotruf)],
  [Rollen: Wer alarmiert, wer CPR, wer Empfang Rettungsdienst],
  [Dokumentation nach Ereignis],
  [Nachsorge: Defusing, BG/meldepflichtige Ereignisse, Gerätecheck],
  [Regelmäßiges *BLS/AED-Training* + Auffrischung dokumentieren],
)
#text(size: 7.3pt, fill: palette.text-muted)[
  Landesrechtliche Pflichtausstattung AED: Quelle fehlt – manuelle Prüfung erforderlich (S1).
]

// ── §10 Verwechslungen ────────────────────────────────────────

#heading(level: 2)[10. Häufige Verwechslungen]
#set text(size: 7.5pt)
#table(
  columns: (42mm, 1fr),
  stroke: 0.4pt + palette.border,
  inset: 5pt,
  fill: (_, y) => if y == 0 { rgb("#fef2f2") } else if calc.odd(y) { rgb("#fafafa") } else { white },
  [*Sieht aus wie …*], [*Notfall-Pfad wenn …*],
  [„Kurze Ohnmacht / vasovagal“], [Atmung unklar oder nicht normal → *CPR + 112*, nicht abwarten],
  [Agonalatmung / Schnappatmung], [*Keine* normale Atmung → wie Kreislaufstillstand behandeln],
  [„Noch durchatmen, wirkt schläfrig“], [Bewusstlos + Eigenatmung → *Seitenlage + 112*, engmaschig überwachen],
  [Dringlicher Hausarztwunsch], [Lebensgefahr/Instabilität → *112*, nicht 116117],
)

// ── Verweise / Quellen ────────────────────────────────────────

#heading(level: 2)[Verweise · Quellen]
#set text(size: 7.3pt, fill: palette.text-muted)
→ II-1 (D-RISC) · → III-1 (Notruf/PECH) · → III-5-Cauda · → III-3-LE · → I-3 (AMG)
#v(2pt)
+ ERC CPR Guidelines (aktuell) · GRC · 116117 · Notruf 112 · S1 `notfall-prozeduren-bls` (Abruf 2026-07-15)

// Critical Claims copy-through (C audit table — exact pins for claims gate)
#heading(level: 2)[Critical Claims (copy-through)]
#set text(size: 6.8pt, fill: palette.text-muted)
#enum(
  [Bei fehlender normaler Atmung / Kreislaufstillstand-Verdacht: 112 + CPR + AED bis Übergabe],
  [Bewusstlos mit normaler Atmung: stabile Seitenlage + 112 + Überwachen — nicht reanimieren],
  [Atmungsbeurteilung max. 10 s; bei Unsicherheit wie „keine normale Atmung“ behandeln],
  [CPR-Standard Erwachsene 30:2 (Kurs) bzw. nur Kompressionen wenn ungeschult/unwillig; AED-Anweisungen folgen],
  [116117 = ärztlicher Bereitschaftsdienst — kein Ersatz für 112 bei Lebensgefahr],
  [Schocklage (Beine hoch) nur bei V. a. Volumenmangel, blass, wach — nicht bei HI/Lungenödem-Verdacht, schwerer Dyspnoe, unklarem Bein-/Becken-Trauma],
  [HP Physio: i. d. R. keine Eigenverabreichung verschreibungspflichtiger Notfallmedikamente (Anaphylaxie: 112 + Plan)],
  [BLS-Zahlen (Frequenz/Tiefe) folgen aktueller ERC/GRC-Kursnorm und bedürfen periodischer Auffrischung — hier rahmenhaft, nicht als starre Examenszahl ohne Kurs],
)
