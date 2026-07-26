# Form Spec (Media — Stage M)

- **chapter_id / slug:** KL-Script-System / `kl-u-urgency-scope`
- **unit_id:** U-urgency + U-scope (joint; ontology v1.1)
- **brief_path:** `domains/medical/briefs/_explorations/kl-form-space.md` (§1 Shortlist US-A/B/C)
- **content_source:** Welle-06 monographs §5 — demo pins:  
  `…/monographs/chapter-v-10-erysipel.md` · `…/chapter-v-1-myokardinfarkt.md`
- **genre:** illness-script / lerntext (Master) — danger only on T1
- **recipe_fn:** priority-landscape + orthogonal SCOPE frame; hard-stop-in-tier when multi-T1
- **author_role:** media
- **date:** 2026-07-26
- **ambition:** free-vision **optional** (US-D meter later); default realize **code**
- **ontology:** `domains/medical/briefs/_explorations/gemini-ontology-eval/SYNTHESIS-v1.1-frozen.md`

> Joint unit: TIME axis + SCOPE axis. ACTION = payload *inside* TIME tiers.  
> **Keine** Content-Textarbeit; Pins copy-through C.

## Learner context

- **Actor:** HP Physio / PT Direktzugang  
- **Time pressure / scan budget:** 5–20 s tier + action; scope as permanent constraint  
- **Setting:** Praxis / Hausbesuch  

## Learner job (one primary)

**choose** (+ **stop** on T1) · secondary **constrain** (scope)

**Primary job in one sentence:** Assign the correct TIME tier, execute its action payload, and never treat scope as a quieter urgency step.

## Load risks (if form is wrong)

- T1 visually equals T4  
- T1 and T2 collapse into one „Notfall“ blob  
- SCOPE reads as T5 under Treat  
- Multi-112 becomes false ladder rungs  
- Solid-red master wall (wrong chrome)

## Cognitive / layout levers

- **Segmenting:** one block per TIME tier present in content  
- **Signaling:** weight T1 ≫ T2 ≫ T3 ≫ T4 (size/fill/left bar + **label**, not color alone)  
- **Contiguity:** trigger list adjacent to action *inside* same tier  
- **Figure–ground:** SCOPE frame visually outside the TIME stack  
- **Collapse:** omit T3 slot entirely when content has no T3 row  

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| TIME stack (T1→T4 present) | T1 loudest | urgency + action payload | ordered priority landscape |
| T1 internal | max | single action + multi-trigger list | **one** stop card, not multiple rungs |
| T2 | loud | same-day medical path | distinct from T1 |
| T3 (optional) | medium | delayed prioritized MD | distinct from T2; absent if empty |
| T4 | medium-quiet | treat + return precautions | permission with net |
| **SCOPE frame** | quiet-strong border | competence boundary | **optically not a TIME tier** (no T-chip, different geometry); no meta-caption explaining the form |
| Quiet | quiet | sources later | not before action |

## Must-see elements

1. **T1 ≠ T2** — separate labels and visual weight  
2. **ACTION inside tier** — not a third axis  
3. **Multi-trigger inside T1** when ACS-like (one action, many triggers)  
4. **SCOPE separate frame** — optically not a TIME tier (geometry/weight); **no** in-figure meta text like „keine Dringlichkeitsstufe“  

5. **No „Treat ohne Netz“** tier  
6. Genre: script/teal framework; danger solid only on T1  

## Urgency / weight encoding

- T1: solid danger + white/bold **112** label  
- T2: warning/amber + **Notaufnahme / gleichtags** label  
- T3: info/cool (if present) + **Zeitnah** label  
- T4: primary/teal + **Behandeln + Netz**  
- SCOPE: different geometry from tiers (e.g. square frame, hairline break, small-caps title = content label only); never a T-chip row  


## Branching / loop invariants

- No inventing T3 when content lacks it  
- No collapsing T1/T2  
- Default-to-Danger only if content states it (copy-through)  

## Genre chrome

- **Must look like:** illness-script decision instrument (weighted TIME + orthogonal SCOPE)  
- **Must not look like:** full-page notfall-karte; BLS dual-lane; ampellike scope-as-grey-step  

## Claim pins (German, copy-through)

### Demo A — Erysipel (standard 3 TIME + scope; no T3)

| step / zone | allowed text (German) |
|---|---|
| T1 triggers | Extrem unverhältnismäßiger Schmerz („Vernichtungsschmerz“), rasche Ausbreitung, unscharfe Begrenzung, Blasen/Nekrosen, Hautemphysem oder Krepitation, Schockzeichen |
| T1 action | Therapie abbrechen, Vitalzeichen erheben, **Notruf 112**. Keine Physiotherapie |
| T2 triggers | flächiges scharf begrenztes Erythem plus Fieber oder systemische Zeichen; Immunsuppression mit rasch progredientem Weichteilerythem; unilaterale Beinschwellung ohne klares Erysipel-Muster (TVT-DDx) |
| T2 action | Therapie abbrechen; Notaufnahme bzw. gleichtags Arzt; keine manuelle Lymphdrainage / intensive Wärme auf floridem Areal |
| T4 | Nur ohne Red Flags: Begleitung außerhalb des verdächtigen Areals; Rückkehrgründe Rötung, Fieber, Schüttelfrost, rasche Schwellung, Schmerzexplosion |
| SCOPE | Keine Erysipel-Diagnosesicherung, keine Antibiotika; manuelle Techniken/Lymphdrainage auf floridem Erysipel ohne Freigabe absolut kontraindiziert; TVT und nekrotisierende Infektion werden nicht physiotherapeutisch ausgeschlossen |

### Demo B — ACS (multi-T1)

| step / zone | allowed text (German) |
|---|---|
| T1 action (once) | **112 wählen**; Sitzung beenden; absolute Ruhe; keine Belastung, keine manuelle Thorax-Intervention |
| T1 triggers (cluster) | Retrosternaler Vernichtungs-/Druckschmerz + Ausstrahlung + vegetativ; Dyspnoe/Synkope/Schock bei Infarktverdacht; bekannte KHK + Crescendo-Ruheschmerz; Oberbauch + Vegetativum + kardiale RF |
| T2 | Nur wenn kein ACS-Vollbild und keine 112-Kriterien, aber unklar → **Keine PT**; unverzüglich ärztlich; bei Verschlechterung **sofort 112** |
| T4 | Nur bei **gesicherter** MSK-Erklärung ohne RF |
| SCOPE | ACS-Ausschluss, EKG, Troponin, STEMI/NSTEMI-Zuordnung, Reperfusion — nicht HP/PT; MHS nicht als Ausschluss |

## Explicit non-goals / must-not

- No content template rewrite  
- No invented T3 for Erysipel  
- No English stage titles  
- No third ACTION axis  

## Presentation hypothesis (pattern name)

**US-A dual-axis** (TIME stack + SCOPE frame) · **US-B nested multi-T1** · **US-C T3 collapse**

## Success criterion

Under scan stress the learner **picks the correct TIME tier**, **reads the action**, and **recognizes SCOPE as a non-tier constraint**.

## Handoff to Graphics

- [x] Form Spec complete  
- [x] Ambition optional free-vision (US-D later)  
- [x] Claim pins from C  
- Next: `medical-graphics` G0–G3 for US-A (Erysipel) + US-B (ACS); code-first default  
