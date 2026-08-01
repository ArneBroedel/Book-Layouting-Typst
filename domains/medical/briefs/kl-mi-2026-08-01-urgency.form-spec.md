# Form Spec (Media — Stage M) — MI Urgency + Scope (nested multi-T1)

- **chapter_id / slug:** V-1-myokardinfarkt / `kl-mi-2026-08-01`
- **unit_id:** U-urgency + U-scope (joint)
- **brief_path:** `domains/medical/briefs/kl-mi-2026-08-01.brief.md`
- **content_source:** Kursbuch5 `…/chapter-v-1-myokardinfarkt.md` EH §5 (read-only)
- **content_map:** `domains/medical/briefs/_wave6/kl-mi-2026-08-01.content-map.md`
- **genre:** illness-script / lerntext (kl-voll Master)
- **recipe_fn:** `kl-urgency-nested-t1` + `kl-urgency-scope-stack` (US-B + US-A; T3 collapse)
- **author_role:** media
- **date:** 2026-08-01
- **ambition:** free-vision **optional** — default realize **code** nested multi-T1
- **track hint (Graphics G0):** grammar-only / code default; free vision only if denser than stack
- **design_contract_path:** `domains/medical/briefs/kl-mi-2026-08-01-urgency.design-contract.md`
- **design_clean:** yes
- **space / compression (DC F2):** preferred ~⅓–½ page; 4 T1 triggers as tight multi-line bullets in **one** card; never full page; never four separate red rungs

## Learner context

- **Actor:** HP Physio / PT im Direktzugang (MSK-Erstkontakt)
- **Time pressure / scan budget:** 5–15 s für Stufe + Handlung; SCOPE als Dauer-Constraint
- **Setting:** laufende Behandlung / Erstbefund mit Brust-, Schulter-, BWS- oder Oberbauchschmerz

## Learner job (one primary)

**choose** (+ **stop** on T1) · secondary **constrain** (SCOPE)

**Primary job in one sentence:** Plausibles ACS (klassisch oder atypisch) der **Sofort-112**-Stufe zuordnen, gemeinsame ACTION ausführen, und SCOPE (EKG/Troponin/MHS/Reperfusion) **nie** als leisere Dringlichkeitsstufe lesen.

## Simple alternative (required)

- boring default: **markdown-style table** (Situation | Dringlichkeit | Handlung) as in C  
- why not only that: under scan stress four 112 rows become four urgency rungs; T1 and T2 collapse to one “Notfall” blob; SCOPE becomes row 5 / T5; nested stack + orthogonal frame reduces that error class

## Load risks (if form is wrong)

- Vier 112-Zeilen als **vier Ampel-Sprossen**
- T1 und T2 kollabieren zu einem „Notfall“-Blob
- T1 optisch = T4 (Treat-Gewicht)
- SCOPE als graue „T5“ unter Treat
- Erfundenes T3 „zeitnah“
- Solid-red Master-Wand / III-Notfallkarten-Chrome
- MHS als Ausschluss-Algorithmus visualisiert
- STEMI vs NSTEMI als DA-Triage-Split
- Default-to-Danger weichgespült

## Cognitive / layout levers

- **Segmenting:** ein Block pro in C vorhandener TIME-Stufe (T1, T2, T4 — kein leerer T3-Slot)
- **Signaling:** Gewicht T1 ≫ T2 ≫ T4 (Größe/Füllung/Balken **plus Label**)
- **Nesting:** Trigger-Cluster **innen** T1; **eine** Handlungszeile
- **Contiguity:** Trigger-Liste unmittelbar neben/über ACTION in derselben Stufe
- **Figure–ground:** SCOPE-Frame geometrisch außerhalb des TIME-Stacks
- **Collapse:** T3 weglassen (C silent)
- **Default-to-Danger:** Pin über/unter T1 — nicht als fünfte Stufe

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| Default-to-Danger maxim | quiet-strong | Im Zweifel Notruf | stützt T1, keine fünfte Stufe |
| **T1 nested hard-stop** | **max** | 4 Trigger-Cluster + **eine** gemeinsame ACTION | **eine** Stop-Karte, keine Leiter aus 4 Sprossen |
| **T2** | loud but &lt; T1 | unklar ohne ACS-Vollbild → gleichtags Arzt | klar **kein** Notruf-Label; Verschlechterung → T1 |
| **T3** | — | **abwesend** | kein leerer Platzhalter |
| **T4** | medium-quiet | nur gesicherte MSK + Netz | Erlaubnis mit Vigilanz |
| **SCOPE frame** | quiet-strong border | Zuständigkeitsgrenze + MHS-Bremse | **optisch keine TIME-Stufe** |

## Must-see elements

1. **T1 ≠ T2** — Labels **112 / Sofort** vs. **Notaufnahme / gleichtags Arzt**  
2. **Multi-T1 nested:** alle **vier** C-Trigger-Cluster sichtbar **in einer** T1-Karte  
3. **Eine** T1-ACTION (112, Sitzung beenden, absolute Ruhe, keine Belastung, keine manuelle Thorax-Intervention, überwachen)  
4. **Kein T3**  
5. **T4** nur bei **gesicherter** MSK-Erklärung + Vigilanz  
6. **SCOPE** separater Frame: ACS-Ausschluss, EKG, Troponin, STEMI/NSTEMI-Zuordnung, Reperfusion, Belastungstests, medikamentöse Infarkttherapie **außerhalb**; **MHS nicht als Ausschluss**  
7. **Default-to-Danger** lesbar  
8. Genre: script/teal framework; **solid danger nur auf T1**  
9. **Keine** form-meta-Wörter in der Figur

## Urgency / weight encoding

- **T1:** solid danger + weiß/fett **112** / **Sofort**  
- **T2:** warning/amber + Label **Notaufnahme / gleichtags Arzt**  
- **T3:** **nicht vorhanden**  
- **T4:** primary/teal + **Behandeln + Sicherheitsnetz**  
- **SCOPE:** andere Geometrie (Rahmen, Haarlinie); nie T-Chip-Zeile  

## Claim pins (German, copy-through from C)

### T1 — 112 / Sofort (eine Stufe, vier Cluster)

| step / zone | allowed text (German) |
|---|---|
| T1 label | 112 / Sofort |
| T1-a | Retrosternaler Vernichtungs- oder anhaltender Druckschmerz mit Ausstrahlung Arm/Kiefer/Rücken und vegetativen Zeichen |
| T1-b | Akute Dyspnoe, Synkope oder Schock bei Infarktverdacht |
| T1-c | Bekannte KHK plus neu progredienter Ruheschmerz |
| T1-d | Oberbauchschmerz plus Vegetativum und kardiale Risikofaktoren |
| T1 action | **112 wählen**; Sitzung beenden; absolute Ruhe; keine Belastung, keine manuelle Thorax-Intervention; bis Rettungsdienst überwachen |
| Default-to-Danger | Im Zweifel Notruf; Default bei ACS-Möglichkeit bleibt der Notruf |

### T2

| step / zone | allowed text (German) |
|---|---|
| T2 trigger | Nur wenn **kein** typisches/atypisch-verdächtiges ACS-Vollbild und **keine** 112-Kriterien, aber Thoraxschmerz unklar und ACS nicht sicher auszuschließen |
| T2 action | **Keine PT**; unverzüglich ärztlich abklären lassen; bei Verschlechterung oder nachträglich erkannten ACS-Hinweisen **sofort 112** |

### T4

| step / zone | allowed text (German) |
|---|---|
| T4 trigger | Nur bei **gesicherter** MSK-Erklärung, ohne Red Flags, niedrigem Risiko (± ärztliche Freigabe) |
| T4 action | PT möglich; auf neu auftretende Enge oder Dyspnoe achten; Abbruchkriterien vorab; Abbruch bei neuem Druck/Dyspnoe/Vegetativum → 112 |

### SCOPE

| step / zone | allowed text (German) |
|---|---|
| SCOPE title | Grenze der eigenen Zuständigkeit |
| Außerhalb | ACS-Ausschluss; EKG; Troponin; STEMI/NSTEMI-Zuordnung; Reperfusion; Belastungstests; medikamentöse Infarkttherapie |
| MHS | nicht als Ausschluss; niedriger MHS schließt ACS **nicht** aus; GRACE/HEART/TIMI nicht operationalisieren |
| STEMI/NSTE | **beides Notfallpfad** — keine EKG-Differenzierung als Aufgabe |
| Kernsatz | ACS ist **kein** physiotherapeutisches Behandlungsfeld: Verdacht → **Triage**, meist **112** |

## Explicit non-goals / must-not

- No form-meta in figure · No English decorative titles  
- No invented T3 / thresholds / doses  
- No four TIME rungs for four 112 triggers  
- No MHS cutoff algorithm as decision UI  
- No STEMI vs NSTEMI DA triage  
- No Treat-without-net · No solid-red full-bleed emergency poster

## Presentation hypothesis

**US-B nested multi-T1 hard-stop** + **US-A dual-axis SCOPE stack** + **US-C T3 collapse**

## Success criterion

Unter Scan-Stress wählt die lernende Person bei **jedem** der vier ACS-Cluster **sofort 112**, liest **eine** gemeinsame ACTION, unterscheidet **T2**, **erfindet kein T3**, behandelt nur unter **T4-Netz**, und liest **SCOPE** als **Nicht-Stufe**.

## Handoff to Graphics

- [x] Form Spec complete  
- [x] Ambition optional free-vision; code nested-T1 default  
- [x] Claim pins from content-map / C  
- [x] design_clean: yes (see design-critique)
