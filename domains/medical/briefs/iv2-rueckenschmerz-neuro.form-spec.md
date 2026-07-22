# Form Spec (Media — Stage M) — IV-2 S4 Entscheidungs-Flow

- **chapter_id / slug:** IV-2 / `rueckenschmerz-neuro`
- **unit_id:** S4 Entscheidungs-Flow
- **brief_path:** `domains/medical/briefs/iv2-rueckenschmerz-neuro.brief.md`
- **content_source:** Kursbuch staging pilot + `pilots/kursbuch-welle-03/chapters/iv2.typ`
- **genre:** leitsymptom (decision path)
- **recipe_fn:** F4
- **author_role:** media (gold example for playbook system)
- **date:** 2026-07-23
- **ambition:** free-vision **required**

> Gold Form Spec — Vorbild für Stage M. Graphics: free → recreate → refine → Accept (code winner).

## Learner context

- **Actor:** Physio-/Therapieperson, Erstkontakt MSK/PT
- **Time pressure / scan budget:** Scan &lt; 10 s für Pfad-Erkennung; Ausführung schrittweise
- **Setting:** Direktzugang Praxis (kein OP-Saal)

## Learner job (one primary)

**execute** ordered triage under time pressure  

**Primary job:** First-Look → RF → R/I/S → C in fester Reihenfolge; bei Unklarheit Default-to-Danger, nicht „noch testen“.

## Load risks (if form is wrong)

- Unordered bullets flatten order → wrong sequence under stress
- Default-to-Danger invisible → learner continues PT testing
- RF path looks like “still treat”
- CES detail expands into full illness script (belongs in III-5 / V-Cauda)

## Cognitive / layout levers

- **Segmenting:** 4 numbered steps, not one wall
- **Signaling:** steps 1–2 louder (danger) than 3–4 framework; Default-to-Danger banner loudest residual risk
- **Contiguity:** labels on steps, not foot-only legend
- **Order weight:** arrows / numbers encode sequence

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| Header | medium | chapter/unit ID + title | protocol chrome |
| 1 First-Look | **loud** (danger) | vital/AAA/bilateral stop → 112 | hard first gate |
| 2 RF-Box | **loud** (danger) | 112 vs ED 1:1; no HVT | second stop gate |
| 3 R/I/S | medium (teal) | three equal checks | framework trio |
| 4 Ergebnis C | medium + **loud sub** | C + Default-to-Danger | residual danger banner |
| Footer | quiet | scan path + cross-links | not competing |

## Must-see elements

1. Numbered order **1 → 2 → 3 → 4** unmistakable  
2. Steps 1–2 as **urgency cards** (not equal grey bullets)  
3. R-Check / I-Check / S-Check as **three visible sub-units**  
4. **Default-to-Danger** loud when unklar + red-flag-nah  
5. Cross-refs CES/BLS/Illness Script **chip**, not main trunk  
6. Verbote: keine HVT/Traktion/forcierte Mobilisation „zur Abklärung“

## Urgency / weight encoding

- 1–2: solid danger red, white type  
- 3–4: dark teal / primary-dark  
- Default-to-Danger: solid danger sub-banner inside step 4  
- Framework OS teal only as secondary (this unit is leitsymptom triage, not II-1)

## Branching / loop invariants

- Linear protocol (no dual CPR lanes)  
- No inventing Restharn-ml or score cut-offs  
- CES detail → III-5 / V-Cauda only as escape/link, not full script

## Genre chrome

- **Must look like:** leitsymptom **decision path / numbered protocol**  
- **Must not look like:** BLS dual-lane CPR card; pure table of contents; English stage titles

## Claim pins (German, copy-through)

| step / zone | allowed text (German) |
|---|---|
| 1 First-Look / vital? | Schock, Kollaps, reißender Schmerz (AAA-Muster), schwere bilaterale Parese mit Gehunfähigkeit → *112*, Patient *nicht* gehen lassen. CES-Detail: → III-5 · BLS: → III-2 · Illness Script: → V-Cauda |
| 2 Red-Flag-Box positiv? | Aktion 1:1 (*112* vs. *ED/Arzt gleichtags*). *Keine* HVT, Traktion, forcierte Mobilisation „zur Abklärung“ |
| 3 R / I / S Check | R-Check (Matrix R4→R1) → I-Check (PT-Nutzen jetzt?) → S-Check (LWS-Maßnahme jetzt sicher?) |
| 4 Ergebnis C | siehe R+I+S→C. Unklar + red-flag-nah (vage perineale Taubheit, unklare Blase) → *Default-to-Danger* (lieber 112/ED als „noch testen“) |

## Explicit non-goals / must-not

- No inventing Restharn-ml / score cut-offs  
- No full CES illness script on this card  
- No English decorative chrome  
- No attaching repo flowcharts as free-vision layout templates  

## Presentation hypothesis (pattern name)

**leitsymptom-vertical-flow** (numbered protocol 1–4 + step weight + Default-to-Danger loud)

## Success criterion

Under scan stress the learner **sees ordered triage** and **defaults to 112/ED when unclear/red-flag-near**, instead of continuing PT tests.

## Handoff to Graphics

- [x] Form Spec complete  
- [x] Ambition: free-vision required  
- [x] Claim pins from pilot/vision  
- Realized: free + recreate `#entscheidungs-flow-rueckenschmerz()` + B2 refined; Accept winner **code**  
- Paths: `iv2-rueckenschmerz-neuro.vision.md` · `…graphics.md` · `…accept.md` · `lib/entscheidungs-flow.typ`
