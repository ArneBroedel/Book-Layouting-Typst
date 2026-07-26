# Form Spec (Media — Stage M)

- **chapter_id / slug:** V-1 Myokardinfarkt / `kl-mi-urgency`
- **unit_id:** U-urgency + U-scope (joint; ontology v1.1)
- **brief_path:** `domains/medical/briefs/kl-mi.brief.md`
- **content_source:** Welle-06 `chapter-v-1-myokardinfarkt.md` EH §5 (+ Screening-Echo, Big Picture Default-to-Danger) — pins via content-map R
- **genre:** illness-script / lerntext (Master, kl-voll)
- **recipe_fn:** `kl-urgency-nested-t1` + `kl-urgency-scope-stack` (US-B + US-A; T3 collapse)
- **author_role:** media
- **date:** 2026-07-26
- **ambition:** free-vision **optional** (code nested-T1 default); optional later spatial Ausstrahlung / mechanism chain — not required for this unit
- **ontology:** v1.1 · content-map `domains/medical/briefs/_wave5/kl-mi.content-map.md`
- **brief_class:** exploration

> Joint TIME + SCOPE. ACS specialty: **vier gleichwertige Sofort-112-Trigger-Cluster** → **eine** T1-Stufe (nested multi-T1 hard-stop). ACTION = Payload *in* Stufe. T3 in C **fehlt** → Slot kollabiert. Pins copy-through C only. **Keine** form-meta in der Figur.

## Learner context

- **Actor:** HP Physio / PT im Direktzugang (MSK-Erstkontakt, Praxis / Hausbesuch)
- **Time pressure / scan budget:** 5–15 s für Stufe + Handlung; SCOPE als Dauer-Constraint
- **Setting:** laufende Behandlung / Erstbefund mit Brust-, Schulter-, BWS- oder Oberbauchschmerz

## Learner job (one primary)

**choose** (+ **stop** on T1) · secondary **constrain** (SCOPE)

**Primary job in one sentence:** Plausibles ACS (klassisch oder atypisch) der **Sofort-112**-Stufe zuordnen, gemeinsame ACTION ausführen, und SCOPE (EKG/Troponin/MHS/Reperfusion) **nie** als leisere Dringlichkeitsstufe lesen.

## Load risks (if form is wrong)

- Vier 112-Zeilen als **vier Ampel-Sprossen** / getrennte TIME-Stufen
- T1 und T2 kollabieren zu einem „Notfall“-Blob
- T1 optisch = T4 (Treat-Gewicht)
- SCOPE als graue „T5“ unter Treat
- Erfundenes T3 „zeitnah“
- Solid-red Master-Wand / III-Notfallkarten-Chrome
- MHS als Ausschluss-Algorithmus visualisiert
- STEMI vs NSTEMI als DA-Triage-Split
- Default-to-Danger weichgespült („erst mal beobachten“)

## Cognitive / layout levers (only what layout can fix)

- **Segmenting:** ein Block pro in C vorhandener TIME-Stufe (T1, T2, T4 — kein leerer T3-Slot)
- **Signaling:** Gewicht T1 ≫ T2 ≫ T4 (Größe/Füllung/Balken **plus Label**, nicht Farbe allein)
- **Nesting:** Trigger-Cluster **innen** T1; **eine** Handlungszeile
- **Contiguity:** Trigger-Liste unmittelbar neben/über ACTION in derselben Stufe
- **Figure–ground:** SCOPE-Frame geometrisch außerhalb des TIME-Stacks
- **Collapse:** T3 weglassen (C silent)
- **Default-to-Danger:** nur wenn C es sagt — als Pin in T1/Quiet, nicht als Meta-UI

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| **T1 nested hard-stop** | **max** | 4 Trigger-Cluster + **eine** gemeinsame ACTION + Default-to-Danger | **eine** Stop-Karte, keine Leiter aus 4 Sprossen |
| T1 internal list | loud (sub) | Cluster a–d scannbar | Aufzählung *innerhalb* der Stufe |
| **T2** | loud but &lt; T1 | unklar ohne ACS-Vollbild / ohne 112-Kriterien → gleichtags Arzt | klar **kein** Notruf-Label; bei Verschlechterung zurück nach T1 |
| **T3** | — | **abwesend** | kein leerer Platzhalter, der wie Stufe wirkt |
| **T4** | medium-quiet | nur gesicherte MSK + Netz + Abbruchkriterien | Erlaubnis mit Vigilanz, nie gleich laut wie T1 |
| **SCOPE frame** | quiet-strong border | Zuständigkeitsgrenze + Score-Bremse (MHS, GRACE/HEART/TIMI) | **optisch keine TIME-Stufe** (andere Geometrie, kein T-Chip); Content-Titel ok |
| Default / Kontraindikation echo | quiet-strong or in T1 | Im Zweifel Notruf; absolute KI Belastung/manuelle Thorax-„Abklärung“ | stützt T1, ersetzt sie nicht |
| Quiet trailing | quiet | Quellen / Slave-Meta | nach Action |

## Must-see elements

1. **T1 ≠ T2** — getrennte Labels (**112 / Sofort** vs. **Notaufnahme / gleichtags Arzt**) und Gewicht  
2. **Multi-T1 nested:** alle **vier** C-Trigger-Cluster sichtbar **in einer** T1-Karte  
3. **Eine** T1-ACTION (112, Sitzung beenden, absolute Ruhe, keine Belastung, keine manuelle Thorax-Intervention, überwachen)  
4. **Kein T3** (nicht erfinden, nicht als leere Sprosse andeuten)  
5. **T4** nur bei **gesicherter** MSK-Erklärung, ohne Red Flags, niedrigem Risiko (± ärztliche Freigabe) + Vigilanz  
6. **SCOPE** separater Frame: ACS-Ausschluss, EKG, Troponin, STEMI/NSTEMI-Zuordnung, Reperfusion, Belastungstests, medikamentöse Infarkttherapie **außerhalb**; **MHS nicht als Ausschluss**; GRACE/HEART/TIMI nicht operationalisieren  
7. **Default-to-Danger** lesbar: Im Zweifel Notruf / bei ACS-Möglichkeit = Notruf  
8. Genre: script/teal framework; **solid danger nur auf T1**  
9. **Keine** form-meta-Wörter in der Figur („Trigger cluster“, „nested“, „keine Dringlichkeitsstufe“, Ontology-IDs, EN stage titles)

## Icon meaning (optional — free-vision criteria)

Wenn free vision zeichnet (nicht nur Textzeilen), gilt:

| pin / zone | drawing must show | must not show |
|---|---|---|
| T1 / 112 | Notruf / Sofort-Stopp (z. B. Telefon/Stopp-Geste) als **eine** Stufe | vier getrennte rote Ampeln = vier Dringlichkeiten |
| T1 Ruhe | Patient in Ruhe / keine Belastung | laufendes Training, manuelle Thorax-Mobilisation als „Abklärung“ |
| Ausstrahlung (nur wenn Ambition-Spatial) | retrosternal + Arm/Kiefer/Hals/Rücken/Schulter; optional Epigastrium atypisch | anatomische Overclaim-Grafik, erfundene Dermatome, STEMI-Lokalisation |
| SCOPE / MHS | Grenze / „nicht ausschließen“-Bremse | Score-Rechner, Cutoff-Ampel „≥4 → 112“ |
| Autonomie PT | — | EKG-Monitor, Troponin-Labor, Reperfusions-Katheter als HP-Job |

## Urgency / weight encoding

- **T1:** solid danger + weiß/fett **112** / **Sofort**; maximale Fläche  
- **T2:** warning/amber + Label **Notaufnahme / gleichtags Arzt** (oder C-nah: unverzüglich ärztlich)  
- **T3:** **nicht vorhanden**  
- **T4:** primary/teal + **Behandeln + Sicherheitsnetz**  
- **SCOPE:** andere Geometrie (Rahmen, Haarlinie, small-caps **Content**-Titel z. B. „Grenze der eigenen Zuständigkeit“); nie T-Chip-Zeile  
- Default-to-Danger: an T1 koppeln oder als kurze Maxime über/unter T1 — nicht als fünfte Stufe  

## Branching / loop invariants

- Genau **eine** T1-Stufe; Trigger a–d ⊂ T1  
- T2 nur wenn **kein** typisches/atypisch-verdächtiges ACS-Vollbild und **keine** 112-Kriterien — sonst T1  
- Verschlechterung / nachträglich erkannte ACS-Hinweise → **sofort 112** (Rückkehr T1)  
- **Kein** erfundenes T3  
- T4 **nie** ohne Netz / nie bei unklarer thorakaler Symptomatik mit ACS-Möglichkeit  
- SCOPE orthogonal — kein „Treat then Scope“ als Leiter  
- STEMI und NSTE-ACS: **beide** Notfallpfad für HP/Physio — kein Split als Job  
- Master ersetzt **nicht** Slave-Karten  

## Genre chrome

- **Must look like:** Illness-Script Entscheidungsinstrument (gewichtete TIME-Landschaft + orthogonaler SCOPE-Rahmen); multi-trigger hard-stop *innerhalb* Master-Chrome  
- **Must not look like:** vollseitige Notfallkarte III; BLS-Dual-Lane; Ampel mit SCOPE als grauer Stufe; Melanom-style Exception-T1 (hier ist T1 die **Wand**, nicht die Ausnahme); EN-Dashboard-Meta  

## Claim pins (German, copy-through from C / content-map)

### T1 — 112 / Sofort (eine Stufe, vier Cluster)

| step / zone | allowed text (German) |
|---|---|
| T1 label | 112 / Sofort |
| T1-a trigger | Retrosternaler Vernichtungs- oder anhaltender Druckschmerz mit Ausstrahlung Arm/Kiefer/Rücken und vegetativen Zeichen |
| T1-b trigger | Akute Dyspnoe, Synkope oder Schock bei Infarktverdacht |
| T1-c trigger | Bekannte KHK plus neu progredienter Ruheschmerz |
| T1-d trigger | Oberbauchschmerz plus Vegetativum und kardiale Risikofaktoren |
| T1 action (einmal, gemeinsam) | **112 wählen**; Sitzung beenden; absolute Ruhe; keine Belastung, keine manuelle Thorax-Intervention; bis Rettungsdienst überwachen |
| T1-b action nuance (optional in payload) | keine Mobilisation; hämodynamischen Notfallpfad einleiten |
| T1-c action nuance | 112 (instabile Angina/ACS bis zum Ausschluss); keine fortgesetzte PT |
| T1-d action nuance | 112; ACS-Mimikry nicht ausschließen |
| Default-to-Danger | Im Zweifel Notruf; Default bei ACS-Möglichkeit bleibt der Notruf |

### T2 — Notaufnahme / gleichtags Arzt

| step / zone | allowed text (German) |
|---|---|
| T2 trigger | Nur wenn **kein** typisches/atypisch-verdächtiges ACS-Vollbild und **keine** 112-Kriterien oben, aber Thoraxschmerz unklar und ACS nicht sicher auszuschließen |
| T2 action | **Keine PT**; unverzüglich ärztlich abklären lassen; bei jeder Verschlechterung oder bei nachträglich erkannten ACS-Hinweisen **sofort 112** |

### T3

| step / zone | allowed text (German) |
|---|---|
| T3 | *(nicht in C — weglassen)* |

### T4 — Behandeln mit Sicherheitsnetz

| step / zone | allowed text (German) |
|---|---|
| T4 trigger | Nur bei **gesicherter** MSK-Erklärung, ohne Red Flags, niedrigem Risiko (± ärztliche Freigabe) |
| T4 action | PT möglich; auf neu auftretende Enge oder Dyspnoe achten; Abbruchkriterien vorab klären |
| T4 echo / Abbruch | Abbruch bei neuem Druck/Dyspnoe/Vegetativum; bei Verdacht während Sitzung: Abbruch und 112 |

### Kontraindikationen (an T1/T4 binden, C)

| step / zone | allowed text (German) |
|---|---|
| KI | Unklare akute/subakute thorakale Symptomatik mit ACS-Möglichkeit = absolute KI für Belastung und manuelle Ersatzdiagnostik |
| KI Training | Kein eigenständiges Herz-Kreislauf-Training bei bekannter KHK/ACS-Historie ohne ärztliche Belastungsfreigabe (Reha-Kontext) |

### SCOPE — Grenze der eigenen Zuständigkeit

| step / zone | allowed text (German) |
|---|---|
| SCOPE title (content) | Grenze der eigenen Zuständigkeit |
| Außerhalb | ACS-Ausschluss; EKG; Troponin; STEMI/NSTEMI-Zuordnung; Reperfusion; Belastungstests; medikamentöse Infarkttherapie |
| MHS | Marburger Herz-Score nur DEGAM-orientierter Hintergrund hausärztlicher Primärversorgung — **nicht** HP/Physio-Ausschlussinstrument; niedriger MHS schließt ACS **nicht** aus; **kein** alleiniger Algorithmus „MHS ≥4 → 112“; typische oder erheblich verdächtige ACS-Symptome → **112 unabhängig vom Score** |
| Klinik-Scores | GRACE / HEART / TIMI: Klinik-/Notaufnahme-Scores (EKG, Troponin) — **nicht** für den Direktzugang operationalisieren |
| STEMI/NSTE | Für HP/Physio: **beides Notfallpfad** — keine EKG-Differenzierung als Aufgabe |
| Kernsatz | ACS ist **kein** physiotherapeutisches Behandlungsfeld: Verdacht → **Triage**, meist **112** |

### Screening-Matrix echo (gleiche Semantik, kein zweites SoT)

| step / zone | allowed text (German) |
|---|---|
| Notfall | Sofort 112 + absolute Ruhe + keine manuelle Thorax-Intervention |
| Ärztlich vor PT | Keine PT, gleichtags Arzt/NA, Sicherheitsnetz 112 |
| PT möglich | Behandeln mit Vigilanz, Abbruch bei neuem Druck/Dyspnoe/Vegetativum |

## Explicit non-goals / must-not

- No form-meta in figure  
- No English decorative stage titles  
- No invented T3 / thresholds / doses  
- No four TIME rungs for four 112 triggers  
- No MHS cutoff algorithm as decision UI  
- No STEMI vs NSTEMI DA triage  
- No Treat-without-net  
- No content rewrite / slave card contents  
- No solid-red full-bleed emergency poster genre  

## Presentation hypothesis (pattern name)

**US-B nested multi-T1 hard-stop** + **US-A dual-axis SCOPE stack** + **US-C T3 collapse**  
(Library transfer: `kl-urgency-nested-t1` / ACS archetype — pins from **this** Vollscript, not demo shorthand alone.)

Optional ambition (not this Spec’s duty): Ausstrahlungs-Topografie; mechanism chain supporting stop — separate if built.

## Success criterion

Unter Scan-Stress wählt die lernende Person bei **jedem** der vier ACS-Cluster (inkl. Oberbauch- und KHK-Crescendo) **sofort 112**, liest **eine** gemeinsame ACTION (Ruhe, kein Thorax-Manöver), unterscheidet **T2** als schwächeren „unklar ohne Vollbild“-Pfad, **erfindet kein T3**, behandelt nur unter **T4-Netz** bei gesicherter MSK-Erklärung, und liest **SCOPE** (MHS ≠ Ausschluss, kein EKG/Troponin) als **Nicht-Stufe**.

## Handoff to Graphics

- [x] Form Spec complete for this unit  
- [x] Ambition flag set (**optional** free-vision; code nested-T1 default)  
- [x] Claim pins reviewed against content-map / C  
- Visual-Unit → `medical-graphics` playbook from Stage G0  
- Transfer recipe: `kl-urgency-nested-t1` + scope stack; **no** Melanom exceptional-T1 pattern  
