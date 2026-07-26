# NOTES — eval-3 claim-audit-fail-scenario (with_skill)

**Skill:** medical-graphics · playbook `03-claim-audit.md`  
**Date:** 2026-07-26  
**Outputs:** `claim-audit.md` only (+ this NOTES)

## Result

- **Overall claim audit:** **FAIL**
- **accept-asset:** no
- **realize_path:** **recreate** (not refine-as-primary; not accept-asset)

## Why FAIL (assertions)

| Assertion | Covered |
|---|---|
| overall-fail | Overall **FAIL** (not PASS) |
| flags-en-meta | Flagged EN `Action:` / `Trigger cluster` + form-meta `T5 Scope not urgency` |
| flags-wrong-mm-or-t5 | Flagged `diameter > 6mm` (pin: > 5 mm) and invented **T5** SCOPE |
| realize-path | Recommends **recreate**; free PNG = composition provenance only |

## Per-label

| Label | Verdict |
|---|---|
| Action: assign derm | FAIL (EN Action + non-pin action text) |
| Trigger cluster T2 | FAIL (EN form-meta / ontology chrome) |
| T5 Scope not urgency | FAIL (invented T5 + form-language legend) |
| diameter > 6mm | FAIL (wrong mm threshold + EN) |
| Ugly Duckling | DRIFT (eponym in C; needs DE criterion text) |

## Pins used

- `domains/medical/briefs/kl-melanom-abcde.form-spec.md` (D: > 5 mm; Ugly Duckling DE criterion; no EN-only; no form-meta)
- `domains/medical/briefs/kl-melanom-urgency.form-spec.md` (T2 triggers/action DE; SCOPE not a TIME tier; no EN stage titles; no form-meta)

## Boundary

No production asset accept. No clinical claim rewrite beyond audit against C pins. No chapter compose.
