# Gold examples — medical-graphics

Pointer index only (no asset duplicates). Learn from paths + Accept winners.

| Example | Recipe | Stages | End product | Key paths |
|---|---|---|---|---|
| **III-2 S4** Primär-Algorithmus | branching-emergency | free→code/hybrid→refine→accept | hybrid preferred; code fallback | `briefs/iii2-bls-aed.*` · `assets/iii2-bls-aed/` · `spikes/…/iii2-bls-aed/lib/primar-algorithmus.typ` |
| **IV-2 S4** Entscheidungs-Flow | leitsymptom-vertical-flow | free→recreate→refine→accept | **code** | Form Spec `iv2-….form-spec.md` · `lib/entscheidungs-flow.typ` |
| **III-5 S4** Sofortmaßnahmen | hard-stop-protocol | free→recreate→accept | **code** | Form Spec `iii5-….form-spec.md` · `lib/sofortmassnahmen.typ` |
| **II-1 S8** Pflichtsequenz | framework-os-sequence | free→recreate vertical+landscape→accept | **code** (+ landscape optional) | `lib/pflichtsequenz.typ` `layout:` |
| **IV-4 S6** Heißes Gelenk | leitsymptom-vertical-flow | free FAIL→B2→recreate→accept | **code**; refined look | `vision-refined-01.png` · `lib/entscheidungs-flow.typ` |
| **KL urgency/scope** | kl-urgency-scope-* | form-spec→code (+ free/refine US-D) | **code** | `spikes/…/kl-script-system/lib/us-*.typ` · `kl-u-urgency-scope.form-spec.md` |
| **KL mimic peel** | kl-mimic-peel | free PASS + code peel | **code** (asset optional) | `m-b-peel.typ` · `assets/kl-m-b-mimic/` |
| **KL CES saddle** | kl-spatial-saddle | free→audit PASS | **asset** | `assets/kl-ces-saddle/` |
| **KL MSCC spine** | kl-spatial-mscc | free→audit PASS | **asset** | `assets/kl-mscc-spine/` |

## Lessons by example

| Example | Learning |
|---|---|
| III-2 | Fair hybrid = labels on nodes; structure-ref kills free creativity |
| IV-2 | Gold Form Spec + vertical protocol pattern |
| III-5 | EN chrome on free → production recreate |
| II-1 | Genre OS ≠ emergency red; dual layout modes |
| IV-4 | Claim audit mandatory; free invents vitals |
| KL US-D free | EN Action/Trigger meta → refine or **code SoT** |
| KL form-meta | Never explain TIME/SCOPE separation *inside* the figure |
| KL Melanom ABCDE | free vision + illustration-semantics; surgical B/D refine → `vision-refined-02.png` |
| KL Melanom enabling | no unlabeled tempo color bar; named Evolution vs Jahre poles |
| KL Melanom urgency | exceptional-T1 strip when 112 not primary |
| KL grammar vs ambition | Track **named** per unit; default posture free-vision-ambition; grammar-only opt-in only |
| **CRPS pilot (negative harvest lesson)** | Free vision ran (mimic/cues) but code winners stayed pin-faithful without harvest port → free vision looked “unused”. Policy fix: track → harvest → hierarchy-faithful recreate + free-vision proximity Accept. Paths: `briefs/kl-crps.*` · `lib/typst/kl-wave6/crps.typ` · untracked vision PNGs under `assets/kl-crps-*` (do not treat as Accept gold). Retrofit optional later. |

## Walkthrough

Full narrative: [`../playbook/walkthrough-iv2.md`](../playbook/walkthrough-iv2.md)

## Eval report

`dist/spikes/graphics/_eval/eval-batch-2026-07-22.md`
