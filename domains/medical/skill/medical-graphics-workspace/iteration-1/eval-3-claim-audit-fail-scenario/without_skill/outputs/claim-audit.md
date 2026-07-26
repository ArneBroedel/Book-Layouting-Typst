# Claim audit — free-vision labels (eval-3 fail scenario)

- **date:** 2026-07-26
- **mode:** without_skill
- **specs:**
  - `domains/medical/briefs/kl-melanom-abcde.form-spec.md` (U-cues / ABCDE + Ugly Duckling)
  - `domains/medical/briefs/kl-melanom-urgency.form-spec.md` (U-urgency + U-scope)
- **asset under audit:** free-vision PNG description (labels only; no PNG file)

## Method

Each free-vision label is checked against **claim pins**, **must-see**, **load risks**, and **explicit non-goals** in the two form specs. PASS only if the label is pin-true German (or an allowed zone key with correct clinical content). Form-meta, English stage titles, invented cut-offs, and invented TIME tiers fail.

---

## Per-label results

| # | Free-vision label | Spec(s) | Verdict | Rationale |
|---|---|---|---|---|
| 1 | `Action: assign derm` | abcde + urgency | **FAIL** | English stage/action chrome. Urgency non-goal: *No English stage titles*. Allowed action language is German pin text (e.g. T2: *Therapie an der Läsion stoppen; keine destruktiven Maßnahmen; gleichtags Hausarzt/Dermatologie…*; ABCDE action micro: *→ zuweisen bei Suspekt* / *rechtzeitige ärztliche Zuweisung*). “assign derm” is abbreviated EN meta, not a pin. |
| 2 | `Trigger cluster T2` | urgency | **FAIL** | English form-meta. Zone may be T2, but allowed content is the **German trigger list** (*blutende oder ulzerierte unklare Hautläsion; ABCDE-suspekte oder rasch wachsende pigmentierte Läsion; B-Symptomatik plus multiple Hautknoten*), not a UI caption “Trigger cluster”. Both specs forbid form-meta in figure. |
| 3 | `T5 Scope not urgency` | urgency | **FAIL** | Invents **T5** as if SCOPE were a TIME tier. Load risk explicitly: *SCOPE as grey “T5”*. Spec IA: SCOPE is **orthogonal** (*square frame / hairline break*), not a numbered urgency tier. Caption is form-meta about encoding, not SCOPE pin text (*Keine Melanom-Diagnose, keine Exzision, keine destruktiven Maßnahmen…*). |
| 4 | `diameter > 6mm` | abcde | **FAIL** | Wrong clinical cut-off. Must-see + pin: *Durchmesser typisch **> 5 mm*** (as in C). Load risk: *Invented cut-offs not in C (e.g. wrong mm)*. Also EN units/phrasing instead of *Durchmesser typisch > 5 mm*. |
| 5 | German `Ugly Duckling` | abcde (+ urgency T3) | **CONDITIONAL FAIL** | Specs use **Ugly Duckling** as zone/step *key*, but **allowed text** is German: *eine Läsion unterscheidet sich klar von den übrigen Nävi* (T3: *Ugly Duckling ohne akute Blutung*). Free-vision presents the English proper noun *as* the German label without pin criterion. ABCDE load risk *EN labels*; non-goal *No English-only … without DE criteria*. Alone → not pin-true. |

---

## Aggregate flags

| Flag class | Hit? | Labels |
|---|---|---|
| English Action / Trigger / stage titles | **yes** | (1) Action: assign derm; (2) Trigger cluster T2 |
| Form-meta in figure | **yes** | (2) Trigger cluster; (3) T5 Scope not urgency |
| Wrong mm cut-off | **yes** | (4) diameter > 6mm (must be > 5 mm) |
| Invented T5 / SCOPE-as-TIME | **yes** | (3) T5 Scope not urgency |
| EN-only Ugly Duckling without DE criterion | **yes** | (5) |

---

## Overall verdict

**FAIL**

0 of 5 labels fully PASS. Multiple independent pin violations: language (EN stage/action), form-meta, invented T5 geometry, wrong diameter threshold, incomplete Ugly Duckling claim.

---

## Recommended next path

| Field | Value |
|---|---|
| **realize_path** | **recreate** |
| **accept-asset** | no |
| **refine-only** | no — failures are claim/content, not polish |

### Why recreate (not refine)

Refine assumes pin-true claims with layout/visual defects. Here free-vision **misstates clinical content** (6 mm vs 5 mm), **invents ontology** (T5), and ships **EN form-meta** as labels. Rebuild labels from claim pins only:

1. **ABCDE unit** — letter cascade with DE criteria; D = *Durchmesser typisch > 5 mm*; Ugly Duckling zone + *eine Läsion unterscheidet sich klar von den übrigen Nävi*; action micro German assign pointer; no EN “Action:”.
2. **Urgency unit** — T1 exception … T4 + **SCOPE separate** (not T5); T2 triggers/actions from pin table in German; no “Trigger cluster” chrome.

Optional later: hybrid only after a pin-true code or redraw pass; do not accept this free-vision asset.
