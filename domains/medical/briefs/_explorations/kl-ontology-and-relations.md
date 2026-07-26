# KL-Monographie — Ontologie, Beziehungen, Bedeutungen

**Wave:** R (Deep Reasoning)  
**Status:** exploration · Media-led · **kein** Typst / keine Free-Vision in diesem Artefakt  
**Datum:** 2026-07-26  
**Plan:** KL-Formensprache maximale Tiefe (iterativ: R → C → H-R → M → G → H-A → O → H)  
**Content-SoT (read-only):**  
`Kursbuch5/.../2026-07-welle-06-kl-full/monographs/` (88)  
**Doctrine:** `illness-script-block.md` · Autoren-Guide KL · s2-authoring-doctrine  
**Skills-Grounding:** media-brief / design-reasoning · Medical-Presentation-Forms · COMPENDIUM · medical-graphics (nur als *späterer* Realisierungspfad)  
**Vorgänger:** `welle-06-kl-content-forms-analysis.md` · `kl-phase1-critique-redesign.md`  
**Anti-SoT:** `phase1.pdf` / `phase1v2.pdf` (Lernspur, nicht Design-Quelle)

> ### Ontologie v1.1 FROZEN (Gemini-Dialektik)
>
> Nach 3 Runden Gemini Pro (Evaluation → Dialektik → Freeze) gilt die **verbindliche Kurzfassung**  
> [`gemini-ontology-eval/SYNTHESIS-v1.1-frozen.md`](gemini-ontology-eval/SYNTHESIS-v1.1-frozen.md)  
> für Wave C. Dieses lange Dokument bleibt die **ausführliche Reasoning-Basis**; bei Konflikt  
> gewinnt v1.1-Freeze (T1≠T2, ACTION=Payload, SCOPE orthogonal, T3 optional, DDx delta-only).

---

## 0. Zweck dieses Dokuments

Dieses Artefakt beantwortet **bevor** irgendeine Darstellung gebaut wird:

1. Was *ist* eine Krankheitslehre-Monographie epistemisch und didaktisch?  
2. Welche **inhaltlichen Rollen** (Units) hat sie — und welche **nicht**?  
3. Welche **Beziehungen** bestehen zwischen diesen Rollen?  
4. Welche **Learner-Jobs** und **Load-Risiken** hängen an jeder Rolle?  
5. Welche **Dimensionen** darf man *nie* in eine visuelle Achse zwingen?  
6. Was folgt daraus als **Kandidatenklasse** für Formen (noch ohne finale Form Spec)?  

**Erfolgskriterium Wave R:** Ein Mensch kann anhand dieses Texts erklären, *warum* Phase-1-Fehler (Scope-in-Leiter, 2×2-§4, Meta-„Label“) didaktisch falsch waren — und welche Unit man als Nächstes gestalten sollte.

---

## 1. Genre, Rolle im Werk, Chrome

### 1.1 Was die KL-Monographie *ist*

| Aspekt | Bestimmung |
|--------|------------|
| **Buchteil** | V (Systeme) / VI (Lebensphasen, Psych, Geriatrie…) — *Illness-Script-Master* |
| **Primäre Kompetenz** | Klinische **Entscheidungskompetenz** und **Gefahrenabwehr** im Direktzugang (Autoren-Guide) |
| **Kernfrage** | „MSK-Problem oder maskierte systemische Gefahr?“ |
| **Denkformat** | Wiederkehrendes **Illness Script / Kompakt-Entscheidungshilfe** (1–6), nicht Lexikon-Snippet |
| **Default-Länge** | `kl-kurz` (73/88); `kl-voll` nur P0/P1-Kontrast (15/88) |
| **Erfolg im Druck** | Leser:in erkennt Lebensgefahr / Refer-Bedarf und wählt den richtigen **Zeit-Handlungspfad** + kennt die **Scope-Grenze** |

### 1.2 Was sie *nicht* ist

| Nicht | Gehört wohin |
|-------|----------------|
| Operative Sofort-Protokollkarte (CES-Stopp-Tabelle) | Teil **III** (z. B. III-5) |
| Leitsymptom-Triage-Flow First-Look→RF→R/I/S→C | Teil **IV** (z. B. IV-2, IV-4) |
| Method-OS / D-RISC-Framework | Teil **II** |
| Enzyklopädische Pathologie, OP, Dosis-Manual | *nicht* im DA-Auftrag (Anti-Extract / Don'ts) |
| Critical Claims / Prozessbanner | Notes / Meta |

**Master ≠ Slave:** V *begründet* und *sensibilisiert*; III/IV *operieren*. Layout von V darf Slave-Karten **nicht ersetzen**, nur leise verlinken.

### 1.3 Genre chrome (Media)

| | |
|--|--|
| **Must look like** | Illness-Script / lerntext-framework: scannbar, teal/primary als Gerüst, klare Denkschritte |
| **Must not look like** | Solid-red Notfallwand über das ganze Kapitel; BLS-Dual-Lane; Exam-Poster; form-id-Shopping-Liste |
| **Danger-Rot** | Nur wo der Content **Stop/112** ist — nie als Kapitel-Hintergrundfarbe |
| **Falsches Chrome = Pädagogikfehler** | nicht Geschmacksfrage (II-1 vs III-5 Lektion) |

### 1.4 Zwei Kapitel-Typologien (Makro)

```text
kl-kurz (Default)
  Abk? → Big Picture → Entscheidungshilfe 1–6 → DDx-Minimal? → Quellen

kl-voll (Master)
  Abk → BP → Entscheidungshilfe 1–6
    → Case / Quick Look
    → Patho-Vertiefung (Enabling / Kern / Manifestationen)
    → Trügerisch-Vertiefung?
    → Screening & Flag-Scan (Subj/Obj/Scores/Delta)
    → DDx → Semantic Qualifiers → Quellen
```

Vertiefung **erklärt und absichert** — ersetzt §5 nicht, wiederholt ihn nicht wortgleich (Anti-Redundanz).

---

## 2. Makro-Lesefluss = kognitive Architektur

Nicht die Markdown-Reihenfolge um der Reihenfolge willen — sondern die **Lern- und Entscheidungssequenz**, die das Script erzwingen will:

```text
[Frame]
  Titel + Untertitel-Gefahr
  Big Picture = Problemrepräsentation (Was · Worst Case · Treat/Refer/112)

[Illness Script — Entscheidungsblock]
  1 Enabling     → „Wann taucht H im DA-Feld auf?“
  2 Mechanism    → „Warum ist das gefährlich / was passiert kausal?“
  3 Cues         → „Woran erkenne ich es im Erstkontakt?“
  4 Discrimination → „Für/gegen H · was sonst · welche Maske?“
  5 Action-time  → „Wie schnell welche Handlung?“   ⎫ Dimension TIME
  5b Scope       → „Was kann ich nie klären?“        ⎭ Dimension SCOPE (orthogonal!)
  6 Transfer     → „Kann ich es anwenden?“ (ohne Spoiler)

[Optional shell]
  DDx-Minimal / kl-voll Vertiefungen / Qualifiers

[Quiet]
  Quellen
```

### 2.1 Lautstärke-Prinzip (COMPENDIUM + design-reasoning)

| Laut | Leise |
|------|--------|
| 112 / Stop / Must-not-miss / Mimikry-Richtung | Quellen, Abkürzungen, Slave-Links |
| Action path | Epidemiologie-Essays |
| Eine primäre Stop-Botschaft | Cave-Spam (viele mittellaut) |

**Loudness = urgency/job**, nicht „steht früher in der Datei“.

### 2.2 Personas (drei Scan-Modi)

| Persona | Zeit | Braucht laut |
|---------|------|----------------|
| **Triage-Stress** (Praxis, unklarer Patient) | 5–30 s | U-urgency, U-scope, U-must-not-miss, Mimikry-Warnung |
| **Verstehen** (Lernen / Vertiefung) | Minuten | U-mechanism, U-enabling, Patho-deep |
| **Transfer/Exam** | Minuten | U-transfer, Cues, For/Against |

Eine Form, die nur „hübsch für Persona 2“ ist, aber Persona 1 flacht, **failt** für KL.

---

## 3. Dimensionen (orthogonal — nie mischen)

Visuelle Fehler entstehen fast immer durch **Dimensionskollaps**.

| Dimension | Frage | Units | Darf *nicht* |
|-----------|-------|-------|----------------|
| **TIME** | Wie schnell handeln? | U-urgency | Scope als Stufe; Trigger als eigene niedrigere Stufe |
| **SCOPE** | Was liegt außerhalb meiner Kompetenz? | U-scope | Als Ampel-Sprosse unter Treat |
| **HYP-H** | Spricht das für/gegen Arbeitshypothese H? | U-for-against | Mit Must-not-miss in ein 2×2 quetschen |
| **HYP-OTHER** | Welche *anderen* Gefahren nicht verpassen? | U-must-not-miss | Als „Passt nicht zu H“ lesen |
| **FRAME-ERROR** | Welches harmlose Label maskiert Gefahr? | U-mimic | Als vierte gleichwertige Kachel ohne Mapping-Semantik |
| **CHANNEL** | Über welchen Wahrnehmungskanal? | U-cues | Als Kreuzprodukt-Matrix |
| **CAUSAL** | Ursache→Folge? | U-mechanism | Als reine Dekoration ohne Labels |
| **PROFILE** | Wer/wann/wie schnell onset? | U-enabling | Als Urgency-Leiter |
| **TRANSFER** | Anwenden ohne Auflösung? | U-transfer | Spoiler im Druck |

---

## 4. Unit-Katalog (Band-Grammar + Erweiterungen)

Jede Unit: **Bedeutung · Relationen · Job · Load · Claim-Sensitivität · Form-Klassen (noch Kandidaten)**.

Legende **freq:** 88 = alle · V = kl-voll · S = selektiv · C = Cluster-Sonder.

---

### U-abbrev — Abkürzungen

| | |
|--|--|
| **Anker** | H2 „Häufige Abkürzungen…“ |
| **Bedeutung** | Lokales Glossar pathologiebezogen (nicht HP/PT/ED-Meta). |
| **Relationen** | `supports` Lesbarkeit aller Units; `quiet` zu Action. |
| **type / job** | reference / look up |
| **load if wrong** | Opener-Konkurrenz mit Gatekeeper |
| **freq** | 88 (fast) |
| **claim** | low |
| **Form-Klassen** | compact definition table; trailing-side panel — **nie** feature graphic |

---

### U-bigpicture — Big Picture

| | |
|--|--|
| **Anker** | H2 Big Picture (4–6 Sätze) |
| **Bedeutung** | **Problemrepräsentation:** Definition + Worst Case im DA + Treat/Refer/112-Richtung. Enthält oft schon den Gatekeeper-Satz. |
| **Relationen** | `frames` gesamtes Script; `previews` U-urgency; `must-not-replace` U-mechanism (Patho-Detail). |
| **type / job** | mechanism + danger / understand + stop-awareness |
| **load if wrong** | Langer Epi-Essay; Gefahr versteckt; oder pure Wiederholung von §5 |
| **freq** | 88 |
| **claim** | high (112/NA-Formulierungen) |
| **Form-Klassen** | key-concept callout; short prose lead + one cave chip; **nicht** volle Notfallkarte |

**Didaktische Nuance:** BP ist *Advance Organizer* (COMPENDIUM). Es darf laut sein, aber **eine** Stop-Botschaft > vielen Fakten.

---

### U-enabling — Wann ist daran zu denken? (§1)

| | |
|--|--|
| **Anker** | Script §1: Risiken · Begleit · Beginn/Trigger/Zeitverlauf |
| **Bedeutung** | **Aktivierungsprior:** Wann soll H überhaupt in den Differenzialraum? |
| **Relationen** | `feeds` U-cues und U-urgency; `independent` von U-scope. |
| **type / job** | recognition / recognize |
| **load if wrong** | Bullet-Suppe ohne Zeitachse; Risikoliste = Pseudodiagnose |
| **freq** | 88 |
| **claim** | med |
| **Form-Klassen** | triptych (Risiko/Kontext/Tempo); timeline onset scale; compact profile — **nicht** score ohne Scope |

---

### U-mechanism — Entstehung und Mechanismus (§2)

| | |
|--|--|
| **Anker** | Script §2 (kl-voll: Patho-Kern erweitert) |
| **Bedeutung** | **Handlungsnahe Kausalkette:** Risiko → Prozess → Funktionsstörung → Zeichen → Gefährdung *bei Belastung/Manual*. Erklärt *warum* Stopp/Refer rational ist. |
| **Relationen** | `explains` Cues und Urgency; `must-stay-shallow` genug für DA (keine OP-Pharma). |
| **type / job** | mechanism / understand |
| **load if wrong** | Dekorative Organ-Kunst ohne Labels; reine Umformulierung von BP; dual essay (Text=Bild) |
| **freq** | 88 (+ V deep) |
| **claim** | med–high (keine erfundenen Zeitfenster „Stunden bis Knorpel…“ ohne C) |
| **Form-Klassen** | segmented cause→effect chain; dual-coding schema; **optional** organ silhouette hybrid **später** |

**Länge in Welle-06:** typisch ~60–90 Wörter im Kompakt-§2 — Formen müssen **kurz** bleiben.

---

### U-cues — Klinische Hinweise (§3)

| | |
|--|--|
| **Anker** | Tabelle Domäne × Merkmale: Anamnese · Beobachtung · Untersuchung · Verlauf |
| **Bedeutung** | **Vier Wahrnehmungs-/Handlungskanäle** des Erstkontakts — Partition der klinischen Information, **kein** Kreuzprodukt zweier Achsen. |
| **Relationen** | `operationalizes` Enabling+Mechanism; `feeds` For/Against und Urgency; Untersuchung enthält oft **KI-Sätze** („schließt X nicht aus“, „keine Entstauung“). |
| **type / job** | recognition / recognize |
| **load if wrong** | Prose wall; 2×2-Farbquadranten ohne Semantik (Phase-1-Fail); KI versteckt |
| **freq** | 88 |
| **claim** | high (KI-Formulierungen) |
| **Form-Klassen** | **domain table (default)**; definition list; optional emphasis row for KI — **Fake-2×2 verworfen** |

**Relationstreue:** Die vier Domänen sind **nebengeordnet**. Eine visuelle „Matrix“ suggeriert Interaktion Anamnese×Beobachtung — die der Content **nicht** liefert.

---

### U-for-against — Erhärtet / Passt eher nicht (§4a)

| | |
|--|--|
| **Anker** | §4 erste zwei Pole |
| **Bedeutung** | **Bayesian/klinische Gewichtung von H:** Support vs. gegen H (mit Caveats: „passt eher nicht, *aber* nie allein durch Palpation entwarnen…“). |
| **Relationen** | `weights` Arbeitshypothese H; `orthogonal` zu U-must-not-miss; `precedes` Urgency nur logisch, ersetzt sie nicht. |
| **type / job** | comparison / distinguish |
| **load if wrong** | Ein Fließtext; oder mit Must-not-miss in 2×2 gemischt |
| **freq** | 88 |
| **claim** | high |
| **Form-Klassen** | **two-column for/against**; dual stack; **kein** 2×2 mit vier Fremd-Relationen |

---

### U-must-not-miss — Nicht übersehen (§4b)

| | |
|--|--|
| **Anker** | §4 „Nicht übersehen“ |
| **Bedeutung** | **Parallele Gefahrensätze:** andere Entitäten/Syndrome, die im gleichen Bild stecken können — Tunnelblick-Schutz. Epistemisch *anders* als „gegen H“. |
| **Relationen** | `parallel_set` zu H; `escalates` oft in U-urgency; `links` DDx. |
| **type / job** | danger + comparison / stop-awareness + distinguish |
| **load if wrong** | Als graue Bullet-Liste neben „Passt nicht“; untergewichtet |
| **freq** | 88 |
| **claim** | high |
| **Form-Klassen** | loud must-not-miss list; chips; **eigene Zone**, nicht vierte Grid-Zelle |

---

### U-mimic — Trügerische Erklärungen (§4c)

| | |
|--|--|
| **Anker** | §4 Trügerisch (+ kl-voll Vertiefung) |
| **Bedeutung** | **Frame-Error-Map:** Alltags-/MSK-Label *maskiert* echte Gefahr; Richtung **immer** „Gefahr hinter harmlosem Bild“ (Doctrine), nicht Overtriage-Satire. |
| **Relationen** | `maps` false_frame → real_danger (+ oft Konsequenz: Therapieverzögerung); `depends_on` Cues; `motivates` Urgency-Default-to-Danger. |
| **type / job** | comparison / distinguish (error mode) |
| **load if wrong** | Meta-UI „Label/Darunter“; Richtung umgedreht; Essay |
| **freq** | 88 (Formulierungstiefe variiert) |
| **claim** | high |
| **Form-Klassen** | **relation-map / mapping list** Frame→Gefahr; mask reveal; **kein** Wireframe-Vokabular im Druck |

**Belege Erysipel:** „Muskelkater“, „gestautes Bein“, „Gicht“, „Sicher TVT“ → Infekt/TVT-Koexistenz.  
**Belege ACS:** Epigastrium-als-Magen, Schulter-MSK, Panik.

---

### U-urgency — Handeln und Dringlichkeit, **nur TIME** (§5a)

| | |
|--|--|
| **Anker** | §5 Zeilen 112 / NA-gleichtags / (oft) Zeitnah / Behandeln+Netz |
| **Bedeutung** | **Geordnete Zeit-Handlungsstufen:** bei Trigger-Konstellation X gilt Stufe T mit Handlung A. |
| **Relationen** | `consumes` Cues+Discrimination; `orthogonal` U-scope; Multi-Trigger-Zeilen `collapse` zu **einer** Stufe. |
| **type / job** | decision (+ danger on 112) / choose (+ stop) |
| **load if wrong** | Flat table equal weight; Scope als Sprosse; Trigger als eigene Sprosse (F2-C-Fail); fehlende „Zeitnah“-Fähigkeit bei Kapiteln die sie haben |
| **freq** | 88 |
| **claim** | **critical** |
| **Form-Klassen** | priority-landscape / weighted urgency steps; hard-stop stack *within* top tier; **traffic-light ok nur mit Label+Stufe** |

#### 4.1 Stufeninventar (Welle-06 empirisch)

| Stufe (TIME) | Template | Realität 88 | Semantik |
|--------------|----------|-------------|----------|
| **112 / Sofort** | ja | sehr häufig, oft multi-row | Rettungskette jetzt |
| **Notaufnahme / gleichtags / noch heute / Stunden** | ja (gebündelt) | fast überall | unverzüglich medizinisch |
| **Zeitnah Arzt / binnen Tagen / Facharzt** | **nein kanonisch** | **viele** Kapitel eigene Zeile | priorisiert, *nicht* gleichtags-Notfall |
| **Behandeln + Sicherheitsnetz** | ja | Standard-Boden | PT möglich + Rückkehrgründe |
| **Behandeln ohne Netz** | nein | praktisch 0 | **nicht erfinden** (DA-Doctrine) |

**Belege Zeitnah/Zwischenstufen:** Melanom („Zeitnah Dermatologie“), Tumor-Screening („Binnen Tagen, hoch priorisiert“), Suizidalität („Gleichtags bis ≤24–48 h“ — *eigene* Zwischenlogik), Zoster/CRPS/MS/Borreliose/Psych u. a.

**Belege Multi-112:** ACS (4×112), Sepsis-Flags (6×112) — *eine* Dringlichkeit, viele Trigger.

#### 4.2 Interne Struktur einer TIME-Stufe

```text
STUFE (z.B. 112)
  ├── Handlung (einmal, laut)     ← was SOFORT tun
  └── Trigger-Cluster (Liste)     ← wann DIESE Stufe gilt
```

Trigger sind **Mitglieder der Stufe**, keine tieferen Sprossen.

---

### U-scope — Grenze der Zuständigkeit (§5b)

| | |
|--|--|
| **Anker** | §5 letzte Zeile (in Markdown in derselben Tabelle) |
| **Bedeutung** | **Kompetenz- und Ausschlussrahmen:** Diagnosesicherung, Labor, Bildgebung, Reperfusion, Antibiose, Punktion… — gilt *bei jedem* Tier. |
| **Relationen** | `orthogonal` U-urgency; `constrains` Treat; `supports` Safety. |
| **type / job** | reference + danger-support / look up + stop-awareness |
| **load if wrong** | Als graue Ampelstufe #4 (Phase-1-Fail); unter dem Fold unsichtbar |
| **freq** | 88 |
| **claim** | high |
| **Form-Klassen** | **separate frame** (bar / side note / footer rule); explizite Überschrift „keine Dringlichkeitsstufe“ |

**Druck-Empfehlung (Media):** Markdown darf Scope in §5-Tabelle lassen (Autoren-Pragmatik); **Visualisierung trennt TIME und SCOPE immer.**

---

### U-transfer — Fall zur Selbstprüfung (§6)

| | |
|--|--|
| **Anker** | Situation + 3 Fragen (Vordergrund / KI / nächster Schritt); **keine** Auflösung im Druck |
| **Bedeutung** | **Retrieval + Transfer** (COMPENDIUM); prüft Integration von Urgency+Scope+Mimic. |
| **Relationen** | `integrates` U-urgency, U-scope, U-cues; `forbids` spoiler. |
| **type / job** | recognition + decision practice / apply |
| **load if wrong** | Lösung im Kapitel; zu langer Fall; Fragen unklar |
| **freq** | 88 |
| **claim** | med (Fallzahlen nur aus C) |
| **Form-Klassen** | clinical-case card + open questions; empty answer scaffolds optional |

---

### U-ddx — DDx-Minimal / Abgrenzung (optional)

| | |
|--|--|
| **Anker** | H2 nach Script (kl-kurz optional; kl-voll fast immer) |
| **Bedeutung** | Kurzer Kontrast nach dem Handlungspfad — dangerous first. |
| **Relationen** | `after` Urgency; `overlaps` Must-not-miss (darf nicht wortgleich dreimal). |
| **type / job** | comparison / distinguish |
| **load if wrong** | Essay vor Action; Redundanz zu §4 |
| **freq** | ~80 |
| **Form-Klassen** | minimal contrast table; ddx-box short |

---

### U-patho-deep / U-screening / U-qualifiers / U-case (kl-voll)

| Unit | Bedeutung | Relation zum Script |
|------|-----------|---------------------|
| **U-case** | Klinischer Anker ohne Spoiler | `entry` optional case-first shell |
| **U-patho-deep** | Enabling/Kern/Manifestationen ausgebaut | `expands` U-mechanism; ersetzt §5 nicht |
| **U-screening** | Subj/Obj/Scores + Delta-Matrix | `deepens` recognition; **Anker bleibt §5** |
| **U-qualifiers** | Doku-/SBAR-Sprache | trailing reference |
| **U-score-scope** | Score + dicke Scope-Leiste | nur wenn S1/Score im Text; **nie** als Ausschluss |

---

### U-spatial-* und Sonder-Genres (Track C, später)

Nur wenn Localisation die **Entscheidung** trägt (nicht Deko):

| Beispiel | Unit-Idee | Job |
|----------|-----------|-----|
| CES Reithose/Blase | spatial saddle map | recognize + stop |
| MSCC Wirbelsäule | spatial spine heat | recognize |
| Melanom ABCDE | gestalt lesion + checklist | recognize |
| Anaphylaxie | procedure hard-stop | execute |
| Suizidalität | safety path non-anatomic | stop + choose |
| Cluster-Kapitel | multi-entity matrix | distinguish |

**Psych/Safety:** Genre-Chrome **ohne** anatomische Schock-Ästhetik; Eskalation klar, ethisch behutsam (H-Gfx bei riskanten Motiven).

---

## 5. Relationsgraph (Band-Script)

```text
                    U-bigpicture
                         │ frames
         ┌───────────────┼───────────────┐
         ▼               ▼               ▼
   U-enabling ──feeds──► U-cues ──feeds──► U-for-against
         │               │                      │
         │               │                      ├── U-must-not-miss (parallel)
         │               │                      └── U-mimic (frame→danger)
         │               │                      │
         └───────────────┴──────────► U-urgency (TIME)
                                         │
                                         ┼ orthogonal
                                         ▼
                                      U-scope (SCOPE)
                                         │
                                         ▼
                                    U-transfer
                                         │
                                    U-ddx? → quiet (qualifiers, sources)
```

**Invarianten:**

1. Discrimination (4) **vor** Action (5) im Script — aber Action darf im Scan **visuell lauter** sein.  
2. Mimic **motiviert** Default-to-Danger, ersetzt keine Triggerliste.  
3. Scope **schneidet** alle Treat-Pfade, ist aber keine TIME-Stufe.  
4. Mechanism **rechtfertigt** Stopp, ist nicht die Stopp-Handlung selbst.

---

## 6. Kapitel-Archetypen (wie Units sich füllen)

| Archetyp | Beispiele | Besonderheit für Formen |
|----------|-----------|-------------------------|
| **A High-stakes mono** | ACS, CES, Anaphylaxie, LE | Multi-112 oder ein dominanter Stop; hard-stop *innerhalb* TIME top |
| **B Standard kl-kurz** | Erysipel, Gicht, KTS | 3 TIME-Stufen + Scope; starke Mimikry |
| **C Delayed-refer** | Melanom, Zoster, CRPS, viele Psych | **Zeitnah**-Stufe sichtbar |
| **D Flag-master** | Sepsis-Flags, Tumor-RF, postop | Viele Trigger → Cluster in wenigen Stufen; weniger eine Patho-Kette |
| **E Cluster** | Schulter-Cluster, Karzinom-Tabelle | Multi-Entity; DDx-lastig |
| **F Non-anatomic safety** | Suizidalität | Eigene Eskalationssemantik (24–48 h etc. nur aus C) |
| **G kl-voll master** | 15 Vollscripts | + Case, Patho, Screening, Qualifiers |

Demo-Set für spätere Pins: **B Erysipel · C Melanom · A ACS · A CES · F Suizidalität · D Sepsis/Tumor**.

---

## 7. Was Phase 1 epistemisch falsch gemacht hat (Mapping)

| Fehler | Ontologie-Bruch |
|--------|-----------------|
| Scope als Leiter-Sprosse | TIME∪SCOPE kollabiert |
| F2-C: Handlung, dann Trigger, dann NA\|Scope, dann Treat | Trigger ≠ Stufe; SCOPE≠TIME |
| F3 2×2 farbig | CHANNEL als Matrix ohne Relation |
| F4 2×2 | HYP-H, HYP-OTHER, FRAME-ERROR als gleiche Zellen |
| „Label/Darunter“ | Meta-UI statt FRAME-ERROR-Map |
| Ampel unreflektiert | TIME-Stufenanzahl nicht inventarisiert |

Phase 1.1 korrigierte **teilweise** (Trennung Scope, Mimic-Map) — **ohne** Form-Space-Kreativität und **ohne** Free-Vision-Pipeline. Deshalb gilt weiter: **Wave C und G folgen**, nicht „1.1 = fertig“.

---

## 8. Form-Klassen nur als *Kandidaten* (noch keine Spec)

Pro Unit — was medi-päd. **prinzipiell** ehrlich sein *kann* (Wave C füllt Shortlist):

| Unit | Ehrliche Klassen | Unehrliche Klassen |
|------|------------------|--------------------|
| U-urgency | priority-landscape, weighted steps, hard-stop-in-tier | flat equal table; scope-as-step; trigger-as-step |
| U-scope | separate frame/bar | 4th traffic light |
| U-cues | domain table, channel list | decorative 2×2 |
| U-for-against | 2-col comparison | 4-cell grid with foreign units |
| U-must-not-miss | loud list/chips | buried under „passt nicht“ |
| U-mimic | relation-map Frame→Gefahr | wireframe words; reverse direction |
| U-mechanism | segmented chain, dual coding | chartjunk organ art |
| U-enabling | triptych, onset timeline | mini-urgency ladder |
| U-transfer | case card open Q | spoiler box |
| U-bigpicture | lead+cave | full emergency wall |

---

## 9. Claim- und Autor-Grenzen

### 9.1 Media/Graphics dürfen

- TIME und SCOPE visuell trennen  
- Multi-Trigger in einer Stufe bündeln  
- „Zeitnah“ **darstellen wenn der Kapiteltext sie hat**  
- Must-see und Success criteria formulieren  

### 9.2 Media/Graphics dürfen *nicht*

- „Zeitnah“ oder „Treat ohne Netz“ **erfinden** wo C schweigt  
- 112/NA-Schwellen paraphrasieren oder erweichen  
- Slave-Handlungskarten ersetzen  
- Critical Claims im Druck führen  

### 9.3 Autor-Fragen (Content C / Doctrine)

1. **„Zeitnah Arzt“** als kanonische Template-Zeile zwischen gleichtags und Treat+Netz? (Empfehlung aus Inventur: **ja prüfen**)  
2. Scope in Markdown-Tabelle behalten, Druck immer entkoppelt? (Media: **ja**)  
3. kl-voll: Case-first vs Script-first — Content-Reihenfolge vs. nur Layout-Shell?  
4. Flag-Master-Kapitel: eigenes Subtemplate (weniger Patho, mehr Trigger-Cluster)?  

---

## 10. Anschluss Wave C (nächster Schritt nach Human-H-R-light)

**Sofort nach Freigabe dieser Ontologie (oder Korrektur):**

Wave C — `kl-form-space.md` **Track A** Units:

`U-urgency, U-scope, U-cues, U-for-against, U-must-not-miss, U-mimic, U-mechanism, U-enabling, U-transfer, U-bigpicture`

Pro Unit: ≥3 wertvolle Pfade + ≥2 verworfene + Shortlist 2–3.  
**Kein Typst, kein Free-Vision** bis Form Spec (Wave M) und dann Graphics-Pipeline.

---

## 11. Kurzfazit

Die Krankheitslehre-Monographie ist ein **standardisiertes Entscheidungs- und Gefahrenabwehr-Script** mit klaren epistemischen Rollen. Die wichtigsten visuellen Gesetze sind:

1. **TIME ≠ SCOPE**  
2. **§4 = drei Relationen, nicht eine 2×2-Gleichheit**  
3. **§3 = Kanäle, keine Matrix**  
4. **Multi-Trigger ⊂ eine Urgency-Stufe**  
5. **Master-Chrome ≠ Notfallkarten-Chrome**  
6. **Form folgt Relation und Learner-Job — nie der bloßen Anzahl von Bullet-Punkten**

Alles Weitere (Kreativität, Free Vision, Optimierung) baut auf diesem Gerüst — oder wiederholt Phase 1.
