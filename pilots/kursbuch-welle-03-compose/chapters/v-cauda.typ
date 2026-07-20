// compose-chapter · creative-first
// catalog_version: 0.1.0 (preferred library, advisory)
// brief: domains/medical/briefs/v-cauda-equina.brief.md
// content: /home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-v-cauda-equina.md
// tools: bookkit, bookkit-didactics, fletcher 0.5.8, cetz 0.5.2, pilot visual.typ
// wave: 2026-07-welle-03-final-10 · v2 creative redesign

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "/pilots/kursbuch-welle-03-compose/lib/visual.typ": *

#chapter-opener(
  title: [Cauda-equina-Syndrom — Der MSK-Notfall, der nicht „warten darf“],
  lead: [Neue Reithosenanästhesie, Blasen-/Mastdarmstörung oder bilaterale progrediente Beinschwäche sind *kein* Kreuzschmerz-Auftrag — *112 / ED*.],
  number: "V-Cauda",
)

// ── Case Study FIRST (no diagnose spoil / no resolution) ───────
#clinical-case(
  title: [Erstkontakt — „Ischias / Bandscheibe mobilisieren“],
  anamnese: [
    46-jährige Patientin, heftige lumbale Schmerzen mit Ausstrahlung ins *linke*
    Bein seit gestern Nacht. Heute Morgen beim Toilettengang „anders“ abgewischt —
    „wie betäubt am Po“ (traut sich das zunächst nicht zu sagen). Wasserlassen
    *mühsam zu starten*; Blasenfüllung „weniger klar“. Beim Gehen Unsicherheit
    linkes Bein, rechts „auch irgendwie schwach“.
  ],
  befund: [
    *Red Herring:* Deutliche Schonhaltung, paravertebrale Verspannung und
    schmerzhaft eingeschränkte Vorneigung — wirkt wie akuter lumbaler Diskus mit
    Ischialgie.
  ],
  body: [
    *Setting:* Erstkontakt HP Physio / Direktzugang, Überweisungswunsch
    „Ischias / Bandscheibe mobilisieren“.

    #text(size: 9pt, fill: luma(80))[
      Keine Fall-Auflösung am Kapitelende (Content-Vorgabe).
    ]
  ],
)

// ── Gatekeeper after case ──────────────────────────────────────
#cave(title: [Gatekeeper — CES-Verdacht])[
  Das Cauda-equina-Syndrom (CES) ist eine *klinische Verdachtsdiagnose* des
  HP Physio — *kein* PT-Behandlungsauftrag. Jeder plausible Verdacht verlangt
  *sofortige* ärztliche Notfall-Bildgebung (MRT) und fachärztliche Abklärung.
  Bei Verdacht: *absolute PT-Kontraindikation* für lumbale Intervention.
  Aufgabe: erkennen → stoppen → *112 / ED* → Notfall-MRT / fachärztlich.
  Operative Sofort-Tabelle: `→ III-5-Cauda`.
]

// ── Illness Script as process pathway ──────────────────────────
#process-pathway(
  (
    [Enabling\ Wer / Risiko],
    [Insult\ Kompression],
    [Manifestation\ Flags],
  ),
  title: [Illness Script — Enabling → Insult → Manifestation],
  color: palette.danger,
)

#feature-grid(
  (
    (
      icon: [E],
      title: [Enabling — Wer],
      body: [
        Akuter massiver lumbaler BSV (klassischer Auslöser); Spinalkanalstenose
        (prädisponierend); spinales Trauma / spinale OP; *Antikoagulation* →
        Epiduralhämatom-Risiko; Tumoranamnese → Raumforderung / Metastase.
      ],
    ),
    (
      icon: [I],
      title: [Insult — Was],
      body: [
        Kompression lumbaler/sakraler Wurzeln unterhalb LWK 2 (typ. S2–S4):
        *afferent* → fehlender Füllungsdrang, perineale Hyp-/Anästhesie;
        *efferent* → Retention/Überlauf, Analatonie; motorisch → asymmetrische
        schlaffe Beinparesen.
      ],
    ),
    (
      icon: [M],
      title: [Manifestation — Wie],
      body: [
        Onset *perakut bis subakut* (Stunden–wenige Tage). Classic: bilaterale
        Beinsymptomatik + Reithosenanästhesie (S3–S5) + Blasenretention oder
        Überlauf ± Analatonie ± radikulärer Schmerz.
      ],
    ),
  ),
  column-count: 3,
)

// ── Big Picture + worst-case ───────────────────────────────────
#key-concept(term: [The Big Picture — CES])[
  Kompression oder Schädigung *mehrerer lumbosakraler Nervenwurzeln* unterhalb
  des Conus medullaris. Klinisch: *perianale / reithosenförmige*
  Sensibilitätsstörung + *Blasen- und/oder Mastdarm-Dysfunktion* + variable
  *asymmetrische, schlaffe Paresen* der unteren Extremität.

  *Kernmechanismus:* Mechanischer Druck (häufig massiver zentraler BSV L4/L5 oder
  L5/S1; auch Epiduralhämatom, Abszess, Tumor) — insbesondere *S2–S4* für
  Sphinkterfunktion — zerstört die sakrale Steuerung von Blase, Darm und
  perinealer Sensibilität.

  *Worst-Case bei Verkennung:* *permanente* Blasen-/Darminkontinenz,
  *irreversible* sexuelle Dysfunktion, persistierende Paraparese (Wurzeltod) bei
  verzögerter chirurgischer Dekompression. Exakte Dekompressions-Stundenfenster
  sind literaturdivergent und hier *nicht* als PT-Triagezahl gesetzt.

  *Sektorale Grenze:* Screening + Notfall-Triage — *keine* lumbale Intervention.
]

#text(size: 9pt, fill: luma(80))[
  Handlungsdetail (Sofort-Tabelle): `→ III-5-Cauda` · Leitsymptom-Flow Rücken +
  Neuro: `→ IV-2` · Entscheidungsrahmen D-RISC: `→ II-1`.
]

#memo(title: [Patientenerklärung (kurz)])[
  „Die Nerven am unteren Ende des Rückenmarkkanals steuern Blase, Darm und die
  Sensibilität am Damm. Wenn sie stark gequetscht werden, ist das ein
  *Notfalleingriff-Verdacht* — das klären wir *sofort* mit Notaufnahme und
  Bildgebung, nicht mit Physiotherapie.“
]

#callout(title: [Clinical-Reasoning-Brücke — warum absolute Stopp-Logik?], tone: "danger")[
  Jede Verzögerung durch „noch eine Technik“, „erst Hausarzt morgen“ oder
  Bagatellisierung als „nur Ischias“ kann den Übergang von *noch
  dekompressionsfähig* zu *irreversiblem Wurzelschaden* bedeuten. Deshalb *keine*
  lumbale Intervention und *kein* Abwarten bei Sattel-/Sphinkter-Flags.
]

// ── Safety Questions as cue-cluster ────────────────────────────
#cue-cluster(
  title: [Safety Questions — bei LWS obligat mitdenken],
  tone: "warning",
  (
    [Schwierigkeiten, das *Wasserlassen zu beginnen*, oder *Blasenfüllung* nicht mehr spüren?],
    [*Taubheitsgefühl* Gesäß / Damm / Genitalien (beim Abwischen)?],
    [*Unbemerkt Stuhl* abgegangen?],
    [*Rasch zunehmende Schwäche in beiden Beinen*?],
  ),
)

#memo(title: [Primat der Anamnese])[
  Patient:innen erwähnen das *Perineum oft nicht spontan*. Ohne gezielte Safety
  Questions bleibt die Reithosenanästhesie unentdeckt. Generischer
  Flaggen-/Systemreview: `→ II-2`.
]

// ── Manifestations poles ───────────────────────────────────────
=== Manifestations-Pole

#styled-table(
  columns: (0.55fr, 1.45fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Pol],
    text(fill: white, weight: "bold", size: 8.5pt)[Typische Zeichen],
  ),
  [*Dramatisch*],
  [Bilaterale Parese, komplette Sattelanästhesie, Harnverhalt, unbemerkt
    Stuhlabgang, Analatonie],
  [*Leitsymptom-Kern*],
  [Reithosen-/perineale Taubheit, Blasenstörung (Starten, Füllungsdrang, Überlauf),
    bilaterale oder progrediente Beinschwäche],
  [*Subtil / Früh*],
  [Unpräzise „Taubheit in den Beinen“, unilaterale dominante Ischialgie mit
    *beginnender* Sphinkterstörung, diskrete perineale Hypästhesie nur bei gezielter
    Frage],
  [*Trugschluss-Muster*],
  [Nachlassender Rückenschmerz *bei* zunehmender Taubheit/Parese → drohender
    Wurzeltod, *keine* Besserung],
)

// ── Objektiv screening (quiet) ─────────────────────────────────
=== Objektiv (handlungsleitend, nicht-invasiv)

- Orientierende *Sensibilität* inkl. Nachfrage/Mapping *S3–S5* (Reithose/Perineum)
- Grobe *Kraft* untere Extremität (bilateral vergleichen)
- *Muskeleigenreflexe* soweit im Setting sinnvoll

#text(size: 9pt, fill: luma(80))[
  *Nicht PT-Pflicht:* invasive Restharnmessung, rektale Sphinktertonus-Prüfung —
  ärztliches Notfall-Assessment. *Kein* Transport verzögern durch „noch
  vollständige Neuro-Status-Komplettierung“. Validierte hochsensitive
  PT-Screening-Scores zum CES-Ausschluss existieren *aktuell nicht* — Triage =
  klinische Red Flags. *Keine* fixen Restharn-ml-Schwellen als PT-Triage.
]

// ── Red-Flag triage = same as III-5 (urgency-lanes) ────────────
== Red-Flag-Tabelle — Dringlichkeit sichtbar

#text(size: 9pt)[
  Operative Handlungskarte im Detail: `→ III-5-Cauda`. Hier: Begründung +
  Anamnese + Setting-Grenzen — *gleiche Triage-Logik*.
]

#urgency-lanes(
  title: [Kriterium → Dringlichkeit → Aktion],
  (
    ([*Neue Reithosenanästhesie* (Perineum/Sattel/Genitalien)], [112 / ED sofort], "danger",
      [Stop PT; Notruf/Notaufnahme; Stichwort *Cauda-Verdacht*; Notfall-MRT / OP-Prüfung ärztlich — `→ III-5-Cauda`]),
    ([*Akute Blasen-/Darmstörung* (Harnverhalt, fehlender Drang, Inkontinenz, unbemerkt Stuhl)], [112 / ED sofort], "danger",
      [Wie oben; *kein* Abwarten auf HWI-Test; Blasenkatheter *ärztlich*]),
    ([*Analatonie / reduz. Rektaltonus* (falls bekannt/ärztlich; nicht PT-Pflicht)], [112 / ED sofort], "danger",
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
  Belege: AWMF 187-059 (2024) primär; AWMF 030-070 (2025) stützend; NVL
  Kreuzschmerz 2017 (abgelaufen) historisch stützend. *Keine* fixen Restharn-ml
  und *keine* Dekompressions-Stunden als PT-Triagezahl (S1-Wissenslücke /
  Quellenkonflikt).
]

// ── P1 / P2 / P3 decision diagram ──────────────────────────────
== HP-Sicherheits-Matrix (P1 / P2 / P3)

#decision-diagram({
  n-start((0, 0), [*LWS-Kontakt*\ Safety-Scan])
  e((0, 0), (0, 1))
  n-decision((0, 1), [Sattel / Blase /\ Darm / bilateral\ progredient?])
  e((0, 1), (-1.45, 2.15), lab: [Ja / unklar], side: left)
  e((0, 1), (1.45, 2.15), lab: [Nein], side: right)
  n-danger((-1.45, 2.15), [*P1*\ 112 / ED\ Stop PT · Absolute KI])
  n-decision((1.45, 2.15), [Unilateral\ progredient\ ohne CES?])
  e((1.45, 2.15), (0.55, 3.4), lab: [Ja], side: left)
  e((1.45, 2.15), (2.35, 3.4), lab: [Nein], side: right)
  n-warn((0.55, 3.4), [*P2*\ Arzt gleichtags\ keine HVT / lumbal])
  n-ok((2.35, 3.4), [*P3*\ Treat +\ Safety-Net])
})

#styled-table(
  columns: (0.45fr, 1.1fr, 1.1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Priorität],
    text(fill: white, weight: "bold", size: 8.5pt)[Kriterium],
    text(fill: white, weight: "bold", size: 8.5pt)[Handlung (C)],
  ),
  [🚨 *P1*],
  [Reithosenanästhesie; akute Harnretention/Inkontinenz/fehlender Drang;
    Analatonie; progrediente bilaterale Paresen; red-flag-nahe Unklarheit],
  [*112 / ED*, absolute Ruhe/Organisation, *keine* PT — `→ III-5-Cauda`],
  [⚕️ *P2*],
  [Akute unilaterale progrediente Monoradikulopathie *ohne* Sphinkter-/Sattel],
  [Stop bzw. keine lumbale Intervention; *gleichtags Arzt* / MRT-Indikation;
    Safety-Aufklärung CES],
  [👐 *P3*],
  [Unspezifischer Kreuzschmerz / stabile Reizung *ohne* neurogene Ausfälle;
    Safety negativ],
  [Symptomgeleitete PT im Scope; *klare* Red-Flag-Follow-up-Anweisung; bei neuem
    Flag *sofort 112 / ED*],
)

#styled-table(
  columns: (1.2fr, 0.35fr, 0.4fr, 0.35fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Situation],
    text(fill: white, weight: "bold", size: 8.5pt)[R],
    text(fill: white, weight: "bold", size: 8.5pt)[I],
    text(fill: white, weight: "bold", size: 8.5pt)[S],
    text(fill: white, weight: "bold", size: 8.5pt)[C (kurz)],
  ),
  [Sattel- und/oder Sphinkter-Flag ± bilaterale Progredienz],
  [4], [1], [4], [*112 / ED*],
  [Unilaterale progrediente Parese ohne Sattel/Sphinkter],
  [3], [1–2], [3], [Gleichtags Arzt, Stop lumbal],
  [Unspezifisch, Safety negativ],
  [1], [3–4], [1–2], [Treat + Safety-Netting],
)

// ── Red Herrings + DDx ─────────────────────────────────────────
#contrast-pairs(
  title: [Red Herrings — sieht aus wie / Notfall wenn],
  (
    ([„Taubheit in den Beinen“ / unpräzise Sensibilität], [Gezielt Perineum/Sattel/Genitalien → positiv = *112/ED*]),
    ([Stressinkontinenz / „einfacher HWI“], [Neu: Harnverhalt, fehlender Drang, Überlauf → *112/ED*, nicht nur Urologie-Bagatelle]),
    ([Dominante unilaterale Ischialgie], [+ Sattel- oder Sphinkterzeichen oder bilaterale Progredienz → CES-Notfall, nicht „nur Ischias“]),
    ([„Rücken besser, aber tauber“], [Nachlassender Schmerz *plus* zunehmende Taubheit/Parese → *nicht* als Besserung → *112/ED*]),
  ),
)

#ddx-box(title: [Differenzialdiagnosen — dangerous first])[
  - *CES* — reithosenförmig/perineal, Blasen-/Sphinkterstörung,
    asymmetrisch-schlaffe Beinparesen möglich, Onset Stunden–Tage, LWS-Kontext
  - *Konus-medullaris-Syndrom* — eher LWK 1–2; *symmetrischer*; rasche
    Sphinkterbeteiligung; zentrale Reflexsteigerung möglich
  - *Spinales Epiduralhämatom* — *perakut*, extrem schmerzhaft; oft
    *Antikoagulations*-Anamnese
  - *Spinaler Epiduralabszess* — *subakut*, systemisch/entzündlich; Fieber,
    starker lokaler Klopfschmerz
  - *Guillain-Barré (GBS)* — systemisch, aufsteigende meist *symmetrische*
    schlaffe Parese, Areflexie; *keine* isolierte typische Reithosenanästhesie
  - *A.-spinalis-anterior-Syndrom* — ischämisch, perakut; dissoziierte
    Empfindungsstörung
  - *Myelopathie* (z. B. HWS/BWS-Tumor) — Spastik, Pyramidenbahnzeichen; oft
    „oberhalb“ der LWS-Logik

  Algorithmus Rücken + Neuro: `→ IV-2`.
]

// ── Absolute KI ────────────────────────────────────────────────
#cave(title: [PT-Kontraindikationen bei CES-Verdacht — absolut])[
  - *Absolute* physiotherapeutische Kontraindikation für jedwede *lumbale
    Intervention*
  - *Keine* manuellen Manipulationen (HVT) oder *Traktionen* an der LWS
  - *Keine* mobilisierende Schmerztherapie, die den Notfalltransport verzögert
  - *Einzige* Aufgabe: Verdachtsschöpfung, Screening, sofortiger Abbruch,
    Notfall-Triage (Gatekeeper)
]

// ── SBAR handover ──────────────────────────────────────────────
#pull-quote(
  [„Patient/in mit akutem zentralem Lumbalschmerz. Neu aufgetretene
    Reithosenanästhesie sowie anamnestisch Blasenretention (Überlauf). Bilaterale
    asymmetrische, schlaffe Paraparese. Hochgradiger Verdacht auf
    Cauda-equina-Syndrom. Sofortige neurochirurgische Abklärung und Notfall-MRT
    LWS indiziert.“],
  attribution: [Übergabebeispiel SBAR-nah, verdichtet],
)

#memo(title: [Semantic Qualifiers (Doku & Kommunikation)])[
  *Reithosenanästhesie / Sattel* · *Harnretention / Überlauf* · *Analatonie*
  (ärztlich) · *Schlaffe Parese* (oft asymmetrisch) · *Bilateral progredient*
  · *Perakut / subakut* · *Wurzeltod-Trugschluss* (Schmerz↓ + Defizit↑) ·
  *Default-to-Danger*
]

// ── Quiet epi ──────────────────────────────────────────────────
#side-note(title: [Epidemiologie — nur Orientierung])[
  Isolierte nationale DE-Inzidenzdaten fehlen (S1-Wissenslücke). In chirurgischen
  Serien oft *unter 1 %* operativ behandelter BSV — Lehrwert, Populationsbezug DE
  ungesichert. Gatekeeper-Satz: *selten genug zum Übersehen, fatal genug zum
  Mitdenken.* Altersgipfel oft ca. 40–50 Jahre genannt — Sekundärangabe.
]

// ── Verweise + Quellen ─────────────────────────────────────────
#section-break()

== Master- & Pfad-Verweise

- Handlungskarte Erstkontakt (Sofort-Tabelle) → `III-5-Cauda`
- Leitsymptom Rückenschmerz / Neuro → `IV-2`
- Entscheidungsrahmen D-RISC → `II-1`
- Flaggen / Systemreview → `II-2`
- BLS / Notrufschema → `III-2`

== Quellen

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
+ NICE. Cauda equina syndrome. CKS. URL:
  https://cks.nice.org.uk/topics/cauda-equina-syndrome/ (Abruf: 2026-07-14).
+ S1-Dossier: `content/dossiers/krankheitslehre/cauda-equina-syndrom-facts.md`
  (Status `ready-for-human`, 2026-07-14).

// ── Critical Claims (Audit) ────────────────────────────────────
#section-break()

== Critical Claims (Audit)

#text(size: 9pt, fill: luma(60))[
  Anhang / Audit-Tafel — *nicht* Handlungspfad. Claims unverändert aus Content
  (copy-through).
]

1. CES = klinische Verdachtsdiagnose im HP-Physio-Scope; zwingend Notfall-MRT +
   fachärztliche Abklärung — *kein* PT-Behandlungsauftrag → *112 / ED*
2. Neue Reithosenanästhesie (Perineum/Sattel/Genitalien) → *112 / ED sofort*,
   Notfall-MRT/OP-Prüfung
3. Akute Blasen-/Darmstörung → *112 / ED*; *keine* fixen Restharn-ml als
   PT-Triage
4. Bilaterale, rasch progrediente Beinschwäche → *112 / ED*
5. Analatonie / reduz. Rektaltonus → *112 / ED* (ärztlich; nicht PT-Pflicht)
6. Bei CES-Verdacht: *absolute* PT-KI für HVT/Traktion/lumbale Intervention; nur
   Screening + Notfall-Triage
7. Unilaterale progrediente Monoradikulopathie *ohne* Sattel/Sphinkter →
   gleichtags Arzt/MRT-Indikation, *nicht* 112-Default
8. Validierte PT-Scores zum sicheren CES-Ausschluss existieren nicht; Triage =
   klinische Red Flags
9. Worst-Case: permanente Blasen-/Darminkontinenz, sexuelle Dysfunktion,
   persistierende Paraparese; Dekompressions-h literaturdivergent — *nicht* als
   PT-Triagezahl
10. Schmerz↓ + Taubheit/Parese↑ ist *kein* Therapieerfolg (Wurzeltod-Trugschluss)

#callout(title: [Human-in-the-loop], tone: "info")[
  Klinische Claims und Triage-Schwellen vor Publikation fachlich freigeben.
  Restharn-ml und Dekompressions-Zeitfenster bewusst *nicht* als harte PT-Zahlen
  gesetzt. DE-Inzidenz/Altersgipfel nur Orientierungs-/Lehrwerte. Entwurf ≠
  freigegebener Buchkanon.
]
