// Auto-generated from chapter-iv4-heisses-gelenk.md — layout only; clinical text not rewritten.
// Source: Kursbuch pilot 2026-07-welle-03-final-10
#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *

#chapter-opener(
  title: [IV-4 Heißes / entzündetes Gelenk],
  lead: [Kursbuch-Pilot IV-4 · Layout via bookkit + bookkit-didactics],
)

#tag[IV-4] #badge[pilot]

*Lernziel:* Akuter *hot swollen joint* ist bis zum *ärztlichen* Ausschluss *kein* Arthroseschub und *kein* Probebehandlungsauftrag — septische Arthritis und Sepsis *nicht* verpassen.

#section-break()

== Einstiegsfrage

Patient meldet *überwärmtes, geschwollenes, stark schmerzhaftes Gelenk* — oft als „Arthroseschub“, „Gichtanfall“ oder „Blockade“ deklariert.

*Erste Sicherheitsfrage (splitten — keine Mischantwort „112 oder ED“):*

+ Heißes Mono-Gelenk + Fieber *≥ 38,5 °C* + deutliche AZ-Verschlechterung (Schüttelfrost, Schwerkrank-Gefühl, Bewusstseinseintrübung / schwerer AZ-Abfall)? → *Stop PT*, Vitalzeichen, *112* — nicht mobilisieren, nicht manipulieren.
+ Akutes heißes Mono-Gelenk + *Non-weight-bearing* / stärkster Ruheschmerz *ohne* Sepsis-Bild? → *Stop PT*, *ED noch heute* — nicht mobilisieren, nicht manipulieren.

Navigator-Kontext: `→ IV-0 (geplant)` · D-RISC-Logik: `→ II-1`.

#section-break()

== Ursachenmatrix (R4 → R1)

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[R],
    text(fill: white, weight: "bold", size: 8.5pt)[Richtung / Ursache],
    text(fill: white, weight: "bold", size: 8.5pt)[Erste Hinweise (ohne Patho)],
  ),
  [*R4*],
  [*Septische Arthritis / Gelenkempyem + Sepsis*],
  [heißes Mono-Gelenk + Fieber *≥ 38,5 °C* + deutliche AZ-Verschlechterung / Bewusstseinseintrübung / schwerer AZ-Abfall → *112*],
  [*R4*],
  [*Akutes heißes Mono-Gelenk + Non-weight-bearing / stärkster Ruheschmerz* (ohne Sepsis-Bild)],
  [Functio laesa, Belastung unmöglich — *ED noch heute* (hot swollen joint bis Ausschluss)],
  [*R4*],
  [*Postinterventionell / posttraumatisch*],
  [heißes Gelenk nach i.a. Injektion, OP, offenem Trauma → *ED / Ortho-Notdienst noch heute*],
  [*R4*],
  [*Kind: Fieber + Schonhaltung / Gehverweigerung + Sepsis-Bild*],
  [schwerer AZ-Abfall, Bewusstseinseintrübung, Kreislauf-/Atemnot → *112* / pädiatrischer Notfall],
  [*R4*],
  [*Kind: Schonhaltung + Fieber ohne Sepsis-Bild*],
  [weint bei Belastung/Bewegung, Gehverweigerung → *pädiatrische ED noch heute*],
  [*R3–R4*],
  [*Hochrisiko ohne hohes Fieber* (primär S1 RF-Z.5)],
  [*Dialyse, Rheuma-Immunsuppression* + heißes Gelenk → *ED / internistische NA binnen Stunden* (okkulte Sepsis möglich). Prothese/hohes Alter = *Enabling* (S1 §4), nicht primärer Hochrisiko-Triage-Trigger dieser Zeile],
  [*R3*],
  [*Unklarer akuter Monoarthritis-Schub* (bekannte Gicht/OA, unüblicher Verlauf)],
  [Klinik überlappt; *keine* Entwarnung durch „bekannt Gicht/OA“ → gleichtags Arzt/ED],
  [*R3*],
  [*Verdacht Osteomyelitis / Spondylodiszitis / systemischer Infekt*],
  [Fieber + stärkster Schmerz, oft *ohne* massiven Erguss; wandernde Polyarthralgien → ED/Arzt],
  [*R2*],
  [Subakute Gelenkreizung ohne R4-Muster, unvollständige Sicherheit],
  [zeitnahe fachärztliche Klärung *vor* aggressiver PT am Gelenk],
  [*R1*],
  [Ärztlich gesicherter Ausschluss Infekt *oder* stabile OA/MSK *ohne* Überwärmung/Akutflags (± Verordnung)],
  [Treat + Safety-Netting; bei neuer Überwärmung/Systemik *sofort re-triagieren*],
)

Illness-Script septische Arthritis: `→ V-SeptArthritis`. Gicht / aktivierte Arthrose als *Master-Kapitel:* `→ V-Gicht (geplant)` · `→ V-Arthrose (geplant)` — hier nur *Red-Herring-/Kontrast*-Ebene (S1-Dossiers vorhanden; Kapitel-IDs noch nicht kanonisch).

#section-break()

== Entscheidungs-Flow

+ *First-Look / vital?*

Bewusstseinsstörung, schwerer AZ-Abfall, Sepsis-Kreislauf → *112*. Kind mit Fieber + Gehverweigerung *und* Sepsis-Bild → *112* / pädiatrischer Notfall; Kind mit Fieber + Schonhaltung *ohne* Sepsis-Bild → *pädiatrische ED noch heute*. *Keine* Manipulation, *keine* Belastung. BLS/Vital: `→ III-2` · Sepsis-Flags allgemein: `→ V-Sepsis (geplant)` / `→ II-2`.

+ *Red-Flag-Box (unten) positiv?* → Aktion *1:1 splitten* (*112* vs. *ED noch heute* vs. *binnen Stunden* — keine Mischantwort). *Keine* Probebehandlung „ob es in 2–3 Tagen besser wird“.

+ *R-Check* (Matrix R4→R1) → *I-Check* (PT-Nutzen jetzt am Gelenk?) → *S-Check* (Maßnahme sicher? Manipulation? Traktion? Dry Needling? Belastung?).

+ *Ergebnis C* — siehe R+I+S→C. Unklar + red-flag-nah → *Default-to-Danger* (lieber ED/112 als „noch testen“).

#section-break()

== Red-Flag-Box (heißes Gelenk)

Datenetikett RF (Kern): *[Erwachsene/Kinder | Hot swollen joint / Leitlinie | BSR 2006; SANJO 2023; PIDS/IDSA 2023; RKI Sepsis]* — Claims 2–6.

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Kriterium],
    text(fill: white, weight: "bold", size: 8.5pt)[Dringlichkeit],
    text(fill: white, weight: "bold", size: 8.5pt)[Aktion],
  ),
  [Heißes, geschwollenes Gelenk + Fieber *≥ 38,5 °C* + deutliche AZ-Verschlechterung; *Bewusstseinseintrübung* / *schwerer AZ-Abfall*],
  [*112 / Sofort*],
  [Behandlung abbrechen, Vitalzeichen, *112* (Sepsis-Verdacht); keine Manipulation [BSR 2006; SANJO 2023; RKI Sepsis / S1 §7+§9]],
  [Akutes heißes Mono-Gelenk + Non-weight-bearing / stärkster Ruheschmerz (*ohne* Sepsis-Bild)],
  [*ED / Notaufnahme (noch heute)*],
  [Hot-swollen-joint-Klärung; Stop PT am Gelenk [SANJO 2023; BSR 2006]],
  [Heißes Gelenk nach kürzlicher *i.a. Injektion / OP / Trauma*],
  [*ED / Ortho-Notdienst (noch heute)*],
  [postinterventionelles Empyem/Sepsis möglich [SANJO 2023]],
  [Kind: Fieber + Gehverweigerung/Schonhaltung *mit* Sepsis-Bild (schwerer AZ-Abfall, Bewusstseinseintrübung, Kreislauf-/Atemnot)],
  [*112 / pädiatrischer Notfall*],
  [Behandlung abbrechen, Vitalzeichen, *112*; Eltern warnen [S1 §9; PIDS/IDSA 2023]],
  [Kind: Schonhaltung (weint bei Belastung/Bewegung) + Fieber *ohne* Sepsis-Bild],
  [*Pädiatrische ED (noch heute)*],
  [direkte Verweisung; Eltern warnen [PIDS/IDSA 2023; Kocher 1999 / S1 §7]],
  [Heißes Gelenk bei *Hochrisiko* (primär *Dialyse, Rheuma-Immunsuppression*; S1 RF-Z.5)],
  [*ED / internistische NA (binnen Stunden)*],
  [okkulte Sepsis auch *ohne* hohes Fieber [RKI Sepsis; SANJO 2023]. Prothese/Alter = Enabling (S1 §4), nicht primärer Trigger dieser Zeile],
)

*Anamnesefragen (Gatekeeper):*

- Wie *schnell* ist das Gelenk angeschwollen? (Stunden/Tage = Alarm)
- Fieber, Schüttelfrost, Nachtschweiß, akutes Schwerkrank-Gefühl?
- Können Sie das Gelenk/Bein *überhaupt noch belasten*?
- Kürzlich Punktion, OP, Injektion? Implantate/Prothese? Dialyse / Rheuma-Immunsuppression?

Generische Flaggen-Grundlagen: `→ II-2` · `→ Anh. C (geplant)`.

=== Multi-S1-Split (Dringlichkeit)

#styled-table(
  columns: (1fr, 1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Konstellation],
    text(fill: white, weight: "bold", size: 8.5pt)[Bakterielle-Arthritis-S1],
    text(fill: white, weight: "bold", size: 8.5pt)[Gicht- / Arthrose-S1 (Kurz)],
    text(fill: white, weight: "bold", size: 8.5pt)[*Aktion im Direktzugang*],
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

Quellen: bakterielle-arthritis-facts §7; gicht-facts RF; arthrose-primaer-gonarthrose-und-facts RF. *Claims mit getrennten Quellen* unten.

#section-break()

== R + I + S → C

#styled-table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Konstellation],
    text(fill: white, weight: "bold", size: 8.5pt)[R],
    text(fill: white, weight: "bold", size: 8.5pt)[I],
    text(fill: white, weight: "bold", size: 8.5pt)[S],
    text(fill: white, weight: "bold", size: 8.5pt)[C (Handlung)],
  ),
  [Hot swollen joint + Fieber ≥ 38,5 °C + AZ-Abfall / Bewusstseinseintrübung / Sepsis-Zeichen],
  [4],
  [1],
  [4],
  [*112*, Stop PT, Vitalzeichen; Master `→ V-SeptArthritis`],
  [Kind: Fieber + Schonhaltung / Gehverweigerung *mit* Sepsis-Bild],
  [4],
  [1],
  [4],
  [*112* / pädiatrischer Notfall; keine PT; Eltern warnen],
  [Kind: Fieber + Schonhaltung / Gehverweigerung *ohne* Sepsis-Bild],
  [4],
  [1],
  [4],
  [*Pädiatrische ED noch heute*; keine PT; Eltern warnen],
  [Akutes heißes Mono-Gelenk + Non-weight-bearing / stärkster Ruheschmerz (*ohne* Sepsis-Bild)],
  [3–4],
  [1],
  [4],
  [*ED noch heute*; Stop am Gelenk; keine Manipulation],
  [Post-i.a.-Injektion / OP / Trauma + heißes Gelenk],
  [3–4],
  [1],
  [4],
  [*ED / Ortho-Notdienst noch heute*],
  [Hochrisiko (*Dialyse, Rheuma-Immunsuppression*) + heißes Gelenk, auch *ohne* hohes Fieber],
  [3–4],
  [1],
  [3–4],
  [*ED / internistische NA binnen Stunden* (Prothese/Alter = Enabling, S1 §4)],
  [„Gichtanfall“ / „Arthroseschub“-Label, aber unüblich / Systemik / Non-weight-bearing],
  [3–4],
  [1],
  [3–4],
  [*Refer* wie R4/R3 oben; Label *ersetzt keine* Abklärung],
  [Ärztlich gesicherter Ausschluss / stabile OA ohne Überwärmung/Akutflags],
  [1],
  [3–4],
  [1–2],
  [Treat + Safety-Netting (3-3-3); bei neuer Überwärmung/Systemik *sofort re-triagieren*],
)

*I* und *S:* solange R≥3, ist der PT-Nutzen am unklaren heißen Gelenk *null* und S für Manipulation/Belastung *hoch (KI)*.

#section-break()

== Kontrastpaare

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Sieht aus wie …],
    text(fill: white, weight: "bold", size: 8.5pt)[Muss-not-miss wenn …],
    text(fill: white, weight: "bold", size: 8.5pt)[Verweis],
  ),
  [„Aktivierte Arthrose“ / bekannter OA-Schub],
  [Akut heiß + Systemik und/oder Non-weight-bearing — *höchste* Risikogruppe (Alter/Morbidität)],
  [`→ V-SeptArthritis` · `→ V-Arthrose (geplant)`],
  [„Typischer Gichtanfall“],
  [Klinik fast identisch; *Kristallnachweis schließt Infekt nicht aus* (SANJO; S1 Verify Claim 6)],
  [`→ V-SeptArthritis` · `→ V-Gicht (geplant)`],
  [Reaktive Arthritis / SpA-Schub],
  [Heißes Gelenk oft *ohne* Fieber — im PT-Setting früh *nicht* sicher trennbar],
  [`→ V-ReaktiveArthritis (geplant)` · refer bei Unklarheit],
  [Bursitis / Zellulitis],
  [Rötung/Druck Weichteil, Gelenk freier beweglich — Differenzierung *ärztlich*],
  [ED/Arzt bei Unsicherheit],
  [„Blockade“ / „muss rein“],
  [Heiß + Schwellung + Ruheschmerz → *keine* Manipulation],
  [`→ I-3 (geplant)` / Scope `→ II-1`],
)

#section-break()

== Master- & Notfall-Verweise

#styled-table(
  columns: (1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Wenn Verdacht auf …],
    text(fill: white, weight: "bold", size: 8.5pt)[Ziel],
  ),
  [Bakterielle / septische Arthritis (Illness Script)],
  [`→ V-SeptArthritis`],
  [Gicht / Kristallarthropathie (Kontrast)],
  [`→ V-Gicht (geplant)`],
  [Primäre Arthrose / aktivierter Schub (Kontrast)],
  [`→ V-Arthrose (geplant)`],
  [Sepsis allgemein],
  [`→ V-Sepsis (geplant)`],
  [D-RISC / Drei Achsen],
  [`→ II-1`],
  [Flaggen-System Treat-vs-Refer],
  [`→ II-2`],
  [BLS / Vital-First-Look],
  [`→ III-2`],
  [Labor-Minibox (kein HP-Ausschluss)],
  [`→ II-7 (geplant)`],
)

#section-break()

== Boxen (leitsymptom-spezifisch)

=== Absolute Kontraindikationen am unklaren heißen Gelenk

- *Keine* Manipulation, Traktion, Gelenkspiel-Testung, tiefe Friktion
- *Keine* invasiven Nahmaßnahmen (Dry Needling, Akupunktur) am betroffenen Gelenk
- *Keine* Probebehandlung / Abwarten 2–3 Tage „ob es besser wird“
- *Keine* Gelenkpunktion durch HP Physio — streng *ärztlich* [S1 §10]

=== „Bekannte Gicht / OA“ ist kein Freifahrtschein

Klinik von Kristallarthropathie und septischer Arthritis *überlappt*. Label und Anamnese ersetzen *keine* Triage. Kristallnachweis (ärztlich) schließt bakterielle Superinfektion *nicht* aus [SANJO 2023; bakterielle-arthritis-facts §5 — Verify Claim 6 annotiert].

=== Labor / Scores: nur Sensibilisierung, kein Entwarnen

#styled-table(
  columns: (1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Tool],
    text(fill: white, weight: "bold", size: 8.5pt)[Was es im Direktzugang *nicht* darf],
  ),
  [Serum-CRP / Leukozyten],
  [Infektion bei Gelenkschwellung *ausschließen* — kein Cut-off für Entwarnung [S1 §6, §12]],
  [Kocher-Kriterien (Pädiatrie/Hüfte)],
  [Original-PPV (bis 99,6 % bei 4 Kriterien) *nicht* als harte Screening-Wahrscheinlichkeit im adulten HP-Direktzugang; braucht Labor; *Kingella kingae* (\< 4 J.) oft mildes Bild [S1 §6; Verify Claim 4]],
  [„Punktion vorab“],
  [Diagnostik *ärztlich*; vor Punktion keine HP-invasive/antibiotische Eigeninitiative [S1 Claims 9–10]],
)

#section-break()

== Quellen

+ Wouthuyzen-Bakker M, et al. Guideline for management of septic arthritis in native joints (SANJO). *J Bone Jt Infect*. 2023;8:29–37. https://pmc.ncbi.nlm.nih.gov/articles/PMC9901514/ (Abruf: 2026-07-14).
+ Coakley G, et al. BSR guidelines for management of the hot swollen joint in adults. *Rheumatology (Oxford)*. 2006;45(8):1039–1041. https://academic.oup.com/rheumatology/article/45/8/1039/1784962 (Abruf: 2026-07-14).
+ Woods CR, et al. PIDS/IDSA 2023 Guideline: Acute Bacterial Arthritis in Pediatrics. *J Pediatric Infect Dis Soc*. 2024. https://academic.oup.com/jpids/article/13/1/1/7371295 (Abruf: 2026-07-14).
+ Kocher MS, et al. Septic arthritis vs. transient synovitis of the hip in children. *J Bone Joint Surg Am*. 1999;81(12):1662–1670. (Abruf: 2026-07-14).
+ RKI. Sepsis. https://www.rki.de/DE/Themen/Infektionskrankheiten/Infektionskrankheiten-A-Z/S/Sepsis/Sepsis-node.html (Abruf: 2026-07-15) — S1-RF-Beleg „RKI Sepsis“; Projekt-Bibliographie.
+ AMBOSS. *Bakterielle Arthritis*. https://next.amboss.com/de/article/0M0eMg (Abruf: 2026-07-14) — Sekundär; RF-Primärpfad SANJO/BSR/RKI.
+ *Primär-S1 (Writer-GO):* `content/dossiers/krankheitslehre/bakterielle-arthritis-facts.md` (`ready-for-human`, 2026-07-14).
+ *Kontrast-S1 (Multi-S1-Split, nicht Master-Pfad des GO):* `…/gicht-facts.md`; `…/arthrose-primaer-gonarthrose-und-facts.md` (je `ready-for-human`) — nur für Red-Herring-Dringlichkeit; Kapitel `→ V-Gicht (geplant)` / `→ V-Arthrose (geplant)`.

*Lücken (ehrlich):* keine DE-S3 native septische Arthritis; keine validierten PT-Direktzugang-Triage-Scores DE; kein CRP-Ausschluss-Cut-off [S1 §12]. Regensburg-Mortalität im Primär-S1 *Verify-Konflikt* — hier nicht als Triage-Zahl geführt.

#section-break()

== Critical Claims (Audit)

#styled-table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[\#],
    text(fill: white, weight: "bold", size: 8.5pt)[Claim (prüfbar)],
    text(fill: white, weight: "bold", size: 8.5pt)[Quelle im S1],
    text(fill: white, weight: "bold", size: 8.5pt)[Dringlichkeit/Aktion falls RF],
    text(fill: white, weight: "bold", size: 8.5pt)[],
    text(fill: white, weight: "bold", size: 8.5pt)[],
  ),
  [1],
  [Akuter hot swollen joint mit Infektverdacht gilt bis ärztlichem Ausschluss als potenziell bakteriell],
  [bakterielle-arthritis-facts §1],
  [Stop Treat → Arzt/ED],
  [],
  [],
  [2],
  [Heißes Gelenk + Fieber ≥ 38,5 °C + deutliche AZ-Verschlechterung / Bewusstseinseintrübung / schwerer AZ-Abfall → *112* (Sepsis-Verdacht)],
  [§7 RF-Z.1; §9 🚨; Claim 8 (nuance) · `[Erwachsene \\],
  [Hot swollen joint / Sepsis \\],
  [BSR 2006; SANJO 2023; RKI Sepsis]`],
  [*112*],
  [3],
  [Akutes heißes Mono-Gelenk + Non-weight-bearing / stärkster Ruheschmerz (*ohne* Sepsis-Bild) → *ED noch heute*],
  [§7 RF-Z.2 · `[Erwachsene \\],
  [Leitlinie \\],
  [SANJO 2023; BSR 2006]`],
  [ED / Notaufnahme],
  [4],
  [Heißes Gelenk nach i.a. Injektion / OP / Trauma → ED/Ortho noch heute],
  [§7 RF-Z.3 · `[Erwachsene \\],
  [Leitlinie \\],
  [SANJO 2023]`],
  [ED / Ortho-Notdienst],
  [5],
  [Kind: Schonhaltung + Fieber *ohne* Sepsis-Bild → pädiatrische ED noch heute; *mit* Sepsis-Bild → *112*],
  [§7 RF-Z.4; §9 🚨 · `[Kinder \\],
  [Leitlinie \\],
  [PIDS/IDSA 2023; Kocher 1999]`],
  [päd. ED / *112*],
  [6],
  [Hochrisiko (*Dialyse, Rheuma-Immunsuppression*) + heißes Gelenk → ED binnen Stunden, auch ohne hohes Fieber (Prothese/Alter = Enabling, nicht primärer RF-Z.5-Trigger)],
  [§7 RF-Z.5 · `[Erwachsene \\],
  [RKI Sepsis; SANJO 2023]`],
  [ED / internist. NA],
  [],
  [7],
  [Multi-S1-Split: Gicht-/OA-S1 „Fieber/Systemik → gleichtags–ED“ *mildert nicht* den 112-Pfad bei Fieber ≥ 38,5 °C + AZ (bakteriell-S1 strenger)],
  [bakterielle-arthritis-facts §7 vs. gicht-facts RF; arthrose-facts RF],
  [Default-to-Danger / *112*],
  [],
  [],
  [8],
  [Kristallnachweis schließt bakterielle Gelenkinfektion nicht aus (SANJO; Verify Claim 6 annotiert)],
  [bakterielle-arthritis-facts §5],
  [keine Entwarnung durch „Gicht“],
  [],
  [],
  [9],
  [Absolute KI: Manipulation/Traktion/Gelenkspiel, invasive Nähe, Probebehandlung, HP-Punktion],
  [bakterielle-arthritis-facts §10],
  [Stop / Refer],
  [],
  [],
  [10],
  [Serum-CRP/Leukozyten und Kocher-Original-PPV sind keine Entwarnungs-Tools im adulten Direktzugang],
  [bakterielle-arthritis-facts §6, §12; Verify Claim 4],
  [Klinik + ärztliche Punktion],
  [],
  [],
)

#section-break()

#callout(title: [Hinweis], tone: "warning")[*Human-in-the-loop:* Klinische Claims und Triage-Schwellen (112 vs. ED vs. binnen Stunden) vor Publikation fachlich freigeben. Verify-Konflikte im Primär-S1 (Regensburg-Mortalität, Kocher-PPV, Kristall-Claim, 112-Formulierung) und Multi-S1-Split Gicht/OA vs. septisch *nicht* ohne Human glätten. Master-Kapitel Gicht/Arthrose nur als `(geplant)` verlinkt. Entwurf ≠ freigegebener Buchkanon.]

