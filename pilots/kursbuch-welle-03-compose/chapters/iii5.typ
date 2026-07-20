// compose-chapter · creative-first
// catalog_version: 0.1.0 (preferred library, advisory)
// brief: domains/medical/briefs/iii5-cauda-notfallkarte.brief.md
// content: /home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-iii5-cauda-notfallkarte.md
// tools: bookkit, bookkit-didactics, fletcher 0.5.8, cetz 0.5.2, pilot visual.typ
// wave: 2026-07-welle-03-final-10 · v2 creative redesign

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "/pilots/kursbuch-welle-03-compose/lib/visual.typ": *

#chapter-opener(
  title: [Cauda equina — Handlungskarte Erstkontakt (MSK-vital)],
  lead: [Handlungskarte · Stop → Erkennen → 112/ED · Kursbuch III-5],
  number: "III-5",
)

// F1 Gatekeeper
#cave(title: [Gatekeeper — CES-Verdacht = Notfall + Stop])[
  Klinischer Verdacht auf Cauda-equina-Syndrom (CES) ist ein
  *neurochirurgischer Notfall*. *Absolute PT-Kontraindikation* für lumbale
  Intervention. Aufgabe: erkennen → stoppen → *112 / ED* → Notfall-MRT /
  fachärztliche Abklärung. Illness Script & Detail: `→ V-Cauda`.
]

// Visual: ideal action path as pathway (not a bullet wall)
#process-pathway(
  (
    [Erkennen\ (Trigger)],
    [Stop\ Intervention],
    [112 / ED\ sofort],
    [Übergabe\ Stichworte],
    [MRT / Fach-\ arzt],
  ),
  title: [Handlungspfad unter Stress (Scan < 10 s)],
  color: palette.danger,
)

// F2 Recognition
== Erkennungs-Trigger (5–10 Sekunden)

#cue-cluster(
  title: [Kern-Trigger — scannen, nicht lesen],
  tone: "danger",
  (
    [*Neue Reithosenanästhesie* — Taubheit Perineum / Sattel / Genitalien (oft nur nach gezielter Frage)],
    [*Akute Blasenstörung* — Harnverhalt, fehlender Füllungsdrang, Überlauf-/Inkontinenz],
    [*Mastdarmstörung* — unbemerkt Stuhlabgang, neu fehlende Kontrolle],
    [*Bilaterale, rasch progrediente Beinschwäche* (asymmetrisch möglich)],
    [Kontext: massiver LWS-Schmerz/Ischialgie, Trauma/OP spinal, Antikoagulation, Tumoranamnese],
  ),
)

#callout(title: [Safety Questions — bei LWS-Kontakt obligat mitdenken], tone: "warning")[
  - Wasserlassen starten / Blasenfüllung spüren?
  - Taubheit Gesäß/Damm/Genitalien (Abwischen)?
  - Unbemerkt Stuhl?
  - Rasch zunehmende Schwäche *beider* Beine?
]

// F3 Triage — urgency lanes (not flat equal table)
== Handlungstabelle — Dringlichkeit sichtbar

#urgency-lanes(
  title: [Kriterium → Dringlichkeit → Aktion],
  (
    ([*Neue Reithosenanästhesie* (Perineum/Sattel/Genitalien)], [112 / ED sofort], "danger",
      [Behandlung stoppen; Notruf/Notaufnahme; Stichwort *Cauda-Verdacht*; Notfall-MRT / OP-Prüfung ärztlich]),
    ([*Akute Blasen-/Darmstörung* (Harnverhalt, fehlender Drang, Inkontinenz, unbemerkt Stuhl)], [112 / ED sofort], "danger",
      [Wie oben; *kein* Abwarten auf „HWI-Test“; Blasenkatheter *ärztlich*]),
    ([*Analatonie / reduz. Rektaltonus* (falls bekannt; nicht PT-Pflicht)], [112 / ED sofort], "danger",
      [Notfall-MRT, neurolog. Notfall-Assessment]),
    ([*Bilaterale, rasch progrediente Beinschwäche*], [112 / ED sofort], "danger",
      [Notaufnahme; keine verzögernden PT-Tests]),
    ([*Kombination* Sattel ± Sphinkter ± bilaterale Parese], [Default-to-Danger], "danger",
      [*Ein Flag reicht* — kein „erst noch mobilisieren“ → 112/ED]),
    ([Akute *unilaterale* progrediente Monoradikulopathie *ohne* Sattel/Sphinkter], [Heute Arzt], "warning",
      [Keine lumbale Intervention bis ärztliche Abklärung/MRT-Indikation; Safety-Aufklärung CES-Flags]),
    ([Unspezifischer Kreuzschmerz, *keine* neurogenen Ausfälle, Safety negativ], [PT möglich], "success",
      [Behandeln nur mit *klaren Red-Flag-Follow-up-Anweisungen*; bei neuem Flag → 112/ED]),
    ([Unklar, red-flag-nah (vage perineale Taubheit, unklare Blase)], [Default-to-Danger], "danger",
      [*112 / ED*, nicht „abwarten und weiter behandeln“]),
  ),
)

#text(size: 8.5pt, fill: luma(80))[
  Handlungsschwellen laut S1 `cauda-equina-syndrom-facts.md` §7 / §9
  (AWMF 187-059, AWMF 030-070; NVL Kreuzschmerz 2017 historisch stützend).
  *Keine* fixen Restharn-ml-Schwellen und *keine* Dekompressions-Stunden als
  PT-Triagezahl (S1: Wissenslücke / Quellenkonflikt).
]

// Decision tree
== Entscheidungsbaum (Erstkontakt)

#decision-diagram({
  n-start((0, 0), [*LWS-Kontakt*])
  e((0, 0), (0, 1))
  n-decision((0, 1), [Sattel / Blase /\ Darm / bilateral\ progredient?])
  e((0, 1), (-1.35, 2.1), lab: [Ja / unklar], side: left)
  e((0, 1), (1.35, 2.1), lab: [Nein], side: right)
  n-danger((-1.35, 2.1), [*112 / ED*\ Stop PT\ Absolute KI LWS])
  n-decision((1.35, 2.1), [Unilateral\ progredient\ ohne CES?])
  e((1.35, 2.1), (0.55, 3.3), lab: [Ja], side: left)
  e((1.35, 2.1), (2.15, 3.3), lab: [Nein], side: right)
  n-warn((0.55, 3.3), [Arzt gleichtags\ keine HVT])
  n-ok((2.15, 3.3), [Treat +\ Safety-Net])
})

// F4 Protocol
== Sofortmaßnahmen vor Ort (Organisation / Erste Hilfe)

#vertical-flow(
  title: [Protokoll — Reihenfolge einhalten],
  tone: "danger",
  (
    [Therapie *sofort abbrechen* — *keine* HVT/Manipulation, *keine* Traktion, *keine* mobilisierende LWS-Technik],
    [Patient *nicht* aufstehen/gehen lassen bei Schwäche oder Blasennot; ruhig lagern, überwachen],
    [*112* bzw. organisierten ED-Transport; Übergabe: Sattel/Blase/Darm/Beinkraft, Zeitverlauf, Antikoagulation/OP/Trauma],
    [Orientierende *nicht-invasive* Prüfung nur soweit Transport *nicht* verzögert — *keine* invasive Restharnmessung / Sphinkterprüfung als PT-Pflicht],
    [Bei Kollaps/Bewusstseinsstörung: BLS-Pfad `→ III-2`],
    [*Keine* Eigen-Medikation, *kein* „Schmerz wegmassieren“, *kein* Termin „morgen früh“ bei Sattel-/Sphinkter-Flag],
  ),
)

// F5 DDx
== Häufige Verwechslungen (kurz)

#contrast-pairs(
  (
    ([„Taubheit in den Beinen“ / unpräzise Sensibilität], [Gezielt Perineum/Sattel/Genitalien → positiv = *112/ED*]),
    ([Stressinkontinenz / „einfacher HWI“], [Neu: Harnverhalt, fehlender Drang, Überlauf → *112/ED*, nicht nur Urologie-Bagatelle]),
    ([Dominante unilaterale Ischialgie], [+ Sattel- oder Sphinkterzeichen oder bilaterale Progredienz → CES-Notfall, nicht „nur Ischias“]),
    ([„Rücken besser, aber tauber“], [Nachlassender Schmerz *plus* zunehmende Taubheit/Parese → *nicht* als Besserung → *112/ED*]),
  ),
)

#text(size: type-scale.small, fill: palette.text-muted)[
  DDx-Detail (Konus, Epiduralhämatom/-abszess, GBS, …): `→ V-Cauda` · Algorithmus Rückenschmerz/Neuro: `→ IV-2`.
]

#section-break()

== Master- & Pfad-Verweise

- Illness Script / Detail (Master) → `V-Cauda`
- Leitsymptom Rückenschmerz / Neuro → `IV-2`
- BLS / Notrufschema → `III-2`
- Entscheidungsrahmen D-RISC → `II-1`

== Quellen (minimal)

+ DGOU. S2k-Leitlinie Spezifischer Kreuzschmerz (AWMF 187-059). 2024.
+ AWMF. S3-Leitlinie Diagnostik und Therapie der akuten Querschnittlähmung (030-070l). 2025.
+ BÄK, KBV, AWMF. NVL Nicht-spezifischer Kreuzschmerz. 2. Aufl. 2017 (abgelaufen).
+ S1-Dossier: `content/dossiers/krankheitslehre/cauda-equina-syndrom-facts.md`

#section-break()

== Critical Claims (Audit)

#text(size: 9pt, fill: luma(60))[
  Anhang / Audit-Tafel — *nicht* Handlungspfad. Claims copy-through aus Content.
]

1. Neue Reithosenanästhesie (Perineum/Sattel/Genitalien) → *112 / ED sofort*, Notfall-MRT/OP-Prüfung
2. Akute Blasen-/Darmstörung (Harnverhalt, fehlender Drang, Inkontinenz) → *112 / ED*; keine ml-Restharn-Schwelle als PT-Triage
3. Bilaterale, rasch progrediente Beinschwäche → *112 / ED*
4. Bei CES-Verdacht: *absolute* PT-KI für HVT/Traktion/lumbale Intervention; nur Screening + Notfall-Triage
5. Unilaterale progrediente Monoradikulopathie *ohne* Sattel/Sphinkter → gleichtags Arzt/MRT-Indikation, *nicht* 112-Default
6. Schmerzrückgang bei zunehmender Taubheit/Parese ist *kein* Besserungszeichen (Wurzeltod-Trugschluss) → Notfall-Pfad

#callout(title: [Human-in-the-loop], tone: "info")[
  Klinische Claims und Triage-Schwellen vor Publikation fachlich freigeben.
  Restharn-ml und Dekompressions-Zeitfenster bewusst *nicht* als harte PT-Zahlen gesetzt.
]
