// Auto-generated from chapter-ii1-drei-achsen-drisc.md — layout only; clinical text not rewritten.
// Source: Kursbuch pilot 2026-07-welle-03-final-10
#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *

#chapter-opener(
  title: [II-1 Drei-Achsen-Modell & D-RISC],
  lead: [Kursbuch-Pilot II-1 · Layout via bookkit + bookkit-didactics],
)

#tag[II-1] #badge[pilot]

*Untertitel:* Das Betriebssystem des Direktzugangs — *R + I + S → C*, nicht Bauchgefühl.

#memo[*Gatekeeper in einem Atemzug:* Jede klinische Situation wird auf *drei Fragen* verdichtet: *Wie dringend ärztlich?* · *Ist die geplante Maßnahme jetzt sicher?* · *Lohnt PT-Nutzen jetzt?* — danach folgt ein *konkreter Plan (C)*.]

#section-break()

== Lernziele

Nach diesem Kapitel können Sie:

+ das *Drei-Achsen-Modell* (Medical-Referral / PT-Safety / PT-Benefit) als Gatekeeper-Raster benennen und anwenden;
+ die *D-RISC-Achsen R, I, S* stufen (1–4) und daraus *C (Classification)* als Handlungsplan ableiten;
+ *Default-to-Danger* (R/S) und *Burden-of-Proof* (I) als asymmetrische Denkregeln operationalisieren;
+ Flags nur *mappen* (nicht neu definieren) und jede Demo mit *R + I + S → C* abschließen — Detail-Flags → `→ II-2`;
+ typische Fehlschlüsse (Nutzen vor Sicherheit, R3-Farben mit Flag-Orange verwechseln, C ohne R/I/S) vermeiden.

#section-break()

== Rolle im Buch (Anti-Doppelung)

#styled-table(
  columns: (1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Dieses Kapitel ist …],
    text(fill: white, weight: "bold", size: 8.5pt)[Es ist *nicht* …],
  ),
  [*Betriebssystem* der Entscheidung (Achsen, Stufen, Synthese C)],
  [Flag-Lexikon und Treat-vs-Refer-Matrix im Detail (`→ II-2`)],
  [Erklärung von *Default-to-Danger* und *Burden-of-Proof*],
  [Algorithmus am Leitsymptom (`→ IV-2 (geplant)`, `→ IV-… (geplant)`)],
  [Brücke: Drei-Achsen ↔ D-RISC ↔ C-Muster],
  [Illness Script / Pathophysiologie (`→ V-Cauda (geplant)`, `→ V-… (geplant)`)],
  [2 Synthese-Beispiele (R+I+S→C)],
  [Notfall-Handlungskarte mit Schwellen (`→ III-2`, `→ III-… (geplant)`)],
  [Denkgerüst vor Workflow/SN-13],
  [Termin→Doku-Workflow (`→ II-3 (geplant)`), SN-13-Drill (`→ II-2b (geplant)`)],
)

*Kurz:* Hier die *Logik*. In II-2 die *Flag-Grammatik*, in IV der Symptom-Flow, in V die Krankheitsbegründung, in III die ½-Seiten-Aktion.

#section-break()

== Kernmodell / Definitionen

=== Drei-Achsen-Modell (A–B–C)

*(Didaktisch/operational — Kursbuch-Kern laut Projektziel; keine amtliche Klassifikation.)*

Jede klinische Situation wird auf *drei unabhängigen Achsen* bewertet:

#styled-table(
  columns: (1fr, 1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Achse],
    text(fill: white, weight: "bold", size: 8.5pt)[Name],
    text(fill: white, weight: "bold", size: 8.5pt)[Leitfrage],
    text(fill: white, weight: "bold", size: 8.5pt)[Pole (qualitativ)],
  ),
  [*A*],
  [*Medical-Referral* (Arzt-Check)],
  [Wie dringend ist eine ärztliche Abklärung?],
  [Notfall (112) ↔ nicht erforderlich],
  [*B*],
  [*PT-Safety* (Sicherheit)],
  [Wie sicher ist die *geplante* physiotherapeutische Maßnahme *jetzt*?],
  [Kontraindiziert ↔ uneingeschränkt sicher],
  [*C*],
  [*PT-Benefit* (Nutzen)],
  [Wie hoch ist der zu erwartende Nutzen der Physiotherapie *jetzt*?],
  [Irrelevant ↔ hochrelevant / zeitkritisch],
)

*Regel:* Die Achsen sind *nicht austauschbar*. Hoher Nutzen (C) *heilt* keine unsichere Maßnahme (B) und *ersetzt* keine dringende Abklärung (A).

=== D-RISC = Operationalisierung der drei Achsen

*D-RISC* (*Direct-Access & Risk-Evaluation*; Wortspiel „Derisk“): systematisches Entscheidungsmodell für den Direktzugang. Es macht den unsichtbaren Denkprozess sichtbar.

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[D-RISC],
    text(fill: white, weight: "bold", size: 8.5pt)[Entspricht Drei-Achsen],
    text(fill: white, weight: "bold", size: 8.5pt)[Denkanker],
  ),
  [*R* Referral],
  [Achse A Medical-Referral],
  [*Beweise mir, dass es KEIN Notfall / kein dringender Arztbedarf ist.*],
  [*I* Indication],
  [Achse C PT-Benefit],
  [*Beweise mir, warum die Maßnahme jetzt helfen soll.*],
  [*S* Safety],
  [Achse B PT-Safety],
  [*Beweise mir, dass diese Maßnahme jetzt sicher ist.*],
  [*C* Classification],
  [Synthese → Handlungsplan],
  [*Was mache ich konkret in den nächsten Minuten/Stunden?*],
)

#callout(title: [Hinweis], tone: "warning")[*Hinweis Nomenklatur:* „C“ im Drei-Achsen-Modell = *PT-Benefit*. „C“ in D-RISC = *Classification* (Plan). Im Text immer *ausschreiben* oder *D-RISC-C* sagen, wenn Verwechslung droht.]

=== Asymmetrisches Denken (Pflicht-Logik)

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Check],
    text(fill: white, weight: "bold", size: 8.5pt)[Default],
    text(fill: white, weight: "bold", size: 8.5pt)[Beweislast],
  ),
  [*R & S* (Sicherheit)],
  [*Default-to-Danger:* Start bei *R4 / S4*, bis Befunde die Herabstufung erlauben],
  [Gefahr muss *aktiv entkräftet* werden],
  [*I* (Nutzen)],
  [*Burden-of-Proof:* Start bei *I1*, bis Muster/Evidenz/Feedback Nutzen belegen],
  [Nutzen wird *nicht vorausgesetzt*],
)

*(Framework-Claim — Blueprint D-RISC; didaktisch/operational.)*

=== Stufen R / I / S

*(Framework-Stufen aus Kursbuch-Blueprint / Legacy-Roh `d-risc.md`. *Keine* krankheitsspezifischen Schwellen — die stehen in KL/Notfall-Masters.)*

==== Achse R — Referral

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Stufe],
    text(fill: white, weight: "bold", size: 8.5pt)[Label],
    text(fill: white, weight: "bold", size: 8.5pt)[Aktion (Framework)],
  ),
  [*R4*],
  [Notfall],
  [*112* / ED-Rettungskette; keine riskante PT],
  [*R3*],
  [Dringend],
  [Ärztliche Abklärung zeitnah (Framework-Orientierung ≤ 24–72 h). *Bei Rot-Flag / krankheitsspezifischer RF-Lage: gleichtags/ED — nicht das 72-h-Fenster abwarten.* KL-/Notfall-Masters haben Vorrang (`→ II-2`, `→ V-…`/`→ III-…`).],
  [*R2*],
  [Empfohlen],
  [Ärztliche Diagnose/Absicherung sinnvoll; PT ggf. parallel unter Safety-Netting],
  [*R1*],
  [Nicht erforderlich],
  [Behandlung in therapeutischer Eigenverantwortung möglich],
)

*Framework-Stunden ≠ Leitlinien-Triage.*

==== Achse I — Indication

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Stufe],
    text(fill: white, weight: "bold", size: 8.5pt)[Label],
    text(fill: white, weight: "bold", size: 8.5pt)[Bedeutung],
  ),
  [*I4*],
  [Hochrelevant / zeitkritisch],
  [PT ist primäre / essenzielle Therapie],
  [*I3*],
  [Relevant],
  [Kernbestandteil des Plans],
  [*I2*],
  [Unterstützend],
  [Moderater / flankierender Nutzen],
  [*I1*],
  [Gering / irrelevant],
  [Kein klinisch relevanter Mehrwert *jetzt* erwartbar],
)

==== Achse S — Safety *(maßnahmenspezifisch)*

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Stufe],
    text(fill: white, weight: "bold", size: 8.5pt)[Label],
    text(fill: white, weight: "bold", size: 8.5pt)[Bedeutung],
  ),
  [*S4*],
  [Kontraindiziert],
  [Durchführung *verboten* (bis Klärung / nie)],
  [*S3*],
  [Vorsicht / restriktiv],
  [Starke Bedenken; zurückstellen oder stark anpassen],
  [*S2*],
  [PT-Lite / eingeschränkt],
  [Nur risikoarme Varianten (Edukation, Monitoring, Entlastung) — keine Provokation/High-Load/riskante Manualtechniken],
  [*S1*],
  [Safe],
  [Uneingeschränkt sicher für die geplante Maßnahme],
)

*Wichtig:* S bezieht sich auf die *konkrete geplante* Maßnahme (z. B. HVLA vs. Edukation), nicht auf „Physio generell“.

=== Flags nur mappen (Detail → II-2)

Flags steuern *Dringlichkeit und Behandlungsrahmen*; sie *ersetzen* D-RISC nicht.

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Flag-Lage *(Kurz)*],
    text(fill: white, weight: "bold", size: 8.5pt)[Typische R/S-Lage],
    text(fill: white, weight: "bold", size: 8.5pt)[Detail],
  ),
  [🔴 Rot / Lebensgefahr-Cluster],
  [*R4 · S4* → Stop],
  [`→ II-2`],
  [🔴 Rot ohne Lebensgefahr],
  [*R3–4 · S4* (Refer only bis Klärung)],
  [`→ II-2`],
  [🟡 Gelb, stabil],
  [*R1–2 · S2* möglich],
  [Monitoring],
  [🔵 Blau (systemisch / fachärztlich)],
  [*R2–3*, I variabel, *S* maßnahmenspezifisch],
  [`→ II-2`],
  [🟠 Flag-Orange (psychosozial)],
  [oft *R1–2*, I variabel, *S1–2*],
  [interprofessionell],
  [⚫ Schwarz (Behandlerfehler)],
  [Denkfehler korrigieren],
  [Scope, Aktion ableiten],
)

*Farben-Falle:* Flag-*Orange* (psychosozial) ≠ D-RISC-*R3* (ärztlich zeitnah, oft farblich „orange“ im Referral-Schema). *Nicht gleichsetzen* (`→ II-2` §3.3).

#section-break()

== Operationaler Kern

=== Pflichtsequenz: R + I + S → C

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Schritt],
    text(fill: white, weight: "bold", size: 8.5pt)[Wenn …],
    text(fill: white, weight: "bold", size: 8.5pt)[Dann …],
  ),
  [1. *R zuerst*],
  [Lebensgefahr-Cluster / schwere RF],
  [*C: Stop & 112 / ED* — I und „Nutzen“ nachrangig],
  [2. *S klären*],
  [geplante Maßnahme unsicher],
  [Maßnahme stoppen/ändern (*S4/S3*); ggf. nur PT-Lite (*S2*)],
  [3. *I begründen*],
  [R und S erlauben Handlungsspielraum],
  [Nutzen *belegen* (Muster, Ziel, Evidenzrahmen) — nicht unterstellen],
  [4. *C benennen*],
  [R, I, S gesetzt],
  [*einen* konkreten Plan in einem Satz (siehe 4.2)],
  [5. *Safety-Netting*],
  [Treat / Treat+Refer],
  [Was bei Verschlechterung? Frist Re-Evaluation (`→ II-2`, `→ II-3 (geplant)`)],
)

*Binär:* Kein C ohne ausgesprochenes R+I+S. „RF positiv“ allein ist *kein* Plan.

=== C-Muster (Synthese-Tabelle)

#styled-table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Situation (Framework)],
    text(fill: white, weight: "bold", size: 8.5pt)[R],
    text(fill: white, weight: "bold", size: 8.5pt)[I],
    text(fill: white, weight: "bold", size: 8.5pt)[S],
    text(fill: white, weight: "bold", size: 8.5pt)[*C (Classification)*],
  ),
  [Lebensgefahr / akuter Notfall],
  [4],
  [1],
  [4],
  [*Stop & Call* — 112 / ED; keine PT],
  [Schwere RF, hämodynamisch stabil],
  [3–4],
  [1–2],
  [4],
  [*Refer only* — gleichtags/ED bis Klärung; riskante PT stop],
  [Arzt zeitnah nötig, PT-Lite sinnvoll],
  [3],
  [2–3],
  [2],
  [*Treat & Refer* — Überweisung + risikoarme Begleitung],
  [Unklarheit ohne Rot-Cluster],
  [2],
  [2–3],
  [2],
  [*Treat + Monitoring* — Absicherung empfohlen, eng re-evaluieren],
  [Plausibles MSK, keine RF],
  [1],
  [3–4],
  [1–2],
  [*Treat* + Safety-Netting],
  [Orange-Flags, keine Rot],
  [1–2],
  [2–3],
  [1–2],
  [*Treat + interprofessionell* (nicht „nur manuell“)],
)

*(Didaktische Muster — S1 Entscheidungsmatrix + Blueprint-Beispiele; krankheitsspezifische RF-Tabellen haben Vorrang.)*

=== Makro- vs. Mikro-Loop

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Ebene],
    text(fill: white, weight: "bold", size: 8.5pt)[Wann],
    text(fill: white, weight: "bold", size: 8.5pt)[Fragen],
  ),
  [*Makro*],
  [nach Anamnese/Untersuchung, vor Plan],
  [Gesamt-R? Welche Maßnahmen mit I≥2? Sind *diese* S1/S2? → *C*],
  [*Mikro*],
  [vor *jedem* Test/Technik],
  [Verschleiert/verschlimmert der Schritt Risiko (R)? Ändert das Ergebnis den Plan (I)? Ist die Belastung jetzt sicher (S)?],
)

*Wenn X → dann Y (Mikro):*

- Test würde bei Verdacht auf schwere Pathologie *Zeit kosten oder schaden* → *nicht* testen, *R eskalieren*.
- Maßnahme ohne begründeten Nutzen → *I1*, weglassen.
- High-Load bei S2/S3-Lage → *nicht* durchführen.

=== Checkliste Erstkontakt (D-RISC-Kernel)

Abhaken — *operational*, nicht enzyklopädisch:

- [ ] *Worst first:* Lebensgefahr / systemische RF gedacht? (Default-to-Danger)
- [ ] *R* gesetzt und *begründet* (was erlaubt Herabstufung unter R4?)
- [ ] Geplante Maßnahme(n) benannt → *S* pro Maßnahme
- [ ] *I* begründet (warum *diese* Intervention *jetzt*?)
- [ ] *C* in einem Satz (Treat / Treat+Refer / Refer only / Emergency)
- [ ] Bei Treat: *Safety-Netting* (Verschlechterung → wann Arzt/112?)
- [ ] Flags nur als *Trigger* genutzt; Detailaktion → `→ II-2` / Master V/III
- [ ] Kein Scope-Bruch (keine AM-Verordnung, keine invasive Diagnostik, keine Psychotherapie-Ersatzrolle) → `→ I-… (geplant)`

=== Häufige Fehler (Black Flags der Logik)

+ *Nutzen vor Sicherheit:* I4 „fühlt sich richtig an“ trotz S3/S4
+ *R3 mit Flag-Orange verwechseln* (ärztlich vs. psychosozial)
+ *C ohne R/I/S* („wir mobilisieren mal“)
+ *R4/R3 durch „noch drei Behandlungen“ verzögern*
+ *S auf „Physio allgemein“* statt auf die konkrete Technik beziehen
+ *Krankheitsspezifische RF ignorieren* zugunsten generischer Framework-Stundenfenster

#section-break()

== Mini-Beispiele (Synthese R + I + S → C)

=== Beispiel A — Stop & Call (Notfall)

*Lage:* 62 J., plötzliche Ruhedyspnoe + Unruhe, vor 3 Wochen große Gelenk-OP; will „Atemübungen“.

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Achse],
    text(fill: white, weight: "bold", size: 8.5pt)[Stufe],
    text(fill: white, weight: "bold", size: 8.5pt)[Begründung *(Framework)*],
  ),
  [R],
  [*4*],
  [Lebensgefahr-Cluster (Dyspnoe in Ruhe postoperativ) — Default-to-Danger nicht entkräftet],
  [I],
  [*1*],
  [PT-Atemtechnik ändert die Notfallpflicht nicht],
  [S],
  [*4*],
  [jede belastende/„beruhigende“ Verzögerung kontraindiziert],
)

→ *C: Stop & Call — 112*, keine Mobilisation/„erstmal testen“. Flags: Rot/Lebensgefahr → `→ II-2`; Notfallprozeduren → `→ III-2`; LE-Logik → `→ III-LE` / `→ V-2`.

=== Beispiel B — Treat & Refer vs. Refer only

*Lage B1 — Refer only:* 55 J., einseitige Beinschwellung + Wadenschmerz nach Langstrecke, hämodynamisch stabil, *keine* Dyspnoe; wünscht „Ausstreichen“.

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Achse],
    text(fill: white, weight: "bold", size: 8.5pt)[Stufe],
    text(fill: white, weight: "bold", size: 8.5pt)[Begründung],
  ),
  [R],
  [*3* (oft gleichtags/ED, nicht „in 72 h schauen“)],
  [TVT-Verdachtslage; krankheitsspezifisch priorisieren],
  [I],
  [*1*],
  [manuelle Entstauung/High-Load ohne Nutzen-Beleg vor Ausschluss],
  [S],
  [*4*],
  [tiefe manuelle Arbeit / riskante Techniken bis Klärung verboten],
)

→ *C: Refer only* bis Klärung; keine riskante PT. Master → `→ V-1`.

*Lage B2 — Treat & Refer (Kontrast):* 48 J., subakuter LWS-Schmerz, leichte Gelb-Hinweise (1× nächtliches Erwachen), stabile Neuro, *keine* Rot-Cluster; Hausarzt-Termin in 2 Tagen vereinbart; hohe Angst vor Bewegung.

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Achse],
    text(fill: white, weight: "bold", size: 8.5pt)[Stufe],
    text(fill: white, weight: "bold", size: 8.5pt)[Begründung],
  ),
  [R],
  [*2–3*],
  [Absicherung/Verlauf ärztlich sinnvoll; kein Lebensgefahr-Cluster],
  [I],
  [*3*],
  [Edukation, dosierte Aktivität, Angstabbau = Kernnutzen],
  [S],
  [*2*],
  [PT-Lite: Edukation, Monitoring — keine aggressive Provokation],
)

→ *C: Treat & Refer* + Safety-Netting (bei Fieber, Sattel, Blasenstörung, Progredienz → *sofort* eskalieren). Flag-Detail → `→ II-2`; Leitsymptom Rücken → `→ IV-2 (geplant)`.

#section-break()

== Verknüpfung vorwärts / rückwärts

#styled-table(
  columns: (1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Richtung],
    text(fill: white, weight: "bold", size: 8.5pt)[Verweis],
  ),
  [Flag-Grammatik / Treat-vs-Refer-Matrix],
  [`→ II-2`],
  [SN-13-Drill],
  [`→ II-2b (geplant)`, Anh. C],
  [Workflow / Doku / Safety-Netting],
  [`→ II-3 (geplant)`],
  [Kommunikation (SBAR, Überweisungskern)],
  [`→ II-10 (geplant)`],
  [Scope / Recht],
  [`→ I-3 (geplant)`, `→ I-5 (geplant)`],
  [BLS / Notfallprozeduren],
  [`→ III-2`],
  [Leitsymptom Rücken/Neuro],
  [`→ IV-2 (geplant)`],
  [Cauda (Master / Notfallkarte)],
  [`→ V-Cauda (geplant)`, `→ III-5-Cauda`],
  [TVT / LE (bestehende Staging-Masters)],
  [`→ V-1`, `→ V-2`, `→ III-LE`],
)

#section-break()

== Quellen

+ S1-Dossier (Flaggen / Treat-vs-Refer als gemeinsame Grammatik; Drei-Achsen & D-RISC referenziert): `content/dossiers/querschnitt/flaggensystem-treat-vs-refer.md` (Stand 2026-07-15, Status `ready-for-human`).
+ Kursbuch-intern — Drei-Achsen-Modell: `docs/readme.md`.
+ Kursbuch-intern — D-RISC Framework (R/I/S-Stufen, Default-to-Danger, Burden-of-Proof, C-Beispiele): `templates/blueprints/allgemein/kursbuch-blueprint-consolidated.md`.
+ Legacy-Roh (didaktische Ausformulierung, *nicht* alleinige Evidenz): `content/chapters/staging/legacy-roh/additional/d-risc.md`.
+ Vorbild-Methodik (Stil/Anti-Doppelung, nicht Faktenquelle): `content/chapters/staging/pilots/2026-07-welle-01/chapter-ii2-flaggensystem-treat-vs-refer.md`.
+ First-Contact (Tools/RF-Evidenzkritik — *hier nicht verdoppeln*): `content/dossiers/first-contact/red-flag-systematik.md`, `content/dossiers/first-contact/triage-frameworks-tools.md`.
+ *(S1-Provenance/Citation-Hardening des Flaggen-Dossiers — *kein* Beleg für D-RISC-Stufen oder Kapitelentscheidungen:)* ESC ACS/NSTE-ACS Guidelines. URL: https://www.escardio.org/Guidelines/Clinical-Practice-Guidelines/Acute-Coronary-Syndromes-ACS-in-patients-presenting-without-persistent-ST-segm (Abruf: 2026-07-15).
+ *(dito — kein Beleg für D-RISC/Kapitelentscheidungen:)* AWMF NVL Chronische KHK. URL: https://register.awmf.org/de/leitlinien/detail/nvl-004 (Abruf: 2026-07-15).

*Primärquellen dieses Kapitels:* Nr. 1–3 (S1 Flaggen, `docs/readme.md`, Blueprint D-RISC). Nr. 7–8 nur S1-Provenance.

*S1-Lücke / Scope-Hinweis:* Das freigegebene S1 deckt *Flaggen/Treat-vs-Refer* ab und verweist auf Drei-Achsen/D-RISC; die *R/I/S-Stufendefinitionen* stammen primär aus Blueprint + Legacy-Roh (didaktisches Kursbuch-Framework). Krankheitsspezifische Schwellen, Scores und Zeitfenster *nur* aus den jeweiligen KL-/Notfall-S1 — nicht aus diesem Kapitel ableiten.

#section-break()

== Critical Claims (Audit)

Framework-Claims sind *didaktisch/operational* (Kursbuch-Konvention). Klinische Schwellen in KL-/Notfall-S1 haben Vorrang.

#styled-table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[\#],
    text(fill: white, weight: "bold", size: 8.5pt)[Claim (prüfbar)],
    text(fill: white, weight: "bold", size: 8.5pt)[Quelle im S1 / Blueprint],
    text(fill: white, weight: "bold", size: 8.5pt)[Art],
    text(fill: white, weight: "bold", size: 8.5pt)[Dringlichkeit/Aktion falls RF],
  ),
  [1],
  [Jede Entscheidung endet mit *R + I + S → C* (konkreter Plan), nicht bei Flag-Label oder Bauchgefühl],
  [S1 §1; Blueprint §2; Buchstruktur II-2-Pflicht],
  [didaktisch/operational],
  [C = Treat / Treat+Refer / Refer only / 112],
  [2],
  [*Default-to-Danger:* R & S starten bei Stufe 4, bis Beweise Herabstufung erlauben; *Burden-of-Proof:* I startet bei I1],
  [Blueprint §2; Legacy `d-risc.md`],
  [didaktisch],
  [bei Zweifel höhere Dringlichkeit / Stop; keine Intervention ohne Nutzenbegründung],
  [3],
  [Lebensgefahr-Cluster → *R4 · S4 · C: Stop & 112*; I nachrangig],
  [S1 §4 Matrix; Blueprint C-Beispiel Stop & Call],
  [operational],
  [*112*],
  [4],
  [Rote Flags ohne Lebensgefahr → riskante PT *stop* (S4); Refer *gleichtags/ED* — *nicht* generisches 72-h-Fenster abwarten; KL-/Notfall-Masters priorisieren],
  [S1 §4–5; II-2; Blueprint R3 als Framework],
  [operational],
  [ED / gleichtags Arzt; Master `→ V-…` / `→ III-…`],
  [5],
  [*S ist maßnahmenspezifisch* (Technik/Test), nicht „Physio pauschal“],
  [Blueprint Achse S; Legacy Mikro-Loop],
  [didaktisch/operational],
  [S4/S3 → Maßnahme ändern/stoppen],
  [6],
  [Flag-Orange (psychosozial) *≠* D-RISC-R3 (ärztlich zeitnah)],
  [S1 §2 vs. Blueprint R; II-2 Claim 8],
  [didaktisch],
  [Systeme nicht vermischen],
  [7],
  [Achsen A/B/C (Drei-Achsen) mappen auf R / S / I; D-RISC-*C* = Classification, nicht PT-Benefit],
  [`docs/readme.md`; Blueprint §2],
  [didaktisch],
  [Nomenklatur trennen],
  [8],
  [RF abfragen ohne Aktion / R3–4 verzögern = Behandlerfehler (Black Flag)],
  [S1 §6],
  [operational],
  [Aktion ableiten, nicht „ausprobieren“],
)

#section-break()

#callout(title: [Hinweis], tone: "warning")[*Human-in-the-loop:* Framework- und Methodik-Kapitel. Alle R/I/S-Stufen, C-Muster und Zeitfenster sind *didaktische Kursbuch-Konvention* (Blueprint/Legacy + Flaggen-S1), *keine* amtliche Triage-Norm und *kein* Ersatz für krankheitsspezifische Leitlinien-/Dossier-Schwellen. Vor Promote: Fachfreigabe der Achsen-Definitionen, Abgleich mit II-2 (keine Flag-Doppelung, Farben-Falle Orange) und Stichprobe gegen KL-Master (Vorrangregel). Dieses Kapitel *nicht* als alleinige Entscheidungsgrundlage für Einzelkrankheiten nutzen.]

