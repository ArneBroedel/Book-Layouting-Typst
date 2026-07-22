# Medical Presentation Forms — pädagogische Formensprache

**Encoded in skill:** `media-brief` (Form Spec), `medical-graphics` (realize)  
**Audience:** Media + Graphics humans/agents needing the *why* of presentation choices  
**Not:** Typst APIs, form-id shopping, clinical claim authorship

---

## 1. Purpose

Before any Free Vision or Typst module, Media specifies the **hypothetically best medical-pedagogical presentation** so that Graphics can visualize without re-inventing pedagogy or claims.

The operational artifact is the **Form Spec**:  
`domains/medical/briefs/<slug>.form-spec.md`  
(template: `domains/medical/templates/form-spec.template.md`)

---

## 2. Unit types → presentation pressure

| Type | Learner job | Typical load risk | Form pressure |
|---|---|---|---|
| danger | stop | buried gatekeeper | One loud stop early |
| recognition | recognize | prose wall | Cue cluster, high contrast |
| decision | choose | equal weights | Branches / urgency lanes |
| procedure | execute | unordered list | Numbered step weight |
| comparison | distinguish | DDx essay | Short dual column after action |
| mechanism | understand | decoration without labels | Schema + contiguity |
| reference | look up | opener competition | Trailing quiet |

Source reasoning detail: `domains/medical/skill/media-brief/references/design-reasoning.md`.

---

## 3. Zone architecture

Every ambitious unit should declare **zones** with loudness:

1. **Primary** — one job (stop / first step / binary rule)  
2. **Sequence / branch body** — ordered or dual path  
3. **Residual risk** — Default-to-Danger, Verbote, Safety-Net  
4. **Escape** — side path (BLS, master link) — short  
5. **Quiet** — links, sources — never before action  

**Loudness = urgency**, not source-file order.

---

## 4. Must-see vs nice-to-have

Form Spec **Must-see** items are non-negotiable for Accept proximity:

- Order visible as order  
- Danger steps not equal to treat rows  
- Binary rules / hard stops not buried  
- Claims only as pinned  

Graphics free vision may add chrome; it may **not** drop Must-see.

---

## 5. Claim pins

Pins are **copy-through** from Content C / approved pilot:

| step/zone | allowed German text |

No paraphrase of 112 vs ED thresholds. No invented ml/cut-offs.  
Free vision that invents clinical text **fails claim audit** even if composition is excellent (IV-4 lesson).

---

## 6. Genre chrome

| Genre | Visual expectation |
|---|---|
| notfall-karte | Stress protocol, hard stops, loud danger |
| leitsymptom | Ordered triage path, split urgency |
| lerntext / method OS | Teal framework; **not** solid red emergency wall |

Wrong chrome is a pedagogy error, not taste (II-1).

---

## 7. Pattern names (hypotheses)

Use prose names in Brief/Form Spec (not catalog form ids):

- hard-stop protocol  
- leitsymptom vertical flow  
- branching emergency  
- framework OS sequence  
- urgency lanes / dual coding schema / cue cluster / …  

Graphics maps names → recipes:  
`domains/medical/skill/medical-graphics/playbook/09-form-recipes.md`

---

## 8. Dual coding & contiguity

- Labels near referents (not foot-only legends)  
- Complementary channels (structure + short text), not redundant dual essays  
- Layout can reduce *extraneous* load; it cannot invent clinical simplification  

---

## 9. Success criterion

Every Form Spec ends with:

> Under scan stress the learner **recognizes X** and **does Y**.

Accept and A/B score against that criterion, not “prettiest PNG”.

---

## 10. Gold Form Specs

- `domains/medical/briefs/iv2-rueckenschmerz-neuro.form-spec.md`  
- `domains/medical/briefs/iii5-cauda-notfallkarte.form-spec.md`  

---

## Related

- Media skill: `domains/medical/skill/media-brief/`  
- Graphics playbook: `domains/medical/skill/medical-graphics/playbook/`  
- Graphics why: `Guides/Medical-Graphics-Playbook.md`
