# Content Review Report

```yaml
chapter_id: ""
content_path: ""
content_revision_reviewed: ""   # git:… or sha256:… of file at review time (optional pre-freeze)
profile: core                   # MVP: core only
reviewer: ""                    # agent id or human
date: YYYY-MM-DD
round: 1                        # max 2 before mandatory Human triage (H3)
pass: standard                  # evaluate-only | review-with-patches | standard
floor_status: clear             # clear | blocked  — ANY block ⇒ blocked
block_count: 0
should_count: 0
nit_count: 0
include_personas: true
include_clarity_scan: false
```

## Summary

- **floor_status:** clear | blocked  
- **ready_for_freeze:** yes | no | yes_with_nits  
  - `yes` / `yes_with_nits` **only if** `floor_status: clear` (block_count = 0)  
  - `no` if any `block`  
- **Narrative (3–8 sentences):**

## Counts

| severity | count |
|---|---|
| block | 0 |
| should | 0 |
| nit | 0 |

## Findings

| id | severity | tags | location (heading/anchor) | observation | recommendation | patch_ref |
|---|---|---|---|---|---|---|
| F1 | block\|should\|nit | claims,safety,didaktik,persona:P1,… | | | | — or path to patch |

> **`pass: evaluate-only`:** leave `patch_ref` empty; do **not** draft Before/After body rewrites.  
> **`pass: review-with-patches`:** for each `block`/`should`, optional `templates/content-patch.template.md` per finding_id.

## Claims audit

| claim / gap | issue | recommendation |
|---|---|---|
| | missing / untestable / soft | |

## Safety flags (identify only — do not invent guidelines or doses)

| flag | location | question for author |
|---|---|---|
| | | |

## Learner personas (if include_personas)

| persona | finding ids | note |
|---|---|---|
| P1 Zeitdruck | | |
| P2 Prüfung | | |
| P3 Wiedereinsteiger | | |

## Clarity scan DE (if include_clarity_scan)

| id | pattern | location | severity |
|---|---|---|---|
| | | | nit\|should |

## Open questions for author

1.

## Explicit non-actions

- Did **not** write production `.typ` / bookkit layout
- Did **not** silently edit Critical Claims or body SoT
- Did **not** invent clinical guidelines, doses, or citations
- Did **not** use numeric 0–10 “Genesis” scores as freeze gates
- If `evaluate-only`: did **not** draft surgical patches
