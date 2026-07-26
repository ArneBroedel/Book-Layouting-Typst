# KL Form Language — Krankheitslehre presentation system

**Audience:** Media, Graphics, Tech agents/humans designing illness-script monographs (Teil V/VI, kl-kurz / kl-voll).  
**Normative procedures:** skills `media-brief` + `medical-graphics` (refs below).  
**This guide:** the *why* and the *operating model* — clear enough to reuse, open enough to invent.

---

## 1. What this is for

Kursbuch Krankheitslehre monographs teach **recognize → reason → triage in Direktzugang**.  
They are **not** operative Notfallkarten (III) and not Leitsymptom-flows (IV) alone. They *justify* urgency; III/IV *execute*.

The form language gives every chapter:

1. A **stable grammar** so TIME, SCOPE, discrimination, and mimic do not get invented differently each time  
2. A **creativity slot** so each chapter can still surprise (spatial, peel, mnemonic, free vision)  
3. A **transfer path** so the next monograph reuses recipes with new claim pins

Success is not “pretty PDF”. Success is: under scan stress the learner **recognizes the right job** and **does the right next step** — without reading form-theory inside the figure.

---

## 2. Non-negotiables (short)

These protect pedagogy. They do **not** prescribe layout chrome.

| # | Rule | Why |
|---|------|-----|
| 1 | **TIME ≠ SCOPE** | Urgency (how fast) and competence boundary (what you may not own) are different jobs. Mixing them produces false “grey urgency steps”. |
| 2 | **ACTION lives inside TIME** | Triggers + Handlung sit *in* a tier. ACTION is not a third axis next to TIME/SCOPE. |
| 3 | **Multi-triggers stay in one tier** | Many 112 rows → one T1 card with an internal list, not a fake ladder. |
| 4 | **No form-meta in the figure** | Geometry must carry the distinction. Forbidden inside art: “keine Dringlichkeitsstufe”, ontology IDs, EN stage titles (“Action / Trigger cluster”). Content titles are fine (`Grenze der eigenen Zuständigkeit`). |
| 5 | **Claim pins = copy-through from Content C** | Layout may not invent thresholds, doses, or tier text. Missing clinical content → Author (C), not Graphics. |
| 6 | **Genre chrome matches genre** | Illness-script / lerntext = teal framework; **solid red only on real T1 (112)**. Not every KL page is a Notfallkarte. |
| 7 | **§3 = four equal channels; §4 = three relations sequential** | No fake cue-matrix as diagnosis tool; no single 2×2 for for/against + must-not-miss + mimic. |
| 8 | **No Treat-without-net** | T4 always pairs permission with return precautions when content says so. |

If a free vision breaks (1)–(5), it fails claim/form audit even if it looks stunning.

---

## 3. Grammar first, then ambition

```text
1. Invariants hold (section 2)
2. Band grammar units → reliable, transferable code
3. Per chapter: ≥1 ambitious unit when the job earns it
```

| Track | Typical units | Default carrier | Creativity |
|-------|---------------|-----------------|------------|
| **Grammar** | U-urgency+scope, U-for-against + must-not-miss, U-mimic map, U-cues, U-mechanism chain, U-enabling, U-bigpicture, U-transfer | **code** (Typst/CeTZ modules) | Composition quality, density, typography — not chaos |
| **Ambition** | Spatial anatomy (CES/MSCC), peel/mask mimic, novel dashboard, ABCDE-style mnemonic map | free vision → **claim audit** → code / hybrid / asset | High — invent *form*, not clinical text |

**Skipping grammar for pretty free vision** → Phase-1-class failures (empty space, mixed dimensions, form-meta).  
**Stopping at grammar only** → clean but uninspired (Human feedback after P1).

Both tracks are legitimate. Ambition is expected when a unit’s job is recognition-by-form (saddle anatomy, letter mnemonic, peel of false frames).

---

## 4. Operating model (one monograph)

| Step | Owner | Do | Don’t |
|------|--------|----|--------|
| **R** Relation map | Media | Map content units to ontology jobs | Rewrite manuscript |
| **C** Form-Space | Media | ≥3 valuable + ≥2 rejected paths for *new* unit types | Catalog form-id shopping |
| **M** Form Spec | Media | Zones, Must-see, pins, genre, success criterion | bookkit APIs in Spec |
| **G** Realize | Graphics | Free vision (if ambition) → **claim audit** → recreate/hybrid/refine | Accept-asset on audit FAIL |
| **A** Accept | Media | Proximity to Form Spec / ideal | Accept monotony because compile green |
| **O** Transfer | both | Same recipe, **new pins**, re-audit free labels | Copy Erysipel clinical text into Melanom |
| **h** Mini-harvest | both | New durable pattern → form library + recipe | Leave one-offs undocumented |

Exploration (`brief_class: exploration`) may run before content freeze. It never authorizes production compose alone.

---

## 5. How to start the next chapter (checklist)

```text
1. media-brief: load ontology + form-space process
2. Read C monograph read-only → unit list (Script 1–6)
3. medical-graphics: open kl-form-library → transfer or gap?
4. For each unit: transfer pins into existing recipe  OR  Form Spec if new/ambitious
5. Realize under kl-script-system (or chapter spike dir)
6. Claim-audit free labels; German only in production graphics
7. Accept exploration (Media)
8. If a new durable pattern appeared → append kl-form-library + playbook recipe
```

**Transfer rule:** change **pins and titles**, keep **geometry logic**.  
**Gap rule:** if Melanom needs ABCDE as a *form*, write a Form Spec — do not force ABCDE into a generic table forever.

---

## 6. Creativity: what is free, what is not

### Free (encouraged)

- Spatial composition, metaphor, peel/mask, meter/dashboard layouts  
- CeTZ/Fletcher diagrams, dual coding, onset bars, case stages  
- Free vision PNGs as **composition prototypes**  
- Novel recipes when learner job demands it (document → harvest)  
- Quiet decorative accents that do not invent clinical meaning  

### Not free (clinical / epistemic)

- Inventing 112 vs gleichtags thresholds  
- Inventing T3 when content has no T3 row (omit the slot)  
- Explaining the ontology *inside* the figure  
- English stage chrome or decorative fake vitals  
- Flattening T1 and T2 into one “Notfall” blob  
- Putting SCOPE as a fifth traffic-light rung  

Creativity serves the **learner job**. Drama that invents content fails Accept.

---

## 7. TIME / SCOPE at a glance

| TIME | Label sense | Visual weight |
|------|-------------|---------------|
| T1 | 112 / Sofort | Solid danger when present and real |
| T2 | Notaufnahme / gleichtags / noch heute | Loud amber — distinct from T1 |
| T3 | Zeitnah Arzt | Medium — **optional**; collapse if empty |
| T4 | Behandeln + Sicherheitsnetz | Teal permission with net |

**SCOPE** = competence boundary (e.g. no diagnosis, no excision) — **optically outside** the TIME stack (different geometry: frame, hairline break, square corners).  
If content says “112 typically not primary” (e.g. Melanom screening), do **not** fake a loud empty T1 wall: show an **exception strip** or omit T1 when content de-emphasizes it — still no inventing emergency content.

---

## 8. Unit → form jobs (library entry points)

| Content role | Ontology unit | Typical form job | Library recipe |
|--------------|---------------|------------------|----------------|
| Handeln & Dringlichkeit | U-urgency + U-scope | choose + constrain | `kl-urgency-scope-stack` / dashboard |
| Multi-112 list | multi-trigger ∈ T1 | one stop card | `kl-urgency-nested-t1` |
| Erhärtet / passt nicht | U-for-against | distinguish | `kl-discrimination` (FA) |
| Nicht übersehen | U-must-not-miss | stop-awareness | `kl-discrimination` (NM) |
| Trügerische Erklärungen | U-mimic | distinguish error | `kl-mimic-map` / peel |
| Klinische Hinweise | U-cues | recognize (4 channels) | `kl-cues-table` |
| Entstehung | U-mechanism | understand | `kl-mechanism-chain` |
| Wann denken? | U-enabling | recognize context | `kl-enabling-triptych` |
| Big Picture | U-bigpicture | orient | `kl-bp-three-beat` |
| Fall | U-transfer | apply | `kl-transfer-case` |
| Spatial red-flag anatomy | — | stop + locate | `kl-spatial-saddle` / `kl-spatial-mscc` |
| Structured look mnemonic | (chapter-specific) | recognize criteria | e.g. Melanom ABCDE — transfer or new recipe |

Full tables: `domains/medical/skill/medical-graphics/references/kl-form-library.md`.

---

## 9. Free vision → audit → carrier

```text
Form Spec (Must-see + pins [+ icon meaning if criteria-by-picture])
    → free vision (composition freedom)
    → claim audit: labels vs pins  AND  illustration-semantics
    → if icon/scale DRIFT: surgical refine (tile-scoped notes), re-audit
    → if PASS: code | hybrid | asset (with gates)
    → if FAIL: recreate owns claims; free stays provenance only
```

**Prefer code** when quality ≈ free (maintainable, pin-editable).  
**Prefer asset/hybrid** when spatial chrome or **criteria-by-picture** is the pedagogy (saddle, spine, peel, ABCDE) and audit PASS.

Never treat foot-legend-only hybrid as equal to a true flowchart.

### Illustration-semantics (Melanom lesson)

Text pins can be perfect while the **drawing teaches the wrong criterion**:

| Label says | Drawing must show | Not this |
|------------|-------------------|----------|
| unscharfe Begrenzung | soft, poorly defined edge | sharp star / hard zigzag |
| typisch > 5 mm | object larger than a true 5 mm reference | 5 mm label on a tiny blob |
| Evolution Wochen–Monate | named clinical contrast | unlabeled rainbow bar |

**Human review** is especially valuable on icon units; agents still run the icon checklist before Accept. Surgical refine beats full re-generation when layout is already good.

### Transfer hygiene

Copy **geometry logic**, not decorative leftovers. An Erysipel onset spectrum is not automatic Melanom tempo chrome. If a bar cannot be read without a secret legend, replace it with **explicit poles** or delete it.

---

## 10. Anti-patterns (learned the hard way)

| Anti-pattern | Fix |
|--------------|-----|
| Scope as fourth ladder step | Orthogonal frame / geometry |
| Form-meta captions in figure | Delete; fix geometry |
| EN chrome / “Trigger cluster” | DE content titles only; code SoT if needed |
| 2×2 for entire §4 | Sequential: for/against → must-not-miss → mimic |
| Box monotony Accept | Ambition slot + Accept rubric honesty |
| Copying Erysipel text into new chapter | Pins from *this* monograph only |
| Free vision without Form Spec on ambitious unit | Write Spec first |
| Label PASS, wrong icon | Illustration-semantics audit + surgical refine |
| Unlabeled tempo/urgency color bar | Named poles or omit |
| Loud empty T1 on non-112 pathways | Exception strip (`kl-urgency-exception-t1`) |

---

## 11. Where knowledge lives

| Need | Path |
|------|------|
| Ontology (TIME/SCOPE, invariants) | `domains/medical/skill/media-brief/references/kl-illness-script-ontology.md` |
| Process R→C→M→G→A→O | `…/kl-form-space-process.md` |
| Form library (recipes, modules, assets) | `domains/medical/skill/medical-graphics/references/kl-form-library.md` |
| Playbook recipes | `…/playbook/09-form-recipes.md` |
| Form Spec / Brief / Accept templates | `domains/medical/templates/` |
| Spike demo | `toolset/compose/spikes/graphics/kl-script-system/` |
| Exploration provenance | `domains/medical/briefs/_explorations/` |
| Active track | `devtracks/kl-form-language/` |
| Presentation forms (general) | `Guides/Medical-Presentation-Forms.md` |
| Graphics why (general) | `Guides/Medical-Graphics-Playbook.md` |

**Load order for agents:** ontology → process → form library → Form Spec of the unit you touch.

---

## 12. Transfer examples

| Chapter | Grammar transfer | Ambition slot |
|---------|------------------|---------------|
| Erysipel (demo) | US stack, discrimination, mimic, full script-core | M-B peel, US-D dashboard |
| ACS | multi-T1 nested urgency | optional spatial ischemia story |
| Melanom | US stack with weak/exceptional T1; discrimination; mimic | **ABCDE + Ugly Duckling** recognition form |
| CES / MSCC | — | spatial anatomy free vision |
| Suizidalität | chrome + urgency (genre careful) | safety-first layout, not decorative |

After each successful transfer: mini-harvest any *new* durable geometry into the form library.

---

## 13. One sentence to keep

> **Hold the grammar so chapters transfer; open the ambition so chapters live.**

Form Specs name the job. Free vision invents the picture. Pins keep medicine honest. Geometry — not captions — teaches TIME vs SCOPE.
