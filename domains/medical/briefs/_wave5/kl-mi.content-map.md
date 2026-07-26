# Content map — Myokardinfarkt / ACS (R)

**Wave:** R (Deep content analysis) · **read-only C** · no Typst · no claim rewrite  
**Date:** 2026-07-26  
**Campaign:** KL Wave-5 · slug `kl-mi`

---

## Meta (slug, C path, typ kl-voll/kurz)

| Feld | Wert |
|------|------|
| **slug (board)** | `kl-mi` |
| **C slug** | `myokardinfarkt` |
| **kapitel_id** | `V-1-myokardinfarkt` |
| **typ** | **`kl-voll`** (Master; panel full; job_id K06) |
| **C path** | `/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-06-kl-full/monographs/chapter-v-1-myokardinfarkt.md` |
| **Titel C** | Myokardinfarkt und akutes Koronarsyndrom |
| **Untertitel C** | Wenn Brustschmerz, Schulter oder Oberbauch den Herzinfarkt maskieren |
| **status C** | format-ok · audit_ampel GRÜN · human_review required · iterate_exit E1 |
| **dossier (C meta)** | `content/dossiers/krankheitslehre/myokardinfarkt-facts.md` |
| **slaves (C meta, geplant)** | III-acs · IV-brustschmerz · V-1-koronare-herzkrankheit |
| **Master-Rolle** | Illness-Script Master (V): begründet / sensibilisiert; **ersetzt nicht** operative Slave-Karten |

**Chrome-Hinweis (Genre, nicht Claim):** kl-voll Master = lerntext / Illness-Script; solid-red nur wo C **112/Stop** ist — nicht als Kapitel-Wand.

---

## What this chapter actually teaches (3–6 sentences, Direktzugang job)

Im Direktzugang liegt das **akute Koronarsyndrom (ACS)** — instabile Angina, NSTEMI, STEMI — **vollständig außerhalb** des physiotherapeutischen Behandlungsauftrags. Jeder **plausible Verdacht** ist ein **Triagefall**, in der Regel mit **Notruf 112**, absoluter Ruhe und **ohne** Belastung oder manuelle „Abklärung“ der Brustwand. Die eigentliche Gefahr ist die **fälschliche Einordnung** als muskulärer Brust-, Schulter- oder BWS-Schmerz; **Palpationsschmerz schließt ACS nicht aus**. Die Entscheidungsschwelle bleibt bewusst niedrig: **Im Zweifel Notruf** statt Belastung bei Infarktverdacht. Atypische Präsentationen (u. a. Dyspnoe, Epigastrium, isolierter Rücken-/Schulterschmerz — besonders Frauen, Ältere, Diabetiker:innen) und trügerische Labels („Magen“, „Blockade“, „Panik“) dürfen die 112-Entscheidung **nicht** ersetzen. **STEMI und NSTE-ACS** sind für HP/Physio **beide** Notfallpfad — **keine** EKG-/Troponin-Differenzierung als Aufgabe; Marburger Herz-Score entwarnt im Direktzugang **nicht**.

---

## Script units → ontology map (table: C section, unit id, learner job, load risk)

| C section (Anker) | unit id | learner job | load risk if wrong |
|-------------------|---------|-------------|--------------------|
| Häufige Abkürzungen | **U-abbrev** | look up | Opener-Konkurrenz mit Gatekeeper / BP |
| Big Picture | **U-bigpicture** | understand + stop-awareness | Epi-Essay; Gefahr versteckt; reine §5-Wiederholung |
| EH §1 Wann denken? | **U-enabling** | recognize | Bullet-Soup; als Urgency-Leiter gelesen |
| EH §2 Entstehung / Mechanismus | **U-mechanism** | understand | Dekor-Kette ohne Labels; ersetzt Action |
| EH §3 Klinische Hinweise (4 Domänen) | **U-cues** | recognize | Fake-Kreuzmatrix; Kanal-Ungleichgewicht; Prosa-Wand |
| EH §4 Erhärtet / Passt eher nicht | **U-for-against** | distinguish | Mit Must-not-miss / Mimikry in ein 2×2 gequetscht |
| EH §4 Nicht übersehen | **U-must-not-miss** | stop-awareness + distinguish | Als „Passt nicht“ gelesen; STEMI/NSTEMI-Job-Creep |
| EH §4 Trügerische Erklärungen | **U-mimic** | distinguish (error) | Frame ohne Mapping; Richtung umkehren; begraben in FA |
| EH §5 112-Zeilen (4 Trigger-Cluster) | **U-urgency** (TIME **T1**) | choose + stop | Multi-Trigger als **getrennte Leiter-Sprossen**; T1≡T2 |
| EH §5 Notaufnahme / gleichtags Arzt | **U-urgency** (TIME **T2**) | choose | Mit 112 farblich/labelmäßig identisch „Notfall“ |
| EH §5 Behandeln + Sicherheitsnetz | **U-urgency** (TIME **T4**) | choose + vigilanz | Treat-without-net; gleiches Gewicht wie T1 |
| EH §5 Grenze der eigenen Zuständigkeit | **U-scope** (SCOPE) | constrain | Als Ampel-Sprosse unter Treat / graues „T5“ |
| EH §6 Mini-Fall / Transfer | **U-transfer** | apply | Spoiler-Auflösung im Druck; Exam-Poster-Chrome |
| Case Study (klinischer Anker) | **U-case** (kl-voll) | apply / anchor | Spoiler; Case ersetzt Script; solid-red Notfall-Chrome |
| Das Wichtigste in Kürze | *(summary rail, quiet)* | recall | Lautes Parallel-§5; Cave-Spam |
| Patho: Enabling Conditions | **U-patho-deep** / **U-enabling** | understand + sensitize | Populations-Essay verdrängt Vortest-Sensibilisierung |
| Patho: Pathophysiologischer Kern | **U-patho-deep** / **U-mechanism** | understand | Klinik-Detail (Reperfusion) als DA-Job |
| Patho: Klinische Manifestationen | **U-patho-deep** / **U-cues** | recognize | Atypisch = harmlos gelesen |
| Trügerische „harmlose“ Erklärungen (Vertiefung) | **U-mimic** (deep) | distinguish (error) | Redundanz zu §4 ohne Zusatz-Mapping; 4. Frame versteckt |
| Screening und Flag-Scan | **U-screening** | recognize + constrain | **MHS als Ausschluss**; GRACE/HEART/TIMI operationalisiert |
| Handlungsmatrix – Delta zu §5 | **U-urgency** + **U-scope** (echo) | choose + constrain | Zweites TIME-System; widerspricht §5 |
| Differenzialdiagnostische Abgrenzung | **U-ddx** | distinguish (delta) | Enzyklopädie; ohne Delta zu NM/Mimikry |
| Semantic Qualifiers + SBAR-Übergabe | **U-qualifiers** | communicate (loudness) | Als Layout-Achse; EKG-Spekulation |
| Quellen | *(quiet)* | cite | Feature-Grafik |

**§5 TIME-Belegung aus C:** **T1** (vier 112-Cluster) · **T2** (NA/gleichtags) · **T3 fehlt** (nicht erfinden) · **T4** (Treat+Netz) · **SCOPE** orthogonal (Grenze).

---

## TIME matrix from §5 (every row: triggers, timing, action — German pin-ready)

Pins **copy-through** aus EH §5 „Handeln und Dringlichkeit“. Multi-112 = **eine** T1-Stufe mit internem Trigger-Cluster (Ontology v1.1) — hier zeilenweise aus C dokumentiert.

### T1 — 112 / Sofort

| # | Trigger-Cluster (C) | Timing (C) | Handlung (C, pin-ready) |
|---|---------------------|------------|-------------------------|
| T1-a | Retrosternaler Vernichtungs- oder anhaltender Druckschmerz mit Ausstrahlung Arm/Kiefer/Rücken und vegetativen Zeichen | Sofort | **112 wählen**; Sitzung beenden; absolute Ruhe; keine Belastung, keine manuelle Thorax-Intervention; bis Rettungsdienst überwachen |
| T1-b | Akute Dyspnoe, Synkope oder Schock bei Infarktverdacht | Sofort | **112 wählen**; keine Mobilisation; hämodynamischen Notfallpfad einleiten |
| T1-c | Bekannte KHK plus neu progredienter Ruheschmerz | Sofort | **112 wählen** (instabile Angina/ACS bis zum Ausschluss); keine fortgesetzte PT |
| T1-d | Oberbauchschmerz plus Vegetativum und kardiale Risikofaktoren | Sofort | **112 wählen**; ACS-Mimikry nicht ausschließen |

**Default-to-Danger (C, Big Picture + §5 + Screening):** Im Zweifel Notruf; Default bei ACS-Möglichkeit bleibt der Notruf.

### T2 — Notaufnahme / gleichtags Arzt

| Trigger (C) | Timing (C) | Handlung (C, pin-ready) |
|-------------|------------|-------------------------|
| Nur wenn **kein** typisches/atypisch-verdächtiges ACS-Vollbild und **keine** 112-Kriterien oben, aber Thoraxschmerz unklar und ACS nicht sicher auszuschließen | (C: Zeile ohne „Sofort“-Label; Kontext gleichtags/NA) | **Keine PT**; unverzüglich ärztlich abklären lassen; bei jeder Verschlechterung oder bei nachträglich erkannten ACS-Hinweisen **sofort 112** |

### T3 — Zeitnah Arzt

**Nicht in C befüllt.** Layout muss kollabieren können; **kein** erfundener „zeitnah“-Pfad.

### T4 — Behandeln mit Sicherheitsnetz

| Trigger (C) | Timing / Bedingung (C) | Handlung (C, pin-ready) |
|-------------|------------------------|-------------------------|
| Nur bei **gesicherter** MSK-Erklärung, ohne Red Flags, niedrigem Risiko (± ärztliche Freigabe) | PT möglich unter Netz | PT möglich; auf neu auftretende Enge oder Dyspnoe achten; Abbruchkriterien vorab klären |

**Echo Screening-Matrix (C, nicht zweites SoT):** Notfall → Sofort 112 + absolute Ruhe + keine manuelle Thorax-Intervention; Ärztlich vor PT → Keine PT, gleichtags Arzt/NA, Sicherheitsnetz 112; PT möglich → Behandeln mit Vigilanz, Abbruch bei neuem Druck/Dyspnoe/Vegetativum.

**Kontraindikationen (C, Screening):** Unklare akute/subakute thorakale Symptomatik mit ACS-Möglichkeit = absolute KI für Belastung und manuelle Ersatzdiagnostik; bei neuem Druck/Dyspnoe/Vegetativum **während** Sitzung: Abbruch und 112; kein eigenständiges Herz-Kreislauf-Training bei bekannter KHK/ACS-Historie ohne ärztliche Belastungsfreigabe (Reha-Kontext).

---

## SCOPE / Zuständigkeit pins

**C-Zeile §5 — Grenze der eigenen Zuständigkeit**

| Außerhalb (C) | Konsequenz / Verbot (C) |
|---------------|-------------------------|
| ACS-Ausschluss | — |
| EKG | — |
| Troponin | — |
| STEMI/NSTEMI-Zuordnung | — |
| Reperfusion | — |
| Belastungstests | **Keine** Belastungstests |
| MHS als Ausschluss | **MHS nicht als Ausschluss nutzen** |
| Medikamentöse Infarkttherapie | **Keine** medikamentöse Infarkttherapie |

**Weitere Scope-/Certainty-Pins (C, Screening Tools):**

- **Marburger Herz-Score (MHS):** nur DEGAM-orientierter **Hintergrund** hausärztlicher Primärversorgung — **nicht** HP/Physio-Ausschlussinstrument.
- Niedriger MHS schließt ACS **nicht** aus.
- **Kein** alleiniger Algorithmus „MHS ≥4 → 112“.
- **Typische oder erheblich verdächtige ACS-Symptome → 112 unabhängig vom Score.**
- **GRACE / HEART / TIMI:** Klinik-/Notaufnahme-Scores (EKG, Troponin) — **nicht** für den Direktzugang operationalisieren.
- **STEMI vs. NSTE-ACS:** EKG-ärztlich; für HP/Physio: **beides Notfallpfad** (Semantic Qualifiers + Patho-Kern + §4 Nicht übersehen).

**Zuständigkeits-Kernsatz (C, Big Picture / Wichtigste in Kürze):** ACS ist **kein** physiotherapeutisches Behandlungsfeld: Verdacht → **Triage**, meist **112**.

---

## Discrimination: Erhärtet / Passt nicht / Nicht übersehen

Pins aus EH §4 (und konsistente Echo-Stellen).

### Erhärtet den Verdacht (HYP-H +)

- Typischer anginöser Ruheschmerz mit vegetativen Zeichen
- Bekannte KHK mit neuem Ruhe- oder Crescendo-Schmerz
- Oberbauchschmerz plus Vegetativum und kardialen Risikofaktoren
- Synkope oder Schock im Kontext

### Passt eher nicht (HYP-H −)

- Klar reproduzierbarer, rein bewegungsabhängiger Schmerz ohne vegetatives Begleitbild und ohne Risikoprofil
- **Cave (C, zwingend):** **nie allein durch Palpation entwarnen**, wenn Anamnese kardial klingt

### Nicht übersehen (HYP-OTHER / must-not-miss)

- Atypisches ACS (Dyspnoe oder Epigastrium dominant)
- STEMI und NSTE-ACS sind für HP/Physio **beide** Notfallpfad — **keine** EKG-Differenzierung als Aufgabe

**Verwandte DDx-Delta-Zeilen (C, DDx-Tabelle — nur wo Handlungstendenz/Qualifier C trägt; kein Lexikon-Zwang):**

| Verdacht (C) | Handlungstendenz (C) |
|--------------|----------------------|
| STEMI / NSTEMI | **112** |
| Instabile Angina | **112** / Notfallpfad bis Ausschluss |
| Aortendissektion | **112** (nicht als MSK behandeln) |
| Lungenembolie | Notfallpfad je nach Stabilität; nicht als BWS belasten |
| Perikarditis | Keine Selbst-Entwarnung bei kardialem Gesamteindruck |
| Reflux / Ulkus | Bei Vegetativum + Risiko: ACS nicht ausschließen → 112 |
| MSK-Thorax | PT möglich mit Sicherheitsnetz (klar bewegungsabhängig, reproduzierbar, ohne Red Flags und ohne kardialen Gesamteindruck) |

---

## Mimic frames (all trügerische Erklärungen)

### EH §4 (Kern, 3 Frames)

| # | Trügerischer Frame (C) | Gefahr dahinter (C) |
|---|------------------------|---------------------|
| 1 | Epigastrischer Schmerz als Magenbeschwerde **ohne** Prüfung vegetativer Begleitsymptome | Kann einen Infarkt maskieren |
| 2 | Linksschulter- oder BWS-Schmerz als „reiner MSK-Befund“ | Kann Ausstrahlung oder Ischämie-Äquivalent sein |
| 3 | „Panikattacke“ bei Vernichtungsschmerz und Risikofaktoren | Ersetzt keine 112-Entscheidung |

### Vertiefung „Trügerische ‚harmlose‘ Erklärungen“ (4 Frames — kl-voll)

| # | Frame (C) | Mapping (C) |
|---|-----------|-------------|
| 1 | „Magen / Gastritis“ | Epigastrischer Schmerz mit vegetativen Zeichen und Risikofaktoren kann ACS-Mimikry sein — nicht als rein gastrointestinal abtun |
| 2 | „Linke Schulter / BWS-Blockade“ | Ausstrahlung und begleitender retrosternaler Druck oder Dyspnoe → Notfallverdacht aus scheinbar orthopädischem Bild |
| 3 | „Panik / Hyperventilation“ | Vernichtungsschmerz, Kaltschweiß und Risikoprofil rechtfertigen keine psychische Erstlabelung vor ACS-Ausschluss |
| 4 | „Druckschmerzhaft, also muskulär“ | Palpationsitem senkt in **ärztlichen** MHS-Validierungskohorten die KHK-Wahrscheinlichkeit — im Direktzugang **niemals** alleinige Entwarnung („druckschmerzhaft = nicht kardial“) |

### Case-level Mimikry (C, Case Study)

- **Trügerischer Befund:** reproduzierbare paravertebrale Druckdolenz + anamnestische Belastung („Umzug, schwer getragen“) legen rein MSK-Bild nahe und können **kardialen Ruheschmerz mit vegetativen Zeichen** überdecken.

---

## Cues 4 channels summary

Aus EH §3 „Klinische Hinweise“ (vier Domänen, **gleichwertige Kanäle** — keine Fake-Matrix).

| Kanal (C) | Erwartbare Merkmale (C, verdichtet) |
|-----------|-------------------------------------|
| **Anamnese** | Retrosternaler Druck, Enge, Vernichtungsgefühl; Ausstrahlung in Arm(e), Kiefer, Hals, Rücken oder Schulter; Dauer oft ≥15–20 min; Dyspnoe, Übelkeit, Kaltschweiß, Angst; Selbstvermutung „könnte vom Herzen sein“ |
| **Beobachtung** | Blässe, Kaltschweißigkeit, Unruhe, Schonhaltung, ggf. Atemnot in Ruhe |
| **Untersuchung** | Keine sichere MSK-Erklärung; Palpationsschmerz **schließt ACS nicht aus**; Vitale Instabilität (Schock, Synkope): sofort 112; keine weiteren Tests |
| **Verlauf** | Plötzlich oder crescendoartig; Ruheschmerz bei bekannter KHK; atypisch bei Frauen, Älteren, Diabetiker:innen (Dyspnoe, Epigastrium, Müdigkeit, Rücken-/Schulterschmerz) |

**Screening-Subjektiv (C, ergänzende Fragepins — nicht neuer Kanal):** neu/anders? Druck/Enge retrosternal? Dauer Minuten bis >15–20 min? Ruhe / nicht klar bewegungsgebunden? Ausstrahlung? Dyspnoe/Übelkeit/Kaltschweiß/Schwindel/Synkope? KHK/vaskulär/Diabetes/Hypertonie/Rauchen? Selbstvermutung kardial?

**Screening-Objektiv (C):** AZ, Hautfarbe, Schweißneigung, Atemfrequenz, Bewusstsein; bei Verdacht **keine** Belastungstests / Ausdauerprovokation / manuelle „Deblockierung“ als Ersatzdiagnostik.

**Manifestations-Echo (Patho):** Klassisch ≥15–20 min retrosternal + Ausstrahlung + Vegetativum; atypisch/oligosymptomatisch **heißt nicht harmlos**.

---

## Enabling / mechanism essence

### Enabling (EH §1 + Patho Enabling)

- **Risiken / Auslöser:** höheres Lebensalter, männliches Geschlecht, Rauchen, arterielle Hypertonie, Dyslipidämie, Diabetes mellitus, Adipositas; bekannte Atherosklerose (KHK, pAVK, TIA/Schlaganfall).
- **Begleit / Kontext:** bekannte stabile Angina, die plötzlich häufiger, stärker oder länger wird (**Crescendo**); Diabetes und höheres Alter mit oft **atypischer** Präsentation.
- **Beginn / Trigger / Zeitverlauf:** plötzlich in Ruhe oder unter leichter Belastung; retrosternaler Druck/Enge oft über Minuten bis ≥15–20 min; **nicht klar bewegungsgebunden**.
- **DA-Fokus (Patho):** weniger exakte Populationsrate als **klinische Vortest-Sensibilisierung**; Minuten-Triage, nicht abwartende MSK-Behandlung. (Epi-Zahlen aus C nur als Hintergrundpin, nicht als Feature-Grafik-Pflicht: ~195.628 vollstationäre AMI-Fälle DE 2021; 235,0/100.000; 45.181 Todesfälle als Grundtodesursache — Deutscher Herzbericht 2022.)

### Mechanism (EH §2 + Patho-Kern)

**Kette (C):** Plaqueruptur → Thrombozytenaggregation / Gerinnung → Thrombus → vollständiger Verschluss (typ. **STEMI**) bzw. kritische Flusslimitierung (**NSTEMI** / instabile Angina) → Myokardischämie → ggf. Nekrose → Destabilisierung Reizleitung/Pumpfunktion → Kammerflimmern, kardiogener Schock, Lungenödem, plötzlicher Herztod.

**Praxis-Konsequenz (C):** Belastung / emotionale Anspannung / unnötige manuelle Intervention erhöhen myokardialen O₂-Bedarf bzw. verzögern Notruf → **Stopp der Sitzung**, absolute Ruhe, Notruf bei plausibler Konstellation. STEMI vs. NSTE-ACS zentral für **Krankenhaus**; im Erstkontakt HP/Physio: **beide** Notfallpfade — keine „erst mobilisieren, dann schauen“-Situation.

---

## Distinctive delta vs Erysipel & Melanom (what is NEW form pressure)

Vergleich nur zur **Form-Last** (Library-Demo Erysipel; Transfer Melanom) — **ohne** Claims der anderen Kapitel umzuschreiben.

| Dimension | Erysipel (Library-Default) | Melanom (Transfer) | **ACS / MI (dieses C)** — **neue / härtere Form-Last** |
|-----------|----------------------------|--------------------|--------------------------------------------------------|
| **typ** | kl-kurz | kl-kurz | **`kl-voll`** — Case, Patho-deep, Mimic-Vertiefung (4.), Screening/MHS, DDx, Qualifiers/SBAR |
| **TIME-Schwerpunkt** | T1 eng (nekrotisierend/Sepsis-Cluster); **T2 oft Primärpfad** bei klarem Erysipel+Systemik | **T1 nur Ausnahme** (vital); T2/T3 primär (gleichtags–zeitnah) | **Vier T1-Trigger-Cluster**, alle Sofort-112; T2 nur **ohne** ACS-Vollbild/112-Kriterien; **kein T3** |
| **Default-to-Danger** | 112 bei Red-Flag-Extrem; sonst gleichtags | Onkologie-zeitkritisch, selten reanimationspflichtig | **Default bei ACS-Möglichkeit = Notruf**; „Im Zweifel Notruf“ |
| **Multi-T1** | eher 1 laute T1-Zeile | Exception-strip, kein Multi-T1 | **Archetyp multi-T1 nested hard-stop** (Library `kl-urgency-nested-t1` / US-B) — **nicht** 4 Leiter-Sprossen |
| **SCOPE / Scores** | keine Diagnose/AB; keine Lymphdrainage floride | keine Exzision/Diagnose | **MHS ≠ Ausschluss**; GRACE/HEART/TIMI verboten operationalisieren; **Palpation entwarnt nie allein** |
| **Mimikry-Richtung** | Muskelkater / Stauung / Gicht / „Sicher TVT“ | „alter Fleck“, Hämatom vs. subungual | **MSK-Thorax/Schulter/BWS**, **Magen/Gastritis**, **Panik**, **„druckschmerzhaft = muskulär“** — hohe DA-MSK-Maskierung |
| **Cues-Lautheit** | Beobachtung Hautmuster laut | Beobachtung ABCDE laut | **Anamnese führt**; Untersuchung = Sicherheit **nicht** Ausschluss; Ausstrahlungs-Topografie (Arm/Kiefer/Hals/Rücken/Schulter) |
| **Ambition-Vorbild** | Band-Grammar | **ABCDE look** + exceptional T1 | **Nicht** ABCDE/exception-T1 kopieren; Druck auf **nested T1**, **Mimikry-MSK**, optional **Ausstrahlungs-Raumkarte** / Mechanism-Kette |
| **Master≠Slave** | leise | leise | Explizite Slave-Meta (III-acs, IV-brustschmerz geplant) — Layout **darf Slave-Karten nicht ersetzen** |

**Kurz:** Gegenüber Erysipel ist ACS **112-lastiger Multi-Trigger-Notfall** mit MSK-Palpations-Falle und kl-voll-Vertiefung; gegenüber Melanom ist die TIME-Logik **invers** (Multi-T1-Wand statt Exception-Strip) und die Ambition liegt **nicht** in einem Buchstaben-Mnemonic, sondern in Urgency-Nesting + Mimikry/Ausstrahlung.

---

## Ambition candidates (≥2) with why

1. **Nested multi-T1 hard-stop (US-B / `kl-urgency-nested-t1`)**  
   **Why:** C liefert **vier** gleichwertige Sofort-112-Zeilen + Default-to-Danger; Form-Druck ist maximal, T1 optisch ≠ T2/T4, Trigger **innen** einer Stufe. Library kennt ACS bereits als multi-T1-Archetyp — Wave-5 muss Pins aus **diesem** Vollscript ehrlich tragen (inkl. Oberbauch- und KHK-Crescendo-Cluster).

2. **Mimikry-Mapping / optional peel (M-A default, M-B ambition)**  
   **Why:** Untertitel und DA-Job sind **Maskierung** (Schulter/BWS/Oberbauch); kl-voll hat 3+4 Frames inkl. „druckschmerzhaft, also muskulär“. Error-Mode muss Frame→Gefahr scannbar machen, sonst scheitert Persona Triage-Stress.

3. **Optional spatial: Ausstrahlungs- / Symptom-Topografie (retrosternal → Arm/Kiefer/Hals/Rücken/Schulter; atypisch Epigastrium)**  
   **Why:** C wiederholt Ausstrahlung und atypische Orte kanal- und fallübergreifend; räumliche Dual-Coding kann Anamnese-Cues stützen — **nur** mit Claim-Pins aus C, keine anatomische Overclaim-Grafik. (Ambition, nicht Band-Pflicht.)

4. **Optional mechanism chain (Plaque → Thrombus → Ischämie/Nekrose → Arrhythmie/Schock/Herztod) + Praxis-Stopp**  
   **Why:** kl-voll Patho-Kern ist kausal klar; Kette erklärt *warum* Belastung/manuelle Provokation kontraindiziert sind — muss Action **stützen**, nicht ersetzen.

*(Mindestens 1–2 für Wave-5 Ambition-Budget; 1+2 priorisieren; 3–4 nach Kapazität.)*

---

## Transfer recipes from library (which fit)

| Recipe id (library) | Fit für ACS/MI? | Hinweis |
|---------------------|-----------------|---------|
| **`kl-urgency-nested-t1`** (`us-b-acs`) | **Primär** | Multi-T1 aus §5; T3 collapse |
| **`kl-urgency-scope-stack`** (US-A) | **Ja** (mit nested T1) | SCOPE-Rail/Frame: MHS/EKG/Troponin/Reperfusion-Grenze |
| **`kl-urgency-scope-dashboard`** (US-D) | Optional ambition A/B | Nur wenn DE, kein EN-Meta; Code oft SoT |
| **`kl-mimic-map`** (M-A) | **Ja** | §4 + Vertiefung-Frames |
| **`kl-mimic-peel`** (M-B) | Ambition optional | MSK-/Magen-/Panik-Masken |
| **`kl-discrimination`** (FA+NM) | **Ja** | Erhärtet / Passt nicht + Nicht übersehen; **Palpations-Cave** laut |
| **`kl-mechanism-chain`** | **Ja** (kl-voll) | Patho-Kern-Pins |
| **`kl-enabling-triptych`** | **Ja** | Risiken · Begleit/Crescendo · Onset/Zeit |
| **`kl-bp-three-beat`** | **Ja** | Was=ACS · Gefahr=MSK-Fehllabel/Tod · Richtung=112/Triage |
| **`kl-cues-table`** | **Ja** | 4 Kanäle; Untersuchung-Cave betonen |
| **`kl-transfer-case`** | **Ja** | §6 + Case: offene Fragen, **kein** Spoiler |
| Melanom **`exceptional-T1`** / **`kl-abcde-look`** | **Nein** (Anti-Transfer) | TIME-Logik und Ambitionstyp **invers** |
| Spatial CES/MSCC recipes | Nur falls Ausstrahlungs-Karte gebaut wird | Nicht Sattel/Wirbel-Motiv blind kopieren |

**Transfer-Hygiene:** Keine Erysipel-Haut/Onset-Farbbalken ohne ACS-Tempo-Labels; keine Melanom-„wenig 112“-Gewichtung; keine Form-Meta („Trigger cluster“, „keine Dringlichkeitsstufe“) **in** der Grafik.

---

## Claim risks / do-not-invent

| Risiko | Do-not-invent / Do-not-distort |
|--------|--------------------------------|
| **T3 „zeitnah“** | C hat **keine** Zeitnah-Zeile — nicht füllen |
| **STEMI vs NSTEMI als DA-Triage** | Beide Notfallpfad; keine EKG-Differenzierung als HP/Physio-Aufgabe |
| **MHS-Cutoff-Algorithmen** | Kein „MHS ≥4 → 112“; niedriger Score entwarnt **nicht** |
| **GRACE / HEART / TIMI im DA** | Explizit **nicht** operationalisieren |
| **Palpation = Ausschluss** | C verbietet alleinige Entwarnung bei kardialer Anamnese |
| **Treat without net** | T4 nur bei **gesicherter** MSK-Erklärung, ohne Red Flags, niedrigem Risiko (± Freigabe) |
| **T2 als gleich laut wie T1** | T2 nur ohne ACS-Vollbild/112-Kriterien; Default bleibt 112 bei ACS-Möglichkeit |
| **Multi-112 als 4 Ampelstufen** | Trigger ≠ TIME-Stufe |
| **SCOPE als Leiterstufe** | Grenze (EKG, Troponin, Reperfusion, MHS-Ausschluss…) orthogonal |
| **Medikamentöse Infarkttherapie / Reperfusion durch PT** | Außerhalb Zuständigkeit |
| **Belastung / manuelle Thorax-„Abklärung“ bei Verdacht** | Absolute KI / Abbruch |
| **Atypisch = harmlos** | C: atypisch heißt **nicht** harmlos |
| **Epi-Zahlen als Pseudo-Präzision** | C relativiert uneinheitliche ACS-Inzidenz/prähospitale Letalität; keine erfundenen Letalitäts-% |
| **Slave-Inhalte (III-acs, IV-brustschmerz)** | Nur leise Meta-Links; keine operative Karten-Inhalte erfinden |
| **Fall-Auflösung** | §6/Case: Fragen offen lassen — keine Spoiler-Keys im Druck |
| **SBAR mit EKG-Diagnose-Spekulation** | C: präzise Qualifier/Zeiten/RF/Vital/Maßnahmen — ohne EKG-Spekulation |
| **Claim rewrite / Template-Edit** | C read-only; Pins copy-through |

---

## Success criterion (one sentence for whole chapter presentation)

Unter Direktzugangs-Scan-Stress ordnet die lernende Person **plausibles ACS** (klassisch *oder* atypisch maskiert) dem **Sofort-112-Pfad** zu, **bricht** Belastung und manuelle Thorax-Intervention ab, **weist** trügerische MSK-/Magen-/Panik-Frames und alleinige Palpations-Entwarnung **zurück**, und **behandelt nicht** und **diagnostiziert nicht** (kein EKG/Troponin/STEMI-NSTEMI-Split/MHS-Ausschluss) — Scope-Grenze und Sicherheitsnetz bleiben sichtbar orthogonal zur TIME-Handlung.

---

*End content map R · `kl-mi` · pins only from Welle-06 monograph `chapter-v-1-myokardinfarkt.md`*
