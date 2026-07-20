// compose-chapter
// catalog_version: 0.1.0-dev
// brief: domains/medical/briefs/iii5-cauda-notfallkarte.brief.md
// feasibility: domains/medical/briefs/iii5-cauda-notfallkarte.feasibility.md
// accept: domains/medical/briefs/iii5-cauda-notfallkarte.accept.md
// content: /home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-iii5-cauda-notfallkarte.md
//
// Wave 4.3 production pilot compose (III-5 notfall-karte).
// Claims: copy-through from content SoT — no clinical paraphrase.
// Forms: stable catalog + BASIS only; S4 uses named approx (protocol-steps gap).

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *

// ── S0 Opener ──────────────────────────────────────────────────
#chapter-opener(
  title: [Cauda equina — Handlungskarte Erstkontakt (MSK-vital)],
  lead: [Handlungskarte · Erstkontakt MSK / PT-Praxis · Kursbuch III-5],
  number: "III-5",
)

// ── S1 Gatekeeper (F1) — early, first catalog form after opener ─
#cave(title: [Gatekeeper — CES-Verdacht])[
  Klinischer Verdacht auf Cauda-equina-Syndrom (CES) ist ein
  *neurochirurgischer Notfall*. *Absolute PT-Kontraindikation* für lumbale
  Intervention. Aufgabe: erkennen → stoppen → *112 / ED* → Notfall-MRT /
  fachärztliche Abklärung. Illness Script & Detail: `→ V-Cauda`.
]

// ── S2 Erkennungs-Trigger + Safety Questions (F2, approx) ──────
#callout(title: [Erkennungs-Trigger (5–10 Sekunden)], tone: "warning")[
  - *Neue Reithosenanästhesie* — Taubheit Perineum / Sattel / Genitalien
    (oft nur nach gezielter Frage)
  - *Akute Blasenstörung* — Harnverhalt, fehlender Füllungsdrang,
    Überlauf-/Inkontinenz
  - *Mastdarmstörung* — unbemerkt Stuhlabgang, neu fehlende Kontrolle
  - *Bilaterale, rasch progrediente Beinschwäche* (asymmetrisch möglich)
  - Kontext: akuter massiver LWS-Schmerz/Ischialgie, Trauma/OP spinal,
    Antikoagulation, Tumoranamnese

  *Safety Questions (bei LWS-Kontakt obligat mitdenken):*
  - Wasserlassen starten / Blasenfüllung spüren?
  - Taubheit Gesäß/Damm/Genitalien (Abwischen)?
  - Unbemerkt Stuhl?
  - Rasch zunehmende Schwäche *beider* Beine?
]

// ── S3 Handlungstabelle (F3) ───────────────────────────────────
== Handlungstabelle

#styled-table(
  columns: (1.3fr, 0.7fr, 1.2fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Kriterium (Beobachtung/Angabe)],
    text(fill: white, weight: "bold", size: 8.5pt)[Dringlichkeit],
    text(fill: white, weight: "bold", size: 8.5pt)[Aktion],
  ),
  [*Neue Reithosenanästhesie* (Perineum/Sattel/Genitalien)],
  [*112 / ED sofort*],
  [Behandlung stoppen; Notruf bzw. sofortige Notaufnahme; Stichwort
    *Cauda-Verdacht*; Notfall-MRT / OP-Prüfung ärztlich],
  [*Akute Blasen-/Darmstörung* (Harnverhalt, fehlender Drang, Inkontinenz,
    unbemerkt Stuhl)],
  [*112 / ED sofort*],
  [Wie oben; *kein* Abwarten auf „HWI-Test“; Blasenkatheter *ärztlich*],
  [*Analatonie / reduzierter Rektaltonus* (wenn bekannt/ärztlich erhoben;
    nicht PT-Pflicht)],
  [*112 / ED sofort*],
  [Notfall-MRT, neurolog. Notfall-Assessment],
  [*Bilaterale, rasch progrediente Beinschwäche*],
  [*112 / ED sofort*],
  [Notaufnahme; keine weiteren PT-Tests, die den Transport verzögern],
  [*Kombination* Sattel- und/oder Sphinkter-Zeichen ± bilaterale Parese],
  [*112 / ED sofort*],
  [*Default-to-Danger* — ein Flag reicht; kein „erst noch mobilisieren“],
  [Akute *unilaterale* progrediente Monoradikulopathie (Kraftverlust/Taubheit)
    *ohne* Sattel-/Sphinkterzeichen],
  [*Heute Arzt / gleichtags*],
  [Keine lumbale Intervention bis ärztliche Abklärung/MRT-Indikation;
    Safety-Aufklärung CES-Flags],
  [Unspezifischer Kreuzschmerz, *keine* neurogenen Ausfälle, Safety-Fragen
    negativ],
  [*PT / ambulant möglich*],
  [Behandeln nur mit *klaren Red-Flag-Follow-up-Anweisungen*; bei neuem Flag
    → sofort 112/ED],
  [Unklar, aber red-flag-nah (vage perineale Taubheit, unklare Blase,
    „irgendwie beides“)],
  [*Default-to-Danger*],
  [*112 / ED*, nicht „abwarten und weiter behandeln“],
)

#text(size: 8.5pt, fill: luma(80))[
  Handlungsschwellen laut S1 `cauda-equina-syndrom-facts.md` §7 / §9
  (AWMF 187-059, AWMF 030-070; NVL Kreuzschmerz 2017 historisch stützend).
  *Keine* fixen Restharn-ml-Schwellen und *keine* Dekompressions-Stunden als
  PT-Triagezahl (S1: Wissenslücke / Quellenkonflikt).
]

// ── S4 Sofortmaßnahmen (F4, approx protocol-steps) ─────────────
== Sofortmaßnahmen vor Ort (nur Organisation / Erste Hilfe)

#callout(title: [Protokoll — Reihenfolge einhalten], tone: "danger")[
  + Therapie *sofort abbrechen* — *keine* HVT/Manipulation, *keine* Traktion,
    *keine* mobilisierende LWS-Technik
  + Patient *nicht* aufstehen/gehen lassen, wenn Schwäche oder Blasennot;
    ruhig lagern, überwachen
  + *112* bzw. organisierten ED-Transport; Übergabe: Sattel/Blase/Darm/Beinkraft,
    Zeitverlauf, Antikoagulation/OP/Trauma
  + Orientierende *nicht-invasive* Prüfung nur soweit sie den Transport *nicht*
    verzögert (Sensibilität inkl. S3–S5-Frage, grobe Kraft, MER) — *keine*
    invasive Restharnmessung / Sphinkterprüfung als PT-Pflicht
  + Bei Kollaps/Bewusstseinsstörung: BLS-Pfad `→ III-2`
  + *Keine* Eigen-Medikation, *kein* „Schmerz wegmassieren“, *kein* Termin
    „morgen früh, wenn es schlimmer wird“ bei Sattel-/Sphinkter-Flag
]

// ── S5 Verwechslungen (F5) ─────────────────────────────────────
#ddx-box(title: [Häufige Verwechslungen (kurz)])[
  - *„Taubheit in den Beinen“ / unpräzise Sensibilität* → Gezielt
    Perineum/Sattel/Genitalien → positiv = *112/ED*
  - *Stressinkontinenz / „einfacher HWI“* → Neu: Harnverhalt, fehlender Drang,
    Überlauf → *112/ED*, nicht nur Urologie-Bagatelle
  - *Dominante unilaterale Ischialgie* → + Sattel- oder Sphinkterzeichen oder
    bilaterale Progredienz → CES-Notfall, nicht „nur Ischias“
  - *„Rücken besser, aber tauber“* → Nachlassender Schmerz *plus* zunehmende
    Taubheit/Parese → *nicht* als Besserung werten → *112/ED*

  DDx-Detail (Konus, Epiduralhämatom/-abszess, GBS, …): `→ V-Cauda` ·
  Algorithmus Rückenschmerz/Neuro: `→ IV-2`.
]

// ── S6 Master- & Pfad-Verweise (F6, quiet) ─────────────────────
#section-break()

== Master- & Pfad-Verweise

- Illness Script / Detail (Master) → `V-Cauda`
- Leitsymptom Rückenschmerz / Neuro → `IV-2`
- BLS / Notrufschema → `III-2`
- Entscheidungsrahmen D-RISC → `II-1`

// ── S7 Quellen (F7, trailing) ──────────────────────────────────
== Quellen (minimal)

+ DGOU. S2k-Leitlinie Spezifischer Kreuzschmerz (AWMF 187-059). 2024. URL:
  https://register.awmf.org/assets/guidelines/187-059l_S2k_Spezifischer-Kreuzschmerz_2024-08.pdf
  (Abruf: 2026-07-14).
+ AWMF. S3-Leitlinie Diagnostik und Therapie der akuten Querschnittlähmung
  (030-070l). 2025. URL:
  https://register.awmf.org/assets/guidelines/030-070l_S3_Diagnostik-Therapie-akuten-Querschnittlaehmung_2025-04.pdf
  (Abruf: 2026-07-14).
+ BÄK, KBV, AWMF. NVL Nicht-spezifischer Kreuzschmerz. 2. Aufl. 2017
  (abgelaufen). URL:
  https://register.awmf.org/assets/guidelines/nvl-007l_S3_Kreuzschmerz_2017-03-abgelaufen.pdf
  (Abruf: 2026-07-14).
+ S1-Dossier: `content/dossiers/krankheitslehre/cauda-equina-syndrom-facts.md`
  (Status `ready-for-human`).

// ── S8 Critical Claims (Audit appendix — copy-through) ─────────
#section-break()

== Critical Claims (Audit)

#text(size: 9pt, fill: luma(60))[
  Anhang / Audit-Tafel — *nicht* Handlungspfad. Claims unverändert aus Content
  (copy-through).
]

1. Neue Reithosenanästhesie (Perineum/Sattel/Genitalien) → *112 / ED sofort*,
   Notfall-MRT/OP-Prüfung
2. Akute Blasen-/Darmstörung (Harnverhalt, fehlender Drang, Inkontinenz) →
   *112 / ED*; keine ml-Restharn-Schwelle als PT-Triage
3. Bilaterale, rasch progrediente Beinschwäche → *112 / ED*
4. Bei CES-Verdacht: *absolute* PT-KI für HVT/Traktion/lumbale Intervention;
   nur Screening + Notfall-Triage
5. Unilaterale progrediente Monoradikulopathie *ohne* Sattel/Sphinkter →
   gleichtags Arzt/MRT-Indikation, *nicht* 112-Default
6. Schmerzrückgang bei zunehmender Taubheit/Parese ist *kein* Besserungszeichen
   (Wurzeltod-Trugschluss) → Notfall-Pfad

#callout(title: [Human-in-the-loop], tone: "info")[
  Klinische Claims und Triage-Schwellen vor Publikation fachlich freigeben.
  Restharn-ml und Dekompressions-Zeitfenster bewusst *nicht* als harte PT-Zahlen
  gesetzt (S1-Wissenslücke/Quellenkonflikt). Sphinktertonus-Prüfung und invasive
  Diagnostik bleiben ärztlich.
]
