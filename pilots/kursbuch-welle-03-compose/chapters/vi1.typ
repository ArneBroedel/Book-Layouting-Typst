// compose-chapter · creative-first
// catalog_version: 0.1.0 (preferred library, advisory)
// brief: domains/medical/briefs/vi1-geriatrie.brief.md
// content: /home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-vi1-geriatrie.md
// tools: bookkit, bookkit-didactics, fletcher 0.5.8, cetz 0.5.2, pilot visual.typ
// wave: 2026-07-welle-03-final-10 · v2 creative redesign
// Claims: copy-through from content SoT — no clinical paraphrase.
// NO invented score cut-offs.

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "/pilots/kursbuch-welle-03-compose/lib/visual.typ": *

#chapter-opener(
  title: [Geriatrie],
  lead: [Multimorbidität, Frailty und atypische Präsentation — Screening und Treat-vs-Refer *ändern* sich, die Gefahr wird *nicht* weicher. · Populations-Gatekeeper · Kursbuch VI-1],
  number: "VI-1",
)

// ── Early cave ─────────────────────────────────────────────────
#cave(title: [Gatekeeper — Vulnerabilität, nicht Lebensjahre])[
  Geriatrische Patient:innen sind durch *Vulnerabilität und Funktionsverlust*
  definiert, nicht nur durch Lebensjahre. Akute Verwirrtheit, Sturz mit
  Trauma-Risiko und plötzlicher Funktionsknick sind *keine* „altersbedingte
  Normalität“ — sie sind *Triage-Trigger*.
]

// ── Lernziele ──────────────────────────────────────────────────
#learning-objectives(
  title: [Lernziele],
  items: (
    [den *populationsspezifischen Screen* (Delir, Sturz, Infekt-/Medikamenten-Kontext) im Erstkontakt priorisieren],
    [*Red Flags* der Geriatrie als *Kriterium → Dringlichkeit → Aktion* anwenden (nicht abschwächen)],
    [typische *Red Herrings* (Delir als „Demenz-Progress“, Sturz als reines MSK) vermeiden],
    [*Scope-Grenzen* benennen: Diagnostik/Ursachensuche und medikamentöse Steuerung sind *ärztlich*; PT nur bei stabilem Muster ohne RF],
    [bei passenden Präsentationen *verlinken* statt Illness-Scripts neu zu schreiben (`→ II-1`, `→ III-2`, Leitsymptom-/Systemkapitel)],
  ),
)

// ── Scope comparison ───────────────────────────────────────────
== Scope & Grenzen

#comparison-table(
  headers: ([Darf / soll HP Physio], [Nicht (→ verweisen)]),
  rows: (
    (
      [Gatekeeper-Screen: plötzlich verwirrt? neue Medikamente? Infektzeichen? Sturzhergang? Antikoagulation?],
      [Ursache des Delirs klären (Infekt/Metabolik/Medikamente) — *ärztlich / ED*],
    ),
    (
      [Treat-vs-Refer bei Gangunsicherheit, Sturzangst, Sarkopenie *ohne* RF-Cluster],
      [Frakturausschluss, Bildgebung, Antikoagulations-Management],
    ),
    (
      [Safety-Netting, interprofessionelle Koordination bei chronischen Entitäten ohne Akut-RF],
      [Fordernde Belastungs-/High-Load-Programme bei Delir oder akuter Instabilität],
    ),
    (
      [Erkennen: Frailty/Delir/Sturz als *Syndrome* mit gefährlicher DDx (Schlaganfall, ACS, LE, Sepsis, Fraktur)],
      [Demenz-Diagnose stellen oder Delir als „Demenz-Progress“ abtun],
    ),
    (
      [Assessment *orientierend* benennen (z. B. TUG, Tinetti, geriatrisches Basisassessment als *ärztlich/team* gebräuchlich)],
      [Score-Schwellen und Cut-offs als PT-Ausschlussregeln — *Quelle fehlt / S1-Lücke* (keine Epi-/Score-Erfindung)],
    ),
  ),
)

#text(size: 8.5pt, fill: luma(80))[
  *Nicht in diesem Kapitel:* Vollscripts zu Demenz, TVT/LE, Schlaganfall, Sepsis —
  nur Verweise. Immobilitätsfolgen-Cluster → `→ VI-2 (geplant)`.
]

// ── Big Picture ────────────────────────────────────────────────
== Big Picture (populationsspezifisch)

#key-concept(term: [Populationsdefinition & Denkhaltung])[
  Geriatrische Patient:innen sind durch *Multimorbidität*, *funktionelle
  Einschränkungen* und *erhöhte Vulnerabilität* definiert — nicht allein durch
  kalendarisches Alter. Typisch ist eine *schleichende, unspezifische, oft
  maskierte oder symptomverschobene* Präsentation.

  *Worst-Case bei Verkennung:* übersehenes Delir bei Urosepsis; Femurfraktur nach
  Sturz; Polypharmazie-Kaskade. Weniger physiologischer Puffer → Screening muss
  *strenger* sein als beim gesunden jüngeren MSK-Patienten, nicht nachsichtiger.

  *Default-to-Danger:* unklare akute Änderung bei älteren Patient:innen → zuerst
  R/S entkräften (`→ II-1`), dann Treat.
]

#styled-table(
  columns: (0.55fr, 1.45fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Achse],
    text(fill: white, weight: "bold", size: 8.5pt)[Inhalt (populationsbezogen, kein System-Master)],
  ),
  [*Enabling*],
  [Alter, Multimorbidität, Polypharmazie, sensorische Defizite, soziale Isolation],
  [*Insult*],
  [Frailty / Delir / Sturz als Syndrome],
  [*Manifestationen*],
  [Gangunsicherheit, Sarkopenie, akute fluktuierende Verwirrtheit, ADL-Verlust],
  [*Onset*],
  [Frailty *schleichend*; Delir *akut Stunden–Tage*],
)

// ── Safety-Fragen as cue-cluster ───────────────────────────────
== Screening-Fokus / Red Flags

=== Safety-Fragen (Erstkontakt)

#cue-cluster(
  title: [Safety-Fragen — scannen, nicht abhaken-lesen],
  tone: "warning",
  (
    [Plötzlich *verwirrt* / Aufmerksamkeit fluktuierend?],
    [*Medikamente neu* oder Dosis geändert (Polypharmazie-Kontext)?],
    [*Infektzeichen* (Fieber, Harnwegssymptome, allgemeiner Funktionsknick)?],
    [*Sturzhergang* (Trauma, Kopf, Belastungsunfähigkeit)?],
    [*Antikoagulation* / Blutungsrisiko nach Sturz?],
  ),
)

// ── RF table as urgency-lanes with SPLIT ───────────────────────
=== Red-Flag-Tabelle (operational, nur S1)

#text(size: 8pt, fill: luma(80))[
  Datenetikett RF: *[geriatrie | curated+AMBOSS | 2026-07-15]* — *SPLIT* Dringlichkeit
  je Zeile (keine gebündelte Ampel).
]

#urgency-lanes(
  title: [Kriterium → Dringlichkeit → Aktion (SPLIT)],
  (
    (
      [*Akute Verwirrtheit / fluktuierende Aufmerksamkeit* (Delir-Muster)],
      [gleichtags–ED],
      "warning",
      [Stop fordernder PT; *ärztliche* Ursachensuche (Infekt/Metabolik/Medikamente); Delir ist *kein* „Demenz-Progress“],
    ),
    (
      [*Sturz + SHT-Risiko / Antikoagulation*],
      [112 / ED],
      "danger",
      [Blutung/Trauma-Pfad; keine „MSK-only“-Behandlung],
    ),
    (
      [*Unfähigkeit zu belasten nach Sturz (Hüfte)*],
      [ED],
      "warning",
      [Frakturverdacht; keine Belastungstherapie],
    ),
    (
      [*Fieber / Harnwegssymptome + Funktionsknick*],
      [gleichtags Arzt],
      "warning",
      [Urosepsis-Risiko mitdenken; nicht als „Altersschwäche“ abtun],
    ),
    (
      [*Akutes neurologisches Defizit / Vigilanzminderung / Schlaganfall-Muster*],
      [112 / ED],
      "danger",
      [Stop PT; Notfallpfad `→ III-2`; Schlaganfall-Systempfade `→ IV-6 (geplant)` / `→ V-4 (geplant)`],
    ),
  ),
)

#callout(title: [Zusätzliche AMBOSS-Warnsignale (ohne eigene Schwellen erfinden)], tone: "info")[
  Sturz mit Frakturzeichen, Dyspnoe, akute Schwäche — bei diesen Mustern
  *System-Notfall-/Leitsymptom-Pfade* öffnen (siehe Präsentations-Verweise), nicht
  „warten und beobachten“.
]

// ── Red Herrings as contrast-pairs ─────────────────────────────
=== Red Herrings (MSK-Maskierungen)

#contrast-pairs(
  title: [Sieht aus wie … / Notfall-Pfad wenn …],
  (
    (
      [Delir als „Demenz-Progress“ / „ist immer so“],
      [Akute fluktuierende Verwirrtheit → *gleichtags–ED*; Ursachensuche Infekt/Metabolik/Medikamente — *nicht* bagatellisieren],
    ),
    (
      [Sturz als reines MSK-Problem],
      [Internistischen Screen: Infekt, Metabolik, Synkope, Antikoag — bei SHT/Antikoag → *112/ED*],
    ),
    (
      [Hypoglykämie / Infekt als „Alters-Vergesslichkeit“],
      [Akute Änderung + Infektzeichen/Funktionsknick → *gleichtags Arzt / ED*, nicht „normal im Alter“],
    ),
  ),
)

#text(size: 8.5pt, fill: luma(80))[
  Assessment-Instrumente (TUG, Tinetti, geriatrisches Basisassessment): im geriatrischen
  Kontext *gebräuchliche* Namen. *Score-Cut-offs und Epi-Prozentzahlen: Quelle fehlt –
  manuelle Prüfung erforderlich.* Instrumente *ersetzen* keine RF-Triage.
]

// ── Präsentationen → Verweise ──────────────────────────────────
== Häufige Präsentationen → Verweise

Keine Doppel-Illness-Scripts. Master bleibt im jeweiligen System-/Notfallkapitel.

#styled-table(
  columns: (1.1fr, 1.1fr, 1.1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8pt)[Präsentation],
    text(fill: white, weight: "bold", size: 8pt)[Gatekeeper-Fokus hier],
    text(fill: white, weight: "bold", size: 8pt)[Weiter im Buch],
  ),
  [Akute Verwirrtheit / fluktuierende Aufmerksamkeit (Delir)],
  [Delir = *gleichtags–ED*; nicht Demenz bagatellisieren],
  [`→ II-1`; Demenz-Cluster `→ VI-1 Demenz (geplant)`],
  [Sturz, Gangunsicherheit, Hüftbelastung unmöglich],
  [Trauma/Fraktur/Antikoag-Screen],
  [`→ VI-2 (geplant)`; Fraktur `→ V-3 (geplant)` / `→ V-14 (geplant)`],
  [Dyspnoe, thorakaler Schmerz, akute Schwäche],
  [atypische Kardial-/VTE-Präsentation möglich],
  [`→ IV-1 (geplant)`; LE `→ III-LE` / `→ V-2`; ACS `→ V-1`],
  [Einseitige Beinschwellung, Immobilität],
  [VTE-Risiko mitdenken],
  [`→ V-1 Thrombose` / `→ IV-3 (geplant)`],
  [Fieber + Funktionsknick / Harnwege],
  [Infekt/Sepsis-Risiko],
  [gleichtags Arzt (RF); Systeminfekt `→ V-8 (geplant)`],
  [Neurologisches Defizit, Vigilanzminderung, Schlaganfall-Muster],
  [*112 / ED*; Stop PT],
  [`→ III-2`; Schlaganfall `→ IV-6 (geplant)` / `→ V-4 (geplant)`],
  [Chronische Frailty, ADL-Verlust *ohne* Akut-RF],
  [PT möglich mit Safety-Netting, interprofessionell],
  [`→ VI-2 (geplant)`; Treat-vs-Refer `→ II-2`],
)

#text(size: 8.5pt)[
  *Gefährliche DDx (worst first):* Delir → (nicht) Demenz-Progression → Schlaganfall →
  Infekt/Sepsis → Fraktur → Medikamentennebenwirkung.
]

// ── D-RISC compact ─────────────────────────────────────────────
== Handlung / D-RISC (kompakt)

Framework-Stufen: `→ II-1`. Populations-Regeln aus S1 (RF-Zeilen *getrennt* — keine gebündelte Dringlichkeit):

#styled-table(
  columns: (1.4fr, 0.4fr, 0.3fr, 0.4fr, 1.2fr),
  table.header(
    text(fill: white, weight: "bold", size: 7.5pt)[Situation],
    text(fill: white, weight: "bold", size: 7.5pt)[R],
    text(fill: white, weight: "bold", size: 7.5pt)[I],
    text(fill: white, weight: "bold", size: 7.5pt)[S],
    text(fill: white, weight: "bold", size: 7.5pt)[C — Handlung],
  ),
  [Sturz + SHT-RF / Antikoagulation],
  [*R4*], [I1], [*S4*],
  [*112 / ED*; keine PT; Blutung/Trauma-Pfad],
  [Delir-Muster (akute Verwirrtheit / fluktuierende Aufmerksamkeit)],
  [*R3*], [I1], [*S3–4*],
  [*gleichtags–ED*; Stop fordernder Programme; ärztliche Ursachensuche],
  [Unfähigkeit zu belasten nach Sturz (Hüfte)],
  [*R3*], [I1], [*S3–4*],
  [*ED*; Frakturverdacht; keine Belastungstherapie],
  [Fieber / HWI-Symptome + Funktionsknick],
  [*R3*], [I1], [*S3*],
  [*gleichtags Arzt*; Urosepsis-Risiko mitdenken],
  [Systemische Notfallzeichen (schwere Dyspnoe, akute schwere Schwäche, akutes neuro Defizit / Schlaganfall-Muster) — Framework Default-to-Danger],
  [*R4*], [I1], [*S4*],
  [*112 / ED*; Stop PT; ggf. `→ III-2` / Leitsymptom-Systempfade],
  [Stabiles Muster *ohne* RF-Cluster; klarer MSK-/Funktionsfokus; interprofessionell abgesichert],
  [R1–2], [I2–3], [S1–2],
  [*Treat* möglich: Gang/Kraft/ADL-orientiert, *Safety-Netting*, Re-Triage bei jeder akuten Änderung],
)

#memo(title: [PT-Sicherheitsregel])[
  Keine fordernden Programme bei *Delir* oder *akuter Instabilität*; interprofessionell denken.
]

// ── Safety-Netting ─────────────────────────────────────────────
== Kommunikation & Safety-Netting

#memo(title: [Safety-Netting & Kommunikation])[
  - *Onset explizit erfragen:* „Seit wann *anders* als sonst?“ — Stunden–Tage spricht für Delir/akut, schleichende Monate eher Frailty/Demenz-Kontext (Differenzierung *ärztlich*, Gatekeeper-Sensibilisierung hier).
  - *Angehörige / Bezugspersonen:* oft die einzige Quelle für Fluktuation und Ausgangsfunktion — mit Einwilligung einbeziehen.
  - *Einwilligung / Betreuung:* bei kognitiver Einschränkung Rechtsrahmen beachten → `→ I-7 (geplant)`.
  - *Safety-Netting schriftlich/klar:* wann *112* (z. B. Sturz + Antikoag/SHT-Zeichen, schwere Atemnot), wann *gleichtags Arzt/ED* (neue Verwirrtheit, Funktionsknick + Fieber/HWI, Hüfte unbelastbar).
  - *Polypharmazie:* neue Medikamente / Dosisänderung als *Screening-Hinweis* benennen und *ärztlich* zurückspiegeln — keine eigenständige Medikamentenumstellung durch HP Physio.
]

#callout(title: [Semantic Qualifier (S1)], tone: "info")[
  *„Patient/in mit [Gangunsicherheit / Sarkopenie / akuter fluktuierender Verwirrtheit / ADL-Verlust], Onset Frailty schleichend bzw. Delir akut Stunden–Tage. RF-Screen: [pos/neg]. Arbeitsverdacht geriatrisches Risikoprofil. Empfehlung: [112|ED|FA|HA]. PT: [stop|modifiziert|ok].“*
]

// ── Offene Lücken ──────────────────────────────────────────────
#callout(title: [S1-Wissenslücken — bewusst nicht gefüllt], tone: "warning")[
  - Epi-Prozentzahlen (Frailty-Prävalenz, Sturzraten etc.) — *nicht* gesetzt
  - Score-Schwellen TUG/Tinetti/CGA — *Quelle fehlt – manuelle Prüfung erforderlich*
  - PPL Deep-Research — laut S1 nach UI-Fix nachziehen
  - Vollständige AWMF-/NVL-Passagen zu Delir/Sturz — Human-Stichprobe vor Promote
  - Eigenes Demenz-Illness-Script — Verweis/Cluster; kein Ersatz-Master aus dünnem Geriatrie-S1

  *Keine erfundenen Score-Cut-offs oder Epi-Zahlen im Layout.*
]

// ── Quellen ────────────────────────────────────────────────────
#section-break()

== Quellen

Gestützt auf S1-Dossier `content/dossiers/krankheitslehre/geriatrie-facts.md` (Status `ready-for-human`, Stand 2026-07-15). Zahlen und Score-Schwellen *nicht* erfunden.

+ AWMF-Register (Workbench-abgeleitete Leitlinien-ID 109-001). URL: https://register.awmf.org/de/leitlinien/detail/109-001 (Abruf: 2026-07-15).
+ AWMF S2k Geriatrisches Assessment. URL: https://register.awmf.org/de/leitlinien/detail/084-002 (Abruf: 2026-07-15).
+ DEGAM S3 Demenz (geriatrische Cross-Ref). URL: https://www.degam.de/leitlinie-s3-053-022 (Abruf: 2026-07-15).
+ Pipeline-Provenance (kein Primärersatz): AMBOSS AI Mode / kuratiertes Gatekeeper-Paket — siehe S1 Rohquellen (Abruf-Kontext: 2026-07-15).

// ── Critical Claims ────────────────────────────────────────────
#section-break()

== Critical Claims (Audit)

#text(size: 9pt, fill: luma(60))[
  Anhang / Audit-Tafel — *nicht* Handlungspfad. Claims unverändert aus Content (copy-through).
]

1. Geriatrische Patient:innen sind durch Multimorbidität, funktionelle Einschränkungen und Vulnerabilität definiert — nicht nur durch Alter
2. Akute Verwirrtheit / fluktuierende Aufmerksamkeit (Delir-Muster) → gleichtags–ED; Ursachensuche Infekt/Metabolik/Medikamente
3. Sturz + SHT-Risiko / Antikoagulation → 112/ED (Blutung/Trauma)
4. Unfähigkeit zu belasten nach Sturz (Hüfte) → ED (Frakturverdacht)
5. Fieber/Harnwegssymptome + Funktionsknick → gleichtags Arzt (Urosepsis-Risiko)
6. Delir darf nicht als „Demenz-Progress“ bagatellisiert werden
7. Sturz ist kein reines MSK ohne internistischen Screen
8. Keine fordernden PT-Programme bei Delir oder akuter Instabilität
9. PT möglich nur bei stabilem Muster ohne RF-Cluster, mit Safety-Netting, interprofessionell
10. Onset: Frailty schleichend; Delir akut Stunden–Tage — Gatekeeper-Differenzierung
11. Akutes neuro Defizit / Vigilanzminderung / Schlaganfall-Muster → 112/ED; Stop PT; → III-2
12. D-RISC: Delir, Hüfte, Fieber/HWI und Sturz+Antikoag sind *getrennte* Zeilen (keine gebündelte Dringlichkeit)

#callout(title: [Human-in-the-loop], tone: "info")[
  Klinische Claims und Triage-Schwellen (112 vs. ED vs. gleichtags Arzt) vor Publikation
  *fachlich freigeben*. S1 ist *dünn* (Epi, Score-Schwellen, PPL-Nachzug offen) — keine
  Prozentzahlen oder Cut-offs als Kanon übernehmen. Entwurf ≠ freigegebener Buchkanon.
]
