// compose-chapter
// catalog_version: 0.1.0
// brief: domains/medical/briefs/iii2-bls-aed.brief.md
// feasibility: domains/medical/briefs/iii2-bls-aed.feasibility.md
// accept: domains/medical/briefs/iii2-bls-aed.accept.md
// content: /home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-iii2-bls-aed-notfallprozeduren.md
//
// E2E compose III-2 notfall-karte (post-Accept). Claims copy-through.
// Forms: stable catalog + BASIS only; dual protocol-steps for algorithm + AED.

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *

// ── S0 Opener ──────────────────────────────────────────────────
#chapter-opener(
  title: [BLS, AED, Seitenlage, Schock, Pulse — Handlungskarte Praxis],
  lead: [Handlungskarte · Praxis-Notfall / vitale Instabilität · Kursbuch III-2],
  number: "III-2",
)

// ── S1 Gatekeeper (F1) — early ─────────────────────────────────
#cave(title: [Gatekeeper — Praxis-Notfall])[
  Bei Kollaps, Bewusstlosigkeit oder vitaler Instabilität in der Praxis gilt
  *Erkennen → Alarmieren (112) → Basismaßnahmen bis Rettungsdienst*. Kein ALS,
  keine Medikamentengabe, kein „noch fertig behandeln“. Entscheidungsrahmen:
  `→ II-1`. Notrufkette/Plan/PECH-Detail: `→ III-1 (geplant)`.
]

// ── S2 Erkennungs-Trigger (F2) ─────────────────────────────────
#callout(title: [Erkennungs-Trigger (5–10 Sekunden)], tone: "warning")[
  - *Kollaps / Bewusstlosigkeit* — Patient:in nicht ansprechbar, stürzt, reaktionslos
  - *Keine normale Atmung* (Agonalatmung ≠ normale Atmung) oder Atmung *unklar*
  - *Thoraxschmerz* + Instabilität, *schwere Dyspnoe*, *schwere Blutung*,
    *Anaphylaxie-Verdacht* (Atemwege/Kreislauf/systemisch)
  - *FAST positiv* / Schlaganfall-Verdacht; *Krampfanfall >5 min* oder Serie
  - *Suizidalität* mit Plan/Mitteln/akuter Gefahr
  - Kontext: Therapie läuft — *sofort abbrechen*, Praxisbetrieb auf Notfall umschalten
]

// ── S3 Handlungstabelle 112 (F3) ───────────────────────────────
== Handlungstabelle — Gatekeeper → 112

#styled-table(
  columns: (1.2fr, 0.7fr, 1.1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Kriterium (Beobachtung/Angabe)],
    text(fill: white, weight: "bold", size: 8.5pt)[Dringlichkeit],
    text(fill: white, weight: "bold", size: 8.5pt)[Aktion],
  ),
  [*Keine normale Atmung* / Kreislaufstillstand-Verdacht],
  [*112 sofort*],
  [Notruf, *CPR beginnen*, *AED holen lassen*, bis Übergabe fortsetzen],
  [Bewusstlos, *Atmung normal*],
  [*112*],
  [*Stabile Seitenlage*, überwachen, bei Verschlechterung → CPR],
  [*Anaphylaxie* (systemisch: Atemwege, Kreislauf, Haut±GI)],
  [*112*],
  [Notfallplan; *keine* Eigenverabreichung verschreibungspflichtiger Notfallmedikamente (HP Physio i. d. R.)],
  [*FAST positiv* / Schlaganfall-Verdacht],
  [*112*],
  [Zeitfenster wahren — *keine* Verzögerung durch „noch mobilisieren“],
  [*ACS-Verdacht* (Thoraxdruck, vegetativ, Ausstrahlung)],
  [*112*],
  [Ruhe, überwachen, BLS-Bereitschaft],
  [*Status epilepticus* / Anfall *>5 min* oder Serie],
  [*112*],
  [Verletzungsschutz, *nichts* zwischen die Zähne],
  [*Schwere Blutung* / schweres Trauma],
  [*112*],
  [Druckverband, Schockmanagement (s. Lagerung)],
  [*Suizidalität* mit Plan/Mitteln/akuter Gefahr],
  [*112* / Krisenintervention],
  [Sofort Schutz/Notruf — nicht allein lassen],
  [Dringlich, aber *nicht* lebensbedrohlich],
  [*116117*],
  [Ärztlicher Bereitschaftsdienst — *kein* Ersatz für 112 bei Lebensgefahr],
  [Unklar, aber red-flag-nah / vitale Unsicherheit],
  [*Default-to-Danger*],
  [*112* und Basismaßnahmen statt „abwarten und weiter behandeln“],
)

Handlungsschwellen laut S1 `notfall-prozeduren-bls` (§2–§5).

// ── S4 Primär-Algorithmus (F4) — protocol-steps ────────────────
== Primär-Algorithmus: Bewusstseinsstörung / Kollaps

#protocol-steps(
  title: [Primär-Algorithmus],
  tone: "danger",
  (
    (label: "1", body: [Szene sichern; Handschuhe wenn verfügbar]),
    (
      label: "2",
      body: [*Ansprechen + Schmerzreiz*; Atemwege freimachen (Überstrecken /
        Head-tilt-chin-lift — *nicht* bei HWS-Trauma-Verdacht erzwingen)],
    ),
    (label: "3", body: [*Atmung normal?* — max. *10 s* beurteilen]),
    (
      label: "4a",
      body: [Atmung *normal*, bewusstlos → *stabile Seitenlage*, *112*, überwachen],
    ),
    (
      label: "4b",
      body: [*Keine* normale Atmung *oder unsicher* → *112*, *CPR beginnen*,
        *AED holen lassen*],
    ),
    (
      label: "5",
      body: [CPR *30:2* (Erwachsene, Standardkurs) bzw. *nur Kompressionen*, wenn
        ungeschult/unwillig zu beatmen; *AED-Anweisungen folgen*],
    ),
    (
      label: "6",
      body: [Bis *Übergabe Rettungsdienst* fortsetzen — minimale Pausen],
    ),
  ),
)

#text(size: 9pt)[
  *Kompressions-Rahmen (Erwachsene, ERC/GRC-Kontext):* ausreichend tief, ausreichend
  schnell, vollständige Entlastung, minimale Pausen. Exakte Zielzahlen (z. B. 100–120/min,
  ~5–6 cm) im *aktuellen BLS/AED-Kurs* trainieren — hier *nicht* als starre Prüfungszahl
  ohne Kursnachweis festgeschrieben.
]

// ── S5 AED (F4) — second protocol module ───────────────────────
== AED — Handlungskern

#protocol-steps(
  title: [AED — Handlungskern],
  tone: "warning",
  (
    [AED *sofort holen lassen* (parallel zu Notruf/CPR), Standort im
      *Praxis-Notfallplan* bekannt.],
    [Gerät *einschalten*, Pads nach Pictogramm (trockene Haut, Metall/Pflaster
      beachten laut Geräteanweisung).],
    [*AED-Anweisungen 1:1 folgen* — Analysephase: *niemand berührt* Patient:in.],
    [Schock empfohlen → freigeben, auslösen, *sofort CPR fortsetzen* bis nächste
      Analyse/Übergabe.],
    [Schock nicht empfohlen → *CPR fortsetzen*, Gerät angeschlossen lassen.],
  ),
)

*Scope:* AED-Algorithmus ja; manuelle Defibrillation / ALS / Intubation *nein*
(siehe Scope HP Physio).

// ── S6 Lagerungen ──────────────────────────────────────────────
== Lagerungen (indikationsorientiert)

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Lagerung],
    text(fill: white, weight: "bold", size: 8.5pt)[Indikation (typisch)],
    text(fill: white, weight: "bold", size: 8.5pt)[Nicht bei],
  ),
  [*Stabile Seitenlage*],
  [Bewusstlos, *ausreichende Eigenatmung*],
  [Reanimation; schwere Trauma unklar (Individualentscheid)],
  [*Flach / CPR-Position*],
  [Kreislaufstillstand],
  [—],
  [*Oberkörper hoch*],
  [Dyspnoe, kardial dekompensiert (*ansprechbar*)],
  [Schock mit Bewusstseinstrübung unklar],
  [*Schocklage* (Beine erhöht)],
  [V. a. Volumenmangelschock, blass, *wach*],
  [Herzinsuffizienz/Lungenödem-Verdacht, schwere Dyspnoe, Trauma Beine/Becken unklar],
  [*PECH* (MSK-Weichteil)],
  [Akutes Weichteiltrauma],
  [Fraktur/Dislokation unklar → ruhigstellen, 112 / Notaufnahme nach Schwere; Detail `→ III-1 (geplant)`],
)

*PECH:* Pause · Eis (kühl, nicht extrem direkt auf Haut) · Compression · Hochlagerung —
*kein* Ersatz für Fraktur-/Kompartment-Screening. MSK-vital (z. B. Cauda):
`→ III-5-Cauda (Welle, parallel)`.

// ── S7 Überwachung ─────────────────────────────────────────────
== Überwachung / „Pulse“ — nur S1-Rahmen

Im BLS-Pfad entscheidet primär: *Bewusstsein + normale Atmung (≤10 s)* — nicht ein
inventierter Zahlenkatalog.

#styled-table(
  columns: (1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Beobachtung],
    text(fill: white, weight: "bold", size: 8.5pt)[Konsequenz],
  ),
  [Bewusstlos, Atmung *normal*],
  [Seitenlage, 112, *fortlaufend überwachen* (Atmung/Reaktion)],
  [Atmung stoppt / wird unnormal / unklar],
  [Sofort *CPR + AED*, 112 falls noch nicht],
  [Ansprechbar, instabil (z. B. Schockzeichen, schwere Dyspnoe)],
  [112-Pfad der Handlungstabelle; Lagerung indikationsgerecht],
)

*Nicht aus S1 abgeleitet — daher hier nicht als Grenzwerte gesetzt:* konkrete
Pulsfrequenz-, RR- oder SpO₂-Schwellen. Vitalparameter nur nutzen, wenn vor Ort
messbar und *im Gesamtkontext* der 112-Tabelle; bei Unsicherheit *Default-to-Danger*.

// ── S8 Sofortmaßnahmen Organisation ────────────────────────────
== Sofortmaßnahmen vor Ort (Organisation / Erste Hilfe)

#protocol-steps(
  title: [Organisation / Erste Hilfe],
  tone: "info",
  (
    [Therapie *sofort stoppen*; Kolleg:in: *112* + AED holen (Rollen laut Notfallplan)],
    [Szene sichern, Handschuhe, Patient:in nicht allein lassen],
    [BLS/AED bis RD; bei Ansprechbarkeit: beruhigen, indizierte Lagerung],
    [*Dokumentation* nach Ereignis: Uhrzeit, Maßnahmen, Übergabe],
    [*Keine* ALS-Medikamente, *keine* Eigen-Injektionen verschreibungspflichtiger
      Notfall-AM (Standard-HP-Physio: *nein*)],
  ),
)

// ── S9 Scope ───────────────────────────────────────────────────
== Scope HP Physio (binär)

#comparison-table(
  headers: ([Erlaubt / erwartet], [Nicht Scope]),
  rows: (
    (
      [Erkennen, Alarmieren, *BLS/AED*, Lagerung, Übergabe],
      [Intubation, Medikamenten-ALS, manuelle Defibrillation ohne AED-Algorithmus],
    ),
    (
      [Abbruch Therapie bei Notfall-Red-Flag],
      [„Fertig behandeln“ trotz Instabilität],
    ),
    (
      [Dokumentation, Zeugen, Notfallplan-Training],
      [Diagnosestellung jenseits Notfallverdacht],
    ),
  ),
)

// ── S10 Praxis-Notfallplan ─────────────────────────────────────
== Praxis-Notfallplan (Mindestinhalte)

#protocol-steps(
  title: [Praxis-Notfallplan],
  tone: "info",
  (
    [Standort *AED* / Erste-Hilfe-Material / Notrufnummern-Liste (*112*, *116117*,
      regionaler Giftnotruf)],
    [Rollen: Wer alarmiert, wer CPR, wer Empfang Rettungsdienst],
    [Dokumentation nach Ereignis],
    [Nachsorge: Defusing, BG/meldepflichtige Ereignisse, Gerätecheck],
    [Regelmäßiges *BLS/AED-Training* + Auffrischung dokumentieren],
  ),
)

Landesrechtliche *Pflichtausstattung AED* in HP-Praxen: `Quelle fehlt – manuelle Prüfung erforderlich` (S1 §8; oft empfohlen, nicht bundesweit einheitlich Pflicht).

// ── S11 Verwechslungen ─────────────────────────────────────────
#ddx-box(title: [Häufige Verwechslungen (kurz)])[
  - *„Kurze Ohnmacht / vasovagal“* → Atmung unklar oder nicht normal → *CPR + 112*, nicht abwarten
  - *Agonalatmung / Schnappatmung* → *Keine* normale Atmung → wie Kreislaufstillstand behandeln
  - *„Noch durchatmen, wirkt schläfrig“* → Bewusstlos + Eigenatmung → *Seitenlage + 112*, engmaschig überwachen
  - *Dringlicher Hausarztwunsch* → Lebensgefahr/Instabilität → *112*, nicht 116117
]

// ── S12 Verweise / Quellen (quiet) ─────────────────────────────
#section-break()

== Master- & Pfad-Verweise

- Drei-Achsen / D-RISC / Default-to-Danger → `II-1`
- Notrufschema, Plan, PECH, HI-Lagerung (Cluster) → `III-1 (geplant)`
- MSK-vital Cauda (Handlungskarte) → `III-5`
- Krankheitsspezifische Notfallkarten → `III-…`
- AMG / Medikamenten-Grenzen → `I-3` / Dossier Arzneimittel

== Quellen (minimal)

+ European Resuscitation Council. CPR Guidelines (aktuelle Fassung). URL: https://cprguidelines.eu/
+ Deutscher Rat für Wiederbelebung (GRC). URL: https://www.grc-org.de/
+ 116117 Ärztlicher Bereitschaftsdienst. URL: https://www.116117.de/
+ Notruf 112 — bundesweite Notrufnummer (öffentliche Infrastruktur DE).
+ S1-Dossier: `content/dossiers/querschnitt/notfall-prozeduren-bls.md`

// ── Critical Claims (Audit appendix) ────────────────────────────
#section-break()

== Critical Claims (Audit)

#text(size: 9pt, fill: luma(60))[
  Anhang / Audit-Tafel — *nicht* Handlungspfad. Claims unverändert aus Content
  (copy-through).
]

1. Bei *fehlender normaler Atmung* / Kreislaufstillstand-Verdacht: *112 + CPR + AED* bis Übergabe
2. Bewusstlos *mit* normaler Atmung: *stabile Seitenlage + 112 + Überwachen* — nicht reanimieren
3. Atmungsbeurteilung max. *10 s*; bei Unsicherheit wie „keine normale Atmung“ behandeln
4. CPR-Standard Erwachsene *30:2* (Kurs) bzw. nur Kompressionen wenn ungeschult/unwillig; AED-Anweisungen folgen
5. *116117* = ärztlicher Bereitschaftsdienst — *kein* Ersatz für *112* bei Lebensgefahr
6. *Schocklage* (Beine hoch) nur bei V. a. Volumenmangel, blass, wach — *nicht* bei HI/Lungenödem-Verdacht, schwerer Dyspnoe, unklarem Bein-/Becken-Trauma
7. HP Physio: i. d. R. *keine* Eigenverabreichung verschreibungspflichtiger Notfallmedikamente (Anaphylaxie: 112 + Plan)
8. BLS-Zahlen (Frequenz/Tiefe) folgen *aktueller* ERC/GRC-Kursnorm und bedürfen periodischer Auffrischung — hier rahmenhaft, nicht als starre Examenszahl ohne Kurs

#callout(title: [Human-in-the-loop], tone: "info")[
  Curriculum- und Sicherheitsentwurf. Reanimationsleitlinien (ERC/GRC), Kursstandards
  BLS/AED und Praxis-Notfallplan vor Publikation/Unterricht *fachlich freigeben* und
  periodisch erneuern. AED-Pflichtausstattung landesrechtlich und AMG-Grenzen
  Notfallmedikamente manuell prüfen. Keine ALS-/Medikamenteninhalte als HP-Physio-Standard
  übernehmen.
]
