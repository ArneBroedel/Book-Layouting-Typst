// compose-chapter · creative-first
// catalog_version: 0.1.0 (preferred library, advisory)
// brief: domains/medical/briefs/iii2-bls-aed.brief.md
// content: /home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-iii2-bls-aed-notfallprozeduren.md
// tools: bookkit, bookkit-didactics, fletcher 0.5.8, cetz 0.5.2, pilot visual.typ
// wave: 2026-07-welle-03-final-10 · v2 creative redesign
// Claims: copy-through · no invented thresholds

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "/pilots/kursbuch-welle-03-compose/lib/visual.typ": *

#chapter-opener(
  title: [BLS, AED, Seitenlage, Schock, Pulse — Handlungskarte Praxis],
  lead: [Handlungskarte · Praxis-Notfall / vitale Instabilität · Kursbuch III-2],
  number: "III-2",
)

// ── Gatekeeper ─────────────────────────────────────────────────
#cave(title: [Gatekeeper — Praxis-Notfall])[
  Bei Kollaps, Bewusstlosigkeit oder vitaler Instabilität in der Praxis gilt
  *Erkennen → Alarmieren (112) → Basismaßnahmen bis Rettungsdienst*. Kein ALS,
  keine Medikamentengabe, kein „noch fertig behandeln“. Entscheidungsrahmen:
  `→ II-1`. Notrufkette/Plan/PECH-Detail: `→ III-1 (geplant)`.
]

#process-pathway(
  (
    [Erkennen\ (Trigger)],
    [Alarmieren\ *112*],
    [BLS / AED\ Basis],
    [Lagerung /\ Überwachen],
    [Übergabe\ RD],
  ),
  title: [Handlungspfad unter Stress (Scan < 10 s)],
  color: palette.danger,
)

// ── Erkennungs-Trigger ─────────────────────────────────────────
== Erkennungs-Trigger (5–10 Sekunden)

#cue-cluster(
  title: [Kern-Trigger — scannen, nicht lesen],
  tone: "danger",
  (
    [*Kollaps / Bewusstlosigkeit* — Patient:in nicht ansprechbar, stürzt, reaktionslos],
    [*Keine normale Atmung* (Agonalatmung ≠ normale Atmung) oder Atmung *unklar*],
    [*Thoraxschmerz* + Instabilität, *schwere Dyspnoe*, *schwere Blutung*, *Anaphylaxie-Verdacht* (Atemwege/Kreislauf/systemisch)],
    [*FAST positiv* / Schlaganfall-Verdacht; *Krampfanfall >5 min* oder Serie],
    [*Suizidalität* mit Plan/Mitteln/akuter Gefahr],
    [Kontext: Therapie läuft — *sofort abbrechen*, Praxisbetrieb auf Notfall umschalten],
  ),
)

// ── Handlungstabelle 112 ───────────────────────────────────────
== Handlungstabelle — Gatekeeper → 112

#urgency-lanes(
  title: [Kriterium → Dringlichkeit → Aktion],
  (
    ([*Keine normale Atmung* / Kreislaufstillstand-Verdacht], [112 sofort], "danger",
      [Notruf, *CPR beginnen*, *AED holen lassen*, bis Übergabe fortsetzen]),
    ([Bewusstlos, *Atmung normal*], [112], "danger",
      [*Stabile Seitenlage*, überwachen, bei Verschlechterung → CPR]),
    ([*Anaphylaxie* (systemisch: Atemwege, Kreislauf, Haut±GI)], [112], "danger",
      [Notfallplan; *keine* Eigenverabreichung verschreibungspflichtiger Notfallmedikamente (HP Physio i. d. R.)]),
    ([*FAST positiv* / Schlaganfall-Verdacht], [112], "danger",
      [Zeitfenster wahren — *keine* Verzögerung durch „noch mobilisieren“]),
    ([*ACS-Verdacht* (Thoraxdruck, vegetativ, Ausstrahlung)], [112], "danger",
      [Ruhe, überwachen, BLS-Bereitschaft]),
    ([*Status epilepticus* / Anfall *>5 min* oder Serie], [112], "danger",
      [Verletzungsschutz, *nichts* zwischen die Zähne]),
    ([*Schwere Blutung* / schweres Trauma], [112], "danger",
      [Druckverband, Schockmanagement (s. Lagerung)]),
    ([*Suizidalität* mit Plan/Mitteln/akuter Gefahr], [112 / Krisen], "danger",
      [Sofort Schutz/Notruf — nicht allein lassen]),
    ([Dringlich, aber *nicht* lebensbedrohlich], [116117], "warning",
      [Ärztlicher Bereitschaftsdienst — *kein* Ersatz für 112 bei Lebensgefahr]),
    ([Unklar, aber red-flag-nah / vitale Unsicherheit], [Default-to-Danger], "danger",
      [*112* und Basismaßnahmen statt „abwarten und weiter behandeln“]),
  ),
)

#text(size: 8.5pt, fill: luma(80))[
  Handlungsschwellen laut S1 `notfall-prozeduren-bls` (§2–§5).
]

// ── Primär-Algorithmus ─────────────────────────────────────────
== Primär-Algorithmus: Bewusstseinsstörung / Kollaps

#decision-diagram(spacing: (14mm, 12mm), {
  n-start((0, 0), [*Kollaps /\ Bewusstlosigkeit*])
  e((0, 0), (0, 1))
  n-info((0, 1), [1–2 · Szene sichern\ Ansprechen + Schmerzreiz\ Atemwege freimachen])
  e((0, 1), (0, 2))
  n-decision((0, 2), [3 · Atmung normal?\ max. *10 s*])
  e((0, 2), (-1.55, 3.3), lab: [*4a* Ja], side: left)
  e((0, 2), (1.55, 3.3), lab: [*4b* Nein / unsicher], side: right)
  n-ok((-1.55, 3.3), [Stabile Seitenlage\ 112 · überwachen])
  n-danger((1.55, 3.3), [112 · CPR\ AED holen lassen])
  e((1.55, 3.3), (1.55, 4.4))
  n-warn((1.55, 4.4), [5–6 · CPR 30:2\ bzw. nur Kompressionen\ bis Übergabe RD])
})

#text(size: type-scale.small, fill: palette.text-muted)[
  *Kompressions-Rahmen (Erwachsene, ERC/GRC-Kontext):* ausreichend tief, ausreichend
  schnell, vollständige Entlastung, minimale Pausen. Exakte Zielzahlen (z. B. 100–120/min,
  ~5–6 cm) im *aktuellen BLS/AED-Kurs* trainieren — hier *nicht* als starre Prüfungszahl
  ohne Kursnachweis festgeschrieben. [Erwachsene | ERC/GRC BLS | Leitlinienzyklus | ERC/S1 §3]
]

// ── AED ────────────────────────────────────────────────────────
== AED — Handlungskern

#vertical-flow(
  title: [AED-Sequenz — parallel zu Notruf/CPR],
  tone: "warning",
  (
    [AED *sofort holen lassen* (parallel zu Notruf/CPR), Standort im *Praxis-Notfallplan* bekannt.],
    [Gerät *einschalten*, Pads nach Pictogramm (trockene Haut, Metall/Pflaster beachten laut Geräteanweisung).],
    [*AED-Anweisungen 1:1 folgen* — Analysephase: *niemand berührt* Patient:in.],
    [Schock empfohlen → freigeben, auslösen, *sofort CPR fortsetzen* bis nächste Analyse/Übergabe.],
    [Schock nicht empfohlen → *CPR fortsetzen*, Gerät angeschlossen lassen.],
  ),
)

#text(size: type-scale.small)[
  *Scope:* AED-Algorithmus ja; manuelle Defibrillation / ALS / Intubation *nein* (siehe Scope HP Physio).
]

// ── Lagerungen ─────────────────────────────────────────────────
== Lagerungen (indikationsorientiert)

#styled-table(
  columns: (1fr, 1.15fr, 1.15fr),
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

#text(size: type-scale.small, fill: palette.text-muted)[
  *PECH:* Pause · Eis (kühl, nicht extrem direkt auf Haut) · Compression · Hochlagerung —
  *kein* Ersatz für Fraktur-/Kompartment-Screening. MSK-vital (z. B. Cauda):
  `→ III-5-Cauda (Welle, parallel)`.
]

// ── Überwachung ────────────────────────────────────────────────
== Überwachung / „Pulse“ — nur S1-Rahmen

#callout(title: [Primärentscheidung BLS], tone: "info")[
  Im BLS-Pfad entscheidet primär: *Bewusstsein + normale Atmung (≤10 s)* — nicht ein
  inventierter Zahlenkatalog.
]

#urgency-lanes(
  title: [Beobachtung → Konsequenz],
  (
    ([Bewusstlos, Atmung *normal*], [Seitenlage + 112], "warning",
      [*Fortlaufend überwachen* (Atmung/Reaktion)]),
    ([Atmung stoppt / wird unnormal / unklar], [CPR + AED], "danger",
      [Sofort *CPR + AED*, 112 falls noch nicht]),
    ([Ansprechbar, instabil (Schockzeichen, schwere Dyspnoe)], [112-Pfad], "danger",
      [Handlungstabelle; Lagerung indikationsgerecht]),
  ),
)

#text(size: 8.5pt, fill: luma(80))[
  *Nicht aus S1 abgeleitet — daher hier nicht als Grenzwerte gesetzt:* konkrete
  Pulsfrequenz-, RR- oder SpO₂-Schwellen. Vitalparameter nur nutzen, wenn vor Ort
  messbar und *im Gesamtkontext* der 112-Tabelle; bei Unsicherheit *Default-to-Danger*.
]

// ── Organisation ───────────────────────────────────────────────
== Sofortmaßnahmen vor Ort (Organisation / Erste Hilfe)

#vertical-flow(
  title: [Organisation — Reihenfolge einhalten],
  tone: "danger",
  (
    [Therapie *sofort stoppen*; Kolleg:in: *112* + AED holen (Rollen laut Notfallplan)],
    [Szene sichern, Handschuhe, Patient:in nicht allein lassen],
    [BLS/AED bis RD; bei Ansprechbarkeit: beruhigen, indizierte Lagerung],
    [*Dokumentation* nach Ereignis: Uhrzeit, Maßnahmen, Übergabe],
    [*Keine* ALS-Medikamente, *keine* Eigen-Injektionen verschreibungspflichtiger Notfall-AM (außer dokumentiert geschult/verordnet *und* rechtlich zulässig — Standard-HP-Physio: *nein*)],
  ),
)

// ── Scope ──────────────────────────────────────────────────────
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

// ── Praxis-Notfallplan ─────────────────────────────────────────
== Praxis-Notfallplan (Mindestinhalte)

#vertical-flow(
  title: [Mindestinhalte Notfallplan],
  tone: "info",
  (
    [Standort *AED* / Erste-Hilfe-Material / Notrufnummern-Liste (*112*, *116117*, regionaler Giftnotruf)],
    [Rollen: Wer alarmiert, wer CPR, wer Empfang Rettungsdienst],
    [Dokumentation nach Ereignis],
    [Nachsorge: Defusing, BG/meldepflichtige Ereignisse, Gerätecheck],
    [Regelmäßiges *BLS/AED-Training* + Auffrischung dokumentieren],
  ),
)

#text(size: 8.5pt, fill: luma(80))[
  Landesrechtliche *Pflichtausstattung AED* in HP-Praxen:
  `Quelle fehlt – manuelle Prüfung erforderlich` (S1 §8; oft empfohlen, nicht bundesweit einheitlich Pflicht).
]

// ── Verwechslungen ─────────────────────────────────────────────
== Häufige Verwechslungen (kurz)

#contrast-pairs(
  (
    ([„Kurze Ohnmacht / vasovagal“], [Atmung unklar oder nicht normal → *CPR + 112*, nicht abwarten]),
    ([Agonalatmung / Schnappatmung], [*Keine* normale Atmung → wie Kreislaufstillstand behandeln]),
    ([„Noch durchatmen, wirkt schläfrig“], [Bewusstlos + Eigenatmung → *Seitenlage + 112*, engmaschig überwachen]),
    ([Dringlicher Hausarztwunsch], [Lebensgefahr/Instabilität → *112*, nicht 116117]),
  ),
)

#section-break()

== Master- & Pfad-Verweise

- Drei-Achsen / D-RISC / Default-to-Danger → `II-1`
- Notrufschema, Plan, PECH, HI-Lagerung (Cluster) → `III-1 (geplant)`
- MSK-vital Cauda (Handlungskarte) → `III-5-Cauda (Welle, parallel)`
- Krankheitsspezifische Notfallkarten (LE, …) → `III-3-LE (existiert-staging)` / weitere `III-… (geplant)`
- AMG / Medikamenten-Grenzen → `I-3 (existiert-staging)` / Dossier Arzneimittel

== Quellen (minimal)

+ European Resuscitation Council. CPR Guidelines (aktuelle Fassung). URL: https://cprguidelines.eu/ (Abruf: 2026-07-15).
+ Deutscher Rat für Wiederbelebung (GRC). URL: https://www.grc-org.de/ (Abruf: 2026-07-15).
+ 116117 Ärztlicher Bereitschaftsdienst. URL: https://www.116117.de/ (Abruf: 2026-07-15).
+ Notruf 112 — bundesweite Notrufnummer (öffentliche Infrastruktur DE).
+ S1-Dossier: `content/dossiers/querschnitt/notfall-prozeduren-bls.md` (Status `ready-for-human`, Stand 2026-07-15).

#text(size: 8.5pt, fill: luma(80))[
  Handlungen/Schwellen laut S1 `notfall-prozeduren-bls`; BLS-Parameter periodisch am Kursstandard ERC/GRC erneuern.
]

// ── Critical Claims (quiet appendix) ───────────────────────────
#section-break()

== Critical Claims (Audit)

#text(size: 9pt, fill: luma(60))[
  Anhang / Audit-Tafel — *nicht* Handlungspfad. Claims unverändert aus Content (copy-through).
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
