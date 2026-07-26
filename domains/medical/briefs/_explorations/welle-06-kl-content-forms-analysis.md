# Welle-06 KL-Full — Inhaltsanalyse & Darstellungsformen-Vorplanung

**Status:** Exploration (analytisch-kreativ) — **kein** production Brief, **keine** Form Specs pro Kapitel, **kein** Compose  
**Datum:** 2026-07-26  
**Content-SoT (read-only C):**  
`/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-06-kl-full/monographs/`  
**Welle:** `2026-07-welle-06-kl-full` · 88 Monographien · alle Jobs E1/GRÜN · promote gesperrt  
**Zweck:** Systemweite Muster der Krankheitslehre (Teil V + VI) erkennen; wiederkehrende vs. krankheitsspezifische Content-Typen kartieren; med.-pädagogische + visuelle **Formenfamilien** und **Varianten** vorplanen, bevor Prototypen gebaut werden.

**Bezug vorhandene Exploration (ältere Welle-03-Staging, andere Pfade):**  
`v-cauda-equina.*`, `v-sept-arthritis.*` — Prinzipien übertragbar; Content hier ist die **kanonische 88er-Welle**.

---

## 1. Inventar

| Metrik | Wert |
|--------|------|
| Monographien | **88** |
| `kl-voll` | **15** (~2,1–2,5k Wörter, Median ~2188) |
| `kl-kurz` | **73** (~0,9–1,5k Wörter, Median ~1153) |
| Gesamtumfang | ~**116 500** Wörter |
| Template | `templates/blueprints/krankheitslehre/template-krankheitslehre(.kurz).md` |
| Kernformat | Shared **Kompakt-Script** (`illness-script-block.md`) |

### 1.1 Systemverteilung

| System | n | Inhaltlicher Schwerpunkt |
|--------|---|--------------------------|
| V-1 Herz/Gefäß | 12 | ACS, HI, VHF, TVT, pAVK, Aneurysma, Endo/Myo/Perikard, Synkope, HTN |
| V-2 Lunge | 6 | LE, Pneumonie, PTx, Asthma, COPD, Lungenödem |
| V-3 MSK/Orthop | 18 | CES, sept. Arthritis, Lumbago, RA, Bechterew, Gicht, CRPS, Kompartment, Osteoporose, Frakturen, … |
| V-4 Neuro | 11 | Schlaganfall, Meningitis/Enzephalitis, MS, Parkinson, Epilepsie, Migräne, PNP, Paresen, Querschnitt-Flags |
| V-5 Onko/Blut | 4 | Tumor-RF, Knochenmetastasen/MSCC, Karzinom-Cluster, Anämie-Flags |
| V-6 Lymph | 1 | Lymphödem |
| V-7 Endokrin/Metab | 3 | Diabetes, Adipositas/MetS, Schilddrüse |
| V-8 Infekt | 4 | Sepsis-Flags, Influenza, Hepatitis, Borreliose |
| V-9 Abdomen/Uro/Gyn | 12 | akutes Abdomen, Appendizitis, Ileus, Cholezystitis, ANV/ALV, Endometriose, … |
| V-10 Haut | 4 | Melanom/ABCDE, Zoster, Erysipel, Wundheilung |
| V-11 Auge/HNO | 1 | DDx MSK Nacken/Kopf |
| V-12 Anaphylaxie | 1 | Anaphylaxie (kl-voll) |
| V-14 Trauma/Postop | 2 | SHT-Flags, postoperative Flags |
| VI Geriatrie/Psych | 9 | Geriatrie, Immobilität, Dekubitus, Demenz, Depression, Angst, Somatoform, Suizidalität, Hüftdysplasie |

### 1.2 Die 15 Vollscripts (`kl-voll`)

P0/P1-Master (vertiefte Illness Scripts):  
ACS/Myokardinfarkt · KHK · Synkope · TVT · Lungenembolie · Bakterielle Arthritis · CES · Lumbago · Schlaganfall · Tumor-Screening/MSCC · Diabetes · Sepsis-Flags · Akutes Abdomen · Anaphylaxie · Suizidalität/Eskalation.

Alles andere ist **Kurzprofil** (Default) — gleiche Script-Logik, weniger Vertiefung.

### 1.3 Atypische Kapitel (Form ≠ „eine Erkrankung“)

| Typ | Beispiele | Didaktische Besonderheit |
|-----|-----------|--------------------------|
| **Flag-/Screening-Master** | sepsis-flags, tumor-screening-red-flags, postoperative-flags, trauma-sht-flags, rueckenmark-querschnitt-flags | Muster-Scan über viele Auslöser; weniger „eine Patho-Kette“ |
| **Cluster / Überblick** | schulter-pathologien-cluster, weitere-karzinome-screening-tabelle, nervenlaesionen-paresen-ueberblick, ansteckende-hautkrankheiten-wundheilung, auge-hno-ddx-msk | Multi-Entity; DDx-Kontrast dominiert |
| **Psychosozial/Safety** | suizidalitaet-eskalation, depression, angst, somatoform | Kein anatomisches Schema; Eskalations- und Kommunikationschrome |
| **Geriatrisch/funktional** | geriatrie, immobilitaet, dekubitus, demenz | Syndrome, Verlauf, interprofessionell |

---

## 2. Was inhaltlich *immer* drin ist (100 % / nahe 100 %)

Die Welle erzwingt ein **wiederkehrendes Denkformat** — das ist die eigentliche Designchance (Systemsprache), nicht 88 verschiedene Layouts.

### 2.1 Kapitelrahmen

| Block | Rolle | unit type (Media) |
|-------|-------|-------------------|
| H1 + optionaler Untertitel (Gefahr) | Opener, Framing | recognition |
| Abkürzungen (Tabelle) | Referenz-leise | reference |
| **Big Picture** (4–6 Sätze) | Definition + Worst Case + Treat/Refer | mechanism + danger |
| **Entscheidungshilfe** (Script 1–6) | Kernwerkzeug | (composite) |
| Quellen (extern, Vancouver) | trailing quiet | reference |

### 2.2 Kompakt-Script (Pflicht 1–6) — Content-Typen

| § | Heading | Inhaltstyp | Wiederholung |
|---|---------|------------|--------------|
| **1** | Wann ist daran zu denken? | **Risikoprofil / Enabling** — Risiken, Begleit, Onset/Trigger/Zeit | 88/88 |
| **2** | Entstehung und Mechanismus | **Ursache→Folge-Kette** (Patho, handlungsnah) | 88/88 |
| **3** | Klinische Hinweise | **Vier-Domänen-Tabelle**: Anamnese · Beobachtung · Untersuchung · Verlauf | 88/88 |
| **4** | Verdacht, Abgrenzung und Warnsignale | **Vier-Pole**: Erhärtet · Passt eher nicht · Nicht übersehen · **Trügerische Erklärungen** | 88/88 |
| **5** | Handeln und Dringlichkeit | **Urgency-Ladder-Tabelle**: 112 · Notaufnahme/gleichtags · Behandeln+Netz · Zuständigkeitsgrenze | 88/88 (112 in 87/88) |
| **6** | Fall zur Selbstprüfung | **Transfer-Vignette** + 3 Fragen (Vordergrund / KI / nächster Schritt); **ohne** Auflösung im Druck | 88/88 |

### 2.3 Semantische Mikro-Inhalte in §4/§5 (überall)

- **Mimikry / Red Herrings** — „Gefahr hinter harmlosem MSK-Bild“ (88/88)  
- **Kontraindikationen im Verdachtsfall** — Sitzung beenden, keine manuelle Provokation, … (88/88)  
- **Zuständigkeitsgrenze** — was HP/PT *nicht* ausschließt/diagnostiziert (88/88)  
- **Default-to-danger** — Zweifel → höherer Urgency-Tier  

### 2.4 kl-voll-Zusatz (nur ~15)

| Block | Häufigkeit (unter kl-voll) | Typ |
|-------|----------------------------|-----|
| Case Study / Fallvignette (klinischer Anker) | ~14 | recognition (ohne Spoiler) |
| Patho-Vertiefung (Enabling / Kern / Manifestationen) | ~15 | mechanism |
| Trügerische Erklärungen (Vertiefung) | ~9 | comparison |
| Screening & Flag-Scan (Subj./Obj./Scores/Delta-Matrix) | ~14 | recognition + decision |
| Differenzialdiagnostische Abgrenzung | 14 | comparison |
| Semantic Qualifiers (Doku/Übergabe) | 14 | reference/comms |
| „Das Wichtigste in Kürze“ | ~7 | recognition |

### 2.5 kl-kurz-Zusatz

| Block | Häufigkeit | Typ |
|-------|------------|-----|
| DDx-Minimal / Kontrast / Abgrenzung kurz | ~72 | comparison (knapp) |

---

## 3. Was *nicht* regelmäßig, sondern krankheits- / genrespezifisch ist

Diese Einheiten rechtfertigen **eigene** Visuals oder abweichende Chrome — nicht das Standard-Script-Chrome 1:1.

### 3.1 Validierte Scores / Tools (mit Scope-Grenze)

Nur wo S1/Content sie nennt (~27 Kapitel erwähnen Scores):  
Wells (TVT/LE), MHS (nicht als ACS-Ausschluss), FAST (Schlaganfall), ABCDE (Melanom), qSOFA/Sepsis-Flags, CHA₂DS₂-VASc (VHF), Ottawa, Fontaine, NYHA, CRPS-Budapest, …

**Darstellungspflicht:** Score **sensibilisiert**, ersetzt **keinen** Ausschluss im DA — visuell immer mit Scope-Fuß.

### 3.2 Anatomische / topografische Maps

| Familie | Kapitel (Beispiele) |
|---------|---------------------|
| Reithosen-/Sattel-Anästhesie, Blase | CES, Lumbago, MSCC, Querschnitt-Flags |
| Dermatom / Zoster-Gürtel | Herpes zoster, Paresen-Überblick |
| Koronar / Thorax-Lateralität | ACS, PTx, Perikard |
| Bein-Gefäß / Fontaine | pAVK, TVT vs. Lymphödem |
| Druckpunkte Dekubitus | Dekubitus, Immobilität |
| Abdomen-Quadranten / McBurney | Appendizitis, akutes Abdomen |
| Hand-Medianus | Karpaltunnel |
| Wirbelsäule MSCC | Tumor-Screening, Knochenmetastasen |

### 3.3 Stadien / Skalen

NYHA, Fontaine, Dekubitus Kat. I–IV, Gicht-Podagra vs. Poly, Parkinson-Trias, axSpA-Morgensteifigkeit, CRPS-Kriterien, Anfall vs. Status, …

### 3.4 Sofort-Protokolle (hohe Sequenzlast)

Anaphylaxie, ACS, Schlaganfall/TIA, Sepsis mit Schock, akutes Abdomen mit Peritonismus, CES — hier greifen eher **hard-stop / branching-emergency**-Muster (vgl. III-5, III-2), *als Ergänzung* zum KL-Master, nicht als Ersatz.

### 3.5 Nicht-anatomische Sonderfälle

- **Suizidalität / Psych:** Sicherheitspfad, direkte Fragen, Dokumentation — **kein** Notfall-Rot-Wand-Chrom wie ACS, aber **klare** Eskalationslautstärke  
- **Cluster-Kapitel:** Multi-Entity-Matrix statt einer Patho-Kette  
- **Screening-Tabellen:** karzinomspezifische Cue-Zeilen  

---

## 4. Med.-pädagogische Lesart (Learner Jobs)

Genre der KL-Monographie im DA: **Illness-Script-Master** (Begründen + Erkennen + Triagieren) — **nicht** die operative Handlungskarte (die liegt in Teil III/IV-Slaves).

| Learner job | Primäre Content-Zone | Layout-Druck |
|-------------|----------------------|--------------|
| **stop** | §5 112-Zeilen, KI, Big-Picture-Gefahr | Eine laute Gatekeeper-Zone früh; Urgency **gewichtet** |
| **recognize** | §1 Enabling, §3 Domänen, §4 Erhärtet/Nicht-übersehen | Cue-Cluster, scannbar |
| **distinguish** | §4 Passt-eher-nicht + Trügerisch + DDx | Kontrast-Panels **nach** Handlungspfad |
| **understand** | §2 Mechanismus (+ kl-voll Patho) | Segmentierte Ursache→Folge-Schema |
| **choose** | §5 Ladder | Urgency lanes, Default-to-Danger |
| **execute** (Transfer) | §6 Fall | Case frame + 3 Fragen; Lösung **nicht** im Kapitel |
| **look up** | Abk., Quellen, Semantic Qualifiers | trailing quiet |

**Erfolgskriterium (bandweit):**  
Unter Scan-Stress erkennt die Lernperson *warum* diese Entität im DA gefährlich ist, *welche* Cues sie auslösen, und *welchen* Urgency-Tier sie wählt — ohne dass Layout Claims erweicht oder erfindet.

---

## 5. Formenfamilien (wiederkehrend) — Vorplanung

Namen = **presentation hypotheses** (prose), keine catalog form-ids.  
**Carrier-Default:** Typst/code wo Struktur + Claims; SVG/Hybrid wo Anatomie/Gestalt; Raster nur gated (Playbook 06) für fotorealistische/hohe Ambiguität.

### F1 — **Script Frame** (Meta-Layout kl-kurz / kl-voll)

| | |
|--|--|
| **Was** | Einheitliches Kapitelgerüst: Opener → Big Picture → Entscheidungshilfe 1–6 → (optional DDx) → Quellen |
| **Chrome** | *lerntext* / illness-script — **teal framework**, **nicht** solid-red Notfallkarte für den ganzen Master |
| **Varianten** | **A** Seitenfluss linear (Buchstandard) · **B** „Script-Dashboard“ 2-Seiten-Spread (kl-kurz) · **C** kl-voll mit Case-first (wie `v-cauda` exploration) |
| **Carrier** | Typst compose (bookkit sections + themed blocks) |

### F2 — **Urgency Ladder** (§5)

| | |
|--|--|
| **Was** | Gewichtet 112 ≫ Notaufnahme ≫ Behandeln ≫ Scope |
| **Must-see** | Tiers ungleich laut; Default-to-Danger; Scope-Zeile immer sichtbar; **keine** erfundenen Schwellen |
| **Varianten** | **A** Styled table (Status quo, refined) · **B** Vertikale Lanes mit Farb+Icon+Shape (nicht Farbe allein) · **C** Decision stack / hard-stop oben, Treat unten (bei 1-dominanter 112-Entität, z. B. ACS) · **D** Multi-112-Zeilen als **gebündelte** „Rote Zone“ + Sub-Trigger-Liste (bei Abdomen/Sepsis mit vielen 112-Zeilen) |
| **Carrier** | Typst table / grid; optional hybrid Icons |

### F3 — **Clinical Cue Matrix** (§3)

| | |
|--|--|
| **Was** | 2×2 oder 4-Kachel: Anamnese / Beobachtung / Untersuchung / Verlauf |
| **Must-see** | Domänenlabels; Untersuchung enthält oft „schließt X **nicht** aus“ |
| **Varianten** | **A** Tabelle · **B** 4 Kacheln · **C** „Erstkontakt-Radar“ (radial, riskant — nur wenn Labels contiguity halten) |
| **Carrier** | Typst grids/tables |

### F4 — **Four-Pole Suspicion** (§4)

| | |
|--|--|
| **Was** | Erhärtet \| Passt nicht \| Nicht übersehen \| Trügerisch |
| **Must-see** | Trügerisch = „Gefahr hinter harmlosem Bild“ (Richtung nicht umdrehen) |
| **Varianten** | **A** 4 Callout-Spalten · **B** 2×2 · **C** Trügerisch als eigene „Masken“-Leiste mit MSK-Icon + Gefahrspfeil |
| **Carrier** | Typst; optional kleine hybrid pictograms |

### F5 — **Mechanism Chain** (§2 + kl-voll Patho)

| | |
|--|--|
| **Was** | Risiko → Prozess → Funktionsstörung → Zeichen → Gefährdung |
| **Must-see** | Kette lesbar als Kette; handlungsnah (warum Belastung/Manual schlecht) |
| **Varianten** | **A** Horizontal flow Typst/CeTZ · **B** Vertikal mit „Belastung bricht Kette“-Warnknoten · **C** Free-vision schema → recreate (ambitious) |
| **Carrier** | Typst/CeTZ/Fletcher default; SVG hybrid für organ-spezifische Kerne |

### F6 — **Enabling Profile** (§1)

| | |
|--|--|
| **Was** | Risiken · Begleit · Zeitverlauf |
| **Varianten** | **A** 3 Bullet-Gruppen · **B** „Wer/Wann/Wie schnell“-Triptychon · **C** Timeline-Onset (perakut…schleichend) als Skala |
| **Carrier** | Typst |

### F7 — **Transfer Case Card** (§6 + kl-voll Case)

| | |
|--|--|
| **Was** | Situation + 3 Fragen; **keine** Lösung im Druck |
| **Varianten** | **A** clinical-case box · **B** Zweiseitig: links Fall, rechts leere Antwort-Gerüste (Lernbuch) · **C** QR/Verweis „Lösungen Anhang“ (nur wenn Buch-Produkt das hat) |
| **Carrier** | Typst case component |

### F8 — **DDx Contrast** (optional kurz / voll)

| | |
|--|--|
| **Was** | Diese Entität vs. MSK-Falle vs. Must-not-miss |
| **Varianten** | **A** 3-Spalten-Minimal · **B** dangerous-first Liste · **C** „MSK-Maske / echte Gefahr“ dual coding |
| **Carrier** | Typst; selten Raster |

### F9 — **Semantic / Handover strip** (kl-voll)

| | |
|--|--|
| **Was** | Qualifiers + SBAR-taugliche Sprache |
| **Chrome** | quiet, nach Handlung |
| **Carrier** | Typst memo / pull-quote |

### F10 — **Score-with-Scope** (selektiv)

| | |
|--|--|
| **Was** | Score-Elemente + dicke Scope-Leiste „kein Ausschluss im DA“ |
| **Anti** | Score-Karte wie in Klinik-Apps ohne Scope |
| **Carrier** | Typst; Icons optional |

---

## 6. Krankheitsspezifische Formen (nicht bandweit, aber wiederverwendbar in Familien)

| ID | Form | Kapitel-Cluster | Carrier-Tendenz | Ambition |
|----|------|-----------------|-----------------|----------|
| S1 | **Saddle / Cauda body map** | CES, Lumbago, MSCC, Querschnitt | SVG/hybrid labels | high (Form Spec) |
| S2 | **FAST face-arm-speech** | Schlaganfall | Typst + simple pictogram | medium |
| S3 | **ABCDE lesion card** | Melanom | hybrid (Gestalt) + Typst text | high (Gestalt!) |
| S4 | **Anaphylaxis hard-stop sequence** | Anaphylaxie | code protocol | high |
| S5 | **Wells / LE-TVT decision strip** | LE, TVT | Typst + scope | medium |
| S6 | **Dekubitus body landmarks + Kat. I–IV** | Dekubitus, Immobilität | SVG map + stage strip | high |
| S7 | **Thorax lateral tension** | PTx, ACS-Mimikry | SVG/CeTZ | medium |
| S8 | **Abdomen quadrant / rebound** | akutes Abdomen, Appendizitis | SVG + flags | medium–high |
| S9 | **Dermatom belt (Zoster)** | Zoster | SVG map | medium |
| S10 | **Fontaine / leg ischemia ladder** | pAVK | Typst ladder + leg icon | medium |
| S11 | **MSCC spine heat map** | Tumor, Metastasen | SVG spine | high |
| S12 | **Hypo vs Hyper crisis dual panel** | Diabetes | Typst dual | medium |
| S13 | **Hyper vs Hypo thyroid dual** | Schilddrüse | Typst dual | low–medium |
| S14 | **Sepsis flag cluster** | sepsis-flags, many infect | cue cluster | medium |
| S15 | **Psych escalation / safety path** | Suizidalität, … | **non-anatomic** flow; careful chrome | high (ethics) |
| S16 | **CRPS Budapest visual** | CRPS | checklist schema | medium |
| S17 | **Parkinson triad** | Parkinson | icon triad | low–medium |
| S18 | **Cluster multi-entity matrix** | Schulter-Cluster, Karzinome | table-first | low–medium |
| S19 | **Hand median sensory map** | KTS | SVG | medium |
| S20 | **Ileus mechanism** | Ileus | chain schema | medium |

Bereits nahe an Gold-Formen aus anderen Teilen:  
- CES-Stop ≈ **III-5** hard-stop (Slave-Karte) vs. **V-CES** Illness-Script-Master  
- Heißes Gelenk ≈ **IV-4** leitsymptom flow vs. **V-sept** Script  

**KL-Master darf die Slave-Karte nicht ersetzen** — Layout muss Verweis-leise und Rollen klar halten.

---

## 7. Carrier-Strategie (Raster / Typst / SVG)

| Content | Default | Wann Raster | Wann SVG/Hybrid | Wann pure Typst |
|---------|---------|-------------|-----------------|-----------------|
| Urgency ladder, Domänen, DDx, Qualifiers, Big Picture | **Typst** | nie | Icons optional | **ja** |
| Patho-Ketten generisch | Typst/CeTZ | selten | Organ-Silhouette | **ja** |
| Body maps, Dermatome, Spine, Saddle | Hybrid | Basis nur wenn AI-Gestalt nötig + claim audit | **ja** labels-on-nodes | recreate if simple |
| Melanom/ABCDE Gestalt | Hybrid/Raster gated | **ja** für Läsionsgestalt (mit audit) | labels Typst | text-only weak |
| Anaphylaxie/ACS Sequenz | Typst protocol | decorative only | rare | **ja** |
| Psych safety | Typst flow | **kein** dramatischer „Horror“-Raster | simple | **ja** |

Claim-Pins: **copy-through** aus C; keine erfundenen °C/ml/Stunden.

---

## 8. Variantenplanung vor Prototypen (A/B/C-Logik)

### 8.1 Band-System (zuerst entscheiden)

| Frage | Optionen | Empfehlung (Hypothese) |
|-------|----------|------------------------|
| Wie „gleich“ sehen 73 Kurzprofile aus? | Monoton vs. System mit kontrollierter Variation | **System**: F1–F8 fest; S* nur wenn Mehrwert |
| Chrome | Notfall-rot vs. Lerntext-teal | **Teal/Script** für Master; Rot **nur** in F2 112-Tier und echten hard-stops |
| kl-kurz Seitenziel | 0,5–1,5 MS | Ein **Script-Spread** + leise Quellen |
| kl-voll | 3–6 Seiten? | Case+Gate → Script → Vertiefung → Screening → DDx → Qualifiers |

### 8.2 Drei Design-Varianten für den **Standard-kl-kurz** (vor Build)

| Variante | Beschreibung | Stärke | Risiko |
|----------|--------------|--------|--------|
| **V-Alpha „Editorial Script“** | Fließtext Big Picture; §1–4 als typografisch starke Listen/Callouts; §5 als gewichtete Tabelle; §6 Case-Card | Buchnähe, schnell mit bookkit | §5 kann flach wirken |
| **V-Beta „Triage-first Script“** | Nach 2-Satz-Lead sofort kompakte Urgency-Ladder (F2-C/D), dann Script 1–4 darunter | Action loud | Patho/Cues nachrangig — nur für high-stakes Entitäten |
| **V-Gamma „Dual-page Dashboard“** | Seite L: Enabling+Cues+Suspicion; Seite R: Mechanism+Ladder+Case | Scan + Vergleichbarkeit | Mehr Compose-Komplexität; Bindung |

**Vorschlag Pilot:** 3 kl-kurz × 3 Varianten **nicht** — besser **eine** Variante bandweit (Alpha), **zwei** Stress-Tests (Beta an ACS/Anaphylaxie, Gamma an 1–2 Kurzprofilen).

### 8.3 Drei Varianten für **kl-voll**

| Variante | Beschreibung |
|----------|--------------|
| **V-Full-1 Case-first** | Wie `v-cauda` exploration: Case → Gate → Big Picture → Script → Vertiefung |
| **V-Full-2 Script-core** | Script dominant; Case nach §5 als Transfer (näher am Markdown-Ist) |
| **V-Full-3 Slave-aware** | Explizite Zonentrennung „Master begründet / Slave handelt“ mit leiser Link-Leiste zu III/IV |

### 8.4 Grafik-Prototypen-Kandidaten (nach Analyse — noch **nicht** bauen)

Priorität nach (Wiederverwendung × pädagogischer Druck × Machbarkeit):

| Prio | Prototyp | Deckt | Carrier |
|------|----------|--------|---------|
| P0 | **Urgency Ladder F2** (band-token) | alle 88 | Typst |
| P0 | **Four-Pole + Trügerisch F4** | alle 88 | Typst |
| P0 | **Cue Matrix F3** | alle 88 | Typst |
| P1 | **Mechanism Chain F5** generisch + 2 krankheitsspezifische (ACS, LE) | Script §2 | Typst/CeTZ |
| P1 | **Saddle map S1** (CES) | V-CES + Lumbago-Verweis | SVG/hybrid |
| P1 | **Anaphylaxis sequence S4** | V-12 | Typst protocol |
| P2 | **FAST S2** | Schlaganfall | Typst+icon |
| P2 | **ABCDE S3** | Melanom | hybrid gated |
| P2 | **Dekubitus map+stages S6** | VI-2 | SVG |
| P2 | **MSCC spine S11** | V-5 | SVG |
| P3 | **Psych safety path S15** | Suizidalität | Typst careful |
| P3 | **Cluster matrix S18** | Schulter / Karzinome | Typst |

---

## 9. Anti-Patterns (aus Content + Media-Doctrine)

1. **88× identische Box-Wand** ohne Urgency-Gewichtung  
2. **Notfall-Rot über den ganzen Master** (falsches Genre-Chrome)  
3. **Score ohne Scope** als Schein-Ausschluss  
4. **Trügerisch-Richtung umdrehen** (Overtriage-Lesart)  
5. **Fall mit Auflösung** im Druck  
6. **Slave-Karte ersetzen** statt verlinken (III/IV)  
7. **Raster-Anatomie** ohne Claim-Audit / ohne Labels an Referenten  
8. **Psych-Kapitel** mit anatomischem Notfall-Look oder spekulativen Bildern  
9. **Cluster-Kapitel** wie Einzel-Patho layouten (Information overload)  
10. **Quellen/Abk. vor** Big Picture / Gate  

---

## 10. Abgleich mit bestehendem Toolset

| Bestehend | Nutzen für KL |
|-----------|----------------|
| `Guides/Medical-Presentation-Forms.md` | Unit types, zones, Must-see |
| Playbook recipes (hard-stop, leitsymptom, branching, framework-OS) | Slave-Karten & Sequenzen; OS = teal method |
| Gold briefs III-5, IV-2, IV-4 | Handlung/Leitsymptom — **komplementär** zu V-Master |
| Exploration `v-cauda`, `v-sept` | Master- vs. Kurzprofil-Ideale; aktualisieren auf Welle-06-Pfade |
| bookkit didactics (cave, clinical-case, memo, ddx, …) | F1–F9 Carrier-Kandidaten |

**Lücke (Wishlist / ambition):**  
- Band-Token **Urgency Ladder** (nicht nur generic table)  
- **Four-pole suspicion** component  
- **Illness-script shell** (1–6) als optionales layout pattern  
- Body-map hybrid pipeline (Saddle, Spine, Dermatom) standardisiert  
- Score-with-scope component  

---

## 11. Empfohlene nächste Schritte (kein Build in dieser Phase)

1. **Human:** Band-Entscheid V-Alpha vs. Mix; welche 3–5 Prototypen zuerst.  
2. **Media:** Exploration-Brief **band-level** „KL Script System“ + Form Specs nur für P0/P1 Graphics (Ladder, Four-Pole, Saddle, Anaphylaxis).  
3. **Graphics:** Free vision nur für ambitious units (Saddle, ABCDE, MSCC); Ladder/Four-Pole direkt Typst-spike.  
4. **Tech:** Spike 1× kl-kurz + 1× kl-voll gegen Welle-06-Content (read-only); feasibility.  
5. **Nicht:** 88 Kapitel parallel briefen; Claims anfassen; promote.

---

## 12. Kurzfazit

Die Welle-06-Krankheitslehre ist **kein** 88-faches Unikat, sondern ein **strenges Illness-Script-System** mit:

- **Universellen** Content-Typen (Enabling, Mechanismus, Cue-Matrix, Four-Pole+Mimikry, Urgency-Ladder, Transfer-Fall),  
- **Vollscript-Erweiterungen** (Case, Patho-Tiefe, Screening, DDx, Qualifiers),  
- **Selektivem** Sondergut (Scores, Body maps, Stadien, Cluster, Psych-Safety).

Die med.-pädagogisch und ästhetisch tragfähige Antwort ist:  
**eine erkennbare Script-Formensprache (F1–F10)** + **kontrollierte krankheitsspezifische Module (S1–S20)** + **klare Rollengrenze Master (V) vs. Handlungskarte (III/IV)** — Varianten zuerst an wenigen Prototypen, dann skalieren.

---

*Artifact class: exploration synthesis · Produkt B design reasoning over Produkt C pilots · no production compose authorized.*
