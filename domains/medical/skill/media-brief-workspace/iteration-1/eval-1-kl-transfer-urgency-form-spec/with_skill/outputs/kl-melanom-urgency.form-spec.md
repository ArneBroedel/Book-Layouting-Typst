# Form Spec (Media — Stage M)

- **chapter_id / slug:** V-10 Melanom ABCDE-Hautscreening / `kl-melanom-urgency`
- **unit_id:** U-urgency + U-scope (joint; ontology v1.1)
- **brief_path:** (exploration eval — no production brief; sibling intent `domains/medical/briefs/kl-melanom.brief.md` if present)
- **content_source:** `/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-06-kl-full/monographs/chapter-v-10-melanom-abcde-hautscreening.md` §5 *Handeln und Dringlichkeit*
- **content_status:** format-ok / human_review required (Welle-06 pilot)
- **content_revision:** not frozen (exploration)
- **brief_class:** exploration
- **genre:** illness-script / lerntext (Master) — teal framework; solid red only on real T1 exception
- **recipe_fn:** (hint only) `kl-urgency-scope-stack` transfer · **exceptional-T1** variant
- **author_role:** media
- **date:** 2026-07-26
- **ambition:** optional (code-first stack; free-vision dashboard later if desired)
- **ontology:** v1.1 — TIME ≠ SCOPE; ACTION inside TIME; no form-meta in figure

> Joint TIME + SCOPE unit for Melanom screening Direktzugang.  
> **Specialty:** content de-emphasizes 112 as primary pathway → **exceptional T1** (vital Begleitlage only), not a loud empty 112 wall.  
> Claim pins = **copy-through from C §5 only**. No production Typst. Exploration does **not** authorize production compose.

---

## Design reasoning (compact)

| unit | learner job | load risk | presentation hypothesis |
|------|-------------|-----------|-------------------------|
| U-urgency (§5 TIME rows) | **choose** gleichtags vs zeitnah vs treat+net | fake 112-first wall; T2/T3 collapse | TIME stack with **exceptional compact T1** |
| U-scope (§5 Grenze) | **constrain** (no Dx / no excision) | SCOPE as grey “T5” under Treat | orthogonal SCOPE frame outside TIME stack |

---

## Learner context

- **Actor:** HP Physio / PT im Direktzugang (Hautscreening-Blick bei Entkleidung / Behandlungsgebiet)
- **Time pressure / scan budget:** ~10–20 s for tier choice + action payload
- **Setting:** Praxis / Hausbesuch / mobilisierende Therapie (nicht Notaufnahme als Default)

## Learner job (one primary)

**choose** (+ secondary **constrain** via SCOPE)

**Primary job in one sentence:**  
Assign the correct medical pathway for a suspicious pigmented lesion (gleichtags / zeitnah / treat+net), keep 112 only for vital exceptions, and never own melanoma diagnosis or destructive local treatment.

---

## Load risks (if form is wrong)

- Loud empty **solid-red T1** dominating a screening chapter (content says 112 typically **not** primary)
- **T2 and T3 collapsed** into one “Arzt bald” blob (Hutchinson / Ugly Duckling without bleeding needs zeitnah, not same-day wall by default)
- **SCOPE as ladder step** / grey “T5” under Behandeln
- Softening or omitting **keine destruktiven Maßnahmen**
- Form-meta captions inside the figure (“keine Dringlichkeitsstufe”, ontology IDs, EN chrome)
- Inventing primary melanoma-112 triggers beyond vital Begleitlage in C

---

## Cognitive / layout levers (layout can fix)

- **Segmenting:** one block per TIME tier present in §5 (T1 exception, T2, T3, T4)
- **Signaling:** weight **T2 ≥ T3 > T4**; T1 is compact exception, not the loudest full-width wall
- **Contiguity:** situation/triggers adjacent to Handlung **inside** the same tier
- **Figure–ground:** SCOPE optically **outside** the TIME stack (different geometry: square frame, hairline break, content title only)
- **De-emphasize T1:** quiet-strong strip / compact card when content says “typischerweise nicht primär 112”
- **Collapse rule:** do **not** invent empty loud T1; do **not** omit T3 (content has zeitnah row)

---

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| **T1 exception** | quiet-strong (compact danger) | vital Begleitlage only (Blutung/Schock) — not primary melanoma pathway | exception note, **not** main 112 wall |
| **T2** | **loud** (primary clinical weight) | blutend/ulzeriert; ABCDE-suspekt/rasch wachsend; B-Symptome + multiple Hautknoten → gleichtags–zeitnah Arzt | primary same-day medical path |
| **T3** | medium-loud | Hutchinson/subungual + Nagelwall; Ugly Duckling ohne akute Blutung → zeitnah | distinct from T2 (zeitnah, not gleichtags default) |
| **T4** | medium | ohne suspekte Kriterien: MSK fortsetzen + Sicherheitsnetz + Screening-Hinweis | permission **with** return stop |
| **SCOPE** | quiet-strong border | Grenze: keine Dx / keine Exzision / keine destruktiven Maßnahmen; DDx ärztlich | **optically not a TIME tier** (geometry, no T-chip) |
| Quiet trailing | quiet | sources / chapter chrome | after action, never before |

Geometry must make TIME stack vs SCOPE frame **self-evident**. No in-figure explanation of the ontology.

---

## Must-see elements

1. **Exceptional T1** — 112 only as vital exception; **not** a primary melanoma urgency wall  
2. **T2 ≠ T3** — separate labels and visual weight (gleichtags / eher gleichtags vs zeitnah)  
3. **ACTION inside each TIME tier** — triggers + Handlung contiguously; ACTION is not a third axis  
4. **SCOPE separate geometry** — competence boundary outside TIME; **no** form-meta caption (“keine Dringlichkeitsstufe”, “Trigger cluster”, ontology IDs, EN stage chrome)  
5. Explicit **keine destruktiven Maßnahmen** visible in T2 and/or SCOPE (copy-through)  
6. **No Treat-without-net** — T4 always pairs MSK permission with stop-and-refer on new suspicious lesion  
7. Genre chrome: illness-script / teal framework; solid red only if T1 exception is shown  

---

## Urgency / weight encoding

| tier | weight | visual intent |
|------|--------|----------------|
| T1 exception | compact danger | small solid-danger note or side strip; **not** full-page solid wall |
| T2 | loud amber / warning | full tier card — primary clinical pathway |
| T3 | cool / info, full tier | clearly quieter or differently keyed than T2, still distinct from T4 |
| T4 | primary/teal | permission + net |
| SCOPE | orthogonal frame | square corners / hairline break / content title only (`Grenze der eigenen Zuständigkeit`) |

**Default-to-Danger:** no — content does **not** default melanoma screening to 112.

---

## Branching / loop invariants

- Do **not** invent primary 112 melanoma triggers beyond vital exception stated in C  
- Do **not** omit T3 (content fills zeitnah: Hutchinson / Ugly Duckling without acute bleeding)  
- Do **not** put SCOPE as a fifth TIME rung  
- Screening reminder (gesetzliches Hautkrebs-Screening) lives in **T4/net** — not a urgency tier  
- Multi-trigger rule: T2 has several situations → **one** T2 card with internal trigger list, not fake ladder rungs  

---

## Genre chrome

- **Must look like:** illness-script decision instrument for skin red flags in Direktzugang (weighted TIME + orthogonal SCOPE)
- **Must not look like:** ACS/BLS-style 112-first Notfallkarte; operative Notfallwand; ampellike SCOPE-as-grey-step; Leitsymptom flowchart alone

---

## Claim pins (German, copy-through from C §5)

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
| SCOPE title (content) | Grenze der eigenen Zuständigkeit |
| SCOPE body | Keine Melanom-Diagnose, keine Exzision, keine destruktiven Maßnahmen an suspekten Läsionen; endgültige DDx (seborrhoische Keratose vs. Melanom) ist ärztlich |

*Pin source: monograph §5 table rows only. Do not import Erysipel/ACS clinical text. Do not invent thresholds.*

---

## Explicit non-goals / must-not

- **No form-meta inside the figure** — geometry carries TIME vs SCOPE; designer notes only outside (spike footer / Decision Note)
- No English stage titles (“Action”, “Trigger cluster”, “T5”)
- No invented primary 112 melanoma pathway
- No invented T3 thresholds beyond C (T3 is present and must stay)
- No clinical claim rewrite / no Critical Claim paraphrase as new medicine
- No production `.typ` / bookkit APIs in this Spec
- Exploration: **does not** authorize production compose or freeze bypass

---

## Presentation hypothesis (pattern name)

**`kl-urgency-scope-stack` · exceptional-T1 (Melanom / screening-style)**

TIME vertical (or priority landscape) stack: compact T1 exception → loud T2 → distinct T3 → T4 with net; SCOPE as orthogonal frame with content title only.  
Optional later ambition (not required for this unit): US-D-style meter/dashboard free vision — still same pins and invariants.

---

## Success criterion

Under scan stress the learner **recognizes** that melanoma screening is **not** a 112-first pathway, **picks** gleichtags vs zeitnah vs treat+net for the lesion pattern, **reads** the matching Handlung, and **does not** start destructive local treatment or claim melanoma diagnosis — while **seeing** SCOPE as a permanent non-tier constraint.

---

## Handoff to Graphics

- [x] Form Spec complete for this unit (exploration)
- [x] Ambition flag set (`optional` — code-first stack)
- [x] Claim pins reviewed against C §5 (copy-through)
- [ ] Free vision only if ambition raised later; claim audit every on-image label vs pins
- Visual-Unit → `medical-graphics` playbook from Stage G0; prefer **code** carrier for grammar transfer (`kl-urgency-scope-stack`)
- Transfer rule: **same geometry logic** as US stack gold; **new pins** from Melanom only; re-audit free labels (DE only)

**Not in scope here:** production Typst, catalog form-id shopping, content template rewrite, Accept record.
