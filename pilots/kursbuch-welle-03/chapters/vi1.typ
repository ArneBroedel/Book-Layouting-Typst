// Auto-generated from chapter-vi1-geriatrie.md — layout only; clinical text not rewritten.
// Source: Kursbuch pilot 2026-07-welle-03-final-10
#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *

#chapter-opener(
  title: [VI-1 Geriatrie],
  lead: [Kursbuch-Pilot VI-1 · Layout via bookkit + bookkit-didactics],
)

#tag[VI-1] #badge[pilot]

*Untertitel:* Multimorbidität, Frailty und atypische Präsentation — Screening und Treat-vs-Refer *ändern* sich, die Gefahr wird *nicht* weicher.

#memo[*Gatekeeper in einem Atemzug:* geriatrische Patient:innen sind durch *Vulnerabilität und Funktionsverlust* definiert, nicht nur durch Lebensjahre. Akute Verwirrtheit, Sturz mit Trauma-Risiko und plötzlicher Funktionsknick sind *keine* „altersbedingte Normalität“ — sie sind *Triage-Trigger*.]

#section-break()

== Lernziele

Nach diesem Kapitel können Sie:

+ den *populationsspezifischen Screen* (Delir, Sturz, Infekt-/Medikamenten-Kontext) im Erstkontakt priorisieren;
+ *Red Flags* der Geriatrie als *Kriterium → Dringlichkeit → Aktion* anwenden (nicht abschwächen);
+ typische *Red Herrings* (Delir als „Demenz-Progress“, Sturz als reines MSK) vermeiden;
+ *Scope-Grenzen* benennen: Diagnostik/Ursachensuche und medikamentöse Steuerung sind *ärztlich*; PT nur bei stabilem Muster ohne RF;
+ bei passenden Präsentationen *verlinken* statt Illness-Scripts neu zu schreiben (`→ II-1`, `→ III-2`, Leitsymptom-/Systemkapitel).

#section-break()

== Scope & Grenzen (Pflicht)

#styled-table(
  columns: (1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Darf / soll HP Physio],
    text(fill: white, weight: "bold", size: 8.5pt)[Nicht (→ verweisen)],
  ),
  [Gatekeeper-Screen: plötzlich verwirrt? neue Medikamente? Infektzeichen? Sturzhergang? Antikoagulation? [S1 §6]],
  [Ursache des Delirs klären (Infekt/Metabolik/Medikamente) — *ärztlich / ED*],
  [Treat-vs-Refer bei Gangunsicherheit, Sturzangst, Sarkopenie *ohne* RF-Cluster],
  [Frakturausschluss, Bildgebung, Antikoagulations-Management],
  [Safety-Netting, interprofessionelle Koordination bei chronischen Entitäten ohne Akut-RF [S1 §9]],
  [Fordernde Belastungs-/High-Load-Programme bei Delir oder akuter Instabilität [S1 §10]],
  [Erkennen: Frailty/Delir/Sturz als *Syndrome* mit gefährlicher DDx (Schlaganfall, ACS, LE, Sepsis, Fraktur) [S1 §1, §8]],
  [Demenz-Diagnose stellen oder Delir als „Demenz-Progress“ abtun],
  [Assessment *orientierend* benennen (z. B. TUG, Tinetti, geriatrisches Basisassessment als *ärztlich/team* gebräuchlich) [S1 §1]],
  [Score-Schwellen und Cut-offs als PT-Ausschlussregeln — *Quelle fehlt / S1-Lücke* (keine Epi-/Score-Erfindung)],
)

*Nicht in diesem Kapitel:* Vollscripts zu Demenz, TVT/LE, Schlaganfall, Sepsis — nur Verweise. Immobilitätsfolgen-Cluster → `→ VI-2 (geplant)`.

#section-break()

== Big Picture (populationsspezifisch)

Geriatrische Patient:innen sind durch *Multimorbidität*, *funktionelle Einschränkungen* und *erhöhte Vulnerabilität* definiert — nicht allein durch kalendarisches Alter [S1 §1; AMBOSS live 2026-07-15]. Typisch ist eine *schleichende, unspezifische, oft maskierte oder symptomverschobene* Präsentation [S1 §1].

*Illness-Script-Kern (populationsbezogen, kein System-Master):*

#styled-table(
  columns: (1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Achse],
    text(fill: white, weight: "bold", size: 8.5pt)[Inhalt [S1 §4]],
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

*Worst-Case bei Verkennung* [S1 §3]: übersehenes Delir bei Urosepsis; Femurfraktur nach Sturz; Polypharmazie-Kaskade. Reduzierte physiologische Reserven bedeuten: *weniger Puffer*, schnellerer Abfall — Screening muss *strenger* sein als beim gesunden jüngeren MSK-Patienten, nicht nachsichtiger.

*Denkhaltung (Default-to-Danger, Framework):* unklare akute Änderung bei älteren Patient:innen → zuerst R/S entkräften (`→ II-1`), dann Treat.

#section-break()

== Screening-Fokus / Red Flags

=== Safety-Fragen (Erstkontakt, S1)

- Plötzlich *verwirrt* / Aufmerksamkeit fluktuierend?
- *Medikamente neu* oder Dosis geändert (Polypharmazie-Kontext)?
- *Infektzeichen* (Fieber, Harnwegssymptome, allgemeiner Funktionsknick)?
- *Sturzhergang* (Trauma, Kopf, Belastungsunfähigkeit)?
- *Antikoagulation* / Blutungsrisiko nach Sturz? [S1 §6]

=== Red-Flag-Tabelle (operational, nur S1)

Datenetikett RF: *[geriatrie | curated+AMBOSS | 2026-07-15]*

#styled-table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Kriterium],
    text(fill: white, weight: "bold", size: 8.5pt)[Dringlichkeit],
    text(fill: white, weight: "bold", size: 8.5pt)[Aktion],
    text(fill: white, weight: "bold", size: 8.5pt)[],
    text(fill: white, weight: "bold", size: 8.5pt)[],
  ),
  [Akute Verwirrtheit / fluktuierende Aufmerksamkeit (Delir-Muster)],
  [*gleichtags–ED*],
  [Stop fordernder PT; *ärztliche* Ursachensuche (Infekt/Metabolik/Medikamente); Delir ist *kein* „Demenz-Progress“ [S1 §5, §7; Safety-Override: Delir → ED] [geriatrie \\],
  [curated+AMBOSS \\],
  [2026-07-15]],
  [Sturz + SHT-Risiko / Antikoagulation],
  [*112 / ED*],
  [Blutung/Trauma-Pfad; keine „MSK-only“-Behandlung [S1 §7] [geriatrie \\],
  [curated+AMBOSS \\],
  [2026-07-15]],
  [Unfähigkeit zu belasten nach Sturz (Hüfte)],
  [*ED*],
  [Frakturverdacht; keine Belastungstherapie [S1 §7] [geriatrie \\],
  [curated+AMBOSS \\],
  [2026-07-15]],
  [Fieber / Harnwegssymptome + *Funktionsknick*],
  [*gleichtags Arzt*],
  [Urosepsis-Risiko mitdenken; nicht als „Altersschwäche“ abtun [S1 §7] [geriatrie \\],
  [curated+AMBOSS \\],
  [2026-07-15]],
  [Akutes neurologisches Defizit / akute Vigilanzminderung / Schlaganfall-Muster],
  [*112 / ED*],
  [Stop PT; Notfallpfad `→ III-2`; Schlaganfall-Systempfade `→ IV-6 (geplant)` / `→ V-4 (geplant)` [S1 §1, §8] [geriatrie \\],
  [curated+AMBOSS \\],
  [2026-07-15]],
)

*Zusätzliche AMBOSS-Warnsignale (ohne eigene Schwellen erfinden)* [S1 §1]: Sturz mit Frakturzeichen, Dyspnoe, akute Schwäche — bei diesen Mustern *System-Notfall-/Leitsymptom-Pfade* öffnen (siehe §5), nicht „warten und beobachten“.

=== Red Herrings (≥3 MSK-Maskierungen) [S1 §5]

+ *Delir* als „Demenz-Progress“ / „ist immer so“
+ *Sturz* als reines MSK-Problem *ohne* internistischen Screen (Infekt, Metabolik, Synkope, Antikoag)
+ *Hypoglykämie / Infekt* als „Alters-Vergesslichkeit“

=== Assessment-Instrumente (knapp, P2)

TUG, Tinetti-Test und geriatrisches Basisassessment sind im geriatrischen Kontext *gebräuchliche* Screening-/Assessment-Namen [S1 §1]. *Score-Cut-offs und Epi-Prozentzahlen: Quelle fehlt – manuelle Prüfung erforderlich* (S1 §12: vor Writer/Publish gegen AWMF/RKI/NVL verifizieren). Instrumente *ersetzen* keine RF-Triage.

#section-break()

== Häufige Präsentationen → Verweise

Keine Doppel-Illness-Scripts. Master bleibt im jeweiligen System-/Notfallkapitel.

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Präsentation],
    text(fill: white, weight: "bold", size: 8.5pt)[Gatekeeper-Fokus hier],
    text(fill: white, weight: "bold", size: 8.5pt)[Weiter im Buch],
  ),
  [Akute Verwirrtheit / fluktuierende Aufmerksamkeit (Delir)],
  [Delir = *gleichtags–ED*; nicht Demenz bagatellisieren],
  [`→ II-1` (R/S Default-to-Danger); Demenz-Cluster im VI-1-Kontext `→ VI-1 Demenz (geplant)` / DEGAM-Cross-Ref im S1],
  [Sturz, Gangunsicherheit, Hüftbelastung unmöglich],
  [Trauma/Fraktur/Antikoag-Screen],
  [`→ VI-2 (geplant)` Immobilität; Fraktur-Cluster `→ V-3 (geplant)` / `→ V-14 (geplant)`],
  [Dyspnoe, thorakaler Schmerz, akute Schwäche],
  [atypische Kardial-/VTE-Präsentation möglich],
  [`→ IV-1 (geplant)` Thorax/Dyspnoe; `→ III-LE (geplant)` / `→ V-2 (geplant)` LE; `→ V-1 (geplant)` KHK/ACS],
  [Einseitige Beinschwellung, Immobilität],
  [VTE-Risiko mitdenken],
  [`→ V-1 Thrombose` (Welle-01 Staging) / `→ IV-3 (geplant)`],
  [Fieber + Funktionsknick / Harnwege],
  [Infekt/Sepsis-Risiko],
  [gleichtags Arzt (RF §4); Systeminfekt `→ V-8 (geplant)`],
  [Neurologisches Defizit, Vigilanzminderung, Schlaganfall-Muster],
  [*112 / ED*; Stop PT [S1 §1, §8]],
  [`→ III-2`; Schlaganfall-Pfad `→ IV-6 (geplant)` / `→ V-4 (geplant)`],
  [Chronische Frailty, ADL-Verlust *ohne* Akut-RF],
  [PT möglich mit Safety-Netting, interprofessionell [S1 §9]],
  [`→ VI-2 (geplant)`; Methodik Treat-vs-Refer `→ II-2`],
)

*Gefährliche DDx (Reihenfolge worst first)* [S1 §8]: Delir → (nicht) Demenz-Progression → Schlaganfall → Infekt/Sepsis → Fraktur → Medikamentennebenwirkung.

#section-break()

== Handlung / D-RISC (kompakt)

Framework-Stufen: `→ II-1`. Populations-Regeln aus S1 (RF-Zeilen getrennt — keine gebündelte Dringlichkeit):

#styled-table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Situation],
    text(fill: white, weight: "bold", size: 8.5pt)[R (orient.)],
    text(fill: white, weight: "bold", size: 8.5pt)[I],
    text(fill: white, weight: "bold", size: 8.5pt)[S],
    text(fill: white, weight: "bold", size: 8.5pt)[C — Handlung],
  ),
  [Sturz + SHT-RF / Antikoagulation],
  [*R4*],
  [I1],
  [*S4*],
  [*112 / ED*; keine PT; Blutung/Trauma-Pfad [S1 §7]],
  [Delir-Muster (akute Verwirrtheit / fluktuierende Aufmerksamkeit)],
  [*R3*],
  [I1],
  [*S3–4*],
  [*gleichtags–ED*; Stop fordernder Programme; ärztliche Ursachensuche [S1 §7, §10]],
  [Unfähigkeit zu belasten nach Sturz (Hüfte)],
  [*R3*],
  [I1],
  [*S3–4*],
  [*ED*; Frakturverdacht; keine Belastungstherapie [S1 §7]],
  [Fieber / HWI-Symptome + Funktionsknick],
  [*R3*],
  [I1],
  [*S3*],
  [*gleichtags Arzt*; Urosepsis-Risiko mitdenken [S1 §7]],
  [Systemische Notfallzeichen (schwere Dyspnoe, akute schwere Schwäche, akutes neuro Defizit / Schlaganfall-Muster) — *Framework Default-to-Danger*, nicht S1-§7-Fakt],
  [*R4* (`→ II-1`)],
  [I1],
  [*S4*],
  [*112 / ED*; Stop PT; ggf. `→ III-2` / Leitsymptom-Systempfade (§5)],
  [Stabiles Muster *ohne* RF-Cluster; klarer MSK-/Funktionsfokus; interprofessionell abgesichert],
  [R1–2],
  [I2–3],
  [S1–2],
  [*Treat* möglich: Gang/Kraft/ADL-orientiert, *Safety-Netting*, Re-Triage bei jeder akuten Änderung [S1 §9]],
)

*PT-Sicherheitsregel* [S1 §10]: Keine fordernden Programme bei *Delir* oder *akuter Instabilität*; interprofessionell denken.

#section-break()

== Kommunikation & Safety-Netting

- *Onset explizit erfragen:* „Seit wann *anders* als sonst?“ — Stunden–Tage spricht für Delir/akut, schleichende Monate eher Frailty/Demenz-Kontext (Differenzierung *ärztlich*, Gatekeeper-Sensibilisierung hier) [S1 §4].
- *Angehörige / Bezugspersonen:* oft die einzige Quelle für Fluktuation und Ausgangsfunktion — mit Einwilligung einbeziehen.
- *Einwilligung / Betreuung:* bei kognitiver Einschränkung Rechtsrahmen beachten → `→ I-7 (geplant)` (Box Einwilligung/Betreuung).
- *Safety-Netting schriftlich/klar:* wann *112* (z. B. Sturz + Antikoag/SHT-Zeichen, schwere Atemnot), wann *gleichtags Arzt/ED* (neue Verwirrtheit, Funktionsknick + Fieber/HWI, Hüfte unbelastbar).
- *Polypharmazie:* neue Medikamente / Dosisänderung als *Screening-Hinweis* benennen und *ärztlich* zurückspiegeln — keine eigenständige Medikamentenumstellung durch HP Physio.
- *Semantic Qualifier (S1):* *„Patient/in mit [Gangunsicherheit / Sarkopenie / akuter fluktuierender Verwirrtheit / ADL-Verlust], Onset Frailty schleichend bzw. Delir akut Stunden–Tage. RF-Screen: [pos/neg]. Arbeitsverdacht geriatrisches Risikoprofil. Empfehlung: [112|ED|FA|HA]. PT: [stop|modifiziert|ok].“* [S1 §11]

#section-break()

== Quellen

Gestützt auf S1-Dossier `content/dossiers/krankheitslehre/geriatrie-facts.md` (Status `ready-for-human`, Stand 2026-07-15). Zahlen und Score-Schwellen *nicht* erfunden.

+ AWMF-Register (Workbench-abgeleitete Leitlinien-ID 109-001). URL: https://register.awmf.org/de/leitlinien/detail/109-001 (Abruf: 2026-07-15). *[S1 §13; Human: Version/Passagen stichproben]*
+ AWMF S2k Geriatrisches Assessment. URL: https://register.awmf.org/de/leitlinien/detail/084-002 (Abruf: 2026-07-15).
+ DEGAM S3 Demenz (geriatrische Cross-Ref). URL: https://www.degam.de/leitlinie-s3-053-022 (Abruf: 2026-07-15).
+ Pipeline-Provenance (kein Primärersatz): AMBOSS AI Mode / kuratiertes Gatekeeper-Paket — siehe S1 Rohquellen (Abruf-Kontext: 2026-07-15).

=== S1-Wissenslücken (bewusst nicht gefüllt)

#styled-table(
  columns: (1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Lücke],
    text(fill: white, weight: "bold", size: 8.5pt)[Writer-Verhalten],
  ),
  [Epi-Prozentzahlen (Frailty-Prävalenz, Sturzraten etc.)],
  [*nicht* gesetzt; S1 §2 nur qualitativ („häufig“, „hoher Anteil“)],
  [Score-Schwellen TUG/Tinetti/CGA],
  [*Quelle fehlt – manuelle Prüfung erforderlich*],
  [PPL Deep-Research],
  [laut S1 §12 nach UI-Fix nachziehen],
  [Vollständige AWMF-/NVL-Passagen zu Delir/Sturz],
  [Human-Stichprobe vor Promote],
  [Eigenes Demenz-Illness-Script],
  [Verweis/Cluster; kein Ersatz-Master aus dünnem Geriatrie-S1],
)

#section-break()

== Critical Claims (Audit)

#styled-table(
  columns: (1fr, 1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[\#],
    text(fill: white, weight: "bold", size: 8.5pt)[Claim (prüfbar)],
    text(fill: white, weight: "bold", size: 8.5pt)[Quelle im S1],
    text(fill: white, weight: "bold", size: 8.5pt)[Dringlichkeit/Aktion falls RF],
  ),
  [1],
  [Geriatrische Patient:innen sind durch Multimorbidität, funktionelle Einschränkungen und Vulnerabilität definiert — nicht nur durch Alter],
  [§1 AMBOSS live],
  [— (Definition)],
  [2],
  [Akute Verwirrtheit / fluktuierende Aufmerksamkeit (Delir-Muster) → gleichtags–ED; Ursachensuche Infekt/Metabolik/Medikamente],
  [§7 RF-Z.1; Safety-Override Delir→ED],
  [*gleichtags–ED*],
  [3],
  [Sturz + SHT-Risiko / Antikoagulation → 112/ED (Blutung/Trauma)],
  [§7 RF-Z.2],
  [*112 / ED*],
  [4],
  [Unfähigkeit zu belasten nach Sturz (Hüfte) → ED (Frakturverdacht)],
  [§7 RF-Z.3],
  [*ED*],
  [5],
  [Fieber/Harnwegssymptome + Funktionsknick → gleichtags Arzt (Urosepsis-Risiko)],
  [§7 RF-Z.4],
  [*gleichtags Arzt*],
  [6],
  [Delir darf nicht als „Demenz-Progress“ bagatellisiert werden],
  [§5 Red Herring 1; §8 DDx],
  [gleichtags–ED bei Delir-Muster],
  [7],
  [Sturz ist kein reines MSK ohne internistischen Screen],
  [§5 Red Herring 2; §6 Safety-Fragen],
  [je nach RF 112/ED/Arzt],
  [8],
  [Keine fordernden PT-Programme bei Delir oder akuter Instabilität],
  [§10],
  [Stop / S3–4],
  [9],
  [PT möglich nur bei stabilem Muster ohne RF-Cluster, mit Safety-Netting, interprofessionell],
  [§9],
  [Treat möglich],
  [10],
  [Onset: Frailty schleichend; Delir akut Stunden–Tage — Gatekeeper-Differenzierung],
  [§4],
  [steuert Dringlichkeit],
  [11],
  [Akutes neuro Defizit / Vigilanzminderung / Schlaganfall-Muster → 112/ED; Stop PT; → III-2],
  [§1, §8 (AMBOSS-Warnsignale / gefährliche DDx)],
  [*112 / ED*],
  [12],
  [D-RISC: Delir, Hüfte, Fieber/HWI und Sturz+Antikoag sind *getrennte* Zeilen (keine gebündelte Dringlichkeit)],
  [§7 (RF getrennt) + Framework `→ II-1` für System-R4],
  [je Zeile wie RF],
)

#section-break()

#callout(title: [Hinweis], tone: "warning")[*Human-in-the-loop:* Klinische Claims und Triage-Schwellen (112 vs. ED vs. gleichtags Arzt) vor Publikation *fachlich freigeben*. S1 ist *dünn* (Epi, Score-Schwellen, PPL-Nachzug offen) — keine Prozentzahlen oder Cut-offs als Kanon übernehmen. Leitlinien-Versionen (AWMF 109-001, 084-002; DEGAM Demenz) stichproben. Entwurf ≠ freigegebener Buchkanon.]

