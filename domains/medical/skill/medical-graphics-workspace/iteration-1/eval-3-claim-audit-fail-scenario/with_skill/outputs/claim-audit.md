# Graphic Claim Audit (Stage G2)

- **chapter_id / slug:** V-10 Melanom / `kl-melanom-abcde` + `kl-melanom-urgency`
- **unit_id:** U-cues (ABCDE) + U-urgency / U-scope (joint free-vision claims)
- **form_spec_path:**
  - `domains/medical/briefs/kl-melanom-abcde.form-spec.md`
  - `domains/medical/briefs/kl-melanom-urgency.form-spec.md`
- **vision_path / image:** free-vision PNG description (no asset path — label transcription only)
- **auditor_role:** graphics
- **date:** 2026-07-26
- **skill / playbook:** `medical-graphics` · `playbook/03-claim-audit.md`

> **Mandatory** after free vision and before `accept-asset`.  
> Prefer recreate when drift is severe. Production claims must match C pins; free vision is composition provenance only when FAIL.

## Verdict

| result | meaning |
|---|---|
| **PASS** | All labels match claim pins / C |
| **DRIFT** | Fixable (EN chrome, minor wording) → B2 refine or recreate |
| **FAIL** | Invented clinical content / thresholds → never accept-asset until fixed |

**This audit:** **FAIL**

| | |
|--|--|
| **Overall** | **FAIL** |
| **accept-asset** | **forbidden** until production claim layer is rebuilt from pins |
| **realize_path recommend** | **recreate** (Typst / code SoT from claim pins). Free PNG = composition inspiration only — not production claims. Optional surgical refine of chrome is insufficient while invented mm-threshold and T5 ontology remain. |
| **Clinical invent** | yes — diameter **> 6 mm** (C pin: typisch **> 5 mm**); **T5** as SCOPE tier |
| **Form-meta / EN** | yes — `Action:`, `Trigger cluster`, `T5 Scope not urgency` |

## Label checklist

| on-image text (transcribe) | pin / C match? | PASS/FAIL | issue |
|---|---|---|---|
| `Action: assign derm` | **no** | **FAIL** | English stage title **Action:** is form-meta / EN chrome (skill MUST: DE only; no EN Action/Trigger cluster). Clinical action must copy-through German pins (e.g. T2: *Therapie an der Läsion stoppen; keine destruktiven Maßnahmen; gleichtags Hausarzt/Dermatologie…*; ABCDE micro: *→ zuweisen bei Suspekt* / *rechtzeitige ärztliche Zuweisung*). Abbreviated EN *assign derm* is not a pin. |
| `Trigger cluster T2` | **no** | **FAIL** | English **Trigger cluster** is form-language meta, not learner-facing content. Ontology ID *T2* as chrome is form-meta. Pin allows concrete DE triggers (*blutende oder ulzerierte unklare Hautläsion; ABCDE-suspekte oder rasch wachsende pigmentierte Läsion; B-Symptomatik plus multiple Hautknoten*) — not a meta caption. |
| `T5 Scope not urgency` | **no** | **FAIL** | **Invented T5.** SCOPE is orthogonal to TIME, not a fifth urgency tier. Form Spec load risk explicitly: *SCOPE as grey “T5”*; must-see: *SCOPE separate geometry; **no** form-meta caption*. EN sentence *Scope not urgency* is designer form-language legend inside the figure (forbidden). Pin SCOPE text: *Keine Melanom-Diagnose, keine Exzision, keine destruktiven Maßnahmen…* |
| `diameter > 6mm` | **no** | **FAIL** | **Invented cut-off.** ABCDE pin D: *Durchmesser typisch **> 5 mm*** (from C). *6 mm* is wrong clinical threshold; also EN *diameter* instead of *Durchmesser*. Form Spec load risk: *Invented cut-offs not in C (e.g. wrong mm)*. |
| `Ugly Duckling` (as German-context label) | **partial** | **DRIFT** (not invent) | Eponym **Ugly Duckling** appears in C / pins (ABCDE + T3). Name alone is not invention. Still incomplete if only EN eponym without DE criterion pin: *eine Läsion unterscheidet sich klar von den übrigen Nävi* (and T3: *Ugly Duckling ohne akute Blutung* when in urgency unit). Not enough to salvage overall PASS. |

### Per-label summary

| Label | Verdict |
|---|---|
| Action: assign derm | **FAIL** |
| Trigger cluster T2 | **FAIL** |
| T5 Scope not urgency | **FAIL** |
| diameter > 6mm | **FAIL** |
| Ugly Duckling | **DRIFT** (pin-known eponym; needs DE criterion) |
| **Overall** | **FAIL** |

## Structural checks

- [ ] **No invented numbers / vitals / doses / cut-offs** — **FAIL:** `diameter > 6mm` vs pin `> 5 mm`
- [ ] **German only (no EN stage titles STOP/ASSESSMENT/…)** — **FAIL:** `Action:`, `Trigger cluster`, `diameter`, `Scope not urgency`
- [ ] **Branch/loop invariants from Form Spec still true** — **FAIL:** SCOPE cast as **T5** (TIME-tier invention); action text not pin-true
- [ ] **Genre chrome correct (not wrong emergency wall)** — not fully assessable from labels alone; EN meta already wrong genre for illness-script DE instrument
- [ ] **Escape paths short (if specified)** — n/a / not shown in transcribed labels
- [ ] **No form-meta in figure** — **FAIL:** Action / Trigger cluster / “T5 Scope not urgency”
- [ ] **Ugly Duckling job present with DE meaning** — incomplete (eponym only)

## Action

| If | Then |
|---|---|
| PASS | Proceed R1 recreate and/or R3 refine; asset eligible if gates OK |
| DRIFT | Surgical B2 notes +/or recreate claim layer |
| **FAIL** | **Recreate only for production claims; free = composition provenance** |

### This unit — next steps

1. **Do not** `accept-asset` on this free vision.
2. **realize_path:** **`recreate`** from Form Spec claim pins (code-first per ABCDE ambition *code first for pin safety*; urgency recipe `kl-urgency-scope-stack` / exceptional-T1).
3. Use free vision only for **layout/composition** ideas (letter cascade, tier cards, SCOPE frame geometry) after claim layer is DE pin-true.
4. **Refine** alone is **not** recommended as primary path: wrong mm threshold + invented T5 are clinical/ontology invents, not chrome polish. If a refined PNG is attempted, it still requires a fresh claim audit and must not ship without PASS.
5. After recreate: re-audit → only then Decision Note / Media Accept.

## Notes

- Cross-unit free vision mixed ABCDE (U-cues) and urgency/SCOPE (U-urgency) chrome; both Specs forbid EN form-meta and invented thresholds.
- Closest prior lesson: US-D free vision **DRIFT** on `Action:` / `Trigger cluster` — here escalated to **FAIL** by **6 mm** invent + **T5** invent.
- Production labels must stay inside pin tables of `kl-melanom-abcde.form-spec.md` and `kl-melanom-urgency.form-spec.md` only.
