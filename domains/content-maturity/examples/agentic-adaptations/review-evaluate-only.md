# Content Review Report

```yaml
chapter_id: demo-anaphylaxis-lite
content_path: domains/content-maturity/fixtures/demo-anaphylaxis-lite/content.md
content_revision_reviewed: "sha256:ac36fcc625f82cd18d3d72772ca0802b14fce836b6bd63bcc127720c78068777"
profile: core
reviewer: content-review-gold-evaluate
date: 2026-07-20
round: 1
pass: evaluate-only
floor_status: blocked
block_count: 1
should_count: 2
nit_count: 1
include_personas: true
include_clarity_scan: false
```

## Summary

- **floor_status:** blocked  
- **ready_for_freeze:** no  
- **Narrative:** Evaluate-only pass (no patches drafted). Absolute „immer“-Formulierung blockiert den Floor. Personas P1/P2 markieren Auffindbarkeit und Claims-Schärfe.

## Counts

| severity | count |
|---|---|
| block | 1 |
| should | 2 |
| nit | 1 |

## Findings

| id | severity | tags | location | observation | recommendation | patch_ref |
|---|---|---|---|---|---|---|
| F1 | block | safety,sprache | Kerntext | „Adrenalin hilft immer sofort“ | Autor: konditionieren/streichen | — |
| F2 | should | struktur,didaktik,persona:P1 | Kerntext | Handlungsreihenfolge unklar unter Zeitdruck | Explizite Reihenfolge | — |
| F3 | should | struktur | Kerntext | Redundanz | Kürzen | — |
| F4 | nit | didaktik,persona:P2 | Lernziel | Wenig prüfbares Lernziel | Optional schärfen | — |

## Claims audit

| claim / gap | issue | recommendation |
|---|---|---|
| synthetisches Fixture… | ok | keep |
| Absolute Formulierungen… | ok | keep; align body after F1 |

## Safety flags

| flag | location | question for author |
|---|---|---|
| Absolute „immer“ | Kerntext | Streichen, konditionieren, oder als Fehlbeispiel markieren? |

## Learner personas

| persona | finding ids | note |
|---|---|---|
| P1 Zeitdruck | F2 | Action order buried |
| P2 Prüfung | F4 | weak measurable goal |
| P3 Wiedereinsteiger | — | ok for demo length |

## Explicit non-actions

- Did **not** draft surgical patches (`evaluate-only`)
- Did **not** invent clinical guidelines or doses
- Did **not** use numeric 0–10 scores
