# Content map — Anaphylaxie (R)

Deep content analysis (Wave-5 Phase 1). **Read-only** on C. German claim pins copy-through only. No form-space, no Typst, no content rewrite.

---

## Meta

| Field | Value |
|-------|--------|
| **slug** | `kl-anaphylaxie` |
| **kapitel_id** | V-12-anaphylaxie |
| **C path** | `Kursbuch5/…/monographs/chapter-v-12-anaphylaxie.md` |
| **Titel (C)** | Anaphylaxie und schwere allergische Reaktion |
| **Untertitel (C)** | Wenn Flush, Engegefühl oder „Panik“ den Notfall maskieren |
| **typ / panel** | `kl-voll` · panel `full` · job `K12` · Welle `2026-07-welle-06-kl-full` |
| **status C** | `format-ok` · `audit_ampel: GRÜN` · `human_review: required` · `iterate_exit: E1` |
| **Master / Slaves** | Master V-12; slaves geplant: `III-anaphylaxie`, `IV-allergie-akut` |
| **dossier** | `content/dossiers/krankheitslehre/anaphylaxie-facts.md` (nicht SoT für Pins; Pins = Kapiteltext) |
| **Quellen in C** | AWMF S2k Anaphylaxie Update 2021 (061-025); Ring et al. Allergo J Int. 2021 |
| **Akteur** | HP Physio / PT im **Direktzugang** (Praxis / laufende Behandlung) |
| **Genre** | Illness-Script Master (lerntext/teal); **nicht** operative Notfallkarte III |
| **Archetyp-Druck** | Flag-Master / hard-stop: multi-T1, operative ACTION-Dichte *innerhalb* Script-Chrome |
| **Form-bets (Plan)** | `kl-urgency-nested-t1` + optional protocol-spine ambition; BLS-Link; Autoinjektor-Support |
| **Wave-5 board** | `domains/medical/briefs/kl-wave5.board.md` · ambition: optional protocol |

---

## What this chapter actually teaches

**Primärjob des Kapitels (Lernziel, nicht Überschrift):**  
Im Direktzugang **systemische Anaphylaxie früh erkennen**, von harmlosen Frames trennen und **sofort den 112-Pfad** wählen — ohne medikamentöses Eskalationsprotokoll und ohne allergologische Feindiagnostik.

### Was C wirklich vermittelt

1. **Problemrepräsentation:** Anaphylaxie = akute, potenziell lebensbedrohliche **systemische** Reaktion (Minuten bis wenige Stunden nach Exposition); Haut, Atemwege, Kreislauf und/oder GI einzeln oder kombiniert.
2. **Triage vor Feinschweregrad:** Feine Schweregradzuordnung tritt im Direktzugang zurück. Maßgeblich ist **sofortige Triage**: Atemwegs- oder Kreislaufzeichen, progredientes Angioödem oder rapide Mehrorganbeteiligung → **112-Notfall**.
3. **Progredienz-Regel:** Auch bei zunächst mild wirkenden Beschwerden: **Progredienz** oder neu auftretende Atemwegs-/Kreislaufzeichen → **sofort 112**.
4. **Denkanker:** zeitlicher **Allergenbezug** (Stich, Nahrung, Medikament, Latex, Anstrengung) **plus Dynamik**.
5. **Unterschätzungsgefahr:** Urtikaria als „banal“, Hyperventilation als „Panik“, thorakales Engegefühl als MSK-„Blockade“ — maskieren den Notfall.
6. **Handlungskette (explizit in C):** **Erkennen → Stopp → 112 → Lagerung/BLS → Autoinjektor-Support** — nicht „erst Ursache klären, dann entscheiden“.
7. **Zuständigkeitsgrenze:** Kein medikamentöses Eskalationsprotokoll durch HP/Physio; **patienteneigener** Adrenalin-Autoinjektor nur unterstützen, wenn verordnet und Anwendung bekannt.
8. **Nach Besserung:** biphasischen Verlauf bedenken — ärztliche Beobachtung; kein „weiterbehandeln und nach Hause schicken“ bei Verdacht.
9. **Transfer:** Mini-Fall (Nussallergie / Autoinjektor in der Tasche) + Case Study (Insektenstich / Autoinjektor im Auto / BWS-„Blockade“).

### Was C **nicht** lehrt (Anti-Scope für Formen)

- Keine HP/PT-geführten Adrenalin-/Antihistamin-/Kortison-Schemata.
- Keine Ring-und-Messmer-Graduierung als Ausschlussinstrument im Direktzugang (C: primär deskriptiv, ärztlich).
- Keine Populations-Inzidenz als Entscheidungsgrund (C: epidemiologische Zahlen DE nicht einheitlich; zählt klinische Vortestwahrscheinlichkeit).
- Keine exakten %-Angaben zu „Anaphylaxie ohne Hautzeichen“ als harte Leitlinienfakten.
- Keine Allergiediagnostik, keine i.m./i.v. Medikation aus eigener Kompetenz.
- Slave-III-Notfallkarte / Slave-IV-Leitsymptom-Flow **noch nicht** im Text — Master rechtfertigt; operative Karte ist nicht dieses Kapitel.

### Big-Picture-Pins (C wörtlich / nah)

- „Anaphylaxie ist eine akute, potenziell lebensbedrohliche systemische Reaktion“
- „Jede Konstellation mit Atemwegs- oder Kreislaufzeichen, progredientem Angioödem oder rapider Mehrorganbeteiligung ist ein **112-Notfall**“
- „Auftrag ist Screening, Sitzungsabbruch, Notfalllagerung, **BLS** bei Bedarf und Unterstützung beim **patienteneigenen** Adrenalin-Autoinjektor“

---

## Script units → ontology

Mapping C-Abschnitte → Ontology v1.1 units. Jobs laut SYNTHESIS / `kl-illness-script-ontology.md`.

| C-Abschnitt | Unit-ID | Dim | Primary job | Inhaltliche Füllung (kurz) | Form-Priorität Wave-5 |
|-------------|---------|-----|-------------|----------------------------|------------------------|
| Big Picture + Untertitel | **U-bigpicture** | — | understand + stop-awareness | Systemischer Notfall; Maskierung durch Flush/Enge/„Panik“; Richtung = 112-Triage | Band grammar |
| §1 Wann denken? + Enabling Conditions | **U-enabling** | PROFILE | recognize | Allergien, frühere Anaphylaxie, Atopie, Asthma, Autoinjektor, Exposition, Belastung; Beta-Blocker/ACE als Risikokontext | Band |
| §2 + Patho-Kern | **U-mechanism** | CAUSAL | understand | Antigen/Anstrengung → Mastzellen/Basophile → Mediatoren → Vasodilatation/Kapillarleck/Bronchokonstriktion → Hypoxie/Schock; GI parallel; Minuten–Stunden; biphasisch 6–24 h | Band (kurz, handlungsnah) |
| §3 Klinische Hinweise | **U-cues** | CHANNEL | recognize | 4 Domänen: Anamnese / Beobachtung / Untersuchung / Verlauf | Band |
| Klinische Manifestationen (Haut, Atemwege, Kreislauf, GI) | **U-cues** (Mehrsystem-Erweiterung) | CHANNEL | recognize | Multi-System-Cues; fehlende Haut **kein** Entwarnung | ggf. Cue-Matrix-Variante |
| §4 Verdacht / Abgrenzung / Warnsignale | **U-for-against** + **U-must-not-miss** | HYP-H / HYP-OTHER | distinguish + stop | Erhärtet vs. passt eher nicht; „nicht übersehen“ (ohne Haut; normale Vitalwerte; Beta-Blocker/ACE maskieren) | Discrimination |
| Trügerische Erklärungen (§4 + Vertiefung 1–5) | **U-mimic** | FRAME-ERROR | distinguish (error) | 5 Frames: nur Haut · Panik · Asthma · MSK-Enge · vasovagal | **Hoch** (Kapitel-Kern) |
| §5 Handlungstabelle + Delta-Matrix | **U-urgency** | TIME | choose + stop | 5× T1-Trigger-Cluster; 1× T2; 1× T4; **kein T3** | **Primär** nested-T1 |
| §5 Grenze + Tools/Scores + Autoinjektor | **U-scope** (+ CERTAINTY property) | SCOPE | constrain | Kein Eigenprotokoll; Score ≠ 112-Ersatz; Autoinjektor nur patienteneigen | Orthogonal zu TIME |
| Differenzialtabelle | **U-ddx** | HYP (delta) | distinguish | Delta zu must-not-miss/mimic: ACE-Angioödem, Sepsis/kardiogen, lokale Urtikaria, Asthma-Pfad-Split | Nur **delta-only** oder weglassen wenn Echo |
| Semantic Qualifiers + SBAR | **U-qualifiers** | COMMUNICATION modifier | look up / communicate | allergenbezogen, progredient, obere Atemwegsobstruktion, hämodynamisch instabil, biphasisch; SBAR-Beispiel | Trailing / optional lauter |
| Mini-Fall + Case Study | **U-transfer** | TRANSFER | apply | Nussallergie-Fall (Fragen offen); BWS/Insektenstich-Anker | Band |
| Das Wichtigste in Kürze | (Verdichtung) | — | — | 6 Bullet-Pins; gut für BP/Transfer-Echo, nicht eigene Unit | — |
| Screening Flag-Scan | (operativ zu U-cues + U-urgency) | — | — | Vertieft §5; ersetzt §5 nicht | Kein eigener Form-Zwang |

**Track-B (kl-voll, später/optional):** U-case (Case Study bereits im Text), U-patho-deep (Illness-Script-Vertiefung), U-screening (Flag-Scan) — nicht Wave-5-Pflicht, solange Grammar + Mimic + nested-T1 stehen.

**Relationsgraph (kapitelspezifisch):**

```text
U-bigpicture (systemischer Notfall / Maskierung)
    → U-enabling (Exposition + Allergie + Autoinjektor + Med-Kontext)
    → U-cues (4 Kanäle + Mehrsystem Haut/AW/Kreislauf/GI)
    → U-for-against ─┬→ U-mimic (5 Frames)
                     └→ U-must-not-miss (ohne Haut; normale Vitals; Maskierung Meds)
    → U-urgency [T1 multi-trigger | T2 | T4]  + ACTION payload
         ┼ orthogonal
         ▼
      U-scope (kein Eigenprotokoll; Autoinjektor patienteneigen; Score ≠ Ausschluss)
    → U-transfer (Mini-Fall + Case)
    → U-qualifiers (Übergabe)
```

---

## TIME matrix §5 (all 112 rows + T2)

Ontology: **T1 ≠ T2**; multi-112 = **eine** T1-Karte mit Trigger-Cluster + gemeinsamer/ähnlicher ACTION-Payload. **T3 fehlt in C** → Slot kollabiert (kein erfinden). **T4** = Behandeln + Sicherheitsnetz — hier inhaltlich fast „keine PT als Akutindikation“. ACTION = Payload *in* Stufe, keine dritte Achse.

### T1 — 112 / Sofort (5 Content-Zeilen → 1 Stufe)

Gemeinsame ACTION-Elemente aus C (clusterbar, nicht fünf Leitern):

| # | Situation / Trigger (C) | Dringlichkeit | Handlung (C, gekürzt pins) |
|---|-------------------------|---------------|----------------------------|
| **T1-a** | Atemnot, Stridor, Zungenschwellung, Schluckstörung oder kloßige Sprache nach möglicher Allergenexposition | Sofort | Sitzung sofort beenden. **112 wählen.** Notfalllagerung; keine Belastung. Patienteneigenen Adrenalin-Autoinjektor unterstützen, wenn verordnet und Anwendung bekannt. Bis zum Eintreffen des Rettungsdienstes überwachen |
| **T1-b** | Kreislaufkollaps, Hypotonie, Bewusstseinsstörung oder Schock im allergischen Kontext | Sofort | **112 wählen.** Schocklagerung nach Lage und Bewusstsein. **BLS** bei Bedarf. Kein medikamentöses Eigenprotokoll durch HP/Physio |
| **T1-c** | Generalisierte Urtikaria **plus** gastrointestinale **und** respiratorische Zeichen | Sofort | **112 wählen.** Systemische Anaphylaxie bis zum Ausschluss. Keine fortgesetzte PT |
| **T1-d** | Bekannte schwere Allergie plus erneute Exposition mit klarer Progredienz (Haut → Atemwege/Kreislauf oder Mehrorgan) | Sofort | **112 wählen.** Notfallmaßnahmen wie oben. Autoinjektor nur patienteneigen und bei bekannter Anwendung |
| **T1-e** | Rapide Progression über mehrere Organsysteme oder progredientes Angioödem | Sofort | **112 wählen.** Minuten zählen; keine Verzögerung durch weitere „Abklärung“ |

**T1-Handlungs-Kern (einmal laut, Payload):**

- **112 wählen** / Sitzung beenden  
- Notfall- bzw. Schocklagerung; keine Belastung; keine fortgesetzte PT  
- **BLS bei Bedarf** (Bewusstseinsstörung / Atemstillstand — C)  
- **Autoinjektor-Support** nur patienteneigen, verordnet, Anwendung bekannt  
- Überwachen bis Rettungsdienst  
- **Kein** medikamentöses Eigenprotokoll  

**Zusatz-Pins Progredienz (Big Picture / Wichtigste in Kürze — gehören in T1-Logik, nicht neue Stufe):**

- „Auch wenn Beschwerden zunächst mild wirken: jede **Progredienz** oder jedes neu auftretende Atemwegs- oder Kreislaufzeichen erfordert **sofort 112**“

**Delta-Matrix §Screening (verdichtet, gleiche T1-Semantik):**  
Atemwegs- und/oder Kreislaufzeichen; progredientes Angioödem; Mehrorgan + Dynamik; bekannte schwere Allergie + Exposition + Progredienz → **Sofort 112**; Stopp; Lagerung; BLS bei Bedarf; Autoinjektor-Support.

### T2 — Notaufnahme / gleichtags Arzt

| Situation (C) | Dringlichkeit | Handlung (C) |
|---------------|---------------|--------------|
| Persistierende, milde, **nicht** progressive Beschwerden; isolierte stabile Hautreaktion ohne Atemwegs-/Kreislaufbeteiligung; unklare Ursache bei bekannter Allergie **ohne** 112-Kriterien | Notaufnahme / gleichtags Arzt | Keine Physiotherapie als reines Abwarten. Gleichtags ärztlich vorstellen. Bei jeder Verschlechterung **sofort 112**. Biphasischen Verlauf nicht allein häuslich riskieren, wenn ärztliche Beobachtung indiziert ist |

**Delta-Matrix T2-Pins:** Isolierte stabile Hautreaktion ohne Atemwege/Kreislauf; milde nicht-progressive Beschwerden; unklare Allergie ohne 112-Kriterien → **Keine PT**; gleichtags Arzt/Notaufnahme; Sicherheitsnetz 112.

**Harte T1≠T2-Grenze in C:** T2 ist *nicht* Notruf, bleibt aber **keine fortgesetzte PT**; Verschlechterung eskaliert zurück nach T1.

### T3 — Zeitnah Arzt

**Nicht gefüllt in C.** → weglassen (US-C collapse). Nicht erfinden.

### T4 — Behandeln + Sicherheitsnetz

| Situation (C) | Label | Handlung (C) |
|---------------|-------|--------------|
| **Keine** vermutete akute allergische Reaktion im Direktzugang als PT-Primärindikation | Behandeln mit Sicherheitsnetz | Vermutete allergische Akutreaktion mindestens ambulant ärztlich abklären. PT erst nach Klärung und ohne akute Red Flags |

**Delta-Matrix:** PT möglich **nicht** bei vermuteter akuter allergischer Reaktion — erst nach ärztlicher Klärung und ohne akute Red Flags.

**Invariant:** Kein „Treat ohne Netz“. T4 hier ist *Erlaubnis nach Klärung*, nicht „Akutallergie wegmobilisieren“.

### Kontraindikationen (binden T1/T4, C)

- Jede vermutete akute anaphylaktische oder rasch progrediente allergische Reaktion = **absolute Kontraindikation** für fortgesetzte Behandlung, Belastung und manuelle „Enge-Abklärung“.
- Session-Abbruch bei neuem Atemnot, Heiserkeit, Schwindel, Blutdruckabfall-Verdacht oder rascher Hautausbreitung.
- Keine i.m./i.v. Medikation aus eigener Kompetenz.

---

## SCOPE (incl. Autoinjektor only patienteneigen)

SCOPE ist **Achse**, nicht TIME-Stufe. Im Druck: eigener Frame, andere Geometrie; **kein** Meta-Text „keine Dringlichkeitsstufe“ in der Figur.

### Grenze der eigenen Zuständigkeit (C §5)

| Scope-Pin (C) | Bedeutung für Form |
|---------------|-------------------|
| Ausschlussdiagnostik | Nicht HP/PT |
| Schweregradfeinabstufung | Nicht HP/PT-Entscheidungsinstrument |
| i.m./i.v. Notfallmedikation aus eigener Kompetenz | Verboten |
| Allergiediagnostik | Verboten |
| Kein medikamentöses Eskalationsprotokoll durch HP Physio | Zentraler Scope-Claim |
| Nicht erst mobilisieren | Verbietet MSK-„Abklärung“ der Enge |
| Fokus: Screening, 112, BLS, Autoinjektor-Unterstützung | Erlaubte Handlungskette |

### Autoinjektor — Scope-kritisch (C, mehrfach)

| Pin (C) | Erlaubt | Verboten |
|---------|---------|----------|
| Nur **patienteneigen** | Unterstützung bei verordnetem Gerät | Praxis-/HP-eigenes Adrenalin-Protokoll |
| Anwendung **bekannt** | Assistenz, wenn Patient:in Anwendung kennt | „Einfach spritzen“ ohne bekannte Anwendung / im Zweifel |
| „HP Physio injiziert nicht aus eigener Kompetenz“ | — | Eigenmächtige Injektionskompetenz |
| „Rechtliche und schulungsbezogene Grenzen der Assistenz“ | Grenzen einhalten | Scope aufweichen |
| „im Zweifel Notruf und BLS priorisieren“ | 112/BLS vor Geräte-Fummelei | Autoinjektor als Ersatz für 112 |

**Form-Druck:** Autoinjektor ist **ACTION-Payload in T1** *und* **SCOPE-Constraint** gleichzeitig — darf nicht als „HP-Therapieprotokoll“ oder Drogen-Algorithmus gelesen werden. Plan-Formulierung: *autoinjector support — not drug protocol*.

### CERTAINTY (Property an SCOPE)

| C-Aussage | Property |
|-----------|----------|
| „Es gibt **keine** validierte alleinige Score-Skala, die im Direktzugang die 112-Entscheidung ersetzt.“ | Score ≠ rule-out |
| Ring und Messmer Grad I–IV primär **deskriptiv**, ärztlich/klinisch — **nicht** als HP/Physio-Ausschlussinstrument | U-score-scope: anzeigen nur mit Scope-Bremse, oder weglassen |

### SCOPE vs. T4 (nicht verwechseln)

- **SCOPE:** was *nie* hier geklärt/gemacht wird (Diagnostik, Eigenmedikation, Fein-Grading).  
- **T4:** wann PT *nach* Klärung wieder möglich ist (+ Netz).  
Beide dürfen optisch nicht zu „grauer fünfter Sprosse“ werden.

---

## Discrimination + mimic

### U-for-against (HYP-H) — Pins aus §4

**Erhärtet den Verdacht (C):**

- zeitlicher Allergenbezug plus Atemwegs- und/oder Kreislaufzeichen  
- generalisierte Urtikaria **mit** respiratorischen und gastrointestinalen Zeichen  
- bekannte schwere Allergie plus erneute Exposition mit Progredienz  
- progredientes Angioödem mit Schluck- oder Sprachstörung  

**Passt eher nicht (C):**

- klar isolierte, stabile lokale Hautreaktion **ohne** Atemwegs-/Kreislaufbeteiligung und **ohne** Dynamik  
- dennoch: keine „PT weiter wie geplant“-Entscheidung bei unklarer Allergieanamnese (ärztliche Klärung)

**Nicht übersehen (U-must-not-miss / HYP-OTHER):**

- Systemische Reaktion **auch ohne** klassische Hautzeichen möglich — fehlende Hautsymptome geben **keine Entwarnung** (exakte Leitlinienzahl unsicher → **keine %-Pins erfinden**)  
- Initial **normale Vitalwerte** schließen beginnende Anaphylaxie **nicht** aus  
- **Beta-Blocker** oder **ACE-Hemmer** können Zeichen maskieren und Reversibilität erschweren → Schwelle zum Notruf besonders niedrig  

### U-mimic (FRAME-ERROR) — 5 Frames (C Vertiefung + §4)

Richtung immer: **harmloser Frame → reale Gefahr** (nicht umkehren).

| # | Trügerischer Frame (C) | Was maskiert wird / Korrektur (C) |
|---|------------------------|-----------------------------------|
| **M1** | „Nur Quaddeln / Haut“ / isolierte Urtikaria als banale Hautreaktion | Generalisierte Urtikaria kann Vorläufer/Teil systemisch sein; ohne Fragen zu Atemnot, Kloßgefühl, Schwindel und ohne Dynamik → Unter-Triage |
| **M2** | „Panikattacke / Hyperventilation“ | Unruhe und beschleunigte Atmung kommen bei Anaphylaxie vor; ohne Ausschluss Schwellung, Stridor, Kreislaufinstabilität ist psychische Erstlabelung gefährlich |
| **M3** | „Asthma-Schub“ / Asthmaexazerbation | Isolierte Bronchospastik kann Asthma sein; Allergenbezug, Haut-/Schleimhaut, GI oder Kreislauf → Anaphylaxie-Notfallpfad (**112**) |
| **M4** | „HWS-/BWS-Blockade, Enge vom Training“ | Zervikothorakales Engegefühl nach Exposition oder mit Schwellung/Juckreiz/Schwindel = kein Freifahrtschein für manuelle Techniken |
| **M5** | „Vasovagal, wird gleich wieder“ | Blass/kühl/Situations-Trigger eher vasovagal; Flush, Urtikaria, Atemwegsobstruktion, Allergenbezug → anaphylaktischer Schock; im Zweifel **112** |

**Case-Study-Mimic (klinischer Anker):** reproduzierbare paravertebrale Druckdolenz + Selbstetikett „Blockade vom Training“ überdeckt Beginn systemischer Reaktion mit Atemwegsbeteiligung nach Insektenstich.

### U-ddx (delta-only)

Differenzialtabelle C — nur behalten, was **nicht** schon Mimic/must-not-miss ist:

| Verdacht (C) | Hinweisende Qualifier (C) | Handlungstendenz (C) | Delta-Notiz |
|--------------|---------------------------|---------------------|-------------|
| Anaphylaxie | Allergenbezug, Dynamik, ≥1 System kritisch oder Mehrorgan | **112** | = H (Kern) |
| Anaphylaktischer Schock | Hypotonie, Kollaps, Bewusstseinsstörung im allergischen Kontext | **112** + BLS bei Bedarf | Eskalation von H |
| Asthmaexazerbation | v. a. Bronchospastik, oft ohne systemische Haut-/Kreislaufzeichen — Überlappung möglich | Allergen + Mehrorgan → Anaphylaxie-Pfad; sonst ärztlicher Notfallpfad je nach Schwere | teil = M3 |
| **ACE-Hemmer-Angioödem** | Oft **ohne** Urtikaria; Zunge/Lippen/Atemwege; Medikamentenanamnese | Atemwegsbedrohung → **112**; keine MSK-Behandlung | **echtes Delta** |
| Vasovagale Synkope | Blass, kühl, Situations-Trigger, oft ohne Flush/Urtikaria/Atemwegsobstruktion | Stabilisierung; Unsicherheit + Allergenkontext eher **112** | teil = M5 |
| Panikattacke | Unruhe, Hyperventilation — **erst** Schwellung/Stridor/Kreislauf prüfen | Keine psychische Entwarnung vor Ausschluss | = M2 |
| **Sepsis / kardiogener Schock** | Anderer Kontext (Fieber/Infekt bzw. kardial); dennoch Schock = Notfall | **112** | **Delta** (anderer Kontext, gleiche Handlung) |
| Lokale Urtikaria | Stabil, isoliert, ohne Atemwege/Kreislauf, ohne Dynamik | Keine PT als Therapie der Akutreaktion; gleichtags ärztlich | = T2 / „passt eher nicht“ |

**Empfehlung R:** Mimic-Map mit M1–M5 als Pflicht; DDx-Streifen nur für **ACE-Angioödem** + optional **Sepsis/kardiogen**, sonst weglassen (Invariant 7).

### Semantic Qualifiers (Übergabe-Pins, C)

| Qualifier (C) | Verwendung (C) |
|---------------|----------------|
| Allergenbezogen / zeitgekoppelt | Minuten bis Stunden nach Stich, Nahrung, Medikament, Latex, Anstrengung |
| Progredient / multiphasisch | Zunahme über Minuten; mögliche zweite Welle nach Stunden |
| Obere Atemwegsobstruktion | Stridor, Zunge, kloßige Sprache, Schluckstörung |
| Hämodynamisch instabil | Hypotonie, Schock, Synkope |
| Kutan vs. systemisch | Isolierte Haut vs. Atemwege/Kreislauf/GI-Verbund |
| Biphasisch | Erneute Verschlechterung ca. **6–24 h** nach Initialereignis (leitlinienbezogenes Fenster) |

**SBAR-nah Übergabebeispiel (C, Transfer/Comms):**  
„34-jährige Patientin, seit ca. 10 min nach Nahrungsmittelaufnahme Juckreiz, Flush, Lippenschwellung, Heiserkeit und Kloßgefühl. Bekannte Nussallergie, Autoinjektor vorhanden. Verdacht auf beginnende Anaphylaxie. Behandlung gestoppt, 112 alarmiert, Autoinjektor-Anwendung unterstützt, Patientin überwacht.“

Rettungsdienst-Kommunikation (C): Trigger, Zeitpunkt, Symptome nach Organsystem, bekannte Allergie, eingenommene/applizierte Medikamente (Autoinjektor), Vitalzeichen, Maßnahmen — ohne spekulative Feindiagnosen. Cross-link → II-10 falls im Band.

---

## Multi-system cues

### §3 — vier Kanäle (U-cues Standard)

| Domäne (C) | Erwartbare Merkmale (C) |
|------------|-------------------------|
| **Anamnese** | Zeitlicher Bezug zu Stich, Nahrung, Medikament, Latex oder Anstrengung; bekannte schwere Allergie / Autoinjektor; Atemnot, Kloßgefühl, Heiserkeit, Schluckstörung; Schwindel, drohende Ohnmacht; Juckreiz, Quaddeln, Schwellung; GI-Beschwerden |
| **Beobachtung** | Flush, Urtikaria, Angioödem (Lippen, Zunge, Lider); Stridor, Giemen, angestrengte Atmung, kloßige Sprache; Blässe oder Marmorierung bei Schock; Unruhe, Angst, Kollapsneigung |
| **Untersuchung** | Vitalzeichen nur soweit **ohne Verzögerung** des Notrufs; keine Belastungstests; keine Hals-/Thorax-„Mobilisation“ zur Abklärung von Enge; bei Bewusstseinsstörung oder Atemstillstand: **BLS** |
| **Verlauf** | Rasant bis stufenweise über Minuten bis Stunden; nach initialer Besserung erneute Verschlechterung möglich (**biphasisch** — Beobachtung ärztlich) |

### Manifestations-Cluster (Mehrsystem — C Patho)

| System | Pins (C) | Entwarnungs-Fallen |
|--------|----------|-------------------|
| **Haut/Schleimhaut** | Urtikaria, Flush, Pruritus, Angioödem | Fehlen kutaner Zeichen schließt schwere systemische Reaktion **nicht** aus |
| **Atemwege** | Dyspnoe, Giemen/Bronchospasmus, Stridor, Zungen-/Rachenschwellung, Heiserkeit, kloßige Sprache, Schluckstörung | — |
| **Kreislauf** | Tachykardie, Hypotonie, Schwindel, Synkope, Schock | Initial unauffälliges Blutdruckprofil schließt beginnende Reaktion nicht aus |
| **GI** | Übelkeit, Erbrechen, kolikartige Bauchschmerzen, Diarrhö — besonders im Verbund mit Haut und Atemwegen | Allein nicht entwarnen; im Verbund T1-c |

### Flag-Scan — subjektiv (C, Screening)

- Trigger letzte Minuten–Stunden (Stich, Essen, Medikament, Latex, ungewöhnliche Anstrengung)?  
- Atemnot, Keuchen, Stridor, Kloßgefühl, Schluck- oder Sprachstörung?  
- Schwindel, Benommenheit, drohende Ohnmacht?  
- Juckreiz, Quaddeln, Schwellung Lippen/Zunge/Lider?  
- Übelkeit, Erbrechen, krampfartige Bauchschmerzen?  
- Bekannte schwere Allergie? Autoinjektor mit — Anwendung bekannt?  
- Beta-Blocker oder ACE-Hemmer (Kontext, keine Diagnostik)?  

### Flag-Scan — objektiv (C)

- Haut/sichtbare Schleimhäute: Urtikaria, Flush, Angioödem  
- Atmung: Frequenz, Anstrengung, Giemen/Stridor, Sprechdyspnoe  
- Kreislauf/Bewusstsein: Puls, Hautperfusion, Orientiertheit — **ohne** Notruf zu verzögern  
- Bewusstlosigkeit/Atemstillstand → **BLS** + parallel Notruf  
- **Keine** Belastungstests, keine manuelle Provokation Hals/Thorax  

**Dynamik:** unauffälliger erster Eindruck ersetzt keine erneute Bewertung bei Zunahme; zwischen erstem Hinweis und kritischer AW-/Kreislaufbeteiligung können nur wenige Minuten liegen.

**Form-Hinweis:** §3 = vier **gleiche** Kanäle — keine Fake-Matrix-Kreuzprodukte. Mehrsystem-Cluster ist *Inhalt* der Beobachtung/Anamnese, nicht fünfte Achse.

---

## Mechanism essence

**Kette (C, handlungsnah):**

1. Allergenkontakt **oder** belastungsassoziierter Trigger  
2. → massive Mediatorfreisetzung aus **Mastzellen und Basophilen**  
3. → **Vasodilatation** + erhöhte **Gefäßpermeabilität** (Kapillarleck)  
4. → relatives/absolutes Volumenproblem, Flush, Ödem  
5. → **Bronchokonstriktion** + Schleimhautschwellung oberer Atemwege  
6. → Hypoxie- und **Schockrisiko**  
7. parallel: GI-Mediatorwirkungen (Koliken, Übelkeit, Erbrechen)  

**Zeit:** typisch **Minuten bis wenige Stunden**.  

**Biphasisch (C, leitlinienbezogen):** zweite Welle ca. **6–24 Stunden** nach Initialereignis (AWMF S2k Update 2021); exakte Inzidenz settingabhängig. Klinische Konsequenz: initiale Besserung ersetzt **keine** Beobachtung und keine ärztliche Einordnung.

**Enabling (kurz an Kette koppeln, nicht eigene Epidemiologie-Grafik):**

- bekannte Allergien (Insektengift, Nahrungsmittel, Arzneimittel, Latex)  
- frühere Anaphylaxie, Atopie  
- Asthma (erhöht Relevanz von Atemwegssymptomen)  
- Beta-Blocker / ACE-Hemmer = Risikokontext (Maskierung, erschwerte Reversibilität) — **keine** Diagnose im Direktzugang  

**Konsequenz-Kette für HP/Physio (C wörtlich sinngemäß):**  
**Erkennen → Stopp → 112 → Lagerung/BLS → Autoinjektor-Support**  
Belastung, manuelle Techniken und fortgesetzte Sitzung verzögern den Notruf und können instabile Situation verschlechtern.

**Form-Druck Mechanism:** kurz, kausal, an Handlung gekoppelt — **nicht** immunologisches Lehrbuchdiagramm; nicht lauter als U-urgency.

---

## Distinctive form pressure (nested T1, BLS link, autoinjector support — not drug protocol)

Delta vs. bereits gebaute Kapitel (Melanom, Erysipel, CES, MSCC, ACS-Snippet):

| Druck | Anaphylaxie-spezifisch | Konsequenz für Formen |
|-------|------------------------|----------------------|
| **Nested multi-T1** | **5** explizite 112-Zeilen in §5 (mehr als typisches Erysipel; vergleichbar ACS-Cluster) | Recipe `kl-urgency-nested-t1`: **eine** T1-Karte, Trigger-Liste intern, **eine** Handlungszeile — keine 5 roten Leitern |
| **Hard-stop / Flag-Master** | Fast alle Akutpfade sind 112; T4 = „keine Akutallergie als PT-Indikation“ | U-urgency dominant; U-mechanism leiser; trotzdem **Master-Chrome** (teal framework, solid red **nur** T1) — **nicht** III-Notfallkarten-Vollrot |
| **BLS-Link** | Explizit bei Kollaps/Bewusstseinsstörung/Atemstillstand | ACTION-Payload muss BLS **sichtbar** tragen (Cross-link zu III-BLS-Wissen, ohne Slave-Karte zu ersetzen) |
| **Autoinjektor-Support ≠ Drug protocol** | Wiederholt: nur patienteneigen, verordnet, Anwendung bekannt; kein Eigenprotokoll | Visuell: Support/Assistenz, **kein** Medikamenten-Algorithmus, keine Dosierungsleiter, keine Ampullen-Choreografie |
| **Mimic-Dichte** | 5 Frames inkl. MSK-Enge (PT-typisch) + Panik + Asthma + Haut + vasovagal | Mimic-Map ist **Kernpädagogik**, nicht Zusatzdeko; Case Study = MSK-Mimic-Anker |
| **Mehrsystem-Triage** | Haut ∧ Atemwege ∧ Kreislauf ∧ GI; T1-c verlangt Urtikaria **plus** GI **und** respiratorisch | Cue-Form muss Mehrorgan/Verbund lesbar machen; „nur Haut“ als Falle |
| **Progredienz / Minuten** | Dynamik handlungsleitend; „Minuten zählen“ | Tempo-Signaling in T1; keine statische Checklisten-Optik ohne Dynamik |
| **Biphasisch nach Besserung** | 6–24 h; ärztliche Beobachtung | Eher T2/Netz-Pin oder Transfer — **nicht** eigene TIME-Stufe |
| **Master ≠ Slave** | III-anaphylaxie / IV-allergie-akut geplant | Keine operative Karten-Ästhetik vorwegnehmen; quiet cross-link später |
| **Score-Falle** | Ring/Messmer genannt aber als Nicht-Ausschluss | Nicht als Ampel-Grad I–IV visualisieren |

**Untertitel als Form-Job:** „Wenn Flush, Engegefühl oder ‚Panik‘ den Notfall maskieren“ = Mimic+Urgency in einem Satz — Must-see der Kapitel-Story.

---

## Ambition candidates

Plan: ambition **optional protocol**. Nur wenn Grammar (nested-T1 + SCOPE + Mimic) steht.

| ID | Ambition-Idee | Job | Earned? | Risiko | Empfehlung R |
|----|---------------|-----|---------|--------|--------------|
| **A1** | **Protocol-spine light** — vertikale Handlungskette Erkennen→Stopp→112→Lagerung/BLS→Autoinjektor-Support *innerhalb* T1-Payload oder als schmale Begleitspange | choose + stop | Ja, C hat explizite Kette | Drift zu III-Notfallkarte / drug protocol | **Primary ambition** wenn nötig; DE pins; kein Dosierungs-UI |
| **A2** | **Mehrsystem-Verbund-Diagramm** (Haut/AW/Kreislauf/GI) mit „ohne Haut ≠ Entwarnung“ | recognize | Ja | Fake-Matrix; %-Erfindung | Nur wenn Cue-Table zu schwach; Pins ohne Zahlen |
| **A3** | **MSK-Enge peel** (BWS-Druckdolenz → Atemweg) aus Case Study | distinguish (error) | Stark PT-spezifisch | Anatomie-DRIFT; sensational | Optional hybrid; Mimic-Map deckt Kern ab |
| **A4** | **Autoinjektor „nur patienteneigen“-Emblem** | constrain | Hoch für Scope-Klarheit | Wirkt wie Produktwerbung / Injektionsanleitung | Besser als SCOPE-Pin-Zeile + T1-Payload-Text; **keine** Step-by-step Injektionsgrafik ohne C-Anleitung |
| **A5** | Biphasisch 6–24 h Timeline | understand | Mittel | Als Inzidenz-Chart missbraucht | Klein in Mechanism/T2-Netz; keine Ambition-Pflicht |

**Verworfen als Ambition (R):**

- Ring-Messmer Grad-I–IV-Leiter (C: nicht HP-Ausschluss)  
- Vollständige Pharmakologie-/Adrenalin-Dosierungsroadmap  
- Solid-red full-bleed „Notfall Anaphylaxie“-Plakat (falsches Genre)  
- Epidemiologie-Deutschland-Chart (C: Zahlen nicht einheitlich)

**Free-vision-Pflicht:** nein für Grammar; bei A1 nur wenn Code-Spine den Job nicht scan-sicher löst. Priorität Ambition-Welle (Plan): Anaphylaxie **nach** Schlaganfall/Kompartment.

---

## Transfer recipes

Aus `kl-form-library.md` — Pin-Swap, keine Erysipel-Klinik kopieren.

| Unit | Recipe id | Transfer-Quelle | Pin-Arbeit Anaphylaxie | Notes |
|------|-----------|-----------------|------------------------|-------|
| U-urgency + U-scope | `kl-urgency-nested-t1` (+ `kl-urgency-scope-stack`) | ACS `us-b-acs()` / US-B | 5 Trigger → 1 T1; T2 gleichtags; T4 nach Klärung; SCOPE Autoinjektor/kein Eigenprotokoll | **Primärtransfer** |
| U-urgency dashboard | `kl-urgency-scope-dashboard` | US-D Erysipel | Optional; Code-SoT bevorzugen | Nur wenn nested-T1 scan-fail |
| U-mimic | `kl-mimic-map` / `kl-mimic-peel` | Erysipel M-A/M-B | M1–M5 Frames | Peel optional für MSK-Enge |
| FA + NM | `kl-discrimination` | FA pattern | Erhärtet / passt nicht / nicht übersehen | Dann Mimic |
| U-mechanism | `kl-mechanism-chain` | Erysipel chain | Mastzellen→Mediatoren→… | Kurz halten |
| U-enabling | `kl-enabling-triptych` | Erysipel | Allergie/Exposition/Med-Kontext + Onset Minuten–h | Tempo benennen, keine unbeschriftete Farbbar |
| U-bigpicture | `kl-bp-three-beat` | Erysipel | Was / Gefahr (Unterschätzung) / Richtung 112 | Untertitel-Maskierung |
| U-cues | `kl-cues-table` | Erysipel | 4 Domänen C-Tabelle | Untersuchung: „ohne Notruf-Verzögerung“ |
| U-transfer | `kl-transfer-case` | Erysipel | Mini-Fall Fragen (1)(2)(3) **ohne Spoiler**; Case Study als Anker | Antworten nicht in Druckform spoilern |
| Exception-T1 | Melanom lesson | — | **Nicht** anwenden: C hat **volle** T1-Wand, kein Exception-Strip | Gegenteil von Melanom |
| Spatial recipes | CES/MSCC | — | Kein Sattel/Spine-Motiv | — |
| ABCDE / FAST | Melanom / Stroke-Plan | — | Kein Kriterien-Mnemonic dieses Typs in C | Kein Fake-ABCDE |

**Transfer-Hygiene:**

- Keine Erysipel-„Vernichtungsschmerz“-Pins.  
- Keine ACS-Thorax-Pins.  
- Autoinjektor-Text **nicht** aus Fremdquellen; nur C.  
- BLS nur als Verweis-Handlung, kein CPR-Algorithmus-Fork in diesem Kapitel.

---

## Claim risks

| Risiko | Warum | Mitigation |
|--------|-------|------------|
| **Drug-protocol-DRIFT** | Operative Dichte + Autoinjektor verleiten zu Dosierungs-/Reihenfolge-Algorithmen | Pins: „kein medikamentöses Eigenprotokoll“; nur patienteneigen; keine mg/ml |
| **T1 als 5 Leitern** | 5 Markdown-Zeilen 112 | Nested-T1 Invariant: multi-trigger ⊂ eine Stufe |
| **T1/T2 Kollaps** | Beide „kein PT“ | Labels **112** vs. **Notaufnahme/gleichtags**; Gewicht T1 ≫ T2 |
| **SCOPE als T5** | Scope-Zeile steht in §5-Tabelle | Orthogonaler Frame; Content-Titel „Grenze der eigenen Zuständigkeit“ ok; kein Meta |
| **Master→Slave Chrome** | Hard-stop-Feeling | Teal script framework; solid red only T1; keine III-Vollseite |
| **Haut-% erfinden** | C: exakte Leitlinienzahl unsicher | Nur „keine Entwarnung“ — keine Prozentgrafik |
| **Inzidenz DE** | C: nicht einheitlich | Keine Populationsrate als Entscheidungsanker |
| **Ring/Messmer als Ampel** | Name im Text | Nur mit CERTAINTY: deskriptiv ≠ Ausschluss — oder weglassen |
| **Biphasisch als harte Inzidenz** | 6–24 h Fenster leitlinienbezogen | Fenster ok; „exakte Inzidenz settingabhängig“ nicht als Balken |
| **Autoinjektor = HP spritzt immer** | Assistenz vs. Kompetenz | „nur wenn verordnet und Anwendung bekannt“; im Zweifel 112/BLS |
| **Treat ohne Netz** | T4 formuliert eng | T4-Pin exakt: PT erst nach Klärung und ohne Red Flags |
| **Mimic-Richtung umkehren** | Panik/vasovagal könnten „entwarnen“ | Im Zweifel 112; erst Schwellung/Stridor/Kreislauf prüfen |
| **Spoiler im Transfer** | Mini-Fall hat klare 112-Antwort | Fragen offen lassen; Lösung nicht in Figure |
| **Form-meta / EN** | US-D lesson | Keine „Trigger cluster“-Labels in Figur; DE only |
| **Icon-semantics** | Falls free vision Autoinjektor/Lunge | Claim audit labels **+** illustration-semantics |
| **Belastungsinduzierte Anaphylaxie weglassen** | In Enabling/Beginn | Pin behalten wenn Enabling/Cues gebaut werden |
| **ACE-Angioödem unterschlagen** | Echtes DDx-Delta | Wenn DDx: oft ohne Urtikaria; Med-Anamnese |

**Author-Qs an C (nur wenn später Textlücke):** keine für Wave-5 Grammar — T3 fehlt bewusst; Slave-III/IV noch geplant.

---

## Success criterion

**Kapitel-übergreifend (Scan-Stress, Direktzugang):**

> Unter Zeitdruck erkennt die lernende Person eine **progrediente oder mehrorganige** Reaktion im Allergenkontext als **112-Notfall**, **beendet** die Sitzung, wählt den **Notruf**, denkt **BLS bei Bedarf** und **Autoinjektor nur patienteneigen** mit — und verwechselt das **nicht** mit Panik, banaler Urtikaria oder MSK-Enge; zugleich bleibt klar: **kein** eigenes Medikamentenprotokoll und **keine** PT als Abklärung.

**Unit-Gates (für spätere Form Specs):**

| Unit | Success criterion (R-Entwurf) |
|------|-------------------------------|
| U-urgency+scope | Korrekte TIME-Stufe (meist T1); ACTION gelesen; SCOPE nicht als Sprosse; Autoinjektor-Constraint sichtbar |
| U-mimic | Mindestens die Frames Haut / Panik / MSK-Enge → Gefahr; keine psychische Entwarnung vor AW/Kreislauf-Check |
| U-for-against / NM | „Ohne Haut“ und „normale Vitals“ entwarnen nicht |
| U-cues | Vier Kanäle scanbar; Untersuchung verzögert Notruf nicht |
| U-mechanism | Kette bis Schock/Hypoxie in einem Atemzug; Konsequenz = Stopp/112 |
| U-transfer | Offene Fragen am Mini-Fall führen auf Stopp/112/Autoinjektor-Support ohne Spoiler-Druck |

**Must-see (Kapitel):**

1. **112** bei Atemwegs-/Kreislaufzeichen, progredientem Angioödem, Mehrorgan, Allergie+Exposition+Progredienz  
2. **T1 ≠ T2**  
3. **Nested triggers**, keine Schein-Leiter  
4. **BLS** im Kollaps-/Atemstillstand-Pfad  
5. **Autoinjektor nur patienteneigen**  
6. **Mimic:** Panik / nur Haut / MSK-Enge maskieren  
7. Genre: Illness-Script Master, nicht Notfallplakat  

---

*R complete — `kl-anaphylaxie`. Next (Wave-5): Form-Space (C) → Form Specs (M). C bleibt read-only.*
