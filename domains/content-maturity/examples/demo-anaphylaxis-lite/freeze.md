# Content Freeze Record

```yaml
content_status: frozen
chapter_id: demo-anaphylaxis-lite
content_path: domains/content-maturity/examples/demo-anaphylaxis-lite/content-frozen.md
content_revision: "sha256:b30e429b8f291e8a6d0b28120d1e5679ec848955461a5ab807ed5ddf1df775e2"
date: 2026-07-20
```

## Inputs

| item | path / value |
|---|---|
| Review report(s) | examples/demo-anaphylaxis-lite/review-round2.md |
| Review rounds completed | 2 |
| Agent ready_for_freeze | yes |

## Gate checks

- [x] Open **`block` findings = 0**
- [x] Remaining `should` listed below (or none) and **accepted by Human**
- [x] `content_revision` format is `git:…` or `sha256:…` (not a date)
- [x] Content file bytes / commit match the pin

## Open should / nit accepted into freeze

| id | note |
|---|---|
| F4 | nit accepted — optional Lernziel later |

## Human sign-off (mandatory — agent must not freeze alone)

| field | value |
|---|---|
| **Human name** | Gold Human (fixture) |
| **Date** | 2026-07-20 |
| **Signature note** | I authorize this revision for production Media/Compose |
