# Claim audit — kl-melanom-abcde

- **winner asset:** `domains/medical/assets/kl-melanom-abcde/vision-refined-02.png`  
- **provenance:** free-01 → refined-01 (B+D attempt) → refined-02 (D scale fix)  
- **form_spec:** `domains/medical/briefs/kl-melanom-abcde.form-spec.md`  
- **vision:** `domains/medical/briefs/kl-melanom-abcde.vision.md`  
- **date:** 2026-07-26  
- **auditor:** graphics + Human surgical review  
- **structure_reference:** none  

## Human surgical notes (applied)

| Issue | Fix |
|---|---|
| **B** showed sharp star/jagged hard edge | Refined to soft, feathered, poorly defined border (fade into skin) |
| **D** scale labeled 5 mm but mole looked ≪ 5 mm, then equated mole = 5 mm | Refined-02: short vertical **5 mm reference bar** clearly shorter than lesion diameter + horizontal `> 5 mm` on lesion |

## On-image labels vs pins (refined-02)

| Label on image | Pin match | Verdict |
|---|---|---|
| Strukturierter Blick · ABCDE · Ugly Duckling | title | **PASS** |
| A · Asymmetrie | A | **PASS** |
| B · unscharfe/unregelmäßige Begrenzung + soft edge graphic | B | **PASS** (illustration matches unscharf) |
| C · Farbvielfalt (Color) | C | **PASS** |
| D · Durchmesser typisch > 5 mm + ref bar shorter than lesion | D | **PASS** (scale honest) |
| E · Evolution | E | **PASS** |
| Ugly Duckling + pin sentence | Ugly Duckling | **PASS** |
| Zuweisung / keine Biopsie · Kürettage · destruktiven Maßnahmen | Forbidden / action | **PASS** |

## Overall

**PASS** (post Human refine)

## realize_path

| path | note |
|---|---|
| **accept-asset (exploration)** | `vision-refined-02.png` |
| free-01 | composition provenance only |
| code recreate | pin-editable fallback |

## H-Gfx / production

Still exploration. Production print needs DPI + optional H-Gfx for clinical depiction risk.
