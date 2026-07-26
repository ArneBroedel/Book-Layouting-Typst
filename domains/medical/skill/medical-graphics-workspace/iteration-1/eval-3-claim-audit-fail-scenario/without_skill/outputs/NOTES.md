# NOTES — eval-3 claim-audit-fail-scenario (without_skill)

## Scope

- Did **not** read medical-graphics or media-brief skill bodies.
- Pins taken only from:
  - `domains/medical/briefs/kl-melanom-abcde.form-spec.md`
  - `domains/medical/briefs/kl-melanom-urgency.form-spec.md`
- Outputs written only under `without_skill/outputs/`.

## Inputs audited

Free-vision claimed labels (from eval prompt):

1. `Action: assign derm`
2. `Trigger cluster T2`
3. `T5 Scope not urgency`
4. `diameter > 6mm`
5. German `Ugly Duckling`

## Outcome

- **Overall: FAIL** (matches eval assertion `overall-fail`).
- Flagged EN Action/Trigger form-meta; wrong 6 mm vs pin 5 mm; invented T5 for SCOPE.
- Ugly Duckling: zone key exists in specs, but free-vision treats EN term as full German label without DE pin text → conditional fail.
- **realize_path: recreate** (not accept-asset; not refine-only).

## Files

- `outputs/claim-audit.md` — full PASS/FAIL table, flags, verdict, path.
- `outputs/NOTES.md` — this file.
