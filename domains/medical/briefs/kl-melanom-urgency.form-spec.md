# Form Spec (Media — Stage M)

- **chapter_id / slug:** V-10 Melanom / `kl-melanom-urgency`
- **unit_id:** U-urgency + U-scope
- **brief_path:** `domains/medical/briefs/kl-melanom.brief.md`
- **content_source:** Welle-06 `chapter-v-10-melanom-abcde-hautscreening.md` §5
- **genre:** illness-script / lerntext (Master)
- **recipe_fn:** `kl-urgency-scope-stack` transfer (exceptional T1 pattern)
- **author_role:** media
- **date:** 2026-07-26
- **ambition:** optional (code default; dashboard later)
- **ontology:** v1.1

> Joint TIME + SCOPE. Melanom specialty: **112 not primary** for screening — T2/T3 carry clinical weight.  
> Pins copy-through C only.

## Learner context

- **Actor:** HP Physio / PT Direktzugang  
- **Time pressure:** 10–20 s tier choice  
- **Setting:** Praxis / Entkleidung / Hausbesuch  

## Learner job

**choose** (+ **constrain** via SCOPE)

**Primary job:** Assign gleichtags vs zeitnah vs treat+net correctly; do not invent a 112-first melanoma pathway; never own diagnosis/excision.

## Load risks

- Loud empty solid-red T1 dominating a screening chapter  
- T2 and T3 collapsed  
- SCOPE as grey “T5”  
- Softening “keine destruktiven Maßnahmen”  

## Cognitive / layout levers

- Segment TIME tiers present in content  
- **De-emphasize T1** to exception geometry (quiet strip or compact card) when content says “typischerweise nicht primär 112”  
- Weight T2 ≥ T3 > T4; SCOPE orthogonal  
- Contiguity: situation triggers next to Handlung inside tier  

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| T1 exception | quiet-strong | vital bleeding/shock only | not the main pathway |
| T2 | loud | bleeding/ulcer/ABCDE-suspekt/B-Symptome+Knoten | primary same-day medical |
| T3 | medium-loud | Hutchinson/subungual; Ugly Duckling ohne Blutung | zeitnah, distinct from T2 |
| T4 | medium | treat MSK + net + screening hint | permission with return stop |
| SCOPE | quiet-strong border | no Dx / no excision / no destructive | not a TIME tier |
| Quiet | quiet | sources | after action |

## Must-see elements

1. T2 and T3 **distinct** labels and weight  
2. T1 only as **exception** (vital) — not primary melanoma urgency wall  
3. ACTION inside each tier  
4. SCOPE separate geometry; **no** form-meta caption  
5. Explicit **keine destruktiven Maßnahmen** in T2 and/or SCOPE  
6. Genre: script/teal; solid red only if T1 exception shown  

## Urgency / weight encoding

- T1 exception: compact danger note (not full-page solid wall)  
- T2: warning/amber, full tier card  
- T3: cool/info, full tier  
- T4: primary/teal  
- SCOPE: square frame / hairline break  

## Branching / loop invariants

- Do not invent primary 112 melanoma triggers beyond vital exception in C  
- Do not omit T3 (content has zeitnah row)  
- Screening reminder is T4/net — not a urgency tier  

## Genre chrome

- **Must look like:** illness-script decision instrument for skin red flags  
- **Must not look like:** ACS/BLS-style 112-first Notfallkarte  

## Claim pins (German, copy-through)

| step / zone | allowed text (German) |
|---|---|
| T1 situation | Im Melanom-Screening typischerweise **nicht** primär 112; Ausnahme nur bei vital bedrohlicher Begleitlage (z. B. akute schwere Blutung, Schock) |
| T1 action | Dann Notruf und Standard-Notfallmanagement; Melanom selbst ist primär onkologisch-dermatologisch zeitkritisch, nicht reanimationspflichtig |
| T2 triggers | blutende oder ulzerierte unklare Hautläsion; ABCDE-suspekte oder rasch wachsende pigmentierte Läsion; B-Symptomatik plus multiple Hautknoten |
| T2 timing | gleichtags bis zeitnah (bei Blutung/Ulzeration und systemischen Zeichen eher gleichtags) |
| T2 action | Therapie an der Läsion stoppen; **keine** destruktiven Maßnahmen; gleichtags Hausarzt/Dermatologie bzw. onkologisch-dermatologische Abklärung; schriftlich „Melanom-DDx / ABCDE-suspekt?“ und Befundbeschreibung mitgeben |
| T3 triggers | neu aufgetretene subunguale Pigmentierung kombiniert mit Nagelwall-Pigmentierung (Verdacht auf Hutchinson-Zeichen); Ugly Duckling ohne akute Blutung |
| T3 timing | zeitnah |
| T3 action | Schriftliche Zuweisung Dermatologie/Hausarzt zur Exzisionsabklärung; Patient über Dringlichkeit und Rückkehrgründe informieren |
| T4 situation | ohne suspekte Kriterien |
| T4 action | MSK-Therapie fortsetzen; bei neu auffälliger Läsion im Verlauf sofort stoppen und zuweisen; auf gesetzliches Hautkrebs-Screening (in DE ab 35 Jahren alle 2 Jahre) hinweisen, ohne Screening zu ersetzen |
| SCOPE | Keine Melanom-Diagnose, keine Exzision, keine destruktiven Maßnahmen an suspekten Läsionen; endgültige DDx (seborrhoische Keratose vs. Melanom) ist ärztlich |

## Explicit non-goals / must-not

- No form-meta in figure  
- No English stage titles  
- No inventing primary 112 melanoma pathway  

## Presentation hypothesis

`kl-urgency-scope-stack` with **exceptional-T1** variant (Melanom / screening-style).

## Success criterion

Under scan stress the learner **picks gleichtags vs zeitnah vs treat+net** for a suspicious lesion and **does not** start destructive local treatment or claim melanoma diagnosis.
