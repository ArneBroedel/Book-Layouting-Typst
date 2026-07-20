// Auto-generated from chapter-i4-ifsg-meldepflicht-behandlungsverbote.md — layout only; clinical text not rewritten.
// Source: Kursbuch pilot 2026-07-welle-03-final-10
#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *

#chapter-opener(
  title: [I-4 IfSG: Meldepflicht & Behandlungsverbote],
  lead: [Kursbuch-Pilot I-4 · Layout via bookkit + bookkit-didactics],
)

#tag[I-4] #badge[pilot]

*Pilotentwurf* (`format-ok` · Audit GRÜN Loop 2 · *≠ Jurist-Freigabe*). *Keine Rechtsberatung.* Draft ≠ Rechtsfreigabe; Promote erst nach *juristischer Human-Prüfung*. Normenstand (Kataloge §§ 6/7, §-8-Zuordnung) vor Prüfung und Publikation gegen die aktuelle Fassung auf [gesetze-im-internet.de](https://www.gesetze-im-internet.de/) abgleichen.

#section-break()

== Lernziele

Nach diesem Kapitel können Sie:

+ die *drei IfSG-Schichten* trennen: Melden · Nicht feststellen/behandeln (Arztvorbehalt) · Hygiene/Tätigkeitsverbote;
+ erklären, dass bei bestimmten Krankheiten *bereits der Verdacht* meldepflichtig sein kann (§ 6) — und dass *Kataloge ändern*;
+ den *Arztvorbehalt § 24 IfSG* operational abrufen: keine eigenständige Feststellung/Heilbehandlung enumerierter Infekte/Erreger im Physio-Sektor;
+ bei Infektverdacht im Direktzugang *Screening + Arzt/Gesundheitsamt* priorisieren — nicht „naturheilkundlich austherapieren“;
+ typische *P0-Fangfragen* (Verdacht melden?, „Ich behandle den Infekt mit…“, Wartezimmer/Masern) mit Scope-konformer Denkrichtung beantworten.

#section-break()

== Einordnung / Brücke

Im Direktzugang treffen Sie Patient:innen mit Fieber, Exanthem, Nackensteifigkeit oder „nur“ unklarem Infekt plus MSK-Beschwerden. Das IfSG regelt hier nicht „Physiotherapie-Technik“, sondern *öffentliche Gesundheit*: Wer meldet was wohin — und was *ärztlich vorbehalten* ist. Ohne diese Hard Limits geraten Sie in Behandlungs- und Haftungsfallen; mit ihnen bleibt der Gatekeeper-Auftrag klar: *erkennen → stoppen → richtig eskalieren*.

#styled-table(
  columns: (1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Brücke],
    text(fill: white, weight: "bold", size: 8.5pt)[Verweis],
  ),
  [Drei Achsen / D-RISC (Klinikentscheidung)],
  [`→ II-1`],
  [Red Flags / Treat-vs-Refer],
  [`→ II-2`],
  [Sektorale Verbote (Rahmen, § 24 als Cluster)],
  [`→ I-3`],
  [Hygiene klinisch (Technik, Isolation-Logik)],
  [`→ III-6 (geplant)`],
  [Hygiene-Recht (Hygieneplan, Landes-HygVO)],
  [`→ I-6 (geplant)`],
  [Infektions-Klinik (Logik, Scripts)],
  [`→ V-8 (geplant)` · Meldelisten-Anhang `→ Anh. A (geplant)`],
  [Exam-Cluster Recht × Klinik × Hygiene],
  [`→ VII-1 (geplant)` · Drill `→ I-15 (geplant)`],
  [Haftung / Dokumentation (nicht hier verdoppeln)],
  [`→ I-7 (geplant)`],
)

*Hinweis:* Dieses Kapitel ist *Lehrstoff*, keine Individualrechtsberatung. Unsichere Einzelfälle: `Quelle fehlt – manuelle Prüfung / Jurist erforderlich`.

#section-break()

== Norm- und Rahmenkasten

*Drei getrennte Schichten* (S1 — Logik vor 40-Erreger-Lexikon):

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Schicht],
    text(fill: white, weight: "bold", size: 8.5pt)[Normkern],
    text(fill: white, weight: "bold", size: 8.5pt)[HP-Physio-Handlung],
  ),
  [*A · Melden*],
  [§§ 6, 8, 9 IfSG u. a.],
  [Bei Kenntnis meldepflichtiger Tatsachen (bei § 6 oft inkl. *Verdacht*): unverzüglich zuständiges *Gesundheitsamt* — wer meldepflichtig ist: *§ 8 aktuelle Fassung*],
  [*B · Nicht behandeln / nicht feststellen*],
  [*§ 24 IfSG*],
  [Feststellung/Heilbehandlung bestimmter Krankheiten/Erreger *nur durch Ärzt:in* (enge Schnelltest-Ausnahmen, nicht Physio-Alltag)],
  [*C · Hygiene / Tätigkeitsverbote*],
  [u. a. § 34 (Gemeinschaftseinrichtungen), TRBA],
  [Personal- und Praxishygiene; Detail `→ III-6 (geplant)` / `→ I-6 (geplant)`],
)

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Ebene],
    text(fill: white, weight: "bold", size: 8.5pt)[Inhalt (nur aus S1 / Primäranker)],
    text(fill: white, weight: "bold", size: 8.5pt)[],
  ),
  [*§ 6 IfSG*],
  [Namentlich meldepflichtige *Krankheiten* (Auszug-Logik): u. a. Verdacht/Erkrankung/Tod bei Botulismus, Cholera, Diphtherie, akuter Virushepatitis, HUS, virusbedingtem hämorrhagischem Fieber, Keuchhusten, Masern, Meningokokken-Meningitis/-Sepsis, Mumps, Poliomyelitis, Röteln, Tollwut, Typhus/Paratyphus, Windpocken, zoonotischer Influenza, Orthopocken u. a.; Tuberkulose (Erkrankung/Tod behandlungsbedürftig); weitere Tatbestände (u. a. Lebensmittelvergiftung/Gastroenteritis unter Bedingungen, impfbedingte über das Übliche hinausgehende Schäden, Tollwutexposition, bedrohliche/gehäufte unklare Lagen). *Liste ändert sich* — immer aktuelle Fassung. [IfSG § 6 \\],
  [Abruf 2026-07-15]],
  [*§ 7 IfSG*],
  [Meldepflichtige *Erregernachweise* (Labor; namentlich/nichtnamentlich je nach Nummer). HP Physio führt typischerweise *keine* Erregerdiagnostik — der *Arztvorbehalt § 24* greift aber auch bei Infektion mit §-7-Erregern. [IfSG § 7 \\],
  [Abruf 2026-07-15]],
  [*§ 24 IfSG (Kern Verbot)*],
  [Feststellung oder Heilbehandlung einer in § 6 Abs. 1 S. 1 Nr. 1, 2 oder 5 oder einer in § 34 Abs. 1 S. 1 genannten Krankheit *oder* einer Infektion mit einem in § 7 genannten Krankheitserreger *oder* einer sonstigen sexuell übertragbaren Krankheit darf *nur durch einen Arzt* erfolgen — mit enumerierten Ausnahmen für bestimmte patientennahe Schnelltests (Apotheke/Pflege/jedermann HIV/HCV/SARS-CoV-2/Syphilis etc.). [IfSG § 24 \\],
  [Abruf 2026-07-15]],
  [*Meldeweg (Rahmen)*],
  [*Wann:* unverzüglich bei Kenntnis der meldepflichtigen Tatsache (Verdacht kann genügen — § 6). *Wohin:* zuständiges Gesundheitsamt. *Wer:* § 8 IfSG (u. a. Ärzt:innen; weitere meldepflichtige Personen). *Ob und inwieweit Heilpraktiker:innen im Einzelfall meldepflichtig sind, ergibt sich aus § 8 in aktueller Fassung* — Primärtext lesen, nicht aus älteren HP-Lernskripten raten.],
  [],
  [*Sektor Physio (Konsequenz)*],
  [Keine eigenständige „Behandlung der Infektionskrankheit“; MSK bei möglichem Infekt → *Screening + Arzt*, nicht antibiotika-/„naturheil“-austherapieren.],
  [],
)

*Vollständige Erreger-/Krankheitslisten* nicht auswendig als Lexikon — Logik + aktuelle Primärtexte + RKI-Übersicht; didaktische Listenvertiefung `→ Anh. A (geplant)`.

Unsichere Zuordnungen (v. a. § 8 HP-Status, landesrechtliche Vollzugshinweise): `Quelle fehlt – manuelle Prüfung / Jurist erforderlich`.

#section-break()

== Operational: Was darf ich / was nicht?

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Situation / Handlung],
    text(fill: white, weight: "bold", size: 8.5pt)[Erlaubt?],
    text(fill: white, weight: "bold", size: 8.5pt)[Konsequenz / Alternative],
  ),
  [MSK-Maßnahmen bei *klarem* nicht-infektiösem Bild, ohne IfSG-Verdacht],
  [*ja*, soweit indiziert und beherrscht],
  [Safety-Netting; bei späterem Infektverdacht stoppen `→ II-1` / `→ II-2`],
  [„Infekt selbst feststellen“ (z. B. Masern, Meningokokken, akute Virushepatitis … laut Katalog)],
  [*nein* (§ 24 Arztvorbehalt)],
  [Keine Diagnose-Narrative; *Arzt*],
  [„Infekt behandeln“ (Naturmittel, „austherapieren“, Antibiotika-Ersatz) bei §-24-relevanten Krankheiten/Erregern],
  [*nein*],
  [Abbruch; ärztliche Versorgung; ggf. GA],
  [MSK-Therapie *bei* möglichem/offenem Infekt (unklarer Infekt + MSK)],
  [*kein IfSG-„Behandeln“*; PT nur wenn/soweit ohne Infekttherapie-Anspruch und klinisch vertretbar],
  [*Gleichtags Arzt*; nicht infektbezogen „weiterbehandeln“],
  [Meldepflichtige Tatsache bekannt / *Verdacht* §-6-Krankheit],
  [Meldeweg prüfen (*§ 8* aktuell) + Versorgung],
  [*Unverzüglich Gesundheitsamt* + ärztliche Akut-/Notfallversorgung priorisieren],
  [Labor-Erregerdiagnostik anordnen/durchführen],
  [*nicht* Physio-Alltag],
  [Ärztliche Domäne; § 7 ist Labor-Meldelogik],
  [Schnelltests der §-24-Ausnahmen (HIV/HCV/SARS-CoV-2 …) in der Physio-Praxis als „Diagnostikangebot“],
  [*nicht* aus S1 als freigegeben ableitbar],
  [Nicht improvisieren; `Quelle fehlt – manuelle Prüfung / Jurist erforderlich`],
  [Patient mit Meningismus + Fieber / petechialem Exanthem],
  [*keine* Physiotherapie],
  [*112* — keine Verzögerung durch „noch mobilisieren“],
  [Masernverdacht / hochkontagiöse Exanthemkrankheit],
  [*keine* Wartezimmer-Exposition],
  [Gleichtags *GA/Arzt*; Isolation-Logik `→ III-6 (geplant)`],
  [Gehäuft gleichartige Erkrankungen im Umfeld (Praxis/Familie/Einrichtung)],
  [Info-Pflicht prüfen],
  [GA-Info; § 6 Abs. 1 weitere Tatbestände (bedrohliche/gehäufte unklare Lagen)],
  [Hygieneplan / Personalhygiene / TRBA-Rahmen],
  [Pflichtthema, *nicht* optional],
  [Technik `→ III-6 (geplant)`; Recht `→ I-6 (geplant)`],
)

#memo[*Gatekeeper (Alltag):* Infektverdacht mit schwerer Systemik → *112/Notaufnahme*, keine PT; unklarer Infekt + MSK → *gleichtags Arzt*, kein IfSG-Behandeln; meldepflichtige Lage → *Gesundheitsamt + Arzt* priorisieren; Katalog/§ 8 unsicher → Primärtext + Jurist, nicht raten.]

=== Treat-vs-Refer (klinisch-operativ, aus S1)

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Kriterium],
    text(fill: white, weight: "bold", size: 8.5pt)[Dringlichkeit],
    text(fill: white, weight: "bold", size: 8.5pt)[Aktion],
  ),
  [Meningismus + Fieber / petechiales Exanthem],
  [*112*],
  [Keine Physiotherapie],
  [Masernverdacht / hochkontagiöse Exanthemkrankheit],
  [*gleichtags* GA/Arzt],
  [Isolation-Logik, keine Wartezimmer-Exposition],
  [Unklarer Infekt + MSK],
  [*gleichtags* Arzt],
  [Kein IfSG-„Behandeln“],
  [Gehäuft gleichartige Erkrankungen im Umfeld],
  [GA-Info prüfen],
  [§ 6 Abs. 1 weitere Tatbestände beachten],
)

#section-break()

== Fangfragen & Prüfungscluster

#styled-table(
  columns: (1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Fangfrage],
    text(fill: white, weight: "bold", size: 8.5pt)[Richtige Denkrichtung],
  ),
  [„Muss ich erst die Diagnose sichern, bevor ich melde?“],
  [Bei § 6 oft *Verdacht* meldepflichtig — nicht auf „sichere Laborbestätigung“ warten, wenn die meldepflichtige Tatsache vorliegt. Unverzüglich GA; parallel Versorgung.],
  [„Als Physio/HP Physio melde ich nie — das macht nur der Arzt.“],
  [*Wer* meldet, regelt *§ 8* in *aktueller* Fassung. Ältere Lernskripte können veraltet sein. Primärtext lesen; bei Zweifel Jurist/Behörde — nicht raten. Praxisregel: schwere Infektlage → *GA + Arzt* priorisieren.],
  [„Patient hat Infekt — ich behandle mit Naturmitteln/Homöopathie weiter.“],
  [*§ 24:* Feststellung/Heilbehandlung bestimmter Infekte/Erreger = *Arztvorbehalt*. Keine eigenständige Infekttherapie im Physio-Sektor. (`→ I-3`)],
  [„Darf ich Masern/Hepatitis/Meningokokken ‚klinisch ausschließen‘ und PT starten?“],
  [*Feststellung* enumerierter Krankheiten ist *ärztlich*. Bei Verdachtszeichen: stoppen, Arzt/GA, nicht freigeben.],
  [„Wartezimmer ist voll — Masernverdacht, aber Termin schon da.“],
  [Hochkontagiös → *keine* Exposition; gleichtags GA/Arzt; Isolation-Logik `→ III-6 (geplant)`.],
  [„§ 7-Erreger kenne ich nicht — also kein Problem für mich.“],
  [Auch ohne eigene Labordiagnostik: *§ 24* greift bei Infektion mit §-7-Erregern. Kein „Behandeln der Infektion“.],
  [„Die Meldeliste lerne ich einmal auswendig für immer.“],
  [*Kataloge ändern.* Prüfung: Logik (Verdacht / namentlich / GA / Arztvorbehalt) + *aktuelle* Fassung §§ 6/7; Listen `→ Anh. A (geplant)` / RKI-Übersicht.],
)

Drill-Integration: `→ I-15 (geplant)` · `→ VII-1 (geplant)`.

#section-break()

== Praxisbox (kurz)

Bei Infektverdacht in der Praxis:

+ *Stop* der eigenständigen Infekt-„Therapie“ und riskanter Exposition (Wartezimmer).
+ *Klinische Dringlichkeit* klären: 112 vs. gleichtags Arzt (Tabelle oben).
+ *Gesundheitsamt* bei meldepflichtiger Tatsache/Verdacht — *unverzüglich*; §-8-Rolle aktuell prüfen.
+ *Dokumentieren:* Symptome, Zeit, Maßnahmen, Verweis Arzt/GA, Aufklärung.
+ Haftungs-/Dokumentationsrahmen nicht hier verdoppeln — `→ I-7 (geplant)`.

#section-break()

== Klinik-Brücke

#styled-table(
  columns: (1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Rechtliches Thema],
    text(fill: white, weight: "bold", size: 8.5pt)[Klinischer Anker],
  ),
  [§ 24 Arztvorbehalt],
  [Keine Eigen-„Infekttherapie“; MSK bei Systemik-Flags `→ II-2`],
  [Meningismus / Petechien],
  [Notfallpfad neuro/systemisch `→ III-4 (geplant)`; 112],
  [Masern / Exanthem / Kontagiosität],
  [Hygiene/Isolation `→ III-6 (geplant)`; Melde-/Arztweg hier],
  [Infektions-Krankheitslehre],
  [Logik-Verweis `→ V-8 (geplant)`; Einzel-LEG (Cholera, Pest, Tollwut …) bleiben Anhang/LEG, keine 15-seitigen Einzelkapitel],
  [D-RISC / Gatekeeper],
  [Recht = Hard Limit; Klinikentscheidung `→ II-1`],
  [Exam-Transfer],
  [Recht × Hygiene × Notfall `→ VII-1 (geplant)`],
)

#section-break()

== Offene Lücken (nicht füllen)

Aus S1 / Writer-GO — *Writer füllt nicht:*

- *§ 8 IfSG:* konkrete Zuordnung Heilpraktiker:in / HP Physio als meldepflichtige Person — *nur* aktuelle Primärfassung; ältere Skripte unzuverlässig.
- *Vollständige* aktuelle §-6-/§-7-Kataloge (BGBl. / gesetze-im-internet vor Prüfung/Publikation abgleichen).
- Landes-Vollzugshinweise, Formulare, digitale Meldewege.
- Schnelltest-Ausnahmen des § 24 im Physio-Setting: im S1 nicht als freigegebene Praxisleistung belegt.
- MasernschutzG / Personalpflichten in Einrichtungen: nicht Gegenstand dieses S1-Kerns — ggf. `→ I-3` / Jurist.

Einzelfall: `Quelle fehlt – manuelle Prüfung / Jurist erforderlich`.

#section-break()

== Quellen / Normen

+ IfSG § 6 (meldepflichtige Krankheiten). URL: https://www.gesetze-im-internet.de/ifsg/__6.html (Abruf: 2026-07-15).
+ RKI — Meldepflichtige Krankheiten und Krankheitserreger (Übersicht). URL: https://www.rki.de/DE/Themen/Infektionskrankheiten/Meldewesen/Meldepflicht/meldepflichtige-krankheiten-und-krankheitserreger-node.html (Abruf: 2026-07-15).
+ IfSG § 7 (meldepflichtige Nachweise von Krankheitserregern). URL: https://www.gesetze-im-internet.de/ifsg/__7.html (Abruf: 2026-07-15).
+ IfSG § 24 (Arztvorbehalt Feststellung/Heilbehandlung). URL: https://www.gesetze-im-internet.de/ifsg/__24.html (Abruf: 2026-07-15).
+ IfSG § 8 (zur Meldung verpflichtete Personen). URL: https://www.gesetze-im-internet.de/ifsg/__8.html (Abruf: 2026-07-17). *Aktuelle Fassung lesen; Zuordnung im Einzelfall Jurist* — hier keine Personenkreis-/HP-Auslegung.
+ S1-Dossier: `content/dossiers/berufsrecht/ifsg-meldepflicht-behandlungsverbot.md` (Stand 2026-07-15, Status `ready-for-human-jurist`).

*Juristische Human-Prüfung vor Publikation erforderlich.* *Draft ≠ Rechtsfreigabe · Promote erst nach Jurist.* *Kataloge §§ 6/7 und §-8-Personenkreis vor Prüfung/Publikation gegen aktuelle Gesetzesfassung abgleichen.*

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
  [IfSG für HP Physio in *drei Schichten*: Melden (A) · Nicht feststellen/behandeln § 24 (B) · Hygiene/Tätigkeitsverbote (C)],
  [Dossier §1],
  [Schicht B/C: Stop Infekttherapie / Hygiene; Schicht A: GA],
  [2],
  [*§ 24 IfSG*: Feststellung/Heilbehandlung enumerierter Infektionskrankheiten/Erreger (i. V. m. §§ 6, 7, 34) sowie sonstiger sexuell übertragbarer Krankheiten = *Arztvorbehalt* (enge Schnelltest-Ausnahmen)],
  [IfSG § 24; Dossier §4, Claim \#1],
  [Abbruch Infekttherapie → Arzt; ggf. GA],
  [3],
  [*§ 6 IfSG*: namentlich meldepflichtige Krankheiten; bei vielen Tatbeständen *Verdacht* meldepflichtig; Katalog *ändert sich*],
  [IfSG § 6; Dossier §2, Claim \#2–3],
  [Unverzüglich GA + Versorgung],
  [4],
  [*§ 7 IfSG*: Labor-Erregernachweise; HP Physio typischerweise ohne eigene Erregerdiagnostik — *§ 24 greift trotzdem* bei Infektion mit §-7-Erregern],
  [IfSG § 7; Dossier §3],
  [Kein Infekt-„Behandeln“; Arzt],
  [5],
  [Meldeweg: *unverzüglich*, an *zuständiges Gesundheitsamt*; *Wer* meldet: *§ 8 aktuelle Fassung* (HP-Zuordnung nicht aus Sekundärskripten raten)],
  [Dossier §5; IfSG § 8 (Primär-URL)],
  [GA + ärztliche Notfall-/Akutversorgung priorisieren],
  [6],
  [Sektor Physio: keine eigenständige Behandlung der Infektionskrankheit; MSK bei möglichem Infekt → Screening + Arzt],
  [Dossier §4],
  [Gleichtags Arzt / je Flag höher],
  [7],
  [Meningismus + Fieber / petechiales Exanthem → *112*, keine PT],
  [Dossier §6],
  [*112*],
  [8],
  [Masernverdacht / hochkontagiöse Exanthemkrankheit → gleichtags GA/Arzt, keine Wartezimmer-Exposition],
  [Dossier §6],
  [Gleichtags GA/Arzt; Isolation-Logik],
  [9],
  [Unklarer Infekt + MSK → gleichtags Arzt, *kein* IfSG-„Behandeln“],
  [Dossier §6],
  [Gleichtags Arzt],
  [10],
  [Gehäuft gleichartige Erkrankungen im Umfeld → GA-Info prüfen (§ 6 weitere Tatbestände)],
  [Dossier §6],
  [GA-Info / Meldung prüfen],
)

#callout(title: [Hinweis], tone: "warning")[*Juristische Human-Prüfung vor Publikation erforderlich.* Promote erst nach Jurist. Draft ≠ Rechtsfreigabe. Klinische Auditor-Ampel ≠ Rechtsfreigabe.]

