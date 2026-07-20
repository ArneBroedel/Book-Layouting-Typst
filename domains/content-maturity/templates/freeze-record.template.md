# Content Freeze Record

```yaml
content_status: frozen
chapter_id: ""
content_path: ""
content_revision: ""            # REQUIRED: git:<short> OR sha256:<hex>
date: YYYY-MM-DD
```

## Inputs

| item | path / value |
|---|---|
| Review report(s) | |
| Review rounds completed | 1 \| 2 |
| Agent ready_for_freeze | yes \| no |

## Gate checks

- [ ] Open **`block` findings = 0**
- [ ] Remaining `should` listed below (or none) and **accepted by Human**
- [ ] `content_revision` format is `git:…` or `sha256:…` (not a date)
- [ ] Content file bytes / commit match the pin

## Open should / nit accepted into freeze

| id | note |
|---|---|
| none | |

## Human sign-off (mandatory — agent must not freeze alone)

| field | value |
|---|---|
| **Human name** | |
| **Date** | |
| **Signature note** | I authorize this revision for production Media/Compose |

Without Human name + date, this record is **invalid** for `--profile production`.
