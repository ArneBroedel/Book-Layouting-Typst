# Form Spec (Media — Stage M)

- **chapter_id / slug:** V-12 Anaphylaxie / `kl-anaphylaxie-mimic`
- **unit_id:** U-mimic (FRAME-ERROR)
- **brief_path:** `domains/medical/briefs/kl-anaphylaxie.brief.md`
- **content_source:** Welle-06 `chapter-v-12-anaphylaxie.md` §4 Trügerische Erklärungen + Vertiefung (5 Frames) + Case-Study-Mimic
- **genre:** illness-script / lerntext (Master, kl-voll)
- **recipe_fn:** `kl-mimic-map` (default) · optional `kl-mimic-peel` (MSK-Enge / BWS)
- **author_role:** media
- **date:** 2026-07-26
- **ambition:** free-vision **optional** (peel for MSK-Enge); default **code** 5-row map
- **ontology:** v1.1 · content-map `domains/medical/briefs/_wave5/kl-anaphylaxie.content-map.md`
- **brief_class:** exploration

> Error-mode: five false frames mask systemic anaphylaxis. Direction **always** frame → real danger. Untertitel-Job: „Wenn Flush, Engegefühl oder ‚Panik‘ den Notfall maskieren“. Pins copy-through C. No form-meta.

## Learner context

- **Actor:** PT / HP Physio Direktzugang (MSK-Enge, Flush, Unruhe häufig)
- **Time pressure / scan budget:** 10–30 s across five frames (or prioritized Haut/Panik/MSK first)
- **Setting:** Praxis nach Stich/Nahrung/Training; Patient:in bagatellisiert; paravertebrale Druckdolenz „reproduzierbar“

## Learner job (one primary)

**distinguish** (error mode)

**Primary job in one sentence:** Harmlose Alltagsframes (nur Haut, Panik, Asthma, MSK-Enge, vasovagal) der **realen systemischen Gefahr** zuordnen und **nicht** psychisch/MSK entwarnen, bevor Atemweg/Kreislauf geprüft sind — im Zweifel 112.

## Load risks (if form is wrong)

- Frames ohne Danger-Seite  
- Richtung umkehren (vasovagal/Panik als Entwarnungs-UI)  
- MSK-Enge-Frame fehlt (PT-Kern)  
- Mit FA/NM in 2×2 gequetscht  
- Meta-UI („False label“)  
- Anatomie-DRIFT bei peel  
- „Nur Quaddeln“ weichgespült ohne Dynamik-Frage  

## Cognitive / layout levers

- Contiguity: Frame |→| Gefahr  
- Signaling: Gefahr > Frame  
- Dual coding: arrow + short correction  
- Five scannable rows (or cards); equal structure  
- Optional peel only for MSK-Enge if Accept wants stronger chrome  

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| Header | medium | „Trügerische Erklärungen“ (Content-Titel) | error-mode; no form-meta |
| Rows M1–M5 | medium-loud | frame → masked danger / correction | directed map of **five** frames |
| Optional MSK peel | high (ambition) | same M4 claims | hybrid only if map weak |
| Case anchor | quiet-medium | BWS-Druckdolenz + „Blockade vom Training“ nach Insektenstich | clinical hook, **no spoiler key** |
| Quiet | quiet | link to 112 path / must-not-miss (ohne Haut) | non-competing |

## Must-see elements

1. All **five** frames M1–M5 present  
2. Direction **frame → Gefahr** on every row  
3. **M2 Panik** and **M4 MSK-Enge** and **M1 nur Haut** especially loud (Untertitel + PT-job)  
4. Correction includes: check Atemweg/Kreislauf/Schwellung/Stridor; im Zweifel **112** where C says so  
5. No print UI words „Label“ / „Darunter“ / ontology IDs  
6. No PT claim that frame “rules out” anaphylaxis  

## Icon meaning (optional — free-vision peel)

| pin / zone | drawing must show | must not show |
|---|---|---|
| M1 Haut | Quaddeln/Flush als **trügerisch banal** | %-Chart „Anaphylaxie ohne Haut“ |
| M2 Panik | Unruhe/Hyperventilation maskiert Notfall | „nur psychisch“-Entwarnungsstempel |
| M3 Asthma | Bronchospastik-Überlappung → bei Allergen+Mehrorgan Anaphylaxie-Pfad | isolierte Asthma-Guideline-UI |
| M4 MSK-Enge | BWS/HWS-„Blockade“-Frame über Atemwegs-/systemischer Gefahr | manuelle Technik als Abklärung; detaillierte Facettengelenk-Anatomie |
| M5 Vasovagal | blass/kühl vs. Flush/Urtikaria/Atemweg/Allergen | „vasovagal immer harmlos“ |
| Peel | Maske abheben → Gefahr | sensational shock art without pins |

## Urgency / weight encoding

- Frame: muted / quotes  
- Gefahr: danger accent  
- Relation: directed mark  
- Not a TIME ladder; consequence may say **112** as C pin  

## Branching / loop invariants

- Always frame → danger  
- Exactly the five C frames (plus optional case echo)  
- Do not reverse M5/M2 into soft rule-outs  
- Mimic sequential to FA/NM — not one 2×2 with for/against  
- DDx ACE-Angioödem is **delta** (optional quiet strip elsewhere) — not a sixth mimic invent  

## Genre chrome

- **Must look like:** clinical error-mode map inside illness script (chapter core pedagogy)  
- **Must not look like:** comic; anatomy poster; discrimination 2×2; emergency wall  

## Claim pins (German, copy-through)

### M1–M5 (Vertiefung + §4)

| step / zone | allowed text (German) |
|---|---|
| M1 Frame | „Nur Quaddeln / Haut“ / isolierte Urtikaria als banale Hautreaktion |
| M1 Gefahr / Korrektur | Generalisierte Urtikaria kann Vorläufer/Teil systemisch sein; ohne Fragen zu Atemnot, Kloßgefühl, Schwindel und ohne Dynamik → Unter-Triage |
| M2 Frame | „Panikattacke / Hyperventilation“ |
| M2 Gefahr / Korrektur | Unruhe und beschleunigte Atmung kommen bei Anaphylaxie vor; ohne Ausschluss Schwellung, Stridor, Kreislaufinstabilität ist psychische Erstlabelung gefährlich |
| M3 Frame | „Asthma-Schub“ / Asthmaexazerbation |
| M3 Gefahr / Korrektur | Isolierte Bronchospastik kann Asthma sein; Allergenbezug, Haut-/Schleimhaut, GI oder Kreislauf → Anaphylaxie-Notfallpfad (**112**) |
| M4 Frame | „HWS-/BWS-Blockade, Enge vom Training“ |
| M4 Gefahr / Korrektur | Zervikothorakales Engegefühl nach Exposition oder mit Schwellung/Juckreiz/Schwindel = kein Freifahrtschein für manuelle Techniken |
| M5 Frame | „Vasovagal, wird gleich wieder“ |
| M5 Gefahr / Korrektur | Blass/kühl/Situations-Trigger eher vasovagal; Flush, Urtikaria, Atemwegsobstruktion, Allergenbezug → anaphylaktischer Schock; im Zweifel **112** |

### Case-Study-Mimic (optional quiet anchor)

| step / zone | allowed text (German) |
|---|---|
| Case frame | reproduzierbare paravertebrale Druckdolenz + Selbstetikett „Blockade vom Training“ |
| Case danger | überdeckt Beginn systemischer Reaktion mit Atemwegsbeteiligung nach Insektenstich |

### Related must-not-miss (only if linked quietly — primary home is FA/NM unit)

| step / zone | allowed text (German) |
|---|---|
| Ohne Haut | Systemische Reaktion **auch ohne** klassische Hautzeichen möglich — fehlende Hautsymptome geben **keine Entwarnung** (keine %-Pins erfinden) |
| Normale Vitals | Initial **normale Vitalwerte** schließen beginnende Anaphylaxie **nicht** aus |
| Med-Kontext | **Beta-Blocker** oder **ACE-Hemmer** können Zeichen maskieren und Reversibilität erschweren → Schwelle zum Notruf besonders niedrig |

## Explicit non-goals / must-not

- No form-meta  
- No sixth invented bagatelle  
- No reverse direction  
- No % without-skin charts  
- No spoiler for Mini-Fall answers  
- No content rewrite  
- No “PT may clear anaphylaxis by palpation”  

## Presentation hypothesis

**M-A five-row mapping** (default) · **M-B peel** optional for M4 MSK-Enge (PT-specific).

## Success criterion

Unter Scan-Stress mappt die lernende Person mindestens **Haut-**, **Panik-** und **MSK-Enge**-Frames (idealerweise alle fünf) auf die **systemische Gefahr**, prüft **Atemweg/Kreislauf/Schwellung** vor psychischer oder manueller Entwarnung, und bleibt im Zweifel auf dem **112**-Pfad — ohne die Frames als Ausschluss zu lesen.

## Handoff to Graphics

- [x] Form Spec complete  
- [x] Ambition optional peel; default five-row map  
- [x] Claim pins from content-map / C  
- Next: `medical-graphics` G0+; claim audit on free-vision labels  
