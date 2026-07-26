# NOTES — kl-melanom-urgency Form Spec (without_skill)

## Source

- Monograph: `Kursbuch5/.../chapter-v-10-melanom-abcde-hautscreening.md`
- Pins: **§5 Handeln und Dringlichkeit only** (table rows 112 → Zuständigkeitsgrenze)
- Deliverable path: `.../without_skill/outputs/`
- Skills: **not used** (exploration eval arm)

## Design choices

1. **Exceptional T1:** §5 states 112 is typically *not* primary in Melanom screening; only vital Bedrohungs-Begleitlage. Spec de-emphasizes T1 visually so learners do not EMS-default.
2. **TIME ≠ SCOPE:** Five table rows map to four TIME rungs + one always-on SCOPE rail (Zuständigkeitsgrenze is not a clock speed).
3. **T2 vs T3:** Kept distinct (gleichtags–zeitnah + bleeding/ABCDE/B-symptoms vs zeitnah Hutchinson/Ugly Duckling without acute bleeding).
4. **German copy-through:** Anchors include `keine destruktiven Maßnahmen`, `ABCDE-suspekt`, `Hutchinson-Zeichen`, `Ugly Duckling`, written „Melanom-DDx / ABCDE-suspekt?“.
5. **No form-meta in figure:** Ontology labels (U-urgency, zone IDs, pin IDs) are authoring-only; geometry carries TIME vs SCOPE.
6. **brief_class: exploration** — form family recommendation + anti-patterns; no production `.typ`.

## Assertion self-check (eval_metadata)

| ID | Status |
|----|--------|
| has-zones | §2 zones table Z0–Z4 |
| has-must-see | §3 M1–M8 (exceptional T1, T2≠T3, SCOPE separation) |
| pins-german-copythrough | §4 pin tables |
| no-form-meta-instruction | §6 + M8 + anti-pattern 4 |
| no-production-typst | Form Spec markdown only |
| exceptional-t1 | §5 TIME model + M1 + P-T1 |
| success-criterion | §10 learner success criterion |

## Out of scope intentionally

- §§1–4 clinical detail, §6 self-check case, DDx-Minimal table
- Free-vision PNG / Typst spike / compose chapter
