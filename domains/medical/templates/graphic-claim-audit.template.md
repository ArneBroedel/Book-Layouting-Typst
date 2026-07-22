# Graphic Claim Audit (Stage G2)

- **chapter_id / slug:**
- **unit_id:**
- **form_spec_path:**
- **vision_path / image:** (PNG/SVG audited)
- **auditor_role:** graphics
- **date:**

> **Mandatory** after free vision and before `accept-asset`.  
> Prefer recreate when drift is severe. Skill: `medical-graphics` playbook `03-claim-audit.md`

## Verdict

| result | meaning |
|---|---|
| **PASS** | All labels match claim pins / C |
| **DRIFT** | Fixable (EN chrome, minor wording) → B2 refine or recreate |
| **FAIL** | Invented clinical content / thresholds → never accept-asset until fixed |

**This audit:** PASS | DRIFT | FAIL

## Label checklist

| on-image text (transcribe) | pin / C match? | issue |
|---|---|---|
| | yes/no | |

## Structural checks

- [ ] No invented numbers / vitals / doses / cut-offs
- [ ] German only (no EN stage titles STOP/ASSESSMENT/…)
- [ ] Branch/loop invariants from Form Spec still true
- [ ] Genre chrome correct (not wrong emergency wall)
- [ ] Escape paths short (if specified)

## Action

| If | Then |
|---|---|
| PASS | Proceed R1 recreate and/or R3 refine; asset eligible if gates OK |
| DRIFT | Surgical B2 notes +/or recreate claim layer |
| FAIL | Recreate only for production claims; free = composition provenance |

## Notes

-
