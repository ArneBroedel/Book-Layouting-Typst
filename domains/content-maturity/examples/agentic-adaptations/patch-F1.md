# Content Patch (surgical — active)

```yaml
status: proposed
chapter_id: demo-anaphylaxis-lite
finding_id: F1
content_path: domains/content-maturity/fixtures/demo-anaphylaxis-lite/content.md
severity: block
location: Kerntext
date: 2026-07-20
author_patch: content-review-gold-patch
```

## Rationale

Remove absolute efficacy claim; keep didactic warning without inventing clinical protocol.

## Before

```text
Anaphylaxie ist ein schwerer allergischer Notfall. In manchen Texten steht pauschal:
„Adrenalin hilft **immer** sofort.“ Diese absolute Formulierung ist didaktisch riskant
und hier absichtlich so stehen gelassen, damit Content-Review sie markieren kann.
```

## After

```text
Anaphylaxie ist ein schwerer allergischer Notfall. Pauschale Aussagen der Art
„Adrenalin hilft **immer** sofort“ sind **nicht** zulässig — Wirksamkeit und Einsatz
hängen vom Kontext ab (Details und Quellen liegen im echten Content-Werk, nicht hier).
```

## Author decision

- [x] accepted_by_author  
- [ ] rejected  
- [ ] deferred  

| field | value |
|---|---|
| decided_by | Gold Human (fixture) |
| date | 2026-07-20 |

## After merge

Re-run **`content-review`** with `pass: evaluate-only` → see `review-after-patch-evaluate.md` / demo frozen content.
