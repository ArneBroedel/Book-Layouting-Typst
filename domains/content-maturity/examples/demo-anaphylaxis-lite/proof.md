# Proof Record (Human-only — MVP)

```yaml
chapter_id: demo-anaphylaxis-lite
content_revision: "sha256:b30e429b8f291e8a6d0b28120d1e5679ec848955461a5ab807ed5ddf1df775e2"
pdf_path: "(example only — no PDF required for process gold)"
typ_path: toolset/compose/fixtures/pass_freeze_production/chapter.typ
validate_report_path: "(run validate --profile production in CI/local)"
date: 2026-07-20
proofer: Gold Human (fixture)
```

## Checklist

- [x] `content_revision` on PDF/typ header matches freeze pin
- [x] Critical Claims present and correct vs content (use validate claims if linked)
- [x] Section order matches manuscript intent (no missing major block)
- [x] Obvious layout-only issues noted separately (route to Media/Tech — do **not** rewrite content for layout nits)
- [x] No open content `block` discovered at umbruch

## Triage (if issues)

| issue | route: content (C2/C3) \| layout (B/A) \| unclear |
|---|---|
| none | |

## Outcome

- [x] **proofed** — set `content_status: proofed`
- [ ] **return** — reasons above

**Author / proofer sign-off:** Gold Human (fixture) date: 2026-07-20
