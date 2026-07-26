# Form Spec (Media — Stage M)

- **chapter_id / slug:** V-4-schlaganfall / `kl-stroke-fast`
- **unit_id:** U-cues / structured look — FAST (+ BE-FAST wing)
- **brief_path:** `domains/medical/briefs/kl-stroke.brief.md`
- **content_source:** `Kursbuch5/…/welle-06-kl-full/monographs/chapter-v-4-schlaganfall.md` §3 Untersuchung + Screening tools
- **content_map:** `domains/medical/briefs/_wave5/kl-stroke.content-map.md`
- **genre:** illness-script / lerntext (Master) — screening instrument, not full §5 wall
- **recipe_fn:** new candidate **`kl-fast-look`** (sibling of `kl-abcde-look`; harvest after Accept)
- **author_role:** media
- **date:** 2026-07-26
- **ambition:** free-vision **required**
- **ontology:** v1.1
- **brief_class:** exploration
- **form_language_rule:** no meta captions explaining the diagram type; no form-meta in figures

> Ambition slot (Wave-5 priority #1): make FAST a **criteria-by-picture decision form**, not a four-row glossary.  
> **Free vision owns the first creative pass.** Claim audit must check **illustration-semantics** (drawings teach criteria, not only captions).  
> **Do not** recycle Melanom ABCDE asset with relabeled letters — opposite TIME chrome (here: positive look → **112 now**).

## Learner context

- **Actor:** PT/HP Direktzugang; unklarer fokal-neurologischer / „HWS“-Patient  
- **Time pressure / scan budget:** 10–30 s structured screen  
- **Setting:** Praxis / Hausbesuch; Untersuchung = Sicherheit, **nicht** Ausschluss  

## Learner job (one primary)

**recognize** → feed **act** (T1 lives fully in urgency Spec)

**Primary job in one sentence:** Run FAST as a prehospital screen; if **≥ 1** criterion with sudden onset → know this means **Notruf path now**, without further delaying tests — and know FAST-negative does **not** clear posterior/brainstem concern when Schwindel + fokal (or BE-FAST cues) raise central danger.

## Load risks (if form is wrong)

- Letter poster without **Time → Notruf** payload  
- **T drawn as fourth body part** equal to F/A/S (icon DRIFT)  
- EN-only Face / Arms / Speech without German clinical meaning  
- BE-FAST equal-weight as „new standard“ / DE-Leitlinien-Primärscore (C: no)  
- FAST-negative visual = entwarnt (posterior gap lost)  
- Full solid-red emergency wall replacing Master script chrome  
- Decorative face/arm art without readable asymmetry / drift  
- Invented scoring thresholds or ABCD² integration into the look form  

## Cognitive / layout levers

- **Segmenting:** F · A · S as clinical criteria beats; **T as action/time beat** (different geometry)  
- **Signaling:** ≥1-positive gate loud; Time/112 louder than decoration  
- **Dual coding:** drawing of each criterion + short DE pin  
- **Contiguity:** positive rule next to letter spine  
- **Secondary weight:** B/E smaller than F/A/S core; guardrail text contiguous  
- **Illustration-semantics:** claim audit fails if drawing contradicts pin  

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| Letter spine F–A–S | loud | clinical screening criteria | ordered structured look |
| **T Time / Notruf** | **loud (action)** | Handlungszeit + 112 | **not** a fourth body-sign peer |
| ≥1-positive gate | loud | Positiv-Regel | decision strip / gate |
| BE-FAST wing (B, E) | medium / secondary | posterior gap sensibilization | extension, not co-primary score |
| Posterior-gap callout | medium-loud | FAST-negativ ≠ sicher bei Schwindel/Ataxie/Sehstörung | stop-awareness micro |
| Action micro | medium-loud | → 112 / keine weiteren Tests | not full multi-T1 stack |
| Guardrails | medium | BE-FAST limits; no triage delay | quiet-strong text |
| Quiet | quiet | Leitlinien-Anker / sources | not first |

## Must-see elements

1. **F, A, S** with **German clinical meanings from C** (not EN chrome alone)  
2. **T = Time / Notruf / „Last seen normal“** — Handlungszeit, **kein** viertes Körperzeichen  
3. **Positiv-Regel:** FAST ≥ 1 Kriterium mit plötzlichem Beginn → Notruf ohne Verzögerung  
4. Icon/drawing meanings match table below (illustration-semantics)  
5. **BE-FAST** only as **secondary wing** with C guardrails (ersetzt FAST-112-Logik **nicht**; kein DE-Leitlinien-Primärscore HP/Physio; Validierung DA fehlt; nur ohne Triage zu verzögern)  
6. **Posterior gap** readable: FAST oft unempfindlich für Posterior/Hirnstamm  
7. No form-meta; no full §5 TIME stack inside this unit  
8. Genre: screening instrument (teal ok on criteria); solid red only on **action/Notruf** accent — not whole Master page  

## Icon meaning (required — free-vision criteria graphics)

| pin / zone | drawing must show (not only caption) | must not show |
|---|---|---|
| **F Face** | Asymmetrie Mundwinkel / hängende Gesichtshälfte | generisches Smiley; beidseits symmetrisches Lächeln „ok“ |
| **A Arms** | Armhalteversuch mit **Absinken einer Seite** / hängende Extremität | beidseits symmetrisch schwach ohne Seitenhinweis; generisches Hantel-Icon |
| **S Speech** | Sprach-/Sprechstörung (Wortfindung / undeutliche Artikulation) | nur „Mund bewegt sich“ ohne Störungs-Semantik |
| **T Time** | Uhr **und/oder** Notruf-Handlung; enges Behandlungsfenster / „Last seen normal“ | **viertes Körperteil-Icon** gleichrangig zu F/A/S; stopwatch as pure decoration without action link |
| **B Balance** (optional wing) | Stand-/Gangunsicherheit; Ataxie-Hinweis | same size/weight as F/A/S core; sports-balance “wellness” chrome |
| **E Eyes** (optional wing) | Sehstörung / Doppelbilder / Hemianopsie-Kontext | decorative eye only; equal primary spine weight |
| **Posterior gap** | mark that FAST-negativ **nicht** entwarnt bei Schwindel + fokal / Ataxie / Sehstörung | green “FAST− = safe” badge |
| **≥1 gate** | one positive criterion is enough with sudden onset | require all letters positive |

## Urgency / weight encoding

- Criteria letters F/A/S: recognition chrome (teal/primary), structured look  
- **T and ≥1-gate → 112:** danger accent / solid red on **action only**  
- BE-FAST: secondary weight (smaller, cooler, or side wing)  
- Not a full multi-T1 urgency dashboard (that is `kl-stroke-urgency`)  
- Not Melanom exceptional-T1 soft pathway  

## Branching / loop invariants

- Positive look means **Notruf path**, not “zuweisen und beobachten” (unlike ABCDE)  
- BE-FAST must **not** replace FAST-112 logic visually  
- Investigation serves **safety** (screen), **not** exclusion  
- No Provokationstests / HWS-Manöver inside this form  
- Thrombolyse-Fenster (< 4,5 h) only as handoff/urgency context via „Last seen normal“ — not a PT therapy calculator  

## Genre chrome

- **Must look like:** illness-script **screening instrument** / criteria-by-picture (Master V)  
- **Must not look like:** III solid-red Notfallkarte; ABCDE dermatology look with wrong action; EN EMS poster without DE pins; score calculator (ABCD²)  

## Claim pins (German, copy-through from C)

| step / zone | allowed text (German) |
|---|---|
| F Face | Mundwinkel asymmetrisch? / hängender Mundwinkel |
| A Arms | Armhalteversuch; hängende Extremität / Armschwäche |
| S Speech | Sprache/Sprechen undeutlich; Aphasie oder Dysarthrie |
| T Time | Notruf; „Last seen normal“; enges Behandlungsfenster |
| Positiv-Regel | FAST ≥ 1 Kriterium mit plötzlichem Beginn → Notruf ohne Verzögerung durch weitere Tests |
| Action link | ≥ 1 positiv + plötzlicher Beginn → **112** |
| B Balance | Unsicherheit beim Stehen/Gehen; Ataxie; grobe Balance |
| E Eyes | Augen-/Sehstörungshinweise; Doppelbilder / Hemianopsie-Kontext |
| BE-FAST Rolle | Sensibilisiert für den posterioren Kreislauf; ersetzt die FAST-112-Logik **nicht** |
| BE-FAST Guardrail 1 | **Kein** eigenständiger DE-Leitlinien-Primärscore für HP/Physio |
| BE-FAST Guardrail 2 | Validierung im PT-Direktzugang fehlt |
| BE-FAST Guardrail 3 | Nur **ohne** die Triage zu verzögern |
| Posterior gap | FAST allein ist unempfindlich für Posterior-/Hirnstamm-Infarkte (Schwindel, Ataxie, Sehstörung) |
| Tool job | Positiv bei **≥ 1** Kriterium → Schlaganfallverdacht und **112-Pfad** |
| Untersuchung guardrail | keine Provokationstests durchführen, die die Triage verzögern |
| Last seen normal (Q) | Wann waren Sie bzw. die Person zuletzt völlig beschwerdefrei („Last seen normal“)? |
| Leitlinien-Anker (quiet) | Erwachsene \| Prähospital \| AWMF S2e 030-046 / DEGAM S3 053-011-Kontext |

## Explicit non-goals / must-not

- Not a full TIME stack (→ urgency Spec)  
- Not ABCD² tool card as part of letter spine  
- No English-only letter expansions without DE criteria  
- No form-meta in figure  
- No inventing 6-letter “full neuro exam”  
- No photoreal stroke shock art as pedagogy substitute  
- No content rewrite / production compose from Spec alone  

## Presentation hypothesis (pattern name)

**`kl-fast-look`** — letter cascade F–A–S + **Time action cap** · optional body-map pins (face/arm/speech) + side 112 · ≥1-positive gate strip · BE-FAST **secondary wing** + posterior-gap micro

### Valuable free-vision paths (≥3)

| id | name | why | carrier |
|----|------|-----|---------|
| P1 | Letter cascade F–A–S + Time action cap | mirrors ABCDE success; Time as action beat | free vision → audit → code fallback |
| P2 | Body-map pins (face/arm/speech) + side Time/112 | spatial body encoding for DA scan | free vision + hybrid labels |
| P3 | Checklist strip with ≥1-positive gate | explicit Positiv-Regel | code-first / hybrid |

### Rejected (≥2)

| id | why reject |
|----|------------|
| R1 | Reines Glossar FAST/BE-FAST/ABCD² ohne Action-Link |
| R2 | Volle solid-red Notfallwand als Kapitel-Chrome |
| R3 | ABCD²-Rechner als PT-Heimschicken-Tool |
| R4 | BE-FAST als primärer gleich großer „neuer Standard“ |

## Success criterion

Under triage stress the learner **runs F–A–S as visible criteria**, treats **≥ 1 + plötzlicher Beginn as 112 now**, reads **T as Time/Notruf** (not a body part), and still knows **FAST-negativ does not clear** Schwindel+fokal / posterior concern — with BE-FAST only as **sensibilizing extension**, not a co-primary score.

**Fail if:** FAST is a nice letter poster without Time→Notruf payload and without posterior guardrail (even if compile is green).

## Handoff to Graphics

- [x] Form Spec complete for this unit  
- [x] Ambition flag: free-vision **required**  
- [x] Claim pins reviewed against content map / C  
- [x] Icon meaning + illustration-semantics ready for claim audit  
- Visual-Unit → `medical-graphics` playbook G0–G3: free vision → **claim audit (illustration-semantics)** → recreate/hybrid/refine  
- Prefer dual coding: vision art + Typst-safe DE labels on nodes  
