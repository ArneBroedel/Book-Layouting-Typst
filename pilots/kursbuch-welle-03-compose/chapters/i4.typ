// compose-chapter · creative-first
// catalog_version: 0.1.0 (preferred library, advisory)
// brief: domains/medical/briefs/i4-ifsg.brief.md
// content: /home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-i4-ifsg-meldepflicht-behandlungsverbote.md
// tools: bookkit, bookkit-didactics, fletcher 0.5.8, cetz 0.5.2, pilot visual.typ
// wave: 2026-07-welle-03-final-10 · v2 creative redesign
// Claims: copy-through from content SoT — no legal/clinical paraphrase.
// Draft ≠ Rechtsfreigabe · keine Rechtsberatung.

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "/pilots/kursbuch-welle-03-compose/lib/visual.typ": *

#chapter-opener(
  title: [IfSG: Meldepflicht & Behandlungsverbote],
  lead: [Rechtlicher Gatekeeper Direktzugang · drei Schichten · *keine Rechtsberatung* · Kursbuch I-4],
  number: "I-4",
)

// ── Early legal cave ───────────────────────────────────────────
#cave(title: [Draft ≠ Rechtsfreigabe — keine Rechtsberatung])[
  *Pilotentwurf* (`format-ok` · Audit GRÜN Loop 2 · *≠ Jurist-Freigabe*). *Keine Rechtsberatung.*
  Draft ≠ Rechtsfreigabe; Promote erst nach *juristischer Human-Prüfung*. Normenstand
  (Kataloge §§ 6/7, §-8-Zuordnung) vor Prüfung und Publikation gegen die aktuelle Fassung
  auf gesetze-im-internet.de abgleichen.
]

// ── Lernziele ──────────────────────────────────────────────────
#learning-objectives(
  title: [Lernziele],
  items: (
    [die *drei IfSG-Schichten* trennen: Melden · Nicht feststellen/behandeln (Arztvorbehalt) · Hygiene/Tätigkeitsverbote;],
    [erklären, dass bei bestimmten Krankheiten *bereits der Verdacht* meldepflichtig sein kann (§ 6) — und dass *Kataloge ändern*;],
    [den *Arztvorbehalt § 24 IfSG* operational abrufen: keine eigenständige Feststellung/Heilbehandlung enumerierter Infekte/Erreger im Physio-Sektor;],
    [bei Infektverdacht im Direktzugang *Screening + Arzt/Gesundheitsamt* priorisieren — nicht „naturheilkundlich austherapieren“;],
    [typische *P0-Fangfragen* (Verdacht melden?, „Ich behandle den Infekt mit…“, Wartezimmer/Masern) mit Scope-konformer Denkrichtung beantworten.],
  ),
)

// ── Einordnung ─────────────────────────────────────────────────
== Einordnung / Brücke

Im Direktzugang treffen Sie Patient:innen mit Fieber, Exanthem, Nackensteifigkeit oder
„nur“ unklarem Infekt plus MSK-Beschwerden. Das IfSG regelt hier nicht
„Physiotherapie-Technik“, sondern *öffentliche Gesundheit*: Wer meldet was wohin — und
was *ärztlich vorbehalten* ist. Ohne diese Hard Limits geraten Sie in Behandlungs- und
Haftungsfallen; mit ihnen bleibt der Gatekeeper-Auftrag klar: *erkennen → stoppen → richtig eskalieren*.

#process-pathway(
  (
    [Erkennen\ (Infektverdacht)],
    [Stop\ Infekt-„Therapie“],
    [Triage\ 112 vs. Arzt],
    [GA +\ Arzt priorisieren],
  ),
  title: [Gatekeeper-Pfad (Scan < 10 s)],
  color: palette.warning,
)

#styled-table(
  columns: (1.2fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Brücke],
    text(fill: white, weight: "bold", size: 8.5pt)[Verweis],
  ),
  [Drei Achsen / D-RISC (Klinikentscheidung)], [`→ II-1`],
  [Red Flags / Treat-vs-Refer], [`→ II-2`],
  [Sektorale Verbote (Rahmen, § 24 als Cluster)], [`→ I-3`],
  [Hygiene klinisch (Technik, Isolation-Logik)], [`→ III-6 (geplant)`],
  [Hygiene-Recht (Hygieneplan, Landes-HygVO)], [`→ I-6 (geplant)`],
  [Infektions-Klinik (Logik, Scripts)], [`→ V-8 (geplant)` · Meldelisten `→ Anh. A (geplant)`],
  [Exam-Cluster Recht × Klinik × Hygiene], [`→ VII-1 (geplant)`],
  [Haftung / Dokumentation (nicht hier verdoppeln)], [`→ I-7 (geplant)`],
)

#text(size: 9pt)[
  *Hinweis:* Dieses Kapitel ist *Lehrstoff*, keine Individualrechtsberatung. Unsichere
  Einzelfälle: `Quelle fehlt – manuelle Prüfung / Jurist erforderlich`.
]

// ── Drei Schichten als Layer-Stack ─────────────────────────────
== Drei getrennte Schichten (Logik vor Lexikon)

#layer-stack((
  (
    "A",
    [A · Melden — §§ 6, 8, 9 IfSG u. a.],
    [Bei Kenntnis meldepflichtiger Tatsachen (bei § 6 oft inkl. *Verdacht*): unverzüglich
      zuständiges *Gesundheitsamt*. *Wer* meldepflichtig ist: *§ 8 aktuelle Fassung* —
      nicht aus älteren HP-Lernskripten raten.],
    "info",
  ),
  (
    "B",
    [B · Nicht feststellen / nicht behandeln — § 24 IfSG],
    [Feststellung/Heilbehandlung bestimmter Krankheiten/Erreger *nur durch Ärzt:in*
      (enge Schnelltest-Ausnahmen, *nicht* Physio-Alltag). Keine Eigen-„Infekttherapie“,
      keine Diagnose-Narrative zu Katalogkrankheiten.],
    "danger",
  ),
  (
    "C",
    [C · Hygiene / Tätigkeitsverbote],
    [u. a. § 34 (Gemeinschaftseinrichtungen), TRBA. Personal- und Praxishygiene —
      Pflichtthema, *nicht* optional. Technik `→ III-6 (geplant)` · Recht `→ I-6 (geplant)`.],
    "warning",
  ),
))

#key-concept(term: [Normkern — scannbar, kein 40-Erreger-Lexikon])[
  Vollständige Erreger-/Krankheitslisten *nicht* auswendig — Logik + aktuelle Primärtexte +
  RKI-Übersicht; didaktische Listenvertiefung `→ Anh. A (geplant)`.
]

#styled-table(
  columns: (0.7fr, 2.3fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Ebene],
    text(fill: white, weight: "bold", size: 8.5pt)[Inhalt (nur aus S1 / Primäranker)],
  ),
  [*§ 6 IfSG*],
  [Namentlich meldepflichtige *Krankheiten* (Auszug-Logik): u. a. Verdacht/Erkrankung/Tod bei Botulismus, Cholera, Diphtherie, akuter Virushepatitis, HUS, virusbedingtem hämorrhagischem Fieber, Keuchhusten, Masern, Meningokokken-Meningitis/-Sepsis, Mumps, Poliomyelitis, Röteln, Tollwut, Typhus/Paratyphus, Windpocken, zoonotischer Influenza, Orthopocken u. a.; Tuberkulose (Erkrankung/Tod behandlungsbedürftig); weitere Tatbestände (u. a. Lebensmittelvergiftung/Gastroenteritis unter Bedingungen, impfbedingte über das Übliche hinausgehende Schäden, Tollwutexposition, bedrohliche/gehäufte unklare Lagen). *Liste ändert sich* — immer aktuelle Fassung. [IfSG § 6 \| Abruf 2026-07-15]],
  [*§ 7 IfSG*],
  [Meldepflichtige *Erregernachweise* (Labor; namentlich/nichtnamentlich je nach Nummer). HP Physio führt typischerweise *keine* Erregerdiagnostik — der *Arztvorbehalt § 24* greift aber auch bei Infektion mit §-7-Erregern. [IfSG § 7 \| Abruf 2026-07-15]],
  [*§ 24 IfSG (Kern Verbot)*],
  [Feststellung oder Heilbehandlung einer in § 6 Abs. 1 S. 1 Nr. 1, 2 oder 5 oder einer in § 34 Abs. 1 S. 1 genannten Krankheit *oder* einer Infektion mit einem in § 7 genannten Krankheitserreger *oder* einer sonstigen sexuell übertragbaren Krankheit darf *nur durch einen Arzt* erfolgen — mit enumerierten Ausnahmen für bestimmte patientennahe Schnelltests (Apotheke/Pflege/jedermann HIV/HCV/SARS-CoV-2/Syphilis etc.). [IfSG § 24 \| Abruf 2026-07-15]],
  [*Meldeweg (Rahmen)*],
  [*Wann:* unverzüglich bei Kenntnis der meldepflichtigen Tatsache (Verdacht kann genügen — § 6). *Wohin:* zuständiges Gesundheitsamt. *Wer:* § 8 IfSG (u. a. Ärzt:innen; weitere meldepflichtige Personen). *Ob und inwieweit Heilpraktiker:innen im Einzelfall meldepflichtig sind, ergibt sich aus § 8 in aktueller Fassung* — Primärtext lesen, nicht aus älteren HP-Lernskripten raten.],
  [*Sektor Physio (Konsequenz)*],
  [Keine eigenständige „Behandlung der Infektionskrankheit“; MSK bei möglichem Infekt → *Screening + Arzt*, nicht antibiotika-/„naturheil“-austherapieren.],
)

// ── Treat-vs-Refer: Urgency Lanes ──────────────────────────────
== Treat-vs-Refer (klinisch-operativ)

#urgency-lanes(
  title: [Kriterium → Dringlichkeit → Aktion],
  (
    (
      [*Meningismus + Fieber / petechiales Exanthem*],
      [112],
      "danger",
      [Keine Physiotherapie — keine Verzögerung durch „noch mobilisieren“],
    ),
    (
      [*Masernverdacht / hochkontagiöse Exanthemkrankheit*],
      [gleichtags GA/Arzt],
      "warning",
      [Isolation-Logik; *keine* Wartezimmer-Exposition `→ III-6 (geplant)`],
    ),
    (
      [*Unklarer Infekt + MSK*],
      [gleichtags Arzt],
      "warning",
      [Kein IfSG-„Behandeln“; Screening + Arzt, nicht austherapieren],
    ),
    (
      [*Gehäuft gleichartige Erkrankungen* im Umfeld (Praxis/Familie/Einrichtung)],
      [GA-Info prüfen],
      "info",
      [§ 6 Abs. 1 weitere Tatbestände (bedrohliche/gehäufte unklare Lagen)],
    ),
  ),
)

#decision-diagram({
  n-start((0, 0), [*Infektverdacht\ im DA*])
  e((0, 0), (0, 1))
  n-decision((0, 1), [Meningismus +\ Fieber / Petechien?])
  e((0, 1), (-1.4, 2.1), lab: [Ja], side: left)
  e((0, 1), (1.4, 2.1), lab: [Nein], side: right)
  n-danger((-1.4, 2.1), [*112*\ keine PT])
  n-decision((1.4, 2.1), [Masern /\ hochekontagiös\ oder unklar?])
  e((1.4, 2.1), (0.55, 3.3), lab: [Ja], side: left)
  e((1.4, 2.1), (2.25, 3.3), lab: [klar MSK], side: right)
  n-warn((0.55, 3.3), [gleichtags\ GA/Arzt\ kein IfSG-Treat])
  n-ok((2.25, 3.3), [PT möglich +\ Safety-Net])
})

#cave(title: [Gatekeeper (Alltag)])[
  Infektverdacht mit schwerer Systemik → *112/Notaufnahme*, keine PT; unklarer Infekt + MSK →
  *gleichtags Arzt*, kein IfSG-Behandeln; meldepflichtige Lage → *Gesundheitsamt + Arzt*
  priorisieren; Katalog/§ 8 unsicher → Primärtext + Jurist, nicht raten.
]

// ── Operational darf/nicht ─────────────────────────────────────
== Operational: Was darf ich / was nicht?

#styled-table(
  columns: (1.3fr, 0.55fr, 1.2fr),
  table.header(
    text(fill: white, weight: "bold", size: 8pt)[Situation / Handlung],
    text(fill: white, weight: "bold", size: 8pt)[Erlaubt?],
    text(fill: white, weight: "bold", size: 8pt)[Konsequenz / Alternative],
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

// ── Praxisbox: vertical-flow ───────────────────────────────────
== Praxisbox (kurz)

#vertical-flow(
  title: [Bei Infektverdacht in der Praxis — Reihenfolge],
  tone: "warning",
  (
    [*Stop* der eigenständigen Infekt-„Therapie“ und riskanter Exposition (Wartezimmer).],
    [*Klinische Dringlichkeit* klären: 112 vs. gleichtags Arzt (Lanes oben).],
    [*Gesundheitsamt* bei meldepflichtiger Tatsache/Verdacht — *unverzüglich*; §-8-Rolle aktuell prüfen.],
    [*Dokumentieren:* Symptome, Zeit, Maßnahmen, Verweis Arzt/GA, Aufklärung.],
    [Haftungs-/Dokumentationsrahmen nicht hier verdoppeln — `→ I-7 (geplant)`.],
  ),
)

// ── Fangfragen ─────────────────────────────────────────────────
== Fangfragen & Prüfungscluster

#styled-table(
  columns: (1fr, 1.4fr),
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

// ── Klinik-Brücke ──────────────────────────────────────────────
== Klinik-Brücke

#styled-table(
  columns: (1fr, 1.4fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Rechtliches Thema],
    text(fill: white, weight: "bold", size: 8.5pt)[Klinischer Anker],
  ),
  [§ 24 Arztvorbehalt], [Keine Eigen-„Infekttherapie“; MSK bei Systemik-Flags `→ II-2`],
  [Meningismus / Petechien], [Notfallpfad neuro/systemisch `→ III-4 (geplant)`; 112],
  [Masern / Exanthem / Kontagiosität], [Hygiene/Isolation `→ III-6 (geplant)`; Melde-/Arztweg hier],
  [Infektions-Krankheitslehre], [Logik-Verweis `→ V-8 (geplant)`; Einzel-LEG bleiben Anhang/LEG],
  [D-RISC / Gatekeeper], [Recht = Hard Limit; Klinikentscheidung `→ II-1`],
  [Exam-Transfer], [Recht × Hygiene × Notfall `→ VII-1 (geplant)`],
)

// ── Offene Lücken ──────────────────────────────────────────────
#callout(title: [Offene Lücken — nicht füllen], tone: "warning")[
  Aus S1 / Writer-GO — *Writer füllt nicht:*

  - *§ 8 IfSG:* konkrete Zuordnung Heilpraktiker:in / HP Physio als meldepflichtige Person — *nur* aktuelle Primärfassung; ältere Skripte unzuverlässig. *Keine HP-Status-Erfindung.*
  - *Vollständige* aktuelle §-6-/§-7-Kataloge (BGBl. / gesetze-im-internet vor Prüfung/Publikation abgleichen).
  - Landes-Vollzugshinweise, Formulare, digitale Meldewege.
  - Schnelltest-Ausnahmen des § 24 im Physio-Setting: im S1 nicht als freigegebene Praxisleistung belegt.
  - MasernschutzG / Personalpflichten in Einrichtungen: nicht Gegenstand dieses S1-Kerns — ggf. `→ I-3` / Jurist.

  Einzelfall: `Quelle fehlt – manuelle Prüfung / Jurist erforderlich`.
]

// ── Quellen ────────────────────────────────────────────────────
#section-break()

== Quellen / Normen

+ IfSG § 6 (meldepflichtige Krankheiten). URL: https://www.gesetze-im-internet.de/ifsg/__6.html (Abruf: 2026-07-15).
+ RKI — Meldepflichtige Krankheiten und Krankheitserreger (Übersicht). URL: https://www.rki.de/DE/Themen/Infektionskrankheiten/Meldewesen/Meldepflicht/meldepflichtige-krankheiten-und-krankheitserreger-node.html (Abruf: 2026-07-15).
+ IfSG § 7 (meldepflichtige Nachweise von Krankheitserregern). URL: https://www.gesetze-im-internet.de/ifsg/__7.html (Abruf: 2026-07-15).
+ IfSG § 24 (Arztvorbehalt Feststellung/Heilbehandlung). URL: https://www.gesetze-im-internet.de/ifsg/__24.html (Abruf: 2026-07-15).
+ IfSG § 8 (zur Meldung verpflichtete Personen). URL: https://www.gesetze-im-internet.de/ifsg/__8.html (Abruf: 2026-07-17). *Aktuelle Fassung lesen; Zuordnung im Einzelfall Jurist* — hier keine Personenkreis-/HP-Auslegung.
+ S1-Dossier: `content/dossiers/berufsrecht/ifsg-meldepflicht-behandlungsverbot.md` (Stand 2026-07-15, Status `ready-for-human-jurist`).

#callout(title: [Juristische Human-Prüfung], tone: "danger")[
  *Juristische Human-Prüfung vor Publikation erforderlich.* Draft ≠ Rechtsfreigabe ·
  Promote erst nach Jurist. Kataloge §§ 6/7 und §-8-Personenkreis vor Prüfung/Publikation
  gegen aktuelle Gesetzesfassung abgleichen.
]

// ── Critical Claims ────────────────────────────────────────────
#section-break()

== Critical Claims (Audit)

#text(size: 9pt, fill: luma(60))[
  Anhang / Audit-Tafel — *nicht* Handlungspfad. Claims unverändert aus Content
  (copy-through). Klinische Auditor-Ampel ≠ Rechtsfreigabe.
]

1. IfSG für HP Physio in *drei Schichten*: Melden (A) · Nicht feststellen/behandeln § 24 (B) · Hygiene/Tätigkeitsverbote (C)
2. *§ 24 IfSG*: Feststellung/Heilbehandlung enumerierter Infektionskrankheiten/Erreger (i. V. m. §§ 6, 7, 34) sowie sonstiger sexuell übertragbarer Krankheiten = *Arztvorbehalt* (enge Schnelltest-Ausnahmen)
3. *§ 6 IfSG*: namentlich meldepflichtige Krankheiten; bei vielen Tatbeständen *Verdacht* meldepflichtig; Katalog *ändert sich*
4. *§ 7 IfSG*: Labor-Erregernachweise; HP Physio typischerweise ohne eigene Erregerdiagnostik — *§ 24 greift trotzdem* bei Infektion mit §-7-Erregern
5. Meldeweg: *unverzüglich*, an *zuständiges Gesundheitsamt*; *Wer* meldet: *§ 8 aktuelle Fassung* (HP-Zuordnung nicht aus Sekundärskripten raten)
6. Sektor Physio: keine eigenständige Behandlung der Infektionskrankheit; MSK bei möglichem Infekt → Screening + Arzt
7. Meningismus + Fieber / petechiales Exanthem → *112*, keine PT
8. Masernverdacht / hochkontagiöse Exanthemkrankheit → gleichtags GA/Arzt, keine Wartezimmer-Exposition
9. Unklarer Infekt + MSK → gleichtags Arzt, *kein* IfSG-„Behandeln“
10. Gehäuft gleichartige Erkrankungen im Umfeld → GA-Info prüfen (§ 6 weitere Tatbestände)

#callout(title: [Human-in-the-loop], tone: "info")[
  *Juristische Human-Prüfung vor Publikation erforderlich.* Promote erst nach Jurist.
  Draft ≠ Rechtsfreigabe. Klinische Auditor-Ampel ≠ Rechtsfreigabe.
]
