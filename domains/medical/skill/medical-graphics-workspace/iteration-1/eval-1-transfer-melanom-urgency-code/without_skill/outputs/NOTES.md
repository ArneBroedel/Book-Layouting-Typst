# NOTES — Melanom urgency/scope recreate (without_skill)

## Source

- **Form Spec:** `domains/medical/briefs/kl-melanom-urgency.form-spec.md`
- **Geometry reference:** `toolset/compose/spikes/graphics/kl-script-system/lib/us-time-scope.typ`
- **Pins:** claim table in Form Spec (German copy-through)

## Transfer decisions

| Decision | Rationale |
|---|---|
| **Exceptional T1** as compact left-bar strip (`T1 · Ausnahme`), not solid-header danger wall | Spec: screening chapter must not look ACS/BLS 112-first; “typischerweise nicht primär 112” |
| **T2 amber full tier** with triggers + Handlung | Primary clinical weight (gleichtags / Blutung-Ulzeration / B-Symptome+Knoten) |
| **T3 cool/info full tier** distinct from T2 | Zeitnah row present in content (Hutchinson / Ugly Duckling ohne Blutung) — must not collapse into T2 |
| **T4 teal** treat + net + screening hint | Permission with return-stop; screening is net, not a TIME tier |
| **SCOPE** hairline break + square double-feel frame, no T-chip | Orthogonal Zuständigkeitsgrenze; no form-meta caption (“keine Dringlichkeitsstufe”) |
| **„keine destruktiven Maßnahmen“** in T2 action *and* SCOPE | Spec must-see; T2 clinical stop + SCOPE hard boundary |
| Labels German only (`Handlung:`, tier titles) | No English Action/Trigger stage titles |

## Weight encoding

`T1 quiet-strong exception < T2 loud ≥ T3 medium-loud > T4 medium`; SCOPE quiet-strong border after stack.

## Files

- `melanom-urgency.typ` — exports `us-melanom()`, plus helpers `time-tier`, `t1-exception`, `scope-frame`
- `spike-recreate.typ` — minimal page that imports and renders `us-melanom()`
- `melanom-urgency.pdf` — optional compile artifact

## Compile

From repo root:

```bash
typst compile --root . --ignore-system-fonts --font-path fonts \
  domains/medical/skill/medical-graphics-workspace/iteration-1/eval-1-transfer-melanom-urgency-code/without_skill/outputs/spike-recreate.typ \
  domains/medical/skill/medical-graphics-workspace/iteration-1/eval-1-transfer-melanom-urgency-code/without_skill/outputs/melanom-urgency.pdf
```

## Success criterion (Spec)

Under scan stress the learner picks gleichtags vs zeitnah vs treat+net and does **not** start destructive local treatment or claim melanoma diagnosis.
