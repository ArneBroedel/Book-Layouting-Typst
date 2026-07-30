# Medical Presentation Forms — pädagogische Formensprache

**Encoded in skill:** `media-brief` (Form Spec), `medical-graphics` (realize)  
**Audience:** Media + Graphics humans/agents needing the *why* of presentation choices  
**Not:** Typst APIs, form-id shopping, clinical claim authorship

---

## 1. Purpose

Before any Free Vision or Typst module, Media specifies the **hypothetically best medical-pedagogical presentation** so that Graphics can visualize without re-inventing pedagogy or claims.

The operational artifacts are:

1. **Form Spec** — zones, Must-see, claim pins, genre chrome  
   `domains/medical/briefs/<slug>.form-spec.md`  
2. **Design Contract** — atom-level justification (every color, arrow, chrome) + **simple alternative** doctrine  
   `domains/medical/templates/design-contract.template.md`  
3. **Design Critique** — adversarial pass until **Design CLEAN**  
   `domains/medical/templates/design-critique.template.md`

Process: `devtracks/design-quality-system/`.  

**Doctrine (intensity continuum, not binary):** use the **lowest** form intensity that earns clear teaching gain under book density:

| L | Form |
|---|---|
| L0 | Plain prose |
| L1 | Structured text (lists) |
| L2 | Formatted text (semantic color / weight) |
| L3 | Panel text (backgrounds, accent bars, quiet icons) |
| L4 | Schematic structure (relation-encoding grids/rows) |
| L5 | Complex diagram |
| L6 | Free vision / pictorial raster / hybrid |

**L2–L3 is the default middle path** — first-class, not a failed compromise. Climb only for a named cognitive win; step down when there is no Mehrwert. Full ladder: `domains/medical/skill/media-brief/references/form-intensity-ladder.md`. Unjustified chrome is theater; sparse full-page figures for thin content are process failures.

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
- KL: `kl-u-urgency-scope.form-spec.md`, `kl-u-mimic.form-spec.md`, `kl-ces-saddle.form-spec.md`  
- KL transfer: `kl-melanom-urgency.form-spec.md`, `kl-melanom-abcde.form-spec.md`  

---

## 11. Krankheitslehre (Illness Script)

For Teil V/VI monographs, use the dedicated form language:

**Guide (why + operating model):** [`Guides/KL-Form-Language.md`](KL-Form-Language.md)

Hold **grammar** (TIME≠SCOPE, pins, no form-meta) so chapters transfer; open **ambition** (spatial, ABCDE, peel) so chapters live. Creativity invents *form*, not clinical text.

---

## Related

- Media skill: `domains/medical/skill/media-brief/`  
- Graphics playbook: `domains/medical/skill/medical-graphics/playbook/`  
- Graphics why: `Guides/Medical-Graphics-Playbook.md`  
- KL form language: `Guides/KL-Form-Language.md`
