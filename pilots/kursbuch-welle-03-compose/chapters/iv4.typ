// compose-chapter · creative-first
// catalog_version: 0.1.0 (preferred library, advisory)
// brief: domains/medical/briefs/iv4-heisses-gelenk.brief.md
// content: /home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-iv4-heisses-gelenk.md
// tools: bookkit, bookkit-didactics, fletcher 0.5.8, cetz 0.5.2, pilot visual.typ
// wave: 2026-07-welle-03-final-10 · v2 creative redesign
// Claims: copy-through · exact thresholds (Fieber ≥ 38,5 °C)
// S6 graphic: entscheidungs-flow recreate (medical-graphics B1, Media Accept)

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "/pilots/kursbuch-welle-03-compose/lib/visual.typ": *
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")
#import "/toolset/compose/spikes/graphics/iv4-heisses-gelenk/lib/entscheidungs-flow.typ": (
  entscheidungs-flow-heisses-gelenk,
)

#chapter-opener(
  title: [Heißes / entzündetes Gelenk],
  lead: [Hot swollen joint bis ärztlichem Ausschluss *kein* Arthroseschub · Leitsymptom · Kursbuch IV-4],
  number: "IV-4",
)

// ── Gatekeeper — EXACT split ───────────────────────────────────
#cave(title: [Gatekeeper — Split 112 vs. ED (keine Mischantwort)])[
  1. Heißes Mono-Gelenk + Fieber *≥ 38,5 °C* + deutliche AZ-Verschlechterung
     (Schüttelfrost, Schwerkrank-Gefühl, Bewusstseinseintrübung / schwerer AZ-Abfall)? →
     *Stop PT*, Vitalzeichen, *112* — nicht mobilisieren, nicht manipulieren.

  2. Akutes heißes Mono-Gelenk + *Non-weight-bearing* / stärkster Ruheschmerz *ohne*
     Sepsis-Bild? → *Stop PT*, *ED noch heute* — nicht mobilisieren, nicht manipulieren.

  Navigator: `→ IV-0 (geplant)` · D-RISC: `→ II-1`.
]

#process-pathway(
  (
    [First-Look\ / vital?],
    [Red-Flag-\ Split],
    [R / I / S\ Checks],
    [Ergebnis C\ Handlung],
  ),
  title: [Entscheidungs-Flow (Scan < 10 s)],
  color: palette.danger,
)

// ── Einstieg ───────────────────────────────────────────────────
== Einstiegsfrage

#callout(title: [Patient meldet …], tone: "warning")[
  *Überwärmtes, geschwollenes, stark schmerzhaftes Gelenk* — oft als „Arthroseschub“,
  „Gichtanfall“ oder „Blockade“ deklariert. Akuter *hot swollen joint* ist bis zum
  *ärztlichen* Ausschluss *kein* Arthroseschub und *kein* Probebehandlungsauftrag —
  septische Arthritis und Sepsis *nicht* verpassen.
]

// ── Entscheidungs-Flow — medical-graphics recreate winner ──────
== Entscheidungs-Flow

#entscheidungs-flow-heisses-gelenk()

// ── Ursachenmatrix ─────────────────────────────────────────────
== Ursachenmatrix (R4 → R1)

#styled-table(
  columns: (0.4fr, 1.2fr, 1.65fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[R],
    text(fill: white, weight: "bold", size: 8.5pt)[Richtung / Ursache],
    text(fill: white, weight: "bold", size: 8.5pt)[Erste Hinweise (ohne Patho)],
  ),
  [*R4*], [*Septische Arthritis / Gelenkempyem + Sepsis*],
  [heißes Mono-Gelenk + Fieber *≥ 38,5 °C* + deutliche AZ-Verschlechterung / Bewusstseinseintrübung / schwerer AZ-Abfall → *112*],
  [*R4*], [*Akutes heißes Mono-Gelenk + Non-weight-bearing / stärkster Ruheschmerz* (ohne Sepsis-Bild)],
  [Functio laesa, Belastung unmöglich — *ED noch heute* (hot swollen joint bis Ausschluss)],
  [*R4*], [*Postinterventionell / posttraumatisch*],
  [heißes Gelenk nach i.a. Injektion, OP, offenem Trauma → *ED / Ortho-Notdienst noch heute*],
  [*R4*], [*Kind: Fieber + Schonhaltung / Gehverweigerung + Sepsis-Bild*],
  [schwerer AZ-Abfall, Bewusstseinseintrübung, Kreislauf-/Atemnot → *112* / pädiatrischer Notfall],
  [*R4*], [*Kind: Schonhaltung + Fieber ohne Sepsis-Bild*],
  [weint bei Belastung/Bewegung, Gehverweigerung → *pädiatrische ED noch heute*],
  [*R3–R4*], [*Hochrisiko ohne hohes Fieber* (primär S1 RF-Z.5)],
  [*Dialyse, Rheuma-Immunsuppression* + heißes Gelenk → *ED / internistische NA binnen Stunden* (okkulte Sepsis möglich). Prothese/hohes Alter = *Enabling* (S1 §4), nicht primärer Hochrisiko-Triage-Trigger dieser Zeile],
  [*R3*], [*Unklarer akuter Monoarthritis-Schub* (bekannte Gicht/OA, unüblicher Verlauf)],
  [Klinik überlappt; *keine* Entwarnung durch „bekannt Gicht/OA“ → gleichtags Arzt/ED],
  [*R3*], [*Verdacht Osteomyelitis / Spondylodiszitis / systemischer Infekt*],
  [Fieber + stärkster Schmerz, oft *ohne* massiven Erguss; wandernde Polyarthralgien → ED/Arzt],
  [*R2*], [Subakute Gelenkreizung ohne R4-Muster, unvollständige Sicherheit],
  [zeitnahe fachärztliche Klärung *vor* aggressiver PT am Gelenk],
  [*R1*], [Ärztlich gesicherter Ausschluss Infekt *oder* stabile OA/MSK *ohne* Überwärmung/Akutflags (± Verordnung)],
  [Treat + Safety-Netting; bei neuer Überwärmung/Systemik *sofort re-triagieren*],
)

#text(size: type-scale.small, fill: palette.text-muted)[
  Illness-Script septische Arthritis: `→ V-SeptArthritis`. Gicht / aktivierte Arthrose als
  Master-Kapitel: `→ V-Gicht (geplant)` · `→ V-Arthrose (geplant)` — hier nur Red-Herring-/Kontrast-Ebene.
]

// ── Red-Flag-Box ───────────────────────────────────────────────
== Red-Flag-Box (heißes Gelenk)

#text(size: 8.5pt, fill: luma(80))[
  Datenetikett RF (Kern): *[Erwachsene/Kinder | Hot swollen joint / Leitlinie | BSR 2006; SANJO 2023; PIDS/IDSA 2023; RKI Sepsis]* — Claims 2–6.
]

#urgency-lanes(
  title: [Kriterium → Dringlichkeit → Aktion (Schwellen 1:1)],
  (
    ([Heißes, geschwollenes Gelenk + Fieber *≥ 38,5 °C* + deutliche AZ-Verschlechterung; *Bewusstseinseintrübung* / *schwerer AZ-Abfall*], [112 / Sofort], "danger",
      [Behandlung abbrechen, Vitalzeichen, *112* (Sepsis-Verdacht); keine Manipulation [BSR 2006; SANJO 2023; RKI Sepsis / S1 §7+§9]]),
    ([Akutes heißes Mono-Gelenk + Non-weight-bearing / stärkster Ruheschmerz (*ohne* Sepsis-Bild)], [ED noch heute], "warning",
      [Hot-swollen-joint-Klärung; Stop PT am Gelenk [SANJO 2023; BSR 2006]]),
    ([Heißes Gelenk nach kürzlicher *i.a. Injektion / OP / Trauma*], [ED / Ortho noch heute], "warning",
      [postinterventionelles Empyem/Sepsis möglich [SANJO 2023]]),
    ([Kind: Fieber + Gehverweigerung/Schonhaltung *mit* Sepsis-Bild (schwerer AZ-Abfall, Bewusstseinseintrübung, Kreislauf-/Atemnot)], [112 / päd. Notfall], "danger",
      [Behandlung abbrechen, Vitalzeichen, *112*; Eltern warnen [S1 §9; PIDS/IDSA 2023]]),
    ([Kind: Schonhaltung (weint bei Belastung/Bewegung) + Fieber *ohne* Sepsis-Bild], [Päd. ED noch heute], "warning",
      [direkte Verweisung; Eltern warnen [PIDS/IDSA 2023; Kocher 1999 / S1 §7]]),
    ([Heißes Gelenk bei *Hochrisiko* (primär *Dialyse, Rheuma-Immunsuppression*; S1 RF-Z.5)], [ED binnen Stunden], "warning",
      [okkulte Sepsis auch *ohne* hohes Fieber [RKI Sepsis; SANJO 2023]. Prothese/Alter = Enabling (S1 §4), nicht primärer Trigger dieser Zeile]),
  ),
)

#cue-cluster(
  title: [Anamnesefragen (Gatekeeper)],
  tone: "warning",
  (
    [Wie *schnell* ist das Gelenk angeschwollen? (Stunden/Tage = Alarm)],
    [Fieber, Schüttelfrost, Nachtschweiß, akutes Schwerkrank-Gefühl?],
    [Können Sie das Gelenk/Bein *überhaupt noch belasten*?],
    [Kürzlich Punktion, OP, Injektion? Implantate/Prothese? Dialyse / Rheuma-Immunsuppression?],
  ),
)

#text(size: 8.5pt, fill: luma(80))[
  Generische Flaggen-Grundlagen: `→ II-2` · `→ Anh. C (geplant)`.
]

// ── Multi-S1-Split ─────────────────────────────────────────────
== Multi-S1-Split (Dringlichkeit)

#styled-table(
  columns: (1.2fr, 0.9fr, 0.9fr, 1.1fr),
  table.header(
    text(fill: white, weight: "bold", size: 7.5pt)[Konstellation],
    text(fill: white, weight: "bold", size: 7.5pt)[Bakt.-Arthritis-S1],
    text(fill: white, weight: "bold", size: 7.5pt)[Gicht-/OA-S1 (Kurz)],
    text(fill: white, weight: "bold", size: 7.5pt)[Aktion im Direktzugang],
  ),
  [Heißes Gelenk + Fieber *≥ 38,5 °C* + AZ-Abfall / Bewusstsein],
  [*112* (Sepsis)],
  [Gicht/OA: oft „gleichtags–ED“ bei Fieber/Systemik],
  [*Strengerer Pfad:* *112* — nicht auf „bekannte Gicht/OA“ glätten],
  [Heißes Gelenk + Fieber/Systemik *ohne* klaren Kreislauf-/AZ-Notfall],
  [ED gleichtags–sofort (Hot swollen joint)],
  [gleichtags–ED (septisch bis Ausschluss)],
  [*ED noch heute*; bei Unsicherheit *Default-to-Danger*],
  [Isoliertes heißes Mono-Gelenk, Non-weight-bearing, *kein* Fieber],
  [*ED noch heute*],
  [Unüblicher OA-/Gicht-Schub → gleichtags Arzt/ED],
  [*ED noch heute* — Klinik überlappt, kein PT-Ausschluss],
  [Kind: Fieber + Schonhaltung *mit* Sepsis-Bild],
  [*112* / päd. Notfall],
  [—],
  [*112*],
  [Kind: Fieber + Schonhaltung *ohne* Sepsis-Bild],
  [päd. ED noch heute],
  [—],
  [*pädiatrische ED noch heute*],
)

#text(size: 8.5pt, fill: luma(80))[
  Quellen: bakterielle-arthritis-facts §7; gicht-facts RF; arthrose-primaer-gonarthrose-und-facts RF.
  *Claims mit getrennten Quellen* unten.
]

// ── R + I + S → C ──────────────────────────────────────────────
== R + I + S → C

#styled-table(
  columns: (1.55fr, 0.35fr, 0.35fr, 0.35fr, 1.5fr),
  table.header(
    text(fill: white, weight: "bold", size: 8pt)[Konstellation],
    text(fill: white, weight: "bold", size: 8pt)[R],
    text(fill: white, weight: "bold", size: 8pt)[I],
    text(fill: white, weight: "bold", size: 8pt)[S],
    text(fill: white, weight: "bold", size: 8pt)[C (Handlung)],
  ),
  [Hot swollen joint + Fieber ≥ 38,5 °C + AZ-Abfall / Bewusstseinseintrübung / Sepsis-Zeichen],
  [4], [1], [4],
  [*112*, Stop PT, Vitalzeichen; Master `→ V-SeptArthritis`],
  [Kind: Fieber + Schonhaltung / Gehverweigerung *mit* Sepsis-Bild],
  [4], [1], [4],
  [*112* / pädiatrischer Notfall; keine PT; Eltern warnen],
  [Kind: Fieber + Schonhaltung / Gehverweigerung *ohne* Sepsis-Bild],
  [4], [1], [4],
  [*Pädiatrische ED noch heute*; keine PT; Eltern warnen],
  [Akutes heißes Mono-Gelenk + Non-weight-bearing / stärkster Ruheschmerz (*ohne* Sepsis-Bild)],
  [3–4], [1], [4],
  [*ED noch heute*; Stop am Gelenk; keine Manipulation],
  [Post-i.a.-Injektion / OP / Trauma + heißes Gelenk],
  [3–4], [1], [4],
  [*ED / Ortho-Notdienst noch heute*],
  [Hochrisiko (*Dialyse, Rheuma-Immunsuppression*) + heißes Gelenk, auch *ohne* hohes Fieber],
  [3–4], [1], [3–4],
  [*ED / internistische NA binnen Stunden* (Prothese/Alter = Enabling, S1 §4)],
  [„Gichtanfall“ / „Arthroseschub“-Label, aber unüblich / Systemik / Non-weight-bearing],
  [3–4], [1], [3–4],
  [*Refer* wie R4/R3 oben; Label *ersetzt keine* Abklärung],
  [Ärztlich gesicherter Ausschluss / stabile OA ohne Überwärmung/Akutflags],
  [1], [3–4], [1–2],
  [Treat + Safety-Netting (3-3-3); bei neuer Überwärmung/Systemik *sofort re-triagieren*],
)

#text(size: type-scale.small, fill: palette.text-muted)[
  *I* und *S:* solange R≥3, ist der PT-Nutzen am unklaren heißen Gelenk *null* und S für Manipulation/Belastung *hoch (KI)*.
]

// ── Kontrastpaare ──────────────────────────────────────────────
== Kontrastpaare

#contrast-pairs(
  (
    ([„Aktivierte Arthrose“ / bekannter OA-Schub], [Akut heiß + Systemik und/oder Non-weight-bearing — *höchste* Risikogruppe (Alter/Morbidität) → `→ V-SeptArthritis` · `→ V-Arthrose (geplant)`]),
    ([„Typischer Gichtanfall“], [Klinik fast identisch; *Kristallnachweis schließt Infekt nicht aus* (SANJO; S1 Verify Claim 6) → `→ V-SeptArthritis` · `→ V-Gicht (geplant)`]),
    ([Reaktive Arthritis / SpA-Schub], [Heißes Gelenk oft *ohne* Fieber — im PT-Setting früh *nicht* sicher trennbar → `→ V-ReaktiveArthritis (geplant)` · refer bei Unklarheit]),
    ([Bursitis / Zellulitis], [Rötung/Druck Weichteil, Gelenk freier beweglich — Differenzierung *ärztlich*; ED/Arzt bei Unsicherheit]),
    ([„Blockade“ / „muss rein“], [Heiß + Schwellung + Ruheschmerz → *keine* Manipulation → `→ I-3 (geplant)` / Scope `→ II-1`]),
  ),
)

// ── Cave absolute KI ───────────────────────────────────────────
== Boxen (leitsymptom-spezifisch)

#cave(title: [Absolute Kontraindikationen am unklaren heißen Gelenk])[
  - *Keine* Manipulation, Traktion, Gelenkspiel-Testung, tiefe Friktion
  - *Keine* invasiven Nahmaßnahmen (Dry Needling, Akupunktur) am betroffenen Gelenk
  - *Keine* Probebehandlung / Abwarten 2–3 Tage „ob es besser wird“
  - *Keine* Gelenkpunktion durch HP Physio — streng *ärztlich* [S1 §10]
]

#cave(title: [„Bekannte Gicht / OA“ ist kein Freifahrtschein])[
  Klinik von Kristallarthropathie und septischer Arthritis *überlappt*. Label und Anamnese
  ersetzen *keine* Triage. Kristallnachweis (ärztlich) schließt bakterielle Superinfektion
  *nicht* aus [SANJO 2023; bakterielle-arthritis-facts §5 — Verify Claim 6 annotiert].
]

#callout(title: [Labor / Scores: nur Sensibilisierung, kein Entwarnen], tone: "info")[
  - *Serum-CRP / Leukozyten* — Infektion bei Gelenkschwellung *ausschließen*? *Nein* — kein Cut-off für Entwarnung [S1 §6, §12]
  - *Kocher-Kriterien* (Pädiatrie/Hüfte) — Original-PPV (bis 99,6 % bei 4 Kriterien) *nicht* als harte Screening-Wahrscheinlichkeit im adulten HP-Direktzugang; braucht Labor; *Kingella kingae* (< 4 J.) oft mildes Bild [S1 §6; Verify Claim 4]
  - *„Punktion vorab“* — Diagnostik *ärztlich*; vor Punktion keine HP-invasive/antibiotische Eigeninitiative [S1 Claims 9–10]
]

#section-break()

== Master- & Notfall-Verweise

- Bakterielle / septische Arthritis (Illness Script) → `V-SeptArthritis`
- Gicht / Kristallarthropathie (Kontrast) → `V-Gicht (geplant)`
- Primäre Arthrose / aktivierter Schub (Kontrast) → `V-Arthrose (geplant)`
- Sepsis allgemein → `V-Sepsis (geplant)`
- D-RISC / Drei Achsen → `II-1`
- Flaggen-System Treat-vs-Refer → `II-2`
- BLS / Vital-First-Look → `III-2`
- Labor-Minibox (kein HP-Ausschluss) → `II-7 (geplant)`

== Quellen

+ Wouthuyzen-Bakker M, et al. Guideline for management of septic arthritis in native joints (SANJO). *J Bone Jt Infect*. 2023.
+ Coakley G, et al. BSR guidelines for management of the hot swollen joint in adults. *Rheumatology (Oxford)*. 2006.
+ Woods CR, et al. PIDS/IDSA 2023 Guideline: Acute Bacterial Arthritis in Pediatrics. *J Pediatric Infect Dis Soc*. 2024.
+ Kocher MS, et al. Septic arthritis vs. transient synovitis of the hip in children. *J Bone Joint Surg Am*. 1999.
+ RKI. Sepsis. — S1-RF-Beleg „RKI Sepsis“.
+ Primär-S1: `bakterielle-arthritis-facts.md` · Kontrast: `gicht-facts.md`; `arthrose-primaer-gonarthrose-und-facts.md`.

#text(size: 8.5pt, fill: luma(80))[
  *Lücken (ehrlich):* keine DE-S3 native septische Arthritis; keine validierten PT-Direktzugang-Triage-Scores DE;
  kein CRP-Ausschluss-Cut-off [S1 §12]. Regensburg-Mortalität im Primär-S1 *Verify-Konflikt* — hier nicht als Triage-Zahl geführt.
]

// ── Critical Claims ────────────────────────────────────────────
#section-break()

== Critical Claims (Audit)

#text(size: 9pt, fill: luma(60))[
  Anhang / Audit-Tafel — *nicht* Handlungspfad. Claims unverändert aus Content (copy-through). Exact thresholds preserved.
]

1. Akuter hot swollen joint mit Infektverdacht gilt bis ärztlichem Ausschluss als potenziell bakteriell
2. Heißes Gelenk + Fieber ≥ 38,5 °C + deutliche AZ-Verschlechterung / Bewusstseinseintrübung / schwerer AZ-Abfall → *112* (Sepsis-Verdacht)
3. Akutes heißes Mono-Gelenk + Non-weight-bearing / stärkster Ruheschmerz (*ohne* Sepsis-Bild) → *ED noch heute*
4. Heißes Gelenk nach i.a. Injektion / OP / Trauma → ED/Ortho noch heute
5. Kind: Schonhaltung + Fieber *ohne* Sepsis-Bild → pädiatrische ED noch heute; *mit* Sepsis-Bild → *112*
6. Hochrisiko (*Dialyse, Rheuma-Immunsuppression*) + heißes Gelenk → ED binnen Stunden, auch ohne hohes Fieber (Prothese/Alter = Enabling, nicht primärer RF-Z.5-Trigger)
7. Multi-S1-Split: Gicht-/OA-S1 „Fieber/Systemik → gleichtags–ED“ *mildert nicht* den 112-Pfad bei Fieber ≥ 38,5 °C + AZ (bakteriell-S1 strenger)
8. Kristallnachweis schließt bakterielle Gelenkinfektion nicht aus (SANJO; Verify Claim 6 annotiert)
9. Absolute KI: Manipulation/Traktion/Gelenkspiel, invasive Nähe, Probebehandlung, HP-Punktion
10. Serum-CRP/Leukozyten und Kocher-Original-PPV sind keine Entwarnungs-Tools im adulten Direktzugang

#callout(title: [Human-in-the-loop], tone: "info")[
  Klinische Claims und Triage-Schwellen (112 vs. ED vs. binnen Stunden) vor Publikation fachlich
  freigeben. Verify-Konflikte im Primär-S1 (Regensburg-Mortalität, Kocher-PPV, Kristall-Claim,
  112-Formulierung) und Multi-S1-Split Gicht/OA vs. septisch *nicht* ohne Human glätten.
  Master-Kapitel Gicht/Arthrose nur als `(geplant)` verlinkt. Entwurf ≠ freigegebener Buchkanon.
]
