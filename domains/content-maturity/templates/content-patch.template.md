# Content Patch (surgical — active)

One finding → one patch. **Agent never silent-merges into content SoT.**

```yaml
status: proposed                # proposed | accepted_by_author | rejected | deferred
chapter_id: ""
finding_id: ""                  # e.g. F1
content_path: ""
severity: block                 # block | should (nits optional)
location: ""                    # heading / anchor
date: YYYY-MM-DD
author_patch: ""                # agent id that proposed
```

## Rationale

Why this change (1–3 sentences). No new clinical facts.

## Before

```text
(exact excerpt from manuscript)
```

## After

```text
(minimal replacement; same language register; no invented doses/guidelines)
```

## Author decision

- [ ] accepted_by_author  
- [ ] rejected  
- [ ] deferred  

| field | value |
|---|---|
| decided_by | |
| date | |

## After merge

Re-run **`content-review`** with `pass: evaluate-only` on the new revision.
