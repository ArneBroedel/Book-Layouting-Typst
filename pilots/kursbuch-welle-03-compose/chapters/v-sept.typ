// compose-chapter · creative-first
// catalog_version: 0.1.0 (preferred library, advisory)
// brief: domains/medical/briefs/v-sept-arthritis.brief.md
// content: /home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-v-bakterielle-arthritis-kurz.md
// tools: bookkit, bookkit-didactics, fletcher 0.5.8, cetz 0.5.2, pilot visual.typ
// wave: 2026-07-welle-03-final-10 · v2 creative redesign

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "/pilots/kursbuch-welle-03-compose/lib/visual.typ": *

#chapter-opener(
  title: [Bakterielle (septische) Arthritis — Kurzprofil],
  lead: [Ein *heißes, geschwollenes Gelenk* ist bis zum *ärztlichen* Ausschluss *kein* „Arthroseschub“ und *kein* Probebehandlungsauftrag.],
  number: "V-Sept",
)

// ── Early cave — exact thresholds ──────────────────────────────
#cave(title: [Gatekeeper — heißes Gelenk (exakte Schwellen)])[
  - Heißes Mono-Gelenk + Fieber *≥ 38,5 °C* + deutliche AZ-Verschlechterung →
    *Stop*, Vitalzeichen, *112*
  - Heißes Gelenk + Non-weight-bearing *ohne* Sepsis-Bild → *ED noch heute*
  - Hochrisiko (Dialyse, Immunsuppression) *ohne* hohes Fieber → *ED binnen
    Stunden*
  - Gesicherte nicht-infektiöse Diagnose *ohne* Akutschub-Flags → Treat mit
    Safety-Netting

  Leitsymptom-Pfad „heißes Gelenk“ (Flow, R+I+S→C): `→ IV-4`.
]

// ── Big Picture + worst-case ───────────────────────────────────
#key-concept(term: [Big Picture — bakterielle (septische) Arthritis])[
  Akute Gelenkinfektion des nativen Gelenks mit purulenter Synovitis und hohem
  Destruktionspotenzial. Im *Direktzugang* gilt jeder akute *hot swollen joint*
  mit Infektverdacht bis zum sicheren ärztlichen Ausschluss als *potenziell
  bakteriell* — Screening und Triage, nicht Therapieversuch.

  *Worst-Case bei Verkennung:* irreversible Knorpel-/Knochenschäden (Chondrolyse)
  innerhalb von Stunden bis wenigen Tagen; systemische *Sepsis* mit letalem
  Ausgang — besonders bei älteren und multimorbiden Patient:innen.
]

// ── Illness Script as pathway Who → What → How ─────────────────
#process-pathway(
  (
    [Who\ Enabling],
    [What\ Insult],
    [How\ Manifestation],
  ),
  title: [Illness Script — kompakt],
  color: palette.danger,
)

#feature-grid(
  (
    (
      icon: [W],
      title: [Who — Enabling],
      body: [
        Höheres Alter; Gelenkprothese / Osteosynthesematerial; Immunsuppression
        (Steroide, Diabetes, Nieren-/Leberinsuffizienz); RA; kürzliche
        *i.a. Injektion*, OP oder offenes Trauma.
      ],
    ),
    (
      icon: [I],
      title: [What — Insult],
      body: [
        Erregereintritt (hämatogen oder direkt; häufig *S. aureus*,
        Streptokokken) → massive neutrophile Entzündung → rasche
        Knorpeldegeneration.
      ],
    ),
    (
      icon: [H],
      title: [How — Manifestation],
      body: [
        Monoartikulär; Rubor, Calor, Tumor, Dolor (Ruhe-/Bewegungsschmerz),
        Functio laesa / *Non-weight-bearing*; oft Fieber; Onset *akut*
        (Stunden–wenige Tage).
      ],
    ),
  ),
  column-count: 3,
)

// ── Red Flags as urgency-lanes ─────────────────────────────────
== Red Flags

#text(size: 8pt, fill: luma(80))[
  Datenetikett RF (Kern): *[Erwachsene/Kinder | Hot swollen joint / Leitlinie |
  BSR 2006; SANJO 2023; PIDS/IDSA 2023; RKI Sepsis]* — Claims 2–6.
]

#urgency-lanes(
  title: [Kriterium → Dringlichkeit → Aktion],
  (
    ([Heißes, geschwollenes Gelenk + Fieber *≥ 38,5 °C* + deutliche AZ-Verschlechterung; *Bewusstseinseintrübung* / *schwerer AZ-Abfall*],
      [112 / Sofort], "danger",
      [Behandlung abbrechen, Vitalzeichen, *112*; *keine* Manipulation]),
    ([Akutes heißes Mono-Gelenk + Non-weight-bearing / stärkster Ruheschmerz],
      [ED noch heute], "warning",
      [Hot-swollen-joint-Klärung; Stop PT am Gelenk]),
    ([Heißes Gelenk nach kürzlicher *i.a. Injektion / OP / Trauma*],
      [ED / Ortho heute], "warning",
      [Postinterventionelles Empyem/Sepsis möglich]),
    ([Kind: Fieber + Gehverweigerung/Schonhaltung *mit* Sepsis-Bild],
      [112 / päd. Notfall], "danger",
      [Behandlung abbrechen, Vitalzeichen, *112* / päd. Notfall; Eltern warnen]),
    ([Kind: Schonhaltung + Fieber *ohne* Sepsis-Bild],
      [Päd. ED heute], "warning",
      [Direkte Verweisung; Eltern warnen]),
    ([Heißes Gelenk bei *Hochrisiko* (Dialyse, Rheuma-Immunsuppression u. a.)],
      [ED binnen Stunden], "warning",
      [Okkulte Sepsis auch *ohne* hohes Fieber möglich]),
  ),
)

// ── Triage decision diagram ────────────────────────────────────
== Triage-Split (112 vs. ED)

#decision-diagram({
  n-start((0, 0), [*Hot swollen*\ joint])
  e((0, 0), (0, 1))
  n-decision((0, 1), [Fieber ≥ 38,5 °C\ + AZ↓ / Sepsis-Bild?])
  e((0, 1), (-1.5, 2.2), lab: [Ja], side: left)
  e((0, 1), (1.5, 2.2), lab: [Nein], side: right)
  n-danger((-1.5, 2.2), [*112*\ Stop · Vitalzeichen\ keine Manipulation])
  n-decision((1.5, 2.2), [Non-weight-bearing\ / Hochrisiko /\ post-i.a.?])
  e((1.5, 2.2), (0.6, 3.5), lab: [Ja], side: left)
  e((1.5, 2.2), (2.4, 3.5), lab: [Nein /\ gesichert], side: right)
  n-warn((0.6, 3.5), [*ED*\ noch heute /\ binnen Stunden])
  n-ok((2.4, 3.5), [Treat +\ Safety-Net\ (nur gesichert)])
})

#vertical-flow(
  title: [Gatekeeper-Anamnese — Reihenfolge],
  tone: "warning",
  (
    [Wie *schnell* ist das Gelenk angeschwollen? (Stunden/Tage = Alarm)],
    [Fieber, Schüttelfrost, Nachtschweiß, akutes Schwerkrank-Gefühl?],
    [Können Sie das Gelenk/Bein *überhaupt noch belasten*?],
    [Kürzlich Punktion, OP, Injektion? Implantate?],
  ),
)

// ── Red Herrings as contrast-pairs ─────────────────────────────
#contrast-pairs(
  title: [Red Herrings — sieht aus wie / Notfall wenn],
  (
    ([„Aktivierte Arthrose“ / bekannter OA-Schub], [Genau diese Klientel hat hohes Sepsis-Risiko → bei Hot-swollen-Flags *nicht* bagatellisieren → *112/ED*]),
    ([Akuter Gichtanfall / Kristalle], [Klinik fast identisch; Kristallnachweis schließt bakterielle Superinfektion *nicht* aus → keine Entwarnung]),
    ([Reaktive Arthritis / SpA-Schub], [Heiße Gelenke oft ohne Fieber — im PT-Setting früh *nicht* sicher trennbar → refer]),
  ),
)

// ── Absolute KI ────────────────────────────────────────────────
#cave(title: [Was HP/PT nicht tun darf — absolut])[
  - Manipulation, Traktion, Gelenkspiel-Testung, tiefe Friktion am unklar heißen
    Gelenk
  - Dry Needling / Akupunktur / invasive Nähe zum Gelenk
  - *„Probebehandlung“* / Abwarten 2–3 Tage „ob es besser wird“
  - *Gelenkpunktion* — streng *ärztlich*, im HP-Setting unzulässig
]

// ── DDx minimal ────────────────────────────────────────────────
#ddx-box(title: [DDx — minimal])[
  - *Septische Arthritis* — akutes Mono-Gelenk, Calor/Rubor/Tumor,
    Non-weight-bearing, Systemik/Fieber, RF (Injektion, Immunsuppression)
  - *Gicht / Kristalle* — Klinik überlappt; Kristalle ≠ Ausschluss Infekt
  - *Aktivierte Arthrose* — vorbekannte OA; bei Unsicherheit *refer*, nicht
    bagatellisieren
  - *Osteomyelitis / Spondylodiszitis* — Fieber + stärkster Schmerz, oft ohne
    massiven Gelenkerguss → ED/Arzt
  - *Bursitis / Zellulitis / reaktive Arthritis* — Weichteil- oder
    postinfektiöser Kontext — Differenzierung *ärztlich*
]

// ── D-RISC compact ─────────────────────────────────────────────
== Handlung / D-RISC

#styled-table(
  columns: (1.3fr, 0.3fr, 0.3fr, 0.35fr, 1.1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Situation],
    text(fill: white, weight: "bold", size: 8.5pt)[R],
    text(fill: white, weight: "bold", size: 8.5pt)[I],
    text(fill: white, weight: "bold", size: 8.5pt)[S],
    text(fill: white, weight: "bold", size: 8.5pt)[Handlung (C)],
  ),
  [Hot swollen joint + Fieber ≥ 38,5 °C + AZ-Abfall / Bewusstseinseintrübung;
    Kind mit Fieber + Gehverweigerung *und* Sepsis-Bild],
  [4], [1], [4],
  [*112 / pädiatrischer Notfall*, keine PT; Vitalzeichen],
  [Kind: Schonhaltung + Fieber *ohne* Sepsis-Bild],
  [3–4], [1], [3–4],
  [*Pädiatrische ED noch heute*; Stop am Gelenk],
  [Isoliertes heißes, sehr schmerzhaftes Gelenk; post-i.a./OP/Trauma; Hochrisiko
    ohne hohes Fieber],
  [3–4], [1], [3–4],
  [*ED / Facharzt noch heute* (binnen Stunden); Stop am Gelenk; `→ IV-4`],
  [Ärztlich gesicherter Ausschluss / abgelaufene Entzündung mit Verordnung;
    stabile OA ohne Überwärmung/Akutflags],
  [1], [3–4], [1–2],
  [Treat + Safety-Netting; bei neuer Überwärmung/Systemik *sofort re-triagieren*],
)

// ── Quiet notes ────────────────────────────────────────────────
#side-note(title: [Labor / Scores — keine Entwarnungs-Tools im DA])[
  Serum-CRP/Leukozyten schließen Infektion *nicht* aus; Punktion *ärztlich*.
  Kocher (Pädiatrie/Hüfte) braucht Labor; Original-PPV *nicht* als harte
  Screening-Wahrscheinlichkeit im adulten Direktzugang. *Kingella kingae*
  (\< 4 J.) oft mildes Bild. *Keine* erfundenen Cut-offs im Layout.
]

#memo(title: [Semantic Qualifiers])[
  monoartikulär vs. oligo-/poly · akut (Stunden–Tage) · hot swollen joint ·
  Non-weight-bearing / Functio laesa · purulente Synovitis / Empyem · hämatogen
  vs. postinterventionell · nativ vs. Prothese
]

// ── Verweise + Quellen ─────────────────────────────────────────
#section-break()

== Verweise

- Leitsymptom heißes Gelenk → `IV-4`
- Flaggen → `II-2`
- D-RISC → `II-1`

== Quellen

+ Wouthuyzen-Bakker M, et al. Guideline for management of septic arthritis in
  native joints (SANJO). *J Bone Jt Infect*. 2023;8:29–37.
  https://pmc.ncbi.nlm.nih.gov/articles/PMC9901514/ (Abruf: 2026-07-14).
+ Coakley G, et al. BSR guidelines for management of the hot swollen joint in
  adults. *Rheumatology (Oxford)*. 2006;45(8):1039–1041 (Abruf: 2026-07-14).
+ Woods CR, et al. PIDS/IDSA 2023 Guideline: Acute Bacterial Arthritis in
  Pediatrics. *J Pediatric Infect Dis Soc*. 2024 (Abruf: 2026-07-14).
+ Kocher MS, et al. Septic arthritis vs. transient synovitis of the hip in
  children. *J Bone Joint Surg Am*. 1999;81(12):1662–1670 (Abruf: 2026-07-14).
+ RKI. Sepsis.
  https://www.rki.de/DE/Themen/Infektionskrankheiten/Infektionskrankheiten-A-Z/S/Sepsis/Sepsis-node.html
  (Abruf: 2026-07-15).
+ S1: `content/dossiers/krankheitslehre/bakterielle-arthritis-facts.md`
  (`ready-for-human`, 2026-07-14).

#text(size: 8.5pt, fill: luma(80))[
  *Epi (kein Triage-Ersatz):* Inzidenz ca. 5,7/100.000/Jahr [Kaandorp 1997].
  Regensburg-Mortalität im S1 *Verify-Konflikt* — hier nicht unbestritten geführt.
  Lücken: keine DE-S3 native septische Arthritis; keine validierten
  PT-Direktzugang-Scores DE; kein CRP-Cut-off zum Ausschluss.
]

// ── Critical Claims (Audit) ────────────────────────────────────
#section-break()

== Critical Claims (Audit)

#text(size: 9pt, fill: luma(60))[
  Anhang / Audit-Tafel — *nicht* Handlungspfad. Claims unverändert aus Content
  (copy-through).
]

1. Akuter hot swollen joint mit Infektverdacht gilt bis ärztlichem Ausschluss als
   potenziell bakteriell → Stop Treat → Arzt/ED
2. Heißes Gelenk + Fieber ≥ 38,5 °C + deutliche AZ-Verschlechterung /
   Bewusstseinseintrübung / schwerer AZ-Abfall → *112*
3. Akutes heißes Mono-Gelenk + Non-weight-bearing / stärkster Ruheschmerz → ED
   noch heute
4. Heißes Gelenk nach i.a. Injektion / OP / Trauma → ED/Ortho noch heute
5. Kind: Schonhaltung + Fieber *mit* Sepsis-Bild → 112/päd. Notfall; *ohne*
   Sepsis-Bild → päd. ED noch heute
6. Hochrisiko (Dialyse, Immunsuppression) + heißes Gelenk → ED binnen Stunden,
   auch ohne hohes Fieber
7. Absolute KI: Manipulation/Traktion/Gelenkspiel, invasive Nähe, Probebehandlung,
   HP-Punktion
8. Kristallnachweis schließt bakterielle Infektion nicht aus (SANJO; Verify)
9. Serum-CRP/Leukozyten und Kocher-Original-PPV sind keine Entwarnungs-Tools im
   adulten Direktzugang
10. PT/HP nur nach ärztlich gesichertem Ausschluss bzw. passender stabiler
    MSK-Diagnose ohne Akutflags

#callout(title: [Human-in-the-loop], tone: "info")[
  Klinische Claims, Triage-Schwellen (112 vs. ED vs. binnen Stunden) und
  Verify-Konflikte (Regensburg-Mortalität, Kocher-PPV, Kristall-Claim,
  112-Formulierung) vor Publikation fachlich freigeben. Entwurf ≠ freigegebener
  Buchkanon.
]
